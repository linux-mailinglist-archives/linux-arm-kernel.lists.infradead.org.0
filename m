Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E7E1146A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NMIc2dQZumnr/P6JxIVPhdJzJ10ciGYkcrZWyT+Op/I=; b=oCmftWxaTBDXOU
	1ZK8zLIg23M6g3EFi7OyQDNYHtTuhZZvgodcGPpvCnIZHMYg7HJjHz1RpYU/ZN4BlCVon/NjTiZBl
	b0NQrEpr73uXa3aq+DnlJ/XknrfxUSPM4XiTWp90QllkFa/4/bdZkVrCfvhxiGfuMXGy7dFUG2FJ1
	xrjmO29D96f1PZkeKx9eOYsJkHT8D4c7CF+LfX3vTSMlm6g+sQVMdVccyREcQ/Lg9ChTSF97Vmws9
	WfjfW8oj8No5ku9SyovaqgILwX0Kz2Z6ltJnsQLyFcoBJI+kjZv9Ihk6SEjd29CruaGKAWNqE5qkM
	wW1BpsgbuiOJX3V1abkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvco-0006CS-Ss; Thu, 05 Dec 2019 18:13:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvcf-00069w-Dp
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:13:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6F4D31B;
 Thu,  5 Dec 2019 10:13:02 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 00DC53F718;
 Thu,  5 Dec 2019 10:13:01 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Validate tagged addresses in access_ok() called from
 kernel threads
Date: Thu,  5 Dec 2019 18:12:58 +0000
Message-Id: <20191205181258.27334-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_101305_508393_429F4C29 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will@kernel.org>, Evgenii Stepanov <eugenis@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__range_ok(), invoked from access_ok(), clears the tag of the user
address only if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled and the thread
opted in to the relaxed ABI. The latter sets the TIF_TAGGED_ADDR thread
flag. In the case of asynchronous I/O (e.g. io_submit()), the
access_ok() may be called from a kernel thread. Since kernel threads
don't have TIF_TAGGED_ADDR set, access_ok() will fail for valid tagged
user addresses. Example from the ffs_user_copy_worker() thread:

	use_mm(io_data->mm);
	ret = ffs_copy_to_iter(io_data->buf, ret, &io_data->data);
	unuse_mm(io_data->mm);

Relax the __range_ok() check to always untag the user address if called
in the context of a kernel thread. The user pointers would have already
been checked via aio_setup_rw() -> import_{single_range,iovec}() at the
time of the asynchronous I/O request.

Fixes: 63f0c6037965 ("arm64: Introduce prctl() options to control the tagged user addresses ABI")
Cc: <stable@vger.kernel.org> # 5.4.x-
Cc: Will Deacon <will@kernel.org>
Reported-by: Evgenii Stepanov <eugenis@google.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/uaccess.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 097d6bfac0b7..cccb03e1ab1f 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -62,8 +62,13 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 {
 	unsigned long ret, limit = current_thread_info()->addr_limit;
 
+	/*
+	 * Asynchronous I/O running in a kernel thread does not have the
+	 * TIF_TAGGED_ADDR flag of the process owning the mm, so always untag
+	 * the user address before checking.
+	 */
 	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
-	    test_thread_flag(TIF_TAGGED_ADDR))
+	    (current->flags & PF_KTHREAD || test_thread_flag(TIF_TAGGED_ADDR)))
 		addr = untagged_addr(addr);
 
 	__chk_user_ptr(addr);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

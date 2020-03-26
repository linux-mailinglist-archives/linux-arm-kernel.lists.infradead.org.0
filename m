Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585D2194694
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 19:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao9UXqk6qGpaA+H/lbIBj26an5OW1zBJOnmg/hTJk3I=; b=Y35UTkj8kLVoAa
	9XxfJ5HxZu4UR+2urMBuTd2bNKrmCea4YMXNI6b6QM/yVXQiLQ00QZc5qmW+E8lgn7oAJk/HrKrdU
	q5yUTsJyZbUCgYHkr0eNCmVeARD8lo4Eqj8nw5KRF5Uko/WrrmTXbGnqRYTYpHH/gP2wTqSKmgJgB
	SaJIcUBGP5U5yhQaz3iP0XXgFtXkE+O4DQIL1TRE5x5RzEHLt9KnwXZuzNg5LBQvhopcTdRHdg13B
	fe+wMUqNzBWWZC5xUz27Z7NRLltnl8Zoq2HwClrma7pR6w0uAPdQHP6s4Ow5Yxxo7AHJJPqo9n6yI
	Slq5tfVJnbbzzhhXlefw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXKX-0001Q4-Ke; Thu, 26 Mar 2020 18:34:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXKD-0001Lm-8F; Thu, 26 Mar 2020 18:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=fhH9BuSGuHCqPuzk2ikmxRR1T8zfMgeKcqPNxk2j98k=; b=tgOlmmlPmN1l7hcK2nbUDJVOaU
 03JaJhN9E3+HGu0gVQA4ChshhDkbvMe6/wszy1fWfcUmvErBAazZF7z/ljmApE1uBrhFST+9y0zrF
 jNoRl2Gj0mdNFPwjGNQJN3MbBsT4Qr6nqXM9+MtZORvUbm6t8SkWErcle8TMXluDqDOT6AMLQT3wX
 Udvacrq0dSoSdrtWK7PqR9ZUaZdvtP8BG1q7luKTYmgOV4dbIRXXFtn+cnbgX4a4kkOrBhlTrF6Jo
 BDyr6O8dVdiFvIzEhNGCByWSrsEcXudN/xcqP2sHUmgtrZ/3qscxk7BFPDsJCUgS0IKN+i2wXUGB6
 LUvMvjjQ==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvm-0006kQ-4I; Thu, 26 Mar 2020 18:08:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 142A71063;
 Thu, 26 Mar 2020 11:08:35 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2A023F71E;
 Thu, 26 Mar 2020 11:08:33 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: memory: Give hotplug memory a different resource
 name
Date: Thu, 26 Mar 2020 18:07:30 +0000
Message-Id: <20200326180730.4754-4-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_180838_389603_D131246E 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If kexec chooses to place the kernel in a memory region that was
added after boot, we fail to boot as the kernel is running from a
location that is not described as memory by the UEFI memory map or
the original DT.

To prevent unaware user-space kexec from doing this accidentally,
give these regions a different name.

Signed-off-by: James Morse <james.morse@arm.com>
---
This is a change in behaviour as seen by user-space, because memory hot-add
has already been merged.

 arch/arm64/include/asm/memory.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 2be67b232499..ef1686518469 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -166,6 +166,17 @@
 #define IOREMAP_MAX_ORDER	(PMD_SHIFT)
 #endif
 
+/*
+ * Memory hotplug allows new regions of 'System RAM' to be added to the system.
+ * These aren't described as memory by the UEFI memory map, or DT memory node.
+ * If we kexec from one of these regions, the new kernel boots from a location
+ * that isn't described as RAM.
+ *
+ * Give these resources a different name, so unaware kexec doesn't do this by
+ * accident.
+ */
+#define MEMORY_HOTPLUG_RES_NAME "System RAM (hotplug)"
+
 #ifndef __ASSEMBLY__
 extern u64			vabits_actual;
 #define PAGE_END		(_PAGE_END(vabits_actual))
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

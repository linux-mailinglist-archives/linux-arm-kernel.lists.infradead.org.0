Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB71C7AC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHW1ePsb5niEk8QwRHYcLbfhHlqrxsS7JwfJvgjmjLM=; b=mw3C/5kdsYTHkn
	dTJboh48tMj298mJvUmJ8tGP0jt1YwVKgfHjV1qZSOjeATT7LHGCIxkCi8mZJJGsExC0FnzrL/L88
	JT8bAylwkcV5MqCb3WCc0bf4Xx4uLkSIahQ0SNb9vi6guqxrOtSRLex3p+6AtBshXu/tA+1EDNBQg
	AcZpwQ0nY8BivDTI1ELmlBdk7vy/xmzoQ2swulU+n+lbeym9q/dSENXr76Z1Tujc2HEVyc8T/duvX
	AcPR329JeiX4bod2FICk2KqheQ18xPaNhKq7cwlGzai1XHo+k95/vHoNzloQPEILKWkn/xQ2fIdGr
	Kq2O6RgeO2hHxdkz8FYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ6x-0005ih-5y; Wed, 06 May 2020 19:53:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5T-0004A6-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:52:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5BAB2075E;
 Wed,  6 May 2020 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794729;
 bh=KwxpZ54ywzUVQPy0HIOe2QnfzjEmt4I8q10FbJA65Gg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1M5LXcsrJLM0ScAYdGo4aTigUUL4pAb+50XNWRhx6KHD4kt1f1M51fpoprhtRQD22
 2esG9Zn6z/z2XTX1H5L5GF4abs8jugWxTqMqgtemWF1Ccqah1bUJMkv3Kl6y+j4dqe
 oVKH15CJhcqHUmVEo/uA55IdC0o1tQK/h42nwe0I=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 06/11] arm64: mm: Mark executable text as guarded pages
Date: Wed,  6 May 2020 20:51:33 +0100
Message-Id: <20200506195138.22086-7-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125211_336713_841D8830 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Mark Brown <broonie@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built for BTI and running on a system which supports
make all executable text guarded pages to ensure that loadable module
and JITed BPF code is protected by BTI.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/mm/pageattr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 250c49008d73..bde08090b838 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -126,13 +126,13 @@ int set_memory_nx(unsigned long addr, int numpages)
 {
 	return change_memory_common(addr, numpages,
 					__pgprot(PTE_PXN),
-					__pgprot(0));
+					__pgprot(PTE_MAYBE_GP));
 }
 
 int set_memory_x(unsigned long addr, int numpages)
 {
 	return change_memory_common(addr, numpages,
-					__pgprot(0),
+					__pgprot(PTE_MAYBE_GP),
 					__pgprot(PTE_PXN));
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

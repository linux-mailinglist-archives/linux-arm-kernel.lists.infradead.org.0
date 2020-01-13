Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD76139035
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPUD8LyVP6opS8pPeGc0vOBPhAZ5pz/FiQo1HuZyiMs=; b=LaIA7tzEychx+d
	HGQUR2jBVhEghJZRoLBpcgpm+5wlMJYAtMJbimgKeIRm/MLcbLlpw2FkyRugdR7QwjtSXfWwukZhA
	4+ClE4qQOAE6jyxvXX87/EPqhsytZh/cVMW0fcPSe2vx5f0iQZW4Ne5N9SXN4/VW/sjOKHgqjPeuH
	Vv+4G0Y1NrO0Ik9FIRnGwiw97XlY1mtSqzb3BgclDhCTNQs022hCCIgXU8OEpl4mtEfXlicmCq0j8
	OWkS8dm5jDngxKSSadviemF/GBL0pVA9T/SNFd+9v/MiDvvSaVyYYbkxIwfBxMlk4QsNB8SFoGJoW
	n0v6FudihwI1rR6bShxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqy1F-0004wx-5o; Mon, 13 Jan 2020 11:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqy14-0004wB-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:36:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2B5E13D5;
 Mon, 13 Jan 2020 03:36:16 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 198E63F6C4; Mon, 13 Jan 2020 03:36:15 -0800 (PST)
Date: Mon, 13 Jan 2020 11:36:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Message-ID: <20200113113613.GA1876@arrakis.emea.arm.com>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
 <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
 <20200110120826.GC10066@willie-the-truck>
 <20200110153013.GH8786@arrakis.emea.arm.com>
 <20200110154542.GB24322@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110154542.GB24322@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_033619_051827_8782F750 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:45:43PM +0000, Will Deacon wrote:
> On Fri, Jan 10, 2020 at 03:30:14PM +0000, Catalin Marinas wrote:
> > On Fri, Jan 10, 2020 at 12:08:26PM +0000, Will Deacon wrote:
> > > On Fri, Jan 10, 2020 at 11:54:38AM +0000, Vladimir Murzin wrote:
> > > > I was not lucky with the similar patch [1], anyway
> > > > 
> > > > Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> > > > 
> > > > [1] https://www.spinics.net/lists/linux-crypto/msg36059.html
> > > 
> > > It's the loss of the warning that I object to, since I think it's a useful
> > > diagnostic to have. Is there some way we can keep that, but using the new
> > > kbuild logic?
[...]
> The thing I dislike about it is that if somebody sends you a .config with
> LSE enabled, and your compiler doesn't support it, then it silently get
> disabled.

I was thinking the other way. Someone sending me a .config file and I
can't tell whether LSE was built into their kernel or not unless they
also send the build log (I haven't seen anyone do this). At least for my
local compiler, I have some control over it and can compare the
resulting .config file. It would have been nice if oldconfig warned of
features being disabled but I guess it would become too noisy.

To accommodate the two scenarios, what about this diff on top of patch 2
(I can fold it in in v2 and feel free to suggest better config names):

-------8<-------------------------
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 2a0521f0f156..cf3b6d2a67cf 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1362,12 +1362,13 @@ config ARM64_PAN
 	 The feature is detected at runtime, and will remain as a 'nop'
 	 instruction if the cpu does not implement the feature.
 
-config ARM64_AS_HAS_LSE
-	def_bool $(as-instr,.arch_extension lse)
-
 config ARM64_LSE_ATOMICS
+	bool
+	default ARM64_USE_LSE_ATOMICS
+	depends on $(as-instr,.arch_extension lse)
+
+config ARM64_USE_LSE_ATOMICS
 	bool "Atomic instructions"
-	depends on ARM64_AS_HAS_LSE
 	depends on JUMP_LABEL
 	default y
 	help
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index cca6de192d42..6dd8ecacc428 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,6 +30,12 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
+  ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
+$(warning LSE atomics not supported by binutils)
+  endif
+endif
+
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

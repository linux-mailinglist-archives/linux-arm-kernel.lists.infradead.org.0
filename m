Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DBF13C8A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uf5b1olPJ5LKePwDe0E4lv2bb/aCNmfd3Ha4W9ZdY8=; b=Phw11uNComw4mk
	xBPV7sO8Zx95Hb6f9bvB2MSTG76SH5ifVs869YPrRGdKaeu+XldiNcVznRMG5kDUip4jDnmsOdYz4
	oxbM14w+3ZY/d2hjBUhrmKvzk47Hl6rBeHV1PtRzj6UWz+Qqel8qiAY8lJVLIAO3fleQO72DOY9v5
	5mQnt6tMr1YpTDcoki1TTjyGJ0mZ0NMYOGoeu4LRyiXZIifau5TsOcSodsjOLwVXTqqZSvAg7AATf
	wKiChap71gDHkVV/eToerHX+qiAUSTH4Jr5+rUtk5lT7haSi7okgnyRShKhG/Z5jZZipRSWzhY78u
	bIM3QLPqpnqKfAIPAkEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irl7U-0000X5-N1; Wed, 15 Jan 2020 16:02:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irl7H-0000WE-Iv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:02:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2463328;
 Wed, 15 Jan 2020 08:01:58 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 07B8B3F718; Wed, 15 Jan 2020 08:01:56 -0800 (PST)
Date: Wed, 15 Jan 2020 16:01:54 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 01/16] arm64: cpufeature: add pointer auth
 meta-capabilities
Message-ID: <20200115160154.GE3429@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-2-git-send-email-amit.kachhap@arm.com>
 <20200115122657.GB3429@arrakis.emea.arm.com>
 <4aac989f-3d9e-53e0-e2c9-1aa163e6baa0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4aac989f-3d9e-53e0-e2c9-1aa163e6baa0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_080159_710053_5DFA083D 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 James Morse <James.Morse@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 01:52:24PM +0000, Suzuki K Poulose wrote:
> On 15/01/2020 12:26, Catalin Marinas wrote:
> > On Mon, Dec 16, 2019 at 02:17:03PM +0530, Amit Daniel Kachhap wrote:
> > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > index 04cf64e..cf42c46 100644
> > > --- a/arch/arm64/kernel/cpufeature.c
> > > +++ b/arch/arm64/kernel/cpufeature.c
> > > @@ -1249,6 +1249,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
> > >   	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
> > >   				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
> > >   }
> > > +
> > > +static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
> > > +			     int __unused)
> > > +{
> > > +	return cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
> > > +	       cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
> > > +}
> > > +
> > > +static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
> > > +			     int __unused)
> > > +{
> > > +	return cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
> > > +	       cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
> > > +}
> > 
> > Do these rely on the order in which the entries are listed in the
> > arm64_features[] array? It looks like we do the same for PAN_NOT_UAO but
> > that's pretty fragile.
> 
> Yes, it surely depends on the order in which they are listed.
> 
> > I'd prefer if we invoked the
> > cpu_hwcaps_ptrs[ARM64_HAS_ADDRESS_AUTH]->matches() directly here, maybe
> 
> Yes, calling the matches(cap, SYSTEM_SCOPE), that should work and is much
> better.
> 
> > hidden behind a helper (I couldn't find one at a quick look).
> > 
> 
> There are no helpers for this operation to  do it on a SYSTEM_SCOPE
> and this is only needed for caps dependent on the other caps.
> 
> May be we could hide the conversion of the number to "cap" as:
> 
> static inline struct arm64_cpu_capabilities *cpu_cap_from_number(int n)
> {
> 	if (n < ARM64_NCAPS)
> 		return cpu_hwcaps_ptr[n];
> 	return NULL;
> }
> 
> And use this for "this_cpu_has_cap()" too.

I'm not bothered about the cpu_cap_from_number() part. I was actually
thinking of something like the diff below:

-----------8<-------------------------
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 2595c2886d3f..2ea4c84fcc8a 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2008,6 +2008,18 @@ bool this_cpu_has_cap(unsigned int n)
 	return false;
 }
 
+static bool system_has_cap(unsigned int n)
+{
+	if (n < ARM64_NCAPS) {
+		const struct arm64_cpu_capabilities *cap = cpu_hwcaps_ptrs[n];
+
+		if (cap)
+			return cap->matches(cap, SCOPE_SYSTEM);
+	}
+
+	return false;
+}
+
 void cpu_set_feature(unsigned int num)
 {
 	WARN_ON(num >= MAX_CPU_FEATURES);
@@ -2081,7 +2093,7 @@ void __init setup_cpu_features(void)
 static bool __maybe_unused
 cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 {
-	return (cpus_have_const_cap(ARM64_HAS_PAN) && !cpus_have_const_cap(ARM64_HAS_UAO));
+	return system_has_cap(ARM64_HAS_PAN) && !system_has_cap(ARM64_HAS_UAO);
 }
 
 static void __maybe_unused cpu_enable_cnp(struct arm64_cpu_capabilities const *cap)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

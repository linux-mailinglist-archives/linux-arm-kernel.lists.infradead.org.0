Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D5D1C5376
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT/pmjgWB91FOkvTVspJfTsJhvqzB3lfJD2Ps+WTwMo=; b=Zi0H2v1OyIHwDx
	L97BMU2LMmuvU6i9dwiVfhDW0lHcpAMQgeCzp2VE7faW6giGFXASjlFqohGC/Qh7g0rRmTYcdodrl
	nRzG9NZTuuMC183D3TrO9vJf2I6CmNnx1a3UsYnq0lehfzEC5blaWzyaGig2+N72O7vEAKmWJhifp
	BcLgDApFawz4LjLEjQI5Jdd+TTitkcxxzmccJRcwoDgugeszCJh8NXZOYqs2oZjLCbxPpWppIqiPE
	hgWLPFnQpPTnXUfVYXhQA1fHuMtNo3msSnQ+eV4VPVNwi4wUKnuGwn9u4q4CthrwtCNdemJcUcI1P
	Hpv205/oMGVvPs2oCIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVv2X-0006yJ-BP; Tue, 05 May 2020 10:43:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVv2O-0006xh-La
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:42:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1FFD206A5;
 Tue,  5 May 2020 10:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588675376;
 bh=NLCbmdO5jXwPTRJmev5nd5sqfYdfydo3KQgdzeupCVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2Jo+b3eyoAVOg/5340CGqyTb2jUUFWj37ojZOsHWNQHkvvtQZjiUq62H2OVcZpHI8
 LNS3z8WXpoQpIIY5GRyImbq8O3W8Ogr1KK3IQrKm19FzqGdfXNkkrLP5pfBeMviVoF
 Fud8qYMJPVqmMU28sgyb2quRfLYtIq3//48fkSKA=
Date: Tue, 5 May 2020 11:42:51 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 02/16] arm64/cpufeature: Drop TraceFilt feature
 exposure from ID_DFR0 register
Message-ID: <20200505104250.GA19710@willie-the-truck>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-3-git-send-email-anshuman.khandual@arm.com>
 <20200504202453.GA5012@willie-the-truck>
 <56cd3062-a0c2-6cdf-b7c6-c2b7bf56d23b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56cd3062-a0c2-6cdf-b7c6-c2b7bf56d23b@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_034256_748734_5B854A8F 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:20:41PM +0530, Anshuman Khandual wrote:
> On 05/05/2020 01:54 AM, Will Deacon wrote:
> > On Sat, May 02, 2020 at 07:03:51PM +0530, Anshuman Khandual wrote:
> >> ID_DFR0 based TraceFilt feature should not be exposed to guests. Hence lets
> >> drop it.
> >>
> >> Cc: Catalin Marinas <catalin.marinas@arm.com>
> >> Cc: Will Deacon <will@kernel.org>
> >> Cc: Marc Zyngier <maz@kernel.org>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> >> Cc: James Morse <james.morse@arm.com>
> >> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> Cc: linux-arm-kernel@lists.infradead.org
> >> Cc: linux-kernel@vger.kernel.org
> >>
> >> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> >> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> >> ---
> >>  arch/arm64/kernel/cpufeature.c | 1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> >> index 6d032fbe416f..51386dade423 100644
> >> --- a/arch/arm64/kernel/cpufeature.c
> >> +++ b/arch/arm64/kernel/cpufeature.c
> >> @@ -435,7 +435,6 @@ static const struct arm64_ftr_bits ftr_id_pfr1[] = {
> >>  };
> >>  
> >>  static const struct arm64_ftr_bits ftr_id_dfr0[] = {
> >> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
> > 
> > Hmm, this still confuses me. Is this not now FTR_NONSTRICT? Why is that ok?
> 
> Mark had mentioned about it earlier (https://patchwork.kernel.org/patch/11287805/)
> Did I misinterpret the first part ? Could not figure "capping the emulated debug
> features" part. Probably, Mark could give some more details.
> 
> From the earlier discussion:
> 
> * ID_DFR0 fields need more thought; we should limit what we expose here.
>   I don't think it's valid for us to expose TraceFilt, and I suspect we
>   need to add capping for debug features we currently emulate.

Sorry, I for confused (again) by the cpufeature code :) I'm going to add
the following to my comment:


diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c1d44d127baa..9b05843d67af 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -53,6 +53,11 @@
  *   arbitrary physical CPUs, but some features not present on the host are
  *   also advertised and emulated. Look at sys_reg_descs[] for the gory
  *   details.
+ *
+ * - If the arm64_ftr_bits[] for a register has a missing field, then this
+ *   field is treated as STRICT RES0, including for read_sanitised_ftr_reg().
+ *   This is stronger than FTR_HIDDEN and can be used to hide features from
+ *   KVM guests.
  */
 
 #define pr_fmt(fmt) "CPU features: " fmt


However, I think we really want to get rid of ftr_generic_32bits[] entirely
and spell out all of the register fields, even just using comments for the
fields we're omitting:


@@ -425,7 +430,7 @@ static const struct arm64_ftr_bits ftr_id_pfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_dfr0[] = {
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
+	/* 31:28	TraceFilt */
 	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 24, 4, 0xf),	/* PerfMon */
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 20, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 16, 4, 0),


Longer term, I think we'll probably want to handle these within
ARM64_FTR_BITS, as we may end up with features that we want to hide from
KVM guests but not from the host kernel.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

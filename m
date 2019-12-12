Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0343511D254
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO4dDNP/c4MHEp5FP4UGRVljPc6Fvw4fl8kIATcobcU=; b=sXJgMnFLUf6sTH
	JwZgxHbxR//k2O4AgxkJBU+mq5nTWO87LrvpPKpkQcN8dAMV+7LUTVgkUWwxObVh9/QwKyOOXlsUA
	eot1mpn8c2xjq2rp1xPODen4gUtJqnKW+2fiuQf/3QrNbSK18A3pjs5qOaN7Lpgjr0LoJOLYvWnib
	UoSWBUtLDZsIBfQYQkytmJQPrpBzFjy5lE+B41cgidKi78gfwc605ETMbevECrtSeVCbDcA5g1Ju7
	VRgkAVNJdr8T7YmOZfjc+8lVkzVHV5PnGqFotcYWzATpLnPd2YtJtjB+CFyBhWH44WzYqL5vxPDrc
	xeGnzbbmrWhCmTTjAP3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRNF-0006K4-45; Thu, 12 Dec 2019 16:31:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRN7-0006JI-Bb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:31:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F407B30E;
 Thu, 12 Dec 2019 08:31:23 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEEFD3F6CF;
 Thu, 12 Dec 2019 08:31:22 -0800 (PST)
Date: Thu, 12 Dec 2019 16:31:20 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: Introduce ISAR6 CPU ID register
Message-ID: <20191212163120.GH46910@lakrids.cambridge.arm.com>
References: <1576145663-9909-1-git-send-email-anshuman.khandual@arm.com>
 <20191212144633.GE46910@lakrids.cambridge.arm.com>
 <be707b09-6469-d12f-07d5-50d574dc7284@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be707b09-6469-d12f-07d5-50d574dc7284@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_083125_439632_B5C90104 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 03:22:13PM +0000, Suzuki Kuruppassery Poulose wrote:
> On 12/12/2019 14:46, Mark Rutland wrote:
> > On Thu, Dec 12, 2019 at 03:44:23PM +0530, Anshuman Khandual wrote:
> > > +#define ID_ISAR6_JSCVT_SHIFT		0
> > > +#define ID_ISAR6_DP_SHIFT		4
> > > +#define ID_ISAR6_FHM_SHIFT		8
> > > +#define ID_ISAR6_SB_SHIFT		12
> > > +#define ID_ISAR6_SPECRES_SHIFT		16
> > > +#define ID_ISAR6_BF16_SHIFT		20
> > > +#define ID_ISAR6_I8MM_SHIFT		24
> > 
> > > @@ -399,6 +399,7 @@ static const struct __ftr_reg_entry {
> > >   	ARM64_FTR_REG(SYS_ID_ISAR4_EL1, ftr_generic_32bits),
> > >   	ARM64_FTR_REG(SYS_ID_ISAR5_EL1, ftr_id_isar5),
> > >   	ARM64_FTR_REG(SYS_ID_MMFR4_EL1, ftr_id_mmfr4),
> > 
> > > +	ARM64_FTR_REG(SYS_ID_ISAR6_EL1, ftr_generic_32bits),
> > 
> > Using ftr_generic_32bits exposes the lowest-common-denominator for all
> > 4-bit fields in the register, and I don't think that's the right thing
> > to do here, because:
> > 
> > * We have no idea what ID_ISAR6 bits [31:28] may mean in future.
> > 
> > * AFAICT, the instructions described by ID_ISAR6.SPECRES (from the
> >    ARMv8.0-PredInv extension) operate on the local PE and are not
> >    broadcast. To make those work as a guest expects, the host will need
> >    to do additional things (e.g. to preserve that illusion when a vCPU is
> >    migrated from one pCPU to another and back).
> > 
> > Given that, think we should add an explicit ftr_id_isar6 which only
> > exposes the fields that we're certain are safe to expose to a guest
> > (i.e. without SPECRES).
> 
> Agree. Thanks for pointing this out. I recommended the usage of
> generic_32bits table without actually looking at the feature
> definitions.

No worries; this is /really/ easy to miss!

Looking again, comparing to ARM DDI 0487E.a, there are a few other
things we should probably sort out:

* ID_DFR0 fields need more thought; we should limit what we expose here.
  I don't think it's valid for us to expose TraceFilt, and I suspect we
  need to add capping for debug features we currently emulate.

* ID_ISAR0[31:28] are RES0 in ARMv8, Reserved/UNK in ARMv7.
  We should probably ftr_id_isar0 so we can hide those bits.

* ID_ISAR5[23:10] are RES0
  We handle this already! :)

* ID_MMFR4.SpecSEI should be trated as higher safe.
  We should update ftr_id_mmfr4 to handle this and other fields.

* ID_PFR0 is missing DIT and CSV2
  We should probably add these (but neither RAS not AMU).

* ID_PFR2 is missing
  We should probably add this for SSBS and CSV3.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

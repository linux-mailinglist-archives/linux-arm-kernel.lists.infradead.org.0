Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B13C173F73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rF1qf79ehIf5zOy4OuOgCnWQNYRwX+HbadaPwGUAmaM=; b=Xyic6F6deskynw
	itvuP0XbM0Usz83nPERrraWZxt+ffVt25yU3wZGWYcQ7jRnVzx0MEgAWgz+w/gizCf6zVbKASi43x
	Ka7phVAt45l8wB1PGEemMLGGyV6ouGUTlhdiw36o480Tglg5fOGWZpWHQITRSRruOu5zbF0gWq7Ek
	kbQyCZi+h2RT/dmkhRUsF+hoHTZhhBIxfiYZzeHuaxF9qy5NdFYpSVaLhUJ+zZrC1nDDPs7+VtJGE
	1GsccoxnOALGIEE50EThNs5BHraF8O+iT5FtSCntQmKw+qCu81q1jr5Hv23M4uxPdX+VMEGZjaNrC
	+3tYGJmeRAQjBkK2kzCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kHj-00034b-JG; Fri, 28 Feb 2020 18:22:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kHa-00034D-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:22:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AB1A31B;
 Fri, 28 Feb 2020 10:22:41 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 853F43F7B4;
 Fri, 28 Feb 2020 10:22:40 -0800 (PST)
Date: Fri, 28 Feb 2020 18:22:38 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 2/3] KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
Message-ID: <20200228182237.GM36089@lakrids.cambridge.arm.com>
References: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
 <1580125469-23887-3-git-send-email-andrew.murray@arm.com>
 <20200228165122.GL36089@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228165122.GL36089@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_102242_577273_74EDE4AA 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 04:51:22PM +0000, Mark Rutland wrote:
> On Mon, Jan 27, 2020 at 11:44:28AM +0000, Andrew Murray wrote:
> > We currently expose the PMU version of the host to the guest via
> > emulation of the DFR0_EL1 and AA64DFR0_EL1 debug feature registers.
> > However many of the features offered beyond PMUv3 for 8.1 are not
> > supported in KVM. Examples of this include support for the PMMIR
> > registers (added in PMUv3 for ARMv8.4) and 64-bit event counters
> > added in (PMUv3 for ARMv8.5).
> > 
> > Let's trap the Debug Feature Registers in order to limit
> > PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.1
> > to avoid unexpected behaviour.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm64/include/asm/sysreg.h |  5 +++++
> >  arch/arm64/kvm/sys_regs.c       | 11 +++++++++++
> >  2 files changed, 16 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > index 6e919fa..1009878 100644
> > --- a/arch/arm64/include/asm/sysreg.h
> > +++ b/arch/arm64/include/asm/sysreg.h
> > @@ -672,6 +672,11 @@
> >  #define ID_AA64DFR0_TRACEVER_SHIFT	4
> >  #define ID_AA64DFR0_DEBUGVER_SHIFT	0
> >  
> > +#define ID_DFR0_PERFMON_SHIFT		24
> > +
> > +#define ID_DFR0_EL1_PMUVER_8_1		4
> > +#define ID_AA64DFR0_EL1_PMUVER_8_1	4
> > +
> >  #define ID_ISAR5_RDM_SHIFT		24
> >  #define ID_ISAR5_CRC32_SHIFT		16
> >  #define ID_ISAR5_SHA2_SHIFT		12
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 9f21659..3f0f3cc 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -1085,6 +1085,17 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
> >  			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
> >  			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
> >  			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
> > +	} else if (id == SYS_ID_AA64DFR0_EL1) {
> > +		/* Limit guests to PMUv3 for ARMv8.1 */
> > +		val = cpuid_feature_cap_signed_field_width(val,
> > +						ID_AA64DFR0_PMUVER_SHIFT,
> > +						4, ID_AA64DFR0_EL1_PMUVER_8_1);
> > +	} else if (id == SYS_ID_DFR0_EL1) {
> > +		/* Limit guests to PMUv3 for ARMv8.1 */
> > +		val = cpuid_feature_cap_signed_field_width(val,
> > +						ID_DFR0_PERFMON_SHIFT,
> > +						4, ID_DFR0_EL1_PMUVER_8_1);
> > +
> 
> Unfortunately, ID_AA64DFR0_EL1.PMUVer and ID_DFR0_EL1.PerfMon don't
> follow the usual ID scheme, and cannot be treated as signed fields.
> 
> Per ARM DDI 0487E.a, page D13-2825, they follow an alternative scheme
> that is treated as unsigned, with 0xF additionally being treated as an
> architected PMU version not being implemented. For KVM we'll want to
> convert 0xF to 0x0.
> 
> I'll respin these patches accordingly.

I've pushed an updated series to:

https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/pmu-8.5

Hopefully I'll get the chance to give that a go on ARMv8.{0,1} hardware
on Monday. I'm not sure how useful the PMU in FVPs is these days, so I'm
not sure how far I can test the ARMv8.5+ bits.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

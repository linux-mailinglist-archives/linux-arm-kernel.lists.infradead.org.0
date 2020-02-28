Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85A1736C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3fOyoAUkL0jRect5xvwmDgNnJYt1BMG1St5RgG66/Q=; b=Nf/QY59+JjPimq
	SE0dn6TPiXZziIbOLFil9zUxTopmVNpAGbCEikpsoOgD7l9H+CCRgevcHd+vrw4IV/5wfsXdCU44L
	4YTm48MFkeZvRZgEoxdb0bCm1dcmzqg76b8JSBL93WkOaEuJ9B43iu+df+DSUd2kc7hJk71aGTr35
	eXj1txxtQc5ihOAiHe3mtrn8clmqjolRjtgqVjBhVr/zbiuhtg7ofh4nhry+2OFquH6rE4jpfKH1q
	YBlOQPjoSD32jSHi9ZiEXIEpz5uJQoE1gLI9ZiSBpFYBuzGxfxLwDuClGuXKlCwRmdr5eNs3B2hC+
	XQBoQlkL1y5QTSeuiUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eMd-0007eU-5p; Fri, 28 Feb 2020 12:03:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eMQ-0007dn-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:03:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FC714B2;
 Fri, 28 Feb 2020 04:03:18 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7B6A3F7B4;
 Fri, 28 Feb 2020 04:03:16 -0800 (PST)
Date: Fri, 28 Feb 2020 12:03:14 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
Message-ID: <20200228120314.GD36089@lakrids.cambridge.arm.com>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-2-git-send-email-amit.kachhap@arm.com>
 <20200228115736.GA3275@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228115736.GA3275@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_040319_079237_FDB21886 
X-CRM114-Status: GOOD (  27.44  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:57:37AM +0000, Will Deacon wrote:
> On Wed, Feb 19, 2020 at 06:30:39PM +0530, Amit Daniel Kachhap wrote:
> > This patch add changes for Pointer Authentication enhanced features
> > mandatory for Armv8.6. These features are,
> > 
> > * Uses an enhanced PAC generation logic which hardens finding the
> >   correct PAC value of the authenticated pointer. However, no code
> >   change is required for this.
> > 
> > * Fault is generated now when the ptrauth authentication instruction
> >   fails in authenticating the PAC present in the address. This is
> >   different from earlier case when such failures just adds an error
> >   code in the top byte and waits for subsequent load/store to abort.
> >   The ptrauth instructions which may cause this fault are autiasp,
> >   retaa etc.
> > 
> > The above features are now represented by additional configurations
> > for the Address Authentication cpufeature. These different
> > configurations are now updated to FTR_EXACT instead of FTR_LOWER_SAFE
> > as they all have different behaviour.
> > 
> > The fault received in the kernel due to FPAC is treated as Illegal
> > instruction and hence signal SIGILL is injected with ILL_ILLOPN as the
> > signal code. Note that this is different from earlier ARMv8.3 ptrauth
> > where signal SIGSEGV is issued due to Pointer authentication failures.
> > 
> > Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > ---
> >  arch/arm64/include/asm/esr.h       |  4 +++-
> >  arch/arm64/include/asm/exception.h |  1 +
> >  arch/arm64/include/asm/sysreg.h    | 24 ++++++++++++++++--------
> >  arch/arm64/kernel/cpufeature.c     |  4 ++--
> >  arch/arm64/kernel/entry-common.c   | 25 +++++++++++++++++++++++++
> >  arch/arm64/kernel/traps.c          | 18 ++++++++++++++++++
> >  6 files changed, 65 insertions(+), 11 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
> > index cb29253..5a1406f 100644
> > --- a/arch/arm64/include/asm/esr.h
> > +++ b/arch/arm64/include/asm/esr.h
> > @@ -35,7 +35,9 @@
> >  #define ESR_ELx_EC_SYS64	(0x18)
> >  #define ESR_ELx_EC_SVE		(0x19)
> >  #define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
> > -/* Unallocated EC: 0x1b - 0x1E */
> > +/* Unallocated EC: 0x1B */
> > +#define ESR_ELx_EC_FPAC		(0x1C)	/* EL1 and above */
> > +/* Unallocated EC: 0x1D - 0x1E */
> >  #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
> >  #define ESR_ELx_EC_IABT_LOW	(0x20)
> >  #define ESR_ELx_EC_IABT_CUR	(0x21)
> > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > index 7a6e81ca..de76772 100644
> > --- a/arch/arm64/include/asm/exception.h
> > +++ b/arch/arm64/include/asm/exception.h
> > @@ -46,4 +46,5 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
> >  void do_cp15instr(unsigned int esr, struct pt_regs *regs);
> >  void do_el0_svc(struct pt_regs *regs);
> >  void do_el0_svc_compat(struct pt_regs *regs);
> > +void do_ptrauth_fault(struct pt_regs *regs, unsigned long esr);
> >  #endif	/* __ASM_EXCEPTION_H */
> > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > index b91570f..77728f5 100644
> > --- a/arch/arm64/include/asm/sysreg.h
> > +++ b/arch/arm64/include/asm/sysreg.h
> > @@ -585,14 +585,22 @@
> >  #define ID_AA64ISAR1_APA_SHIFT		4
> >  #define ID_AA64ISAR1_DPB_SHIFT		0
> >  
> > -#define ID_AA64ISAR1_APA_NI		0x0
> > -#define ID_AA64ISAR1_APA_ARCHITECTED	0x1
> > -#define ID_AA64ISAR1_API_NI		0x0
> > -#define ID_AA64ISAR1_API_IMP_DEF	0x1
> > -#define ID_AA64ISAR1_GPA_NI		0x0
> > -#define ID_AA64ISAR1_GPA_ARCHITECTED	0x1
> > -#define ID_AA64ISAR1_GPI_NI		0x0
> > -#define ID_AA64ISAR1_GPI_IMP_DEF	0x1
> > +#define ID_AA64ISAR1_APA_NI			0x0
> > +#define ID_AA64ISAR1_APA_ARCHITECTED		0x1
> > +#define ID_AA64ISAR1_APA_ARCH_EPAC		0x2
> > +#define ID_AA64ISAR1_APA_ARCH_EPAC2		0x3
> > +#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC	0x4
> > +#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC_CMB	0x5
> > +#define ID_AA64ISAR1_API_NI			0x0
> > +#define ID_AA64ISAR1_API_IMP_DEF		0x1
> > +#define ID_AA64ISAR1_API_IMP_DEF_EPAC		0x2
> > +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2		0x3
> > +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC	0x4
> > +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC_CMB	0x5
> > +#define ID_AA64ISAR1_GPA_NI			0x0
> > +#define ID_AA64ISAR1_GPA_ARCHITECTED		0x1
> > +#define ID_AA64ISAR1_GPI_NI			0x0
> > +#define ID_AA64ISAR1_GPI_IMP_DEF		0x1
> >  
> >  /* id_aa64pfr0 */
> >  #define ID_AA64PFR0_CSV3_SHIFT		60
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 8d1c979..a4f8adb 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
> >  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
> >  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
> >  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> > -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
> > +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
> >  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> > -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> > +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> >  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
> >  	ARM64_FTR_END,
> 
> Hmm. This is a user-visible change and should probably be in its own patch.
> It also means we will no longer advertise PAC on systems where not all of
> the cores have "Enhanced PAC"; is that really necessary?

It matters for KVM, since a guest won't expect the enhanced PAC trap if
the ID registers say it does not have it.

For userspace, the difference is it'll get a SIGILL on the AUT*
instruction rather than a SIGSEGV when using the result of the AUT*
instruction.

> Generally we rely on incremental updates to unsigned ID register fields
> being a superset (i.e. compatible with) the old behaviour. If that's not
> the case here, then older kernels are broken and we may need new HWCAPs.

In this case, the behaviour isn't a strict superset. Enhanced PAC
unconditionally changed the behaviour of AUT* (i.e. there's no opt-in
with a control bit), but it's not clear to me how much this matters for
userspace.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC0E1C54BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHgFcGmBT/0FVvYjASubXEh8j8j/Qorsez8RCWa9E70=; b=BD18BF8syIr9D5
	MkEcgD+2o78cLCaMmWfNI12ElbqpirE/5evXmASx37fS91FNHQXVxAa3KnNkSB6jhOD3/3lbzM/9T
	CNIXL/IjZ6bwZNJL/+IJRHB6OCOlXVnURoRxGYHMbR840nLhhW9bUDQrGu/ZLbyliehjqUIdxcAM9
	2HNGRGdLnnP1DWDvqXyNUx1Lni18zw29eC7JFJSgNgwBWQxukkGoR4NlvO3GjNVlRNSwwoh3DWIyB
	WGodrGc0wLvbdI1Zv0k45agSmHIL2a4qjU0IPtSmbVptwYyyGwcBGkqZac1id2fHZmA9YgCSUUkdU
	6onF2yRlIYxcX3MRtimg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw6O-00007U-Fu; Tue, 05 May 2020 11:51:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw6F-00006F-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:51:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4380230E;
 Tue,  5 May 2020 04:50:59 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.25.241])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D3673F68F;
 Tue,  5 May 2020 04:50:57 -0700 (PDT)
Date: Tue, 5 May 2020 12:50:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH V3 04/16] arm64/cpufeature: Introduce ID_PFR2 CPU register
Message-ID: <20200505115054.GC82823@C02TD0UTHF1T.local>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-5-git-send-email-anshuman.khandual@arm.com>
 <20200505111241.GF19710@willie-the-truck>
 <20200505111607.GA82823@C02TD0UTHF1T.local>
 <20200505112718.GH19710@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505112718.GH19710@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_045100_095103_4B9AD4A0 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:27:19PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 12:16:07PM +0100, Mark Rutland wrote:
> > On Tue, May 05, 2020 at 12:12:41PM +0100, Will Deacon wrote:
> > > On Sat, May 02, 2020 at 07:03:53PM +0530, Anshuman Khandual wrote:
> > > > This adds basic building blocks required for ID_PFR2 CPU register which
> > > > provides information about the AArch32 programmers model which must be
> > > > interpreted along with ID_PFR0 and ID_PFR1 CPU registers. This is added
> > > > per ARM DDI 0487F.a specification.
> > > > 
> > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Marc Zyngier <maz@kernel.org>
> > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > Cc: James Morse <james.morse@arm.com>
> > > > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > > Cc: kvmarm@lists.cs.columbia.edu
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > Cc: linux-kernel@vger.kernel.org
> > > > 
> > > > Suggested-by: Mark Rutland <mark.rutland@arm.com>
> > > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > > Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> > > > ---
> > > >  arch/arm64/include/asm/cpu.h    |  1 +
> > > >  arch/arm64/include/asm/sysreg.h |  4 ++++
> > > >  arch/arm64/kernel/cpufeature.c  | 11 +++++++++++
> > > >  arch/arm64/kernel/cpuinfo.c     |  1 +
> > > >  arch/arm64/kvm/sys_regs.c       |  2 +-
> > > >  5 files changed, 18 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
> > > > index b4a40535a3d8..464e828a994d 100644
> > > > --- a/arch/arm64/include/asm/cpu.h
> > > > +++ b/arch/arm64/include/asm/cpu.h
> > > > @@ -46,6 +46,7 @@ struct cpuinfo_arm64 {
> > > >  	u32		reg_id_mmfr3;
> > > >  	u32		reg_id_pfr0;
> > > >  	u32		reg_id_pfr1;
> > > > +	u32		reg_id_pfr2;
> > > >  
> > > >  	u32		reg_mvfr0;
> > > >  	u32		reg_mvfr1;
> > > > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > > > index e5317a6367b6..c977449e02db 100644
> > > > --- a/arch/arm64/include/asm/sysreg.h
> > > > +++ b/arch/arm64/include/asm/sysreg.h
> > > > @@ -153,6 +153,7 @@
> > > >  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
> > > >  #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
> > > >  #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
> > > > +#define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
> > > 
> > > nit: but please group these defines by name rather than encoding.
> > 
> > So far we've *always* grouped these by encoding in this file, so can we
> > keep things that way for now? Otherwise we're inconsistent with both
> > schemes.
> 
> Hmm, but it's really hard to read sorted that way and we'll end up with
> duplicate definitions like we had for some of the field offsets already.

I appreciate that, and don't disagree that the current scheme is not
obvious.

I just want to ensure that we don't make things less consistent, and if
we're going to change the scheme in order to make that easier, it should
be a separate patch. There'll be other changes like MMFR4_EL1, and we
should probably add a comment as to what the policy is either way (e.g.
if we're just grouping at the top level, or if that should be sorted
too).

Thanks,
Mark.

> The only ID register that seems to be out of place atm is MMFR4, which I
> can move (see below)
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 2dd3f4ca9780..137201ea383b 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -140,6 +140,7 @@
>  #define SYS_ID_MMFR1_EL1		sys_reg(3, 0, 0, 1, 5)
>  #define SYS_ID_MMFR2_EL1		sys_reg(3, 0, 0, 1, 6)
>  #define SYS_ID_MMFR3_EL1		sys_reg(3, 0, 0, 1, 7)
> +#define SYS_ID_MMFR4_EL1		sys_reg(3, 0, 0, 2, 6)
>  
>  #define SYS_ID_ISAR0_EL1		sys_reg(3, 0, 0, 2, 0)
>  #define SYS_ID_ISAR1_EL1		sys_reg(3, 0, 0, 2, 1)
> @@ -147,7 +148,6 @@
>  #define SYS_ID_ISAR3_EL1		sys_reg(3, 0, 0, 2, 3)
>  #define SYS_ID_ISAR4_EL1		sys_reg(3, 0, 0, 2, 4)
>  #define SYS_ID_ISAR5_EL1		sys_reg(3, 0, 0, 2, 5)
> -#define SYS_ID_MMFR4_EL1		sys_reg(3, 0, 0, 2, 6)
>  #define SYS_ID_ISAR6_EL1		sys_reg(3, 0, 0, 2, 7)
>  
>  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

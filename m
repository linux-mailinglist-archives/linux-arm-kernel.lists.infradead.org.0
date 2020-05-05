Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009DC1C5444
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNNIOONueBNtcEmfAJbV+A8Sc1x8oNIoGGc/sJfDJPg=; b=o20V+cqNy3mF7H
	vJSJBt7zdXUmgRAeVFfLgoAbyklEp4+kF83J2oorpJ75o/Qg18U7GfFLE6CFrMEXv/MtENqPlLhiT
	pOOM2qMC9qyMd4sdjA6VoNjTkQox+H67BSb7Kqbd6Nx2ddnGGC9jXzsMbHzLZM5998g3UrmiNjaSH
	SMASokqQExmr5H2JWplbRdngo4v6L+qvM1Hs9zfNIUG50b3mJMMnlKnGe+x7NpvqmylR6fo3lzmht
	C1dXQzqwlEb9a2nazY5GVw/zCGb+9X2RTxuUnOV7oKhblAVeaXB/YkIprPFCEaE0isMAI23bP+J2i
	DRAKJFqw+DMNz6dtu33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvb8-0001Hd-P5; Tue, 05 May 2020 11:18:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvb0-0001EP-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:18:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E59D130E;
 Tue,  5 May 2020 04:18:41 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.25.241])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 701963F305;
 Tue,  5 May 2020 04:18:40 -0700 (PDT)
Date: Tue, 5 May 2020 12:18:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH V3 04/16] arm64/cpufeature: Introduce ID_PFR2 CPU register
Message-ID: <20200505111837.GB82823@C02TD0UTHF1T.local>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-5-git-send-email-anshuman.khandual@arm.com>
 <20200505111241.GF19710@willie-the-truck>
 <20200505111607.GA82823@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505111607.GA82823@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_041842_688475_574F8031 
X-CRM114-Status: GOOD (  15.96  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:16:07PM +0100, Mark Rutland wrote:
> On Tue, May 05, 2020 at 12:12:41PM +0100, Will Deacon wrote:
> > On Sat, May 02, 2020 at 07:03:53PM +0530, Anshuman Khandual wrote:
> > > This adds basic building blocks required for ID_PFR2 CPU register which
> > > provides information about the AArch32 programmers model which must be
> > > interpreted along with ID_PFR0 and ID_PFR1 CPU registers. This is added
> > > per ARM DDI 0487F.a specification.
> > > 
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Marc Zyngier <maz@kernel.org>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: James Morse <james.morse@arm.com>
> > > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Cc: kvmarm@lists.cs.columbia.edu
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: linux-kernel@vger.kernel.org
> > > 
> > > Suggested-by: Mark Rutland <mark.rutland@arm.com>
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> > > ---
> > >  arch/arm64/include/asm/cpu.h    |  1 +
> > >  arch/arm64/include/asm/sysreg.h |  4 ++++
> > >  arch/arm64/kernel/cpufeature.c  | 11 +++++++++++
> > >  arch/arm64/kernel/cpuinfo.c     |  1 +
> > >  arch/arm64/kvm/sys_regs.c       |  2 +-
> > >  5 files changed, 18 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
> > > index b4a40535a3d8..464e828a994d 100644
> > > --- a/arch/arm64/include/asm/cpu.h
> > > +++ b/arch/arm64/include/asm/cpu.h
> > > @@ -46,6 +46,7 @@ struct cpuinfo_arm64 {
> > >  	u32		reg_id_mmfr3;
> > >  	u32		reg_id_pfr0;
> > >  	u32		reg_id_pfr1;
> > > +	u32		reg_id_pfr2;
> > >  
> > >  	u32		reg_mvfr0;
> > >  	u32		reg_mvfr1;
> > > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > > index e5317a6367b6..c977449e02db 100644
> > > --- a/arch/arm64/include/asm/sysreg.h
> > > +++ b/arch/arm64/include/asm/sysreg.h
> > > @@ -153,6 +153,7 @@
> > >  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
> > >  #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
> > >  #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
> > > +#define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
> > 
> > nit: but please group these defines by name rather than encoding.
> 
> So far we've *always* grouped these by encoding in this file, so can we
> keep things that way for now? Otherwise we're inconsistent with both
> schemes.

Unless you just meant "please put a newline before this" to avoid
grouping without affecting ordering, in which case agreed!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2860FC3567
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQ5tOCFsOrmnI7ayUg6YLoRIpgzZPxuZ4zsW5MQ/qPQ=; b=s0qIGuJY5DVtli
	kLTZMH2piPElt9S2LFWrssj7p1SPMGN0DL1YaMV3SZ51hgfrwSJ/qC+GDDy6ocTmOschhsUecXy8k
	LJm85fEGBG1PUWCEoRbVLW5XFjOtMLkapbEuzhtBL42qW7akMf/xVv3JIfIX8K9W6Di7D9W5DNbm6
	Gc8xf2vH/Cz2O5tju9SMt3lpjD/p2dH+Aw118zcRMkOes9BKRpIX0qo2MBC6DBFlcj3jIvzBlraqF
	0YEBb3Rs9H1RTCDRNPhxnERFHB195s7RIPB/d+OkHDLq34QYAam14vFsXLo6gaggDil8OSgSBifgk
	w0YmCqVeEK1bwDMaxKkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFI3g-0001oM-Ba; Tue, 01 Oct 2019 13:19:16 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFI3X-0001nf-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:19:08 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFI3N-0005kv-Pu; Tue, 01 Oct 2019 15:18:57 +0200
Date: Tue, 1 Oct 2019 14:18:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Message-ID: <20191001141848.762296bd@why>
In-Reply-To: <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-2-justin.he@arm.com>
 <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, justin.he@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, james.morse@arm.com, willy@infradead.org,
 kirill.shutemov@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, punitagrawal@gmail.com,
 tglx@linutronix.de, akpm@linux-foundation.org, hejianet@gmail.com,
 Kaly.Xin@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_061907_567632_7416CD4C 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jia He <justin.he@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Punit Agrawal <punitagrawal@gmail.com>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 13:54:47 +0100
Will Deacon <will@kernel.org> wrote:

> On Mon, Sep 30, 2019 at 09:57:38AM +0800, Jia He wrote:
> > We unconditionally set the HW_AFDBM capability and only enable it on
> > CPUs which really have the feature. But sometimes we need to know
> > whether this cpu has the capability of HW AF. So decouple AF from
> > DBM by new helper cpu_has_hw_af().
> > 
> > Signed-off-by: Jia He <justin.he@arm.com>
> > Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  arch/arm64/include/asm/cpufeature.h | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> > index 9cde5d2e768f..949bc7c85030 100644
> > --- a/arch/arm64/include/asm/cpufeature.h
> > +++ b/arch/arm64/include/asm/cpufeature.h
> > @@ -659,6 +659,16 @@ static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
> >  	default: return CONFIG_ARM64_PA_BITS;
> >  	}
> >  }
> > +
> > +/* Check whether hardware update of the Access flag is supported */
> > +static inline bool cpu_has_hw_af(void)
> > +{
> > +	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
> > +		return read_cpuid(ID_AA64MMFR1_EL1) & 0xf;  
> 
> 0xf? I think we should have a mask in sysreg.h for this constant.

We don't have the mask, but we certainly have the shift.

GENMASK(ID_AA64MMFR1_HADBS_SHIFT + 3, ID_AA64MMFR1_HADBS_SHIFT) is a bit
of a mouthful though. Ideally, we'd have a helper for that.

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

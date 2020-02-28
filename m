Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0417360C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcS9rm8R4GFFb6AvuRxbVcNiYwXsdEtsg8MJk9aS8LU=; b=iJgdzq2ZZ7yyt5
	yaTxfUjhozze9S/qz8vpGzwVQR5qUJfKKLpUuc8NrlL0GrylsNB+CHiec3aGbQpudQl3BH/hi2LK9
	MJSBrSnpwPgQt2Wzv6PRIYlid/q7MHg+iL23boz+xOWZMPGtrfLnHTcKd+ctrmeBKlpLA9//0RS0I
	hYgh9s4NWtUnwhzvURCVge7wEALIXubFe56RgWlzPG8Z/AWslLunKIAgAhZSA9gEo1LhrpKZop1Tc
	eMjOC6phnL1mCZiZdYT69I+vtY4Y6Cr5z0OQKunLSp7CWRdTBEVGVLBEZ09uznqDv8hD9nOy68Lbh
	N916j3IPtRb4tad4U2jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7drX-0003fH-MM; Fri, 28 Feb 2020 11:31:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7drF-0003eu-Kf
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:31:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3C994B2;
 Fri, 28 Feb 2020 03:31:04 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3AB753F73B;
 Fri, 28 Feb 2020 03:31:03 -0800 (PST)
Date: Fri, 28 Feb 2020 11:31:01 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64: kprobe: disable probe of fault prone ptrauth
 instruction
Message-ID: <20200228113100.GC36089@lakrids.cambridge.arm.com>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-3-git-send-email-amit.kachhap@arm.com>
 <20200227164817.GA31259@lakrids.cambridge.arm.com>
 <52db2533-488a-1e27-947c-ec92048f26ae@arm.com>
 <20200228111856.GB2941@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228111856.GB2941@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_033107_612310_1FF394B5 
X-CRM114-Status: GOOD (  19.90  )
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
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:18:59AM +0000, Will Deacon wrote:
> On Fri, Feb 28, 2020 at 04:42:10PM +0530, Amit Kachhap wrote:
> > On 2/27/20 10:18 PM, Mark Rutland wrote:
> > > On Wed, Feb 19, 2020 at 06:30:40PM +0530, Amit Daniel Kachhap wrote:
> > > > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > > > index 4a9e773..87f7c8a 100644
> > > > --- a/arch/arm64/kernel/insn.c
> > > > +++ b/arch/arm64/kernel/insn.c
> > > > @@ -63,6 +63,7 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
> > > >   	case AARCH64_INSN_HINT_WFI:
> > > >   	case AARCH64_INSN_HINT_SEV:
> > > >   	case AARCH64_INSN_HINT_SEVL:
> > > > +	case AARCH64_INSN_HINT_AUTIASP:
> > > >   		return false;
> > > >   	default:
> > > >   		return true;
> > > 
> > > I'm afraid that the existing code here is simply wrong, and this is
> > > adding to the mess.
> > > 
> > > We have no idea what HINT space instructions will be in the future, so
> > > the only sensible implementations of aarch64_insn_is_nop() are something
> > > like:
> > > 
> > > bool __kprobes aarch64_insn_is_nop(u32 insn)
> > > {
> > > 	return insn == aarch64_insn_gen_hint(AARCH64_INSN_HINT_NOP);
> > > }
> > > 
> > > ... and if we want to check for other HINT instructions, they should be
> > > checked explicitly.
> > > 
> > > Can you please change aarch64_insn_is_nop() as above?
> > 
> > Agree that current implementation is unclear.
> > I will implement as you suggested.
> 
> Well, please don't throw the baby out with the bath water. The existing
> code might be badly structured, but I think it's going a bit far to say
> it's "simply wrong". We need a whitelist /somewhere/ and I'd prefer not
> to regress the existing behaviour just because the whitelist is embedded
> in a function with "is_nop" in the name.

Ok; we can follow up with a more complete cleanup after these patches
have been merged.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

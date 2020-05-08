Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F81CAA70
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 14:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAcn/Ex56IKdTAmYcOuJnn3IMzmCWrn0486iHP8c3ZI=; b=Aza5hI7e2pY4t5
	9HdqkgsOTzfcCp4HIFw/fXs8SgkrPrhEsoQ1WfrU/aisc0Aozq5LsK5/ldxQwxbuPZUjN+CJxiqFl
	4FB+folzte+TKB6wA0kDUSC0M+BYSDzlain45yp0j8JvlMNK//hnD97HP4qq6jEq4vQH5eGGv1+hD
	fCqj0wzK/opmNepXy2SVmhr1A526bj3U4PvYogdpMgBPyntl4sMHqT8+coU9YW8q2b8qY52SRcLbU
	wxJDEfqbAWYWfJLEI6xjzaOOg7mSoX9wrCaAwd2GgJb1ZC+SWl7qSGSaKt6OulcD3x0X80rEE780S
	Hf1qnIDm7z/KHc6YmZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX1zy-00022q-3i; Fri, 08 May 2020 12:21:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX1zr-00022S-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 12:20:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B22E2208D6;
 Fri,  8 May 2020 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588940454;
 bh=FW6rwatJpH3f9YqjBLgABYd8viojkg66m20HhLLxy+E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0iY3OCVhd9Xw00lEJKywiWeb5005YOoZLT2lUuSCBbm+9lHODalCeg/IODZ/a1+Mg
 VdZDi9cpYRFrP/8f2kldeQ6u6d5yguyICPpLXjUIH233W2dhLuEgJBMpgw4AB0G00e
 yYfq36Pcx5b+5NY7lMFIe1HBLT+u7dtIXRMCKMDA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jX1zp-00Aacj-2D; Fri, 08 May 2020 13:20:53 +0100
Date: Fri, 8 May 2020 13:20:51 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 09/26] KVM: arm64: vgic-v3: Take cpu_if pointer directly
 instead of vcpu
Message-ID: <20200508132051.490943f8@why>
In-Reply-To: <3174eaad-7d8d-0c52-d71c-afc6b991b636@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-10-maz@kernel.org>
 <3174eaad-7d8d-0c52-d71c-afc6b991b636@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 andre.przywara@arm.com, christoffer.dall@arm.com, Dave.Martin@arm.com,
 jintack@cs.columbia.edu, alexandru.elisei@arm.com, gcherian@marvell.com,
 prime.zeng@hisilicon.com, will@kernel.org, catalin.marinas@arm.com,
 mark.rutland@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_052055_754534_525B2E48 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 17:26:06 +0100
James Morse <james.morse@arm.com> wrote:

Hi James,

> Hi Marc, Christoffer,
> 
> On 22/04/2020 13:00, Marc Zyngier wrote:
> > From: Christoffer Dall <christoffer.dall@arm.com>
> > 
> > If we move the used_lrs field to the version-specific cpu interface
> > structure, the following functions only operate on the struct
> > vgic_v3_cpu_if and not the full vcpu:
> > 
> >   __vgic_v3_save_state
> >   __vgic_v3_restore_state
> >   __vgic_v3_activate_traps
> >   __vgic_v3_deactivate_traps
> >   __vgic_v3_save_aprs
> >   __vgic_v3_restore_aprs
> > 
> > This is going to be very useful for nested virt,   
> 
> ... because you don't need to consider whether the vcpu is running in vEL2?

That's one of the reasons, as vEL2 is still EL1.

But things become really fun when you run a L2 guest, which is an EL1
guest from the PoV of the guest hypervisor (aka L1). At this stage
what you feed to the HW is not the state that could be populated by L0
for L1, but instead what L1 has created for L2 (with a bit of
additional repainting to adjust some of the interrupt numbers).

So we build a shadow cpu_if on the fly and pass it to the normal vgic
handling functions. I told you it was fun! ;-)

> > so move the used_lrs
> > field and change the prototypes and implementations of these functions to
> > take the cpu_if parameter directly.  
> 
> 
> > No functional change.  
> 
> Looks like no change!
> 
> Reviewed-by: James Morse <james.morse@arm.com>

Thanks!

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

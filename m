Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCBB165EF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kh/jeHqIpABsw8RONMIviHW0g4xZe+GEh6ihaF9huBI=; b=PpkrXNnWq6a82+BtEO28/Dik3
	rPrYcwB5o+pvO1goUso91kKvQeeGpGrzJ60eDTpq9cjcKLeTnf/4Qrb18RzIPFU8G/QUFMzmteab6
	xp8kVDYQ5Uvwdpa/p/l8RQoxZKME0BjQRh1vug65b4mLK8uZISzUxuBnoCZRrBeBN7wWAg6cIDlEa
	3QZoabLqWNYZ040U1O62oYCBtVVwQGvRLpQTcNrQkjzS1SZpSy5k35o1bM8510MxvDBkW0izOO70v
	wPeeZ7W6TNf9fqFFaWCPbx0ldmnbbFdf52GpdSZjeDMBxpKaLN6pQOxr9ft/jIvhIJ5jmwp/yuEMc
	vl0UmMvIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4m3U-0002Jn-98; Thu, 20 Feb 2020 13:39:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4m3K-0002JH-2V
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:39:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BDF520658;
 Thu, 20 Feb 2020 13:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582205981;
 bh=JjgkxxmMC3eoZGLl0FzNNG/RbHLOWltYLPrCNyNn2RI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bijoiy4E57jVZ2T4gC3E9WetYKiNwswOuTwcZ/ovSXO0ov6vNsE5bveCeryaMSdu8
 6rEB9bhZyVUa6KiTS1DsJd3c848jeDG6roGvuiEXzaMss4/L8L7SauptG0qPQrvzjn
 dLF0+ln949avGswLAngaPzCcb5wr/doJUBGEwzok=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4m3H-006jra-Rc; Thu, 20 Feb 2020 13:39:39 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 13:39:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
In-Reply-To: <6b3a2e73-6c28-e25e-3375-692bdbd1d48b@samsung.com>
References: <mailman.29637.1581344013.2486.linux-arm-kernel@lists.infradead.org>
 <20200218213712.GD1382@makrotopia.org> <20200219083113.52c1a8fb@why>
 <CGME20200220130838eucas1p12bc652ecd882204a8ffda5ed28f48bd5@eucas1p1.samsung.com>
 <6b3a2e73-6c28-e25e-3375-692bdbd1d48b@samsung.com>
Message-ID: <c1f97a63d9d64b1c29402547f1e5844b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: b.zolnierkie@samsung.com, daniel@makrotopia.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_053942_156701_1C55CEC4 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Golle <daniel@makrotopia.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-20 13:08, Bartlomiej Zolnierkiewicz wrote:
> Hi Marc,
> 
> On 2/19/20 9:31 AM, Marc Zyngier wrote:
>> On Tue, 18 Feb 2020 22:37:12 +0100
>> Daniel Golle <daniel@makrotopia.org> wrote:
>> 
>> Daniel,
>> 
>> Please keep people on cc, it helps with the discussion.
>> 
>>>> Message-ID: <20200210141324.21090-1-maz@kernel.org>
>>>> 
>>>> KVM/arm was merged just over 7 years ago, and has lived a very quiet
>>>> life so far. It mostly works if you're prepared to deal with its
>>>> limitations, it has been a good prototype for the arm64 version,
>>>> but it suffers a few problems:
>>>> 
>>>> - It is incomplete (no debug support, no PMU)
>>>> - It hasn't followed any of the architectural evolutions
>>>> - It has zero users (I don't count myself here)
>>> 
>>> Not true. At least I'm using KVM on CortexA7 (sun7i aka. Allwinner 
>>> A20)
>>> and it has been quite useful until now (running low memory footprint
>>> OpenWrt-based guests on yocto/OpenEmbedded host)
>> 
>> OK, so we have a user!
> 
> We have also started using it recently (as described by Marek in
> https://lore.kernel.org/linux-arm-kernel/621a0a92-6432-6c3e-cb69-0b601764fa69@samsung.com/#t
> ).

As I said in reply to Marek, that's not much of an explanation on
*how* you're using it, and how dependent you are on the feature being
available. "We use it internally" means nothing to me.

>>>> - It is more and more getting in the way of new arm64 developments
>>> 
>>> Can you elaborate more on how it is getting in the way? Just in terms
>>> of effort to maintain the necessary abstractions or does something
>>> really block ARM64 KVM support?
>> 
>> Useless abstractions are indeed one of the problems. Essentially,
>> KVM/arm has become a pile of empty stubs that are added to make the
>> thing compile. This doesn't bode well for the future.
>> 
>> The other aspect is that new features appearing on arm64 (nested virt,
>> enclaves, and potentially some more) are tearing the code-base apart,
>> and doing so while keeping 32bit alive and kicking would be a
>> challenge. I'm not saying it is impossible, just that it is hard, and
>> for very little gain, specially given that *nobody* contributes to the
>> port.
> 
> I have very basic knowledge of virt/kvm/arm/ codebase (so my question
> may be quite stupid) but wouldn't it be possible to split the codebase
> into legacy virt/kvm/arm32/ and virt/kvm/arm64/ parts (this would cause
> some code duplication but at the same time would stop 32bit port from
> blocking new developments for 64bit one)?

Sigh... "some code duplication" is a wee bit of an understatement:

$ find virt/kvm/arm -name '*.[ch]'| xargs wc -l
   2449 virt/kvm/arm/mmu.c
    378 virt/kvm/arm/trace.h
    988 virt/kvm/arm/vgic/vgic-mmio.c
    543 virt/kvm/arm/vgic/vgic-init.c
   2776 virt/kvm/arm/vgic/vgic-its.c
    546 virt/kvm/arm/vgic/vgic-mmio-v2.c
    321 virt/kvm/arm/vgic/vgic.h
    141 virt/kvm/arm/vgic/vgic-irqfd.c
     38 virt/kvm/arm/vgic/trace.h
    693 virt/kvm/arm/vgic/vgic-v3.c
   1011 virt/kvm/arm/vgic/vgic.c
    741 virt/kvm/arm/vgic/vgic-kvm-device.c
   1047 virt/kvm/arm/vgic/vgic-mmio-v3.c
    451 virt/kvm/arm/vgic/vgic-v4.c
    300 virt/kvm/arm/vgic/vgic-debug.c
    208 virt/kvm/arm/vgic/vgic-mmio.h
    504 virt/kvm/arm/vgic/vgic-v2.c
    200 virt/kvm/arm/mmio.c
    869 virt/kvm/arm/pmu.c
    525 virt/kvm/arm/psci.c
     71 virt/kvm/arm/hypercalls.c
   1180 virt/kvm/arm/arch_timer.c
    131 virt/kvm/arm/pvtime.c
   1723 virt/kvm/arm/arm.c
    204 virt/kvm/arm/aarch32.c
     57 virt/kvm/arm/perf.c
   1130 virt/kvm/arm/hyp/vgic-v3-sr.c
     49 virt/kvm/arm/hyp/timer-sr.c
    136 virt/kvm/arm/hyp/aarch32.c
  19410 total

The most complicated parts (the MMU code, the GIC support, the timers)
will all go through drastic changes in the coming months (just go 
through
the NV series, for example). Do I want to duplicate this and maintain it
as a separate port? The answer is obviously *NO WAY*.

If someone volunteers and wants to do that, that's their call. But 
somehow
I doubt you'll find anyone willing to do this.

The alternative is to mark KVM/arm as orphaned, let it bit-rot, and then
remove it, ia64 style. The benefit? None whatsoever. I'd rather remove 
it
while it is in a good state and maintained in all stable kernels.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

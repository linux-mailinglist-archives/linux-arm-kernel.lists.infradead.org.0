Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7212F1EE845
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ylBmmiWCPi4QAe8OQ/t0+EoZOvGVJ3EsJLCOUtt9MEo=; b=NJlc3ISptiZmb2vkMKpNM6gAy
	B4RlSYtms3TDoqB7owPtnsjyF2RktV1c2QV1q2B0pK1YFb9cHXy5bL7lxV25dacvb8kc+4Vy3Iwlq
	AjPU+vwTfIO369OoqFXxXoowqtlLC7EcjblDum7Ud1RBNdqsfCR471u484Ao06kn5zkOUQMdqfF2j
	TS85JZXe2cw+6ei9osMuFzN3SbBztlium8GtJiRnl5u1UvoWjh4Z9lSoQmT5CyCrwmOrIuleBTqD7
	bDlL2mrRpDmLjv72p7G7Lm+H2AoUtCi4IZb+/f1Pb6KIyRB7av/vNUM/WWR89rHgkPrjVTr0cFDWy
	NUDpsQqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsPr-0004eh-E5; Thu, 04 Jun 2020 16:08:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsPR-0004a5-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 16:08:02 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BFCA2072E;
 Thu,  4 Jun 2020 16:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591286880;
 bh=LB1iQXM1cmQa0DCO6aeQhZ9lFdA/gLvV3FcMADdzrHc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vyjWov2aHsiM1oF1DSN1Z+D0x09dFGnqKhy5UKKhJgTZcQkHPqVyOOQW+r8oTwMXa
 HGHynti10CP+7KwrwCZ7rFCRcCYstPSliLfN3TJVlccU0j+IEJsRZTd9QBT3R6bDex
 j1+wisTa0zsjBc+XRUwVkoWxZyKQJZsH+fxQiwss=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgsPO-000IHa-T8; Thu, 04 Jun 2020 17:07:59 +0100
MIME-Version: 1.0
Date: Thu, 04 Jun 2020 17:07:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
In-Reply-To: <CAMj1kXEnJOUSWZTMGCn6cS3OiM9_DpJUj-MekENySf1x6Y1W5g@mail.gmail.com>
References: <20200415082922.32709-1-ardb@kernel.org>
 <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
 <20200604154141.4983aeaa@why> <20200604150122.GA3650@willie-the-truck>
 <fab4fb9e66fe48d82c9856a7d5839335@kernel.org>
 <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
 <CAMj1kXEnJOUSWZTMGCn6cS3OiM9_DpJUj-MekENySf1x6Y1W5g@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <cf7ac1b246b1a21f3a9e67d0fc991188@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ardb@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, james.morse@arm.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_090801_184038_F540AFF0 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-04 16:48, Ard Biesheuvel wrote:
> On Thu, 4 Jun 2020 at 17:41, Ard Biesheuvel <ardb@kernel.org> wrote:
>> 
>> On Thu, 4 Jun 2020 at 17:25, Marc Zyngier <maz@kernel.org> wrote:
>> >
>> > On 2020-06-04 16:01, Will Deacon wrote:
>> > > On Thu, Jun 04, 2020 at 03:41:41PM +0100, Marc Zyngier wrote:
>> > >> Hi all,
>> > >>
>> > >> On Tue, 28 Apr 2020 15:49:35 +0100
>> > >> Will Deacon <will@kernel.org> wrote:
>> > >>
>> > >> > On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
>> > >> > > TEXT_OFFSET on arm64 is a historical artifact from the early days of
>> > >> > > the arm64 port where the boot protocol was basically 'copy this image
>> > >> > > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
>> > >> > > to put the swapper page tables. When the arm64 port was merged for
>> > >> > > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
>> > >> > > to allow the bootloader to discover it dynamically rather than hardcode
>> > >> > > it to 512 KB.
>> > >> > >
>> > >> > > [...]
>> > >> >
>> > >> > Applied to arm64 (for-next/misc), thanks!
>> > >> >
>> > >> > [1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
>> > >> >       https://git.kernel.org/arm64/c/cfa7ede20f13
>> > >>
>> > >> This breaks a guest kernel booted with kvmtool (tested on my d05).
>> > >> Reverting it on top of 6929f71e46bd makes it work again. I haven't yet
>> > >> investigated what is happening here though.
>> > >
>> > > Weird, that's a combination I test, just not on d05. Are you using
>> > > defconfig? Can you share your full kvmtool invication please?
>> >
>> > Ah, good point. Not defconfig, but one that allows me to run the same
>> > kernel on my whole zoo[1]. As for the kvmtool invocation, it is pretty
>> > basic:
>> >
>> > lkvm run -m 512 -c 4 -p earlycon -k arch/arm64/boot/Image
>> >
>> 
>> OK, so my suspicions is that your config does not enable
>> CONFIG_RANDOMIZE_BASE, and that kvmtool ignores the text offset value
>> in the header altogether.
> 
> arm/aarch64/include/kvm/kvm-arch.h:#define ARM_KERN_OFFSET(kvm)
> ((kvm)->cfg.arch.aarch32_guest  ?       \
> arm/aarch64/include/kvm/kvm-arch.h-                             0x8000
>                          :       \
> arm/aarch64/include/kvm/kvm-arch.h-                             
> 0x80000)

Yeah, nice catch. I'll try and fix the sucker.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

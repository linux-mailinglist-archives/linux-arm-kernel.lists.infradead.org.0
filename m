Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7230E85FA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDMPNxSM1zzF0JggO5cKv8NRKL3usoiNKlJNuKHQmTE=; b=ut5yd27kWunOXd
	gUCDQf07J8FQiSmissvK6TM8PSyMyi+4ut74mLXQ26PSLGqNIw430gY+ciG0vugZPcxhCe1C6Zi/Y
	C29pLrOVgRndHaZuzrC6JUiyBh8z6pdSgkDi0oKNixlHpqOEcNv9n4O/3f+MKBsdkE4cQQRn3K+Q9
	YBkPi5+tk6tQaOJo0EURiQEx/z8yz6uHIBuyuOHXx4KkTaVb/VQu7c5cAdXFj8SEITHSzGKIeoNsG
	PBev2PTvLalBfiBr4mKS/TMYJhCsGQXPYHHbmHDy+3z06qO+B5AyGiVkMxUcdWHOXtTLRZK/VryIV
	ExBMbp+cp13xz6pMeMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfga-0003Ih-Rs; Thu, 08 Aug 2019 10:30:21 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfgK-0002Uc-Fa
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:30:06 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 1FE0E5C23A0;
 Thu,  8 Aug 2019 12:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565260203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KiC0Ngf2qkqda5zMZytsOSgg+LGkpozzu9hXghEruTQ=;
 b=tSVJialfE8Y2SX8XvvjGeD7t2HNg26MQk/6hU1OEA5mN0PFERUYwv7etzZ4VHWsbvMExKQ
 p/PEATsOWR9dyjxP/ayC2dJ49A8cZaaRm0jW2F8KYn1C2aWIOpDSHZrEOeDoEv6hHsiuxT
 t7TeY1Q/+DIRH0IWtxeiKt7fOjWZ8Hc=
MIME-Version: 1.0
Date: Thu, 08 Aug 2019 12:30:03 +0200
From: Stefan Agner <stefan@agner.ch>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
In-Reply-To: <20190808093522.GG10425@arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <20190808093522.GG10425@arm.com>
Message-ID: <09a5d28f865ef0bd034ba9acbe1b5334@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033004_825789_B59DB457 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-08 11:35, Dave Martin wrote:
> On Thu, Aug 08, 2019 at 09:36:42AM +0200, Stefan Agner wrote:
>> [resend this time with the correct mailing list address]
>>
>> Hello,
>>
>> I am trying to detect whether an ARMv8 system running in AArch64 state
>> supports AArch32 state from a user space process. The arm64_features[]
>> in
> 
> Why?  Is this just for diagnostic purposes, or some programmatic reason?

The use case I currently have in mind is to decide whether to show
32-bit ARM Docker images in a UI (or arm32v7 images how it is nowadays
called in Docker land).

> 
> In the latter case, just try to do what ever it is you want to do that
> depends on AArch32: if it fails, you don't have AArch32.


Yeah one option I considered was just fetching a minimalistic arm32v7
container, but still seems a bit excessive.

>
>> arch/arm64/kernel/cpufeature.c lists a CPU feature "32-bit EL0 Support".
>> However, afaik this CPU feature is not directly exposed to user-space.
>> The features do get printed in the kernel log, but that requires
>> privileges and only works directly after boot. There is
> 
> Please don't scrape dmesg :)
> 
> However, detecting AArch32 support is a bit annoying due to the fact
> that there's no hwcap or similar.
> 
>> system_supports_32bit_el0() which is used in various places in the arm64
>> architecture code. One of the instances where I can make sense of from
>> user space is through the personality system call. One idea is to call
>> personality(PER_LINUX32). It would then return error code 22 in case
>> 32-bit is not supported in user space. However, if successful this
>> changes the personality of the current process which might have side
>> effects which I do not want...?
>>
>> I started to ask myself what PER_LINUX32 actually changes. From what I
>> can tell it only changes the behavior of /proc/cpuinfo? The personality
>> seems not to be applied automatically to 32-bit processes, so this is a
>> opt-in backward compatibility feature?
> 
> Basically yes.  Nonetheless, this is probably a reasonable way to test
> for AArch32 userspace support.
> 
>> To be on the safe side, I was thinking about executing the system call
>> in a separate process. However, at that point I could also just execute
>> a statically linked AArch32 binary and see whether I get a "exec format
>> error". I guess this could then be either due to missing AArch32 CPU
>> support or the kernel not being compiled with 32-bit compatibility.
> 
> personality() returns the old personality, so you providing you don't
> have multiple threads you can probably try to set it to PER_LINUX32
> and then restore it.

Yeah that is what Marc also suggested. Probably will go down this road.

> 
> Otherwise, you would need to fork and try personality() from the child.
> 
> Or as you suggest, try to exec a 32-bit binary.
> 
>> At last I was considering reading directly from the CPU. But from what I
>> understand the register used in the kernel to determine 32-bit
>> compatibility (ID_AA64PFR0_EL1) is not accessible by user space (due to
>> the suffix _EL1).
>>
>> Any advice/thoughts on this topic?
> 
> This register is emulated for userspace, so you can read it.  However,
> the relevant field gets masked out, so this is probably not much use to
> you.

Argh, I see.

> 
> We could expose the field, but a test that relies on it wouldn't be
> backwards compatible.
> 
> If you just want to do this test from a script for diagnostic purposes
> and the filesystem has util-linux, then something like
> 
> 	linux32 /bin/true
> 
> might also work (this is effectively a scripted version of the
> personality(PER_LINUX32) test).

Wasn't aware of that one. Thanks!

Thanks for all the answers. Google really did not offer a lot about this
topic, and I am happy we have some options now publicly documented :-)

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

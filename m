Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C94485F60
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poqwP0tXndLVsBpW+7npLxENCND0/c3EsE2el4foA3o=; b=d1QBaH8Ha/2dsd
	Sy/+eFI05gIQfYFKrjdt/1E6g8gmb+U9nQ8u7CfWDAq8Dz4CUBQYvJE3kG65KTI6Ym77KdyZPY3DC
	g/uE7B4qALnXjgawUSRydku17bLL0LlZgkl7xZmSCP2scHr1xP8ZT9Tr0GVFaNGF/2sbpX7ie/hrT
	ks1HfIredaKPS5qTmlXdNVw64YeuSIWtyYoU8amE/s3Y0boNQLcOHHo4s1L1ctkNSHZk/0a4fn1zm
	RIbHaLkNEVM3IxREdY0t2cdsI8pBeYiaAp0TJ5xgNgVCJ2Of2wPzyje5ccmMFcpN2nLIOEd3AsyNq
	OQJpC5OF3UKXLvbRPG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfUP-0005oV-Nv; Thu, 08 Aug 2019 10:17:45 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfU8-0005o0-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:17:30 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 140495C007C;
 Thu,  8 Aug 2019 12:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565259446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zyOeF2QLEkurB9NPWeVs/BWdR7Qh6QixyoH1yTwzBCU=;
 b=VDESHEp466Z4/cHvPPed/NkGlnzys66+2JLcBOI9W1vjF2Ybns/b3+hpaE8uiNRoa2srFt
 qPp1E8KqjqVRe2FlZH4AKXaFrEo7347O2KlsvENG4SBXsxAkNtOb9yp44rJS3Guxl/cVG0
 W+e5Vl3cgBX8A1moMg/baDKNTE0B5Bs=
MIME-Version: 1.0
Date: Thu, 08 Aug 2019 12:17:26 +0200
From: Stefan Agner <stefan@agner.ch>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
In-Reply-To: <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
Message-ID: <2adcb1ed626fb7829481b2b8d0ff54d1@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_031728_557804_9555784D 
X-CRM114-Status: GOOD (  25.40  )
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
Cc: ynorov@caviumnetworks.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-08 11:04, Marc Zyngier wrote:
> Hi Stefan,
> 
> On 08/08/2019 08:36, Stefan Agner wrote:
>> [resend this time with the correct mailing list address]
>>
>> Hello,
>>
>> I am trying to detect whether an ARMv8 system running in AArch64 state
>> supports AArch32 state from a user space process. The arm64_features[]
>> in
>> arch/arm64/kernel/cpufeature.c lists a CPU feature "32-bit EL0 Support".
>> However, afaik this CPU feature is not directly exposed to user-space.
>> The features do get printed in the kernel log, but that requires
>> privileges and only works directly after boot. There is
>> system_supports_32bit_el0() which is used in various places in the arm64
>> architecture code. One of the instances where I can make sense of from
>> user space is through the personality system call. One idea is to call
>> personality(PER_LINUX32). It would then return error code 22 in case
>> 32-bit is not supported in user space. However, if successful this
>> changes the personality of the current process which might have side
>> effects which I do not want...?
> 
> You should be able to revert the effects of PER_LINUX_32 by feeding back
> the return value of the initial call to personality() to a second
> personality() call.
> 

Oh, of course, that makes sense.

>> I started to ask myself what PER_LINUX32 actually changes. From what I
>> can tell it only changes the behavior of /proc/cpuinfo? The personality
>> seems not to be applied automatically to 32-bit processes, so this is a
>> opt-in backward compatibility feature?
> 
> It's all about giving the illusion that the process runs in a "real"
> 32bit environment, with all its warts. It doesn't change the CPU mode
> you're running in (that'd be a bit harsh). It's only once you exec
> something that requires AArch32 that we engage the COMPAT mode.
> 
> Provided that your kernel contains 00377277166b or a backport of it (or
> that it predates 4378a7d4be30), the following program should do the
> right thing:
> 
> #include <sys/personality.h>
> #include <stdio.h>
> 
> int main(int argc, char *argv[])
> {
>         int old, new;
> 
>         old = personality(PER_LINUX32);
>         if (old < 0) {
>                 perror("No 32bit for you");
>                 return 1;
>         }
> 
>         new = personality(0xffffffff);
>         printf("Running with personality %d\n", new);
> 
>         personality(old);
>         new = personality(0xffffffff);
> 
>         printf("Running with personality %d\n", new);
> 
>         return 0;
> }
> 

Thanks for the example. I had something similar already, just not with
the revert part.

>> To be on the safe side, I was thinking about executing the system call
>> in a separate process. However, at that point I could also just execute
>> a statically linked AArch32 binary and see whether I get a "exec format
>> error". I guess this could then be either due to missing AArch32 CPU
>> support or the kernel not being compiled with 32-bit compatibility.
> 
> Overkill ;-). The above should be enough.
> 
>> At last I was considering reading directly from the CPU. But from what I
>> understand the register used in the kernel to determine 32-bit
>> compatibility (ID_AA64PFR0_EL1) is not accessible by user space (due to
>> the suffix _EL1).
> 
> Hey, you could create a VM, a vcpu and dump the ID registers by issuing
> a set of KVM_GET_ONE_REG ioctls. Not necessarily recommended... ;-)

I see, no no, I think I leave that exercise for somebody else to try :)

--
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

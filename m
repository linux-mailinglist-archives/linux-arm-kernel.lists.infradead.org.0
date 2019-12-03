Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BAC1103D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b23yfjh1FlCiyBX+NSMRbBtudftp4yIB5JdrKVpnI/c=; b=UBKsgtsgv4u6pVId6ylVWtfqG
	decpqBKJnXmm4cMZKop0f37C13oXzPeK+R/eiOD7l35Vf7bwldckOmLnh52mLQ6DDvwTKxa2Jy/Gk
	hQAjGVVbUkxjwCA1vYPp47+an19Pm9bgIrG7Fz2ezz6TSZmzAM66n2vBFHKUkqmAGN7wBKIu/8WgA
	DfatcOAAnZ/hVuKQ4sTL1ulyfxEbXAHJ0b3anO3Ud5B2KYpJM6XzaIS5Gv0zIL4yj9bsagpgh6kNx
	ood/wDzLFcbYqeXvPw3rG+aEz1OeD6e0MRJaxjwYKkkYEHl7wMXRyAT9DwrTfJ5wchPistIYFnZUj
	a3K/RgjWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCHN-0005B2-9M; Tue, 03 Dec 2019 17:48:05 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCHF-00056v-AG
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:47:59 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@misterjones.org>)
 id 1icCHB-0001L9-Fa; Tue, 03 Dec 2019 18:47:53 +0100
To: Jerome Forissier <jerome@forissier.org>
Subject: Re: Kernel v5.2+ on =?UTF-8?Q?HiKey=39=36=30=3F?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 03 Dec 2019 17:47:53 +0000
From: Marc Zyngier <maz@misterjones.org>
Organization: Metropolis
In-Reply-To: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
Message-ID: <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
X-Sender: maz@misterjones.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: jerome@forissier.org, linux-arm-kernel@lists.infradead.org,
 vincenzo.frascino@arm.com
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_094757_507633_E997AFA0 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

Adding Vincenzo (who was the last one to mess with the VDSO).

On 2019-12-03 15:43, Jerome Forissier wrote:
> Hi,
>
> Has anyone successfully run kernel v5.2 or later on a HiKey960 board?
>
> For some reason, anything past v5.1 doesn't work for me and I could 
> not
> figure out why. The symptom is it never gets to the login prompt. The
> root FS is a Buildroot-generated one, and prior to reaching the 
> kernel
> the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.
>
> I tried replacing /init with a shell, in which case I can type a 
> command
> but whatever it is (even a simple "ls"), the command hangs on exit 
> and I
> never get back to the prompt.
>
> Then I started bisecting, that was quite painful but I found several
> problematic commits. I ended up reverting the following (in this 
> order)
> to be able to boot v5.4:
>
> 1. "arm64: vdso: Substitute gettimeofday() with C implementation"
> 2. "arm64: vdso: Explicitly add build-id option"
> 3. "arm64: arch_timer: Ensure counter register reads occur with 
> seqlock
>     held"
> 4. "arm64: vdso: Remove stale files from old assembly implementation"
>
> So the main thing appears to be the VDSO stuff, but if I do not also
> revert the arch_timer commit I get a kernel panic:
>
> [    4.657118] Run /init as init process
> [    4.662380] Kernel panic - not syncing: Attempted to kill init!
>                exitcode=0x00000004
> [    4.670035] CPU: 7 PID: 1 Comm: init Not tainted 5.4.0-00003-
>                g223b12c033fb #258
> [    4.677338] Hardware name: HiKey960 (DT)
> [    4.681253] Call trace:
> [    4.683700]  dump_backtrace+0x0/0x148
> [    4.687355]  show_stack+0x24/0x30
> [    4.690664]  dump_stack+0xbc/0x100
> [    4.694058]  panic+0x168/0x368
> [    4.697105]  do_exit+0xa10/0xa28
> [    4.700323]  do_group_exit+0x48/0xa8
> [    4.703892]  get_signal+0xec/0x848
> [    4.707287]  do_notify_resume+0x21c/0x480
> [    4.711290]  work_pending+0x8/0x10
> [    4.714689] SMP: stopping secondary CPUs
> [    4.718607] Kernel Offset: disabled
> [    4.722089] CPU features: 0x0002,21082004
> [    4.726090] Memory Limit: none
> [    4.729145] ---[ end Kernel panic - not syncing: Attempted to kill
>                init! exitcode=0x00000004 ]---
>
> Any idea what could be wrong with my setup?

Posting the relevant sections of your kernel messages would be a good 
start.

The reversal of the timer patch seems like a red herring, but Vincenzo
should be able to help you there.

Thanks,

         M.
-- 
Who you jivin' with that Cosmik Debris?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

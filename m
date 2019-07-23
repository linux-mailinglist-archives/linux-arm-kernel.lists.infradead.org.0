Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C2E71DBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HckiOlS/SQXFsFV6oA6VA/61PaeTve9zXuuJLbzurqM=; b=un5+CkFUp/8Qz+Z7taFNd3CZf
	jwxR8dJ8qopfOTtTRKQ89r00N//TQhLaX1Qrk9OCc3ob+miU8Bq4D48cCEgWvFHu7OJUeelBddlHa
	UYjkxlKDG6L1iqXvm0ZwKnS2VnKXJQOedoLoyDZ3U9DosiIykLMwznQflAmLMAyoSEvqhYqsZjOTW
	JjbBqZBLJ1LrIiLRBHD5XajQ/S9FEgAcnwXOO0T2ob1P0wRVWiCge1IeXjFJAZrGlxxd3eXuxaO4e
	XkrA9W00dqVFiFgqhDPnZ4d8PDB1PVnPb6od9z7EQCzwoClNDdBel4j9zlTEP82QhINs1YwSnba/E
	N51LIi15w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpydy-0002Il-Ef; Tue, 23 Jul 2019 17:32:06 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpydk-0002I5-9w
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563903109;
 s=strato-dkim-0002; d=hartkopp.net;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Cwyye4k/QRhHDR6lmsBj/Yr1c1rrlaVp8MWyw5qFFkU=;
 b=niIGrL51Uo0Gi8pH6UrWX72UmjiuRUbgw5eg6ZIdsbxYcPDz08PLj2aueg8BNrXNA0
 oIKsWs2sNKYTNTbDlHKBZIJCCrI1SIO6EkchxYZblp6ljzmcwSRYo9nJQo3YxmJ1ZG9m
 B+cHZBYhTNeAuPsPhrUXNtdwxzk9dS/PJMRSyo0lB+fFY/2TcuXk9OD8ytTlIdINtJmk
 dHM6sG+WFxG77mM+wVvZuotDRp+aSbZcn/01kEhf72BdsAgKSUwyy1I5C+cDaIZScP8i
 XKQoUQslDn4hSIdvVkiEEReWJXCuoXJW9wsGjhNFQX8wmXCq93bvmITJG01bxOxoRqhk
 JWOQ==
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1o3PMaViOoLMJV8h6liA="
X-RZG-CLASS-ID: mo00
Received: from [192.168.1.200] by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id k05d3bv6NHVlf1U
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 23 Jul 2019 19:31:47 +0200 (CEST)
Subject: Re: TS-219 RTC issue with Debian Buster
To: Andrew Lunn <andrew@lunn.ch>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723161212.GA8095@lunn.ch>
From: Oliver Hartkopp <socketcan@hartkopp.net>
Message-ID: <8d771e5c-9df4-779c-5814-c8b62c309f82@hartkopp.net>
Date: Tue, 23 Jul 2019 19:31:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723161212.GA8095@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_103152_929592_11B34E20 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: tbm@cyrius.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 23.07.19 18:12, Andrew Lunn wrote:
> On Tue, Jul 23, 2019 at 05:30:48PM +0200, Oliver Hartkopp wrote:

>> I upgraded my TS-219 to Debian Buster with Kernel 4.19.0-5-marvell.
> 
> Hi Oliver
> 
> Did the same test work with older Debians?
>

I'm not really sure when it happened, as I was using the 'testing' 
release which now lead to Buster. I have no clear point where to look. 
Just detected some boot delay and looked into the sysctl log wich moved 
the clock forward based on fact, that the installed binaries where 
younger than the system clock. %-(

>> I wonder whether the problem comes from a missing interrupt assignment
>>
>> rtc: rtc@10300 {
>>               compatible = "marvell,kirkwood-rtc", "marvell,orion-rtc";
>>               reg = <0x10300 0x20>;
>>               interrupts = <53>;            <- HERE!?!
>>               clocks = <&gate_clk 7>;
>>                 };
>>
>> ... I found in linux/arch/arm/boot/dts/kirkwood-6282.dtsi ?!?
>>
>> In /proc/interrupts there's no rtc assigned to an interrupt 53.
> 
> There is code in the driver to request this interrupt. Do you see an
> error message like:
> 
> interrupt not available.
> 

No.

>> Accessing the rtc values (time/date) via /sys/class/rtc/rtc0 entries works
>> well and setting the date/time via "hwclock --systohc" does its job too. So
>> I2C and the rtc_s35390a driver seem to work so far.
> 
> Now i'm confused. I don't see any mention of s35390a for any TS
> devices. Some kirkwood machines do make use of an external RTC, not
> the built in. But not this machine, as far as i know.

I snipped some dmesg log pointing to the machine & clock/rtc:

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 4.19.0-5-marvell 
(debian-kernel@lists.debian.org) (gcc version 8.3.0 (Debian 8.3.0-7)) #1 
Debian 4.19.37-5 (2019-06-19)
[    0.000000] CPU: Feroceon 88FR131 [56251311] revision 1 (ARMv5TE), 
cr=0005397f
[    0.000000] CPU: VIVT data cache, VIVT instruction cache
[    0.000000] OF: fdt: Machine model: QNAP TS219 family

(..)

[    0.000000] clocksource: orion_clocksource: mask: 0xffffffff 
max_cycles: 0xffffffff, max_idle_ns: 9556302233 ns
[    0.000006] sched_clock: 32 bits at 200MHz, resolution 5ns, wraps 
every 10737418237ns
[    0.000030] Switching to timer-based delay loop, resolution 5ns
[    0.000099] Calibrating delay loop (skipped), value calculated using 
timer frequency.. 400.00 BogoMIPS (lpj=800000)
[    0.000117] pid_max: default: 32768 minimum: 301
[    0.000329] Security Framework initialized
[    0.000344] Yama: disabled by default; enable with sysctl kernel.yama.*
[    0.000427] AppArmor: AppArmor initialized
[    0.000528] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000544] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 
bytes)
[    0.001288] CPU: Testing write buffer coherency: ok
[    0.002027] Setting up static identity map for 0x8200 - 0x823c
[    0.002207] mvebu-soc-id: MVEBU SoC ID=0x6282, Rev=0x0
[    0.003536] devtmpfs: initialized
[    0.006261] VFP support v0.3: not present
[    0.006378] clocksource: jiffies: mask: 0xffffffff max_cycles: 
0xffffffff, max_idle_ns: 7645041785100000 ns

(..)

[    1.198026] hctosys: unable to open rtc device (rtc0)
[    1.205324] Freeing unused kernel memory: 312K
[    1.209804] This architecture does not have kernel memory protection.
[    1.216276] Run /init as init process
[    1.299536] random: fast init done
[    1.581741] rtc-s35390a 0-0030: rtc core: registered rtc-s35390a as rtc0

(..)

[   11.395565] rtc-mv f1010300.rtc: internal RTC not ticking

I got the information from Martin Michlmayr's Quap Debian pages:
http://www.cyrius.com/debian/kirkwood/qnap/ts-219/status/
http://www.cyrius.com/debian/kirkwood/qnap/ts-119/status/

RTC: Supported in the kernel by the rtc-s35390a module

Thanks for your help!

Best,
Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

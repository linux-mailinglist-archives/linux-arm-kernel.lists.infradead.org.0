Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F4B61B6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 09:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuTRroB707XaxrZpSmfi7r3CIp/TMGeFPDA4DM7AcMQ=; b=pe6vrGiSARL+bh
	AkZUL0AggIS+Y10Sht0o43iC+4Cax4tsUTcnj0X8JX14bi72S/og9zJttFRCwUBdj8HUuXM+oqiwf
	lTU5rhZnld+/nJYEqx8dzWXxRclgsGWtAtlfab2xZZWb3k6Ydh8TWkueRNvzu0qF1dIwpUhxQjJKX
	62EymREL4lE9oRX7/fUK7P6Y40lHv9nGMt+ub5JjrGPXhjLWEBn/pwcWh5INaaTiomtaGXTmI66Lb
	SHpwYvsig80pHmsHKE0bZugJ8L6mx6XK0Epdrg7BqmF11HmHHjMvr6mRg2iYXSFk7HarmsGnqgOXo
	YqDhdLb7Ox0zaAZh35SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOUL-0004xC-Lz; Mon, 08 Jul 2019 07:55:06 +0000
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOTh-0004iP-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 07:54:28 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id C601B16005F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jul 2019 09:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1562572457; bh=NE01fWZ2F0vuEtgrHhnc1IxONNffKuWu4Ux0535zX8c=;
 h=Subject:To:Cc:From:Openpgp:Autocrypt:Date:From;
 b=p3jZA3WGA7bIjm/BrF3idNOCPamZ4KGC0rrJa7Apnhpc1kZkgS2X0nZomSx0dHNHk
 f+imCZqwzSFpTgvYrE+pjcd7WS5Tio10rMOKPC+esyAxYQ2Ng8rq6ucUQNZDUTyHTB
 B2+X9TBFuhyFJaaGXennI3jTaWNM6WCA9ERramRRXH1ElqxzjowdogU7oGcR6S6ZkZ
 yNVF32P4YjI/CC/1groMzXAqWmFjJP/Ps4k8vVVybrIiSysD7BrGIAsm/xaqwGwsFu
 +fHK95N6X6G3v8yjLQzYw/zGl15c+/MxTuLrlJ7aHxIrRfAi0po1yynhPylM0EA1ln
 QxyETQhY+sqpg==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 45hyQG5Xsqz6tm6;
 Mon,  8 Jul 2019 09:54:14 +0200 (CEST)
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
To: Abel Vesa <abel.vesa@nxp.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <20190628085417.vezkoizip75yjjpl@fsr-ub1664-175>
 <a6ea252e-cfd4-0816-e688-3d792e956711@posteo.de>
 <20190702113305.zo2w5xkfhsfpwrx7@fsr-ub1664-175>
From: Martin Kepplinger <martink@posteo.de>
Openpgp: preference=signencrypt
Autocrypt: addr=martink@posteo.de; keydata=
 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
Message-ID: <9bf3c0d4-7a15-90a0-fbe9-336b855faf81@posteo.de>
Date: Mon, 8 Jul 2019 09:54:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702113305.zo2w5xkfhsfpwrx7@fsr-ub1664-175>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_005426_119528_5D68578B 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.07.19 13:33, Abel Vesa wrote:
> On 19-07-02 08:47:19, Martin Kepplinger wrote:
>> On 28.06.19 10:54, Abel Vesa wrote:
>>> On 19-06-23 13:47:26, Martin Kepplinger wrote:
>>>> On 10.06.19 14:13, Abel Vesa wrote:
>>>>> This is another alternative for the RFC:
>>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Ccfc582f9977d479b7dda08d6feb9258a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636976468485275045&amp;sdata=L%2Byn29%2FBS3KMjm9eCPBTZBTl30PmZywSjIj11bMQw5c%3D&amp;reserved=0
>>>>>
>>>>> This new workaround proposal is a little bit more hacky but more contained
>>>>> since everything is done within the irq-imx-gpcv2 driver.
>>>>>
>>>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
>>>>> handler and registers instead a wrapper which calls in the 'hijacked' 
>>>>> handler, after that calling into EL3 which will take care of the actual
>>>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
>>>>>
>>>>> I also have the patches ready for TF-A but I'll hold on to them until I see if
>>>>> this has a chance of getting in.
>>>>
>>>> Let's leave out of the picture for now, how generally applicable and
>>>> mergable your changes are. I'd like to reproduce what you do and test
>>>> cpuidle on imx8mq:
>>>>
>>>> When applying your changes here and the corresponding ATF changes (
>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fabelvesa%2Farm-trusted-firmware%2Ftree%2Fimx8mq-err11171&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Ccfc582f9977d479b7dda08d6feb9258a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636976468485275045&amp;sdata=VT3duSl70DNxcY8Ev4FFrHlWoOjkcckeM8BgxrSkr8A%3D&amp;reserved=0 if
>>>> I got that right) I don't yet see any difference in the SoC heating up
>>>> under zero load. __cpu_do_idle() is called about every 1ms (without your
>>>> changes, that was even more often but I'm not yet sure if that means
>>>> anything).
>>>
>>> You will most probably not see any change in the SoC temp since the cpuidle
>>> only touches the A53s. There are way many more IPs in the SoC that could
>>> heat it up. If you want some real numbers you'll have to measure the power
>>> consumtion on VDD_ARM rail. If you don't want to go through that much trouble
>>> you can use the idlestat tool to measure the times each A53 speends in cpu-sleep
>>> state.
>>>
>>>>
>>>> What I also see is that I get about 10x more "arch_timer" (int.3, GICv3)
>>>> interrupts than without your changes.
>>
>>
>> thanks for getting back at me here. This is run on the imx8mq
>> librem5-devkit with your wakeup-workaround applied. Typical measurements
>> under zero load look like this:
>>
>> sudo idlestat --trace -f /tmp/mytrace -t 10 -p -c -w
>> Log is 10.000395 secs long with 31194 events
>> ------------------------------------------------------------------------
>> | C-state  |  min   |  max    |  avg    |  total | hits | over | under |
>> ------------------------------------------------------------------------
>> | clusterA                                                             |
>> ------------------------------------------------------------------------
>> |     WFI |   14us |  3.99ms |  3.90ms |   9.93s | 2543 |    0 |     0 |
>> ------------------------------------------------------------------------
>> |          cpu0                                                        |
>> ------------------------------------------------------------------------
>> |     WFI |   14us |  3.99ms |  3.89ms |   9.96s | 2561 |    0 |     0 |
>> ------------------------------------------------------------------------
>> ...
>>
> 
> I don't see the cpu-sleep state at all in your idlestat log. Maybe the cpuidle
> isn't enabled. Or probably the workaround itself is not applied. You'll have
> to look into that.
> 
> Here is how it looks like with the workaround enabled:
> 
> Log is 10.001685 secs long with 1175 events
> --------------------------------------------------------------------------------
> | C-state  |   min    |   max    |   avg    |   total  | hits  |  over | under |
> --------------------------------------------------------------------------------
> | clusterA                                                                     |
> --------------------------------------------------------------------------------
> |      WFI |      2us |  50.04ms |  29.63ms |    9.99s |   337 |     0 |     0 |
> --------------------------------------------------------------------------------
> |             cpu0                                                             |
> --------------------------------------------------------------------------------
> |      WFI |     11us |  50.04ms |  40.44ms |    9.62s |   238 |     0 |   219 |
> | cpu-sleep |    537us |  50.58ms |  14.11ms | 366.94ms |    26 |     7 |     0 |
> --------------------------------------------------------------------------------
> |             cpu1                                                             |
> --------------------------------------------------------------------------------
> |      WFI |     11us | 539.04ms |  93.20ms |    5.78s |    62 |     0 |    38 |
> | cpu-sleep |    536us | 607.90ms | 183.38ms |    4.22s |    23 |    12 |     0 |
> --------------------------------------------------------------------------------
> |             cpu2                                                             |
> --------------------------------------------------------------------------------
> |      WFI |     41us | 265.99ms |  17.51ms | 332.66ms |    19 |     0 |    11 |
> | cpu-sleep |    568us |    6.56s |    1.38s |    9.67s |     7 |     2 |     0 |
> --------------------------------------------------------------------------------
> |             cpu3                                                             |
> --------------------------------------------------------------------------------
> |      WFI |   7.94ms | 881.50ms | 367.81ms |    1.10s |     3 |     0 |     3 |
> | cpu-sleep |    549us |    2.02s | 808.72ms |    8.90s |    11 |     1 |     0 |
> --------------------------------------------------------------------------------
> 
> You can see that the cpu2 was once for 6.56 seconds (out of 10s) in cpu-sleep.
> 

So I run this ATF tree
https://github.com/abelvesa/arm-trusted-firmware/tree/imx8mq-err11171
and, on top of "v5.2-rc7" I have your commits
("irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ ERR11171") and
("arm64: dts: imx8mq: Add idle states and gpcv2 wake_request broken
property") applied.

Then simply enabled CONFIG_ARM_CPUIDLE.

(I also use the "imx-cpufreq-dt" driver, but this should be unrelated here).

I do see the possible cpuidle states:
/sys/devices/system/cpu/cpu0/cpuidle$ cat state*/name

WFI

cpu-sleep

but idlestat doesn't see it or it is (thus) never used. Do you know a
needed change I might be missing?

thanks again,
                                martin



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

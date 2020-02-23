Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F238169948
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 19:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2izDxiX6vmJ+eda1wGST0tigtoFNBzoeqjmDEDkSCag=; b=d4cAGt72y7J2ZX
	XI6RU8k8yl91fswn0iOvpM6l5oxc5Aswi4DADVIuOyA7QzdoeWaJSOKBo/jRlCclFJDxU8TefimSh
	2xyKDYJfevNN2hhlcD6h6mCsEumqFbugwodMs7Y8JYQ0qFzftYQ9IWC+oy+3L3USL2kkPv1s714LQ
	PGvSXGEOknCVqNASGXTuWEmofj4AjRqJNazq++RTmry1rsuPd9JP9OJpPjAmeJwVbr9ohpxxUq751
	Lkb6q0x3S6s3slrD2n74Yu+KHXIxM1gpvCU+yw0oMJwFRzE51ymmi0y/mG7SBXyWhoN/KwtXrTPo3
	Qsar3k2lrdF/cv+k+c1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5vYL-0000iT-KF; Sun, 23 Feb 2020 18:00:29 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5vYD-0000hm-HH; Sun, 23 Feb 2020 18:00:23 +0000
Received: from [192.168.1.183] ([37.4.249.121]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MWAjC-1iuOAk0uhm-00Xfn4; Sun, 23 Feb 2020 19:00:00 +0100
Subject: Re: [PATCH v2] irqchip/bcm2835: Quiesce IRQs left enabled by
 bootloader
To: Lukas Wunner <lukas@wunner.de>, Marc Zyngier <maz@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20200212123651.apio6kno2cqhcskb@wunner.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <61cc6b74-3dd2-38d0-6da0-eb3fbd87c598@i2se.com>
Date: Sun, 23 Feb 2020 18:59:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200212123651.apio6kno2cqhcskb@wunner.de>
Content-Language: en-US
X-Provags-ID: V03:K1:7RUdhOS5DmSTuTmyGi4Iq7MfLsGumlvnrS8JS/sT0MC8iUH4rq1
 Mf3npUo9rknsG0G5d6d9Eua0pA+hc2fvfH+vnrwlA4IrURXqhVyTuMU5Ber5wHB8x0ZLSpl
 h5vngHdp2FpvlIr5Bl/UMVwndwZsmoWcjCH54nRpa5Sv+h2QA41yoxpAKCovMg5X5fVAhUm
 WDmjRMXd7pQXapxUcKdbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RqMdS6zK+wI=:Zh5w/V9yi2756qUbnmgCN4
 rp+YR8zKxip4Uf7W2RSe4jF2f+zPnoXQ9laOnfEAmGaRDU0tG7c/9Hg3HrEGQWIxECXBePIwh
 lbKaOkeQ8MN9mSDjFCvnWT8DZ3F4iN50sHONmeYaZ1Y9e6ho1+p0VoyY2tm+8isjB3JHsZnUK
 tz0Lau06optUm7gWNRKih+WfXWKzm3p4XuuOmhYqfuMTWc5F7m4xrDTEXgJfUyWaZ9O6m7f3m
 ODJT8thNsoDESFmlxqpjDw1Mv4HwBx6CvfnSwoOxUXBwTd2MGUYnKTwH/w22VDysQaZ9JUEzP
 knmaxeaUyZWecUe5VaE++24G6tyGHq7qtiQzrp0OsNut6zBlcmMAqa4/ZcIMSLmr22qIzIKcD
 QV7u70WBYDyEbl6P2yA9pUCyjzfh0XezalXwLCUcDUJDlFksIycA/8l4lPGCNOLUpd+LSxspW
 9vPv06Zbec0y53Uqtb9mMc4hSI9IQfwlVvDcD+iAsNZWqM81xIE/v4FQ0RwDgN1Cr5P/3LDCp
 j30PV3GhDcDsw+tTmPn3l7VGEtkRfCisINQkGKSzn89fSWDiCjqj+gcC6CsaUjq9im+Mo99sK
 EJ0QlLLsYawV+fGG2uh9TzcUvPNkirpit0MhXs1mPi50kD2G1xHE96FS7z9OCZhITXDGfcKXG
 HikDzO+DOmPl7pV44kAbAUqVFbuyR0TtisxBU40rM/3m3mbwPY/kHF0bx6qoAigeyvO0rOFM7
 eEkeCac0JqBf9uwChnwoCSZG+nxymfdUUXJF0ta4dL16EXssw3z5yER8SyoqMjTdUdYsj4das
 XbP0LqpodrLqDSZB5a9pRcwV59OCU7eZfoXbDzKQmGl0chdJBc1ZLrTdI2rtR1DP4vgGv49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_100021_871102_686A61C9 
X-CRM114-Status: GOOD (  32.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Serge Schneider <serge@raspberrypi.org>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Martin Sperl <kernel@martin.sperl.org>, Thomas Gleixner <tglx@linutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Kristina Brooks <notstina@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukas,

Am 12.02.20 um 13:36 schrieb Lukas Wunner:
> On Tue, Feb 11, 2020 at 08:47:05PM -0800, Florian Fainelli wrote:
>> The commit message is a bit long and starts
>> going into details that I am not sure add anything
> I adhere to the school of thought which holds that commit messages
> shall provide complete context, including numbers to back up claims,
> user-visible impact, affected versions, genesis of the fix and so on.
> By that logic there's no such a thing as a too long commit message.
>
> Nevertheless please find a shortened version below, complete with
> the Fixes tag you requested as well as your R-b.
>
>
> On Wed, Feb 12, 2020 at 08:13:29AM +0000, Marc Zyngier wrote:
>> It otherwise looks good. You can either resend it with a fixed commit
>> message,
>> or provide me with a commit message that I can stick there while applying
>> it.
> The below also contains the patch itself, so can be applied directly
> with git am --scissors.  Feel free to tweak as you see fit.
> Shout if I've missed anything.  Thanks.

thanks for all the investigation. Unfortunately the patch below doesn't
compile, since it lacks the definiton of REG_FIQ_ENABLE.

Btw the name is a little bit unlucky because it defines a single flag
within REG_FIQ_CONTROL instead of a separate register.

Regards
Stefan

>
> -- >8 --
> From: Lukas Wunner <lukas@wunner.de>
> Subject: [PATCH] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
>
> Per the spec, the BCM2835's IRQs are all disabled when coming out of
> power-on reset.  Its IRQ driver assumes that's still the case when the
> kernel boots and does not perform any initialization of the registers.
> However the Raspberry Pi Foundation's bootloader leaves the USB
> interrupt enabled when handing over control to the kernel.
>
> Quiesce IRQs and the FIQ if they were left enabled and log a message to
> let users know that they should update the bootloader once a fixed
> version is released.
>
> If the USB interrupt is not quiesced and the USB driver later on claims
> the FIQ (as it does on the Raspberry Pi Foundation's downstream kernel),
> interrupt latency for all other peripherals increases and occasional
> lockups occur.  That's because both the FIQ and the normal USB interrupt
> fire simultaneously.
>
> On a multicore Raspberry Pi, if normal interrupts are routed to CPU 0
> and the FIQ to CPU 1 (hardcoded in the Foundation's kernel), then a USB
> interrupt causes CPU 0 to spin in bcm2836_chained_handle_irq() until the
> FIQ on CPU 1 has cleared it.  Other peripherals' interrupts are starved
> as long.  I've seen CPU 0 blocked for up to 2.9 msec.  eMMC throughput
> on a Compute Module 3 irregularly dips to 23.0 MB/s without this commit
> but remains relatively constant at 23.5 MB/s with this commit.
>
> The lockups occur when CPU 0 receives a USB interrupt while holding a
> lock which CPU 1 is trying to acquire while the FIQ is temporarily
> disabled on CPU 1.  At best users get RCU CPU stall warnings, but most
> of the time the system just freezes.
>
> Fixes: 89214f009c1d ("ARM: bcm2835: add interrupt controller driver")
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Cc: stable@vger.kernel.org # v3.7+
> Cc: Serge Schneider <serge@raspberrypi.org>
> Cc: Kristina Brooks <notstina@gmail.com>
> ---
>  drivers/irqchip/irq-bcm2835.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
> index 418245d..eca9ac7 100644
> --- a/drivers/irqchip/irq-bcm2835.c
> +++ b/drivers/irqchip/irq-bcm2835.c
> @@ -135,6 +135,7 @@ static int __init armctrl_of_init(struct device_node *node,
>  {
>  	void __iomem *base;
>  	int irq, b, i;
> +	u32 reg;
>  
>  	base = of_iomap(node, 0);
>  	if (!base)
> @@ -157,6 +158,19 @@ static int __init armctrl_of_init(struct device_node *node,
>  				handle_level_irq);
>  			irq_set_probe(irq);
>  		}
> +
> +		reg = readl_relaxed(intc.enable[b]);
> +		if (reg) {
> +			writel_relaxed(reg, intc.disable[b]);
> +			pr_err(FW_BUG "Bootloader left irq enabled: "
> +			       "bank %d irq %*pbl\n", b, IRQS_PER_BANK, &reg);
> +		}
> +	}
> +
> +	reg = readl_relaxed(base + REG_FIQ_CONTROL);
> +	if (reg & REG_FIQ_ENABLE) {
> +		writel_relaxed(0, base + REG_FIQ_CONTROL);
> +		pr_err(FW_BUG "Bootloader left fiq enabled\n");
>  	}
>  
>  	if (is_2836) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

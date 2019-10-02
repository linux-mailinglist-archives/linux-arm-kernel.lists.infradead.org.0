Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A978C8F5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryPlO3QDkbPgLqAw7nSgNMmNU21m9wlCfoY0UmEPDio=; b=f7tC/xYXw97SBP
	/3P/MC+is61RM8RAE3yQR2IP3cl1yxn0TFuvR0ahIjUsaFeHJF3Qmgo/4eE5juv3UrrhEEFuwDoCA
	9DMSHja/syqjp8v9ftUuSH1lZx+Eeaudr4pYn5T005jO/pEaLn02bHjVogCCIbm9BVaVC8deEUaz4
	A2DMV7aZhTs2o9IiKUgGi+O+8kerUHMUlH42J0sfCq6kJtsN+nh1N/ldjclphfHTvo/iR33uPzbPp
	WtRqc0PqFxYqTATY03FMUMvGNS5SXW4puHwqC55ta3EsLlJ4Wgh+ygwvdW/YJZ6VabX7wg0wsYDXa
	kJRJcjJn1mNAUZYADX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFi5N-0004hM-8t; Wed, 02 Oct 2019 17:06:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFi5G-0004gk-Fd; Wed, 02 Oct 2019 17:06:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so12991pls.0;
 Wed, 02 Oct 2019 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sI8lMgchkDEHNVW5mR73hynrv0S6vMUD0akU2aQWlgA=;
 b=DDTY/oigzAvns66FUgYNghfI2S2jgwSqAudbvGC6iYavaUdeybPtC/cDHXRAwhNKG7
 ZycsDK3qPVxk0j3nGJakadacdU9cnetSrw8q6PFrfMeqrwXlUTYCe1sSQzXFpvTMBbpV
 a0NgjutMHCjEuD2S3quZC65WwHcnGEOBcJyNyxoYtBYSkM2GWbOLzRZYOadDOEOGLh9+
 B8JlZjfXyvjgwhqbAZ7j33VXRmmGdEkDzyny30Ny5nq0+teWkw7fOrpRdzyxjKADCLOM
 VmYM47VjCW6tnoJB/h0CQAS24f90aU0F9yeLQpogco4mfXJLJvQV7C+2a+COd+Yis7dF
 +kbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sI8lMgchkDEHNVW5mR73hynrv0S6vMUD0akU2aQWlgA=;
 b=QbSmEtxpGwfypIDFGd++qbqFhvaEmsJLeEVWWJakSIDQq6wFsVJ+uBL+v5NEVIbOVe
 5MHuuBYbiNC1W0q9WxovM0O44j/KjczI1jmr8GqOd6+ZXusKf1za3ejNON8gbd7TgsUS
 tJUzcKcDRN/uA9azKsN3pal06atKOf5qrfWtjn+/1gMU1JAWfDE0bsJiVcRby50bhIV/
 LcY1++MbMpqXocHD8sMylfhjvKI8fh+LuCmuPnk34oxCf4DV/SGWct4PCx48FZvJv45/
 GHQHA47ZG2okwfXC1g2ekHR5LNTGSyUqMY47hgY+Lou8LEms9XNrMbuAEuBIzJaRXNg+
 fxcQ==
X-Gm-Message-State: APjAAAXxIOX2Tjge9PasddfcfopPYk7Y5sSp5KIRFgmbKe32sUdU4eE7
 m+0MQBcUbvtaAAALaIqyfCZo9J5K
X-Google-Smtp-Source: APXvYqyI1+lX8BJvjwS+iOn3GPXE3fuzpNH0m9N8yvbor5ATqmzLD8nt7wby/S6NMUHRTEf4xqXB3w==
X-Received: by 2002:a17:902:36e:: with SMTP id
 101mr4858056pld.46.1570035997161; 
 Wed, 02 Oct 2019 10:06:37 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id c3sm6368812pgl.51.2019.10.02.10.06.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 10:06:36 -0700 (PDT)
Subject: Re: [PATCH 5/7] irqchip/irq-bcm2836: Add support for the 7211
 interrupt controller
To: Marc Zyngier <maz@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
 <20191001224842.9382-6-f.fainelli@gmail.com> <20191002134041.5a181d96@why>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <72f07d2e-b070-301a-6a5d-8e89d32adcd7@gmail.com>
Date: Wed, 2 Oct 2019 10:06:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002134041.5a181d96@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_100638_525537_6AE61522 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/19 5:40 AM, Marc Zyngier wrote:
> On Tue,  1 Oct 2019 15:48:40 -0700
> Florian Fainelli <f.fainelli@gmail.com> wrote:
> 
>> The root interrupt controller on 7211 is about identical to the one
>> existing on BCM2836, except that the SMP cross call are done through the
>> standard ARM GIC-400 interrupt controller. This interrupt controller is
>> used for side band wake-up signals though.
> 
> I don't fully grasp how this thing works.
> 
> If the 7211 interrupt controller is root and the GIC is used for SGIs,
> this means that the GIC outputs (IRQ/FIQ/VIRQ/VFIQ, times eight) are
> connected to individual inputs to the 7211 controller. Seems totally
> braindead, and unexpectedly so.
> 
> If the GIC is root and the 7211 outputs into the GIC all of its
> interrupts as a secondary irqchip, it would at least match an existing
> (and pretty bad) pattern.
> 
> So which one of the two is it?

The nominal configuration on 7211 is to have all interrupts go through
the ARM GIC. It is possible however, to fallback to the legacy 2836 mode
whereby the root interrupt controller for peripheral interrupts is this
ARMCTL IC. There is a mux that the firmware can control which will
dictate which root interrupt controller is used for peripherals.

I have used this mostly for silicon verification and since those are
fairly harmless patches, just decided to send them out to avoid
maintaining them out of tree.

We have a plan to use those as an "alternate" interrupt domain for low
power modes and use the fact that peripheral interrupts could be active
in both domains (GIC and ARMCTRL IC) to help support configuring and
identifying wake-up sources fro m within Linux.

Thanks!

> 
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/irqchip/irq-bcm2836.c | 25 ++++++++++++++++++++++---
>>  1 file changed, 22 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-bcm2836.c b/drivers/irqchip/irq-bcm2836.c
>> index 2038693f074c..77fa395c8f6b 100644
>> --- a/drivers/irqchip/irq-bcm2836.c
>> +++ b/drivers/irqchip/irq-bcm2836.c
>> @@ -112,6 +112,8 @@ static int bcm2836_map(struct irq_domain *d, unsigned int irq,
>>  		return -EINVAL;
>>  	}
>>  
>> +	chip->flags |= IRQCHIP_MASK_ON_SUSPEND | IRQCHIP_SKIP_SET_WAKE;
>> +
>>  	irq_set_percpu_devid(irq);
>>  	irq_domain_set_info(d, irq, hw, chip, d->host_data,
>>  			    handle_percpu_devid_irq, NULL, NULL);
>> @@ -216,8 +218,9 @@ static void bcm2835_init_local_timer_frequency(void)
>>  	writel(0x80000000, intc.base + LOCAL_PRESCALER);
>>  }
>>  
>> -static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
>> -						      struct device_node *parent)
>> +static int __init arm_irqchip_l1_intc_of_init_smp(struct device_node *node,
>> +						  struct device_node *parent,
>> +						  bool smp_init)
>>  {
>>  	intc.base = of_iomap(node, 0);
>>  	if (!intc.base) {
>> @@ -232,11 +235,27 @@ static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
>>  	if (!intc.domain)
>>  		panic("%pOF: unable to create IRQ domain\n", node);
>>  
>> -	bcm2836_arm_irqchip_smp_init();
>> +	if (smp_init)
>> +		bcm2836_arm_irqchip_smp_init();
> 
> Instead of the additional parameter and this check, why don't you just
> move the smp_init() call to bcm2836_arm_irqchip_l1_intc_of_init()
> instead?

Good idea, will do.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

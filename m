Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAF21E93EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 23:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9pGAod2eukKAvAF9og6r6fy/HytTJwNmv9/oa/Ei0Y=; b=dT4gX+EdqsaTsU
	JGbtmWePDf9TlBsFOs9dl4FrIuDkm2pvn3BZ3kSQMvyBNnIZQJTK7L3DioB2plwr3c6ecGP8/FDUZ
	D6Df1X8bEMdxNIM4xf46ySMu0sFHQQod/CxCN+kSL2D9ksmbZSBKOOS1IanHA1jh8SqZIP8j2crRm
	XU3mjyMMmRY6qcoO29hYadsPSIiqMO3iH3znTn598hDAJjCbanKrO5xiw0Pcb7GiAMDJQz7g6muEz
	isNJ7EcN67KjC+94Cpp9Pvaot7AUBorVBBLI2GeKeV0UC0cD7RYajM+IV5Y0avsiu7Ae1ZK4sTR6z
	SdI8UnepI9ZOYSyQ2QIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf8tN-0003K2-C0; Sat, 30 May 2020 21:19:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf8tG-0003JP-JY; Sat, 30 May 2020 21:19:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so7099081wmd.5;
 Sat, 30 May 2020 14:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JfB4DNuQ68MTs5G+tjYP/Y0o2T88viEDp4mQ3OPA+wY=;
 b=gMGCxdD4oSj6Oz9eVnkatd7Q6LBazLnoQKts4mJ5sj8JeyAC6AaVrZyKwrOjqoUe04
 OmEZEF96sfLTQFerQn1xretYuddFf/d2XnWsY3GTMJlMv0mc/k16vA2GS5fuW+aPqPYp
 OuPXhPHdGP/EdfMQ7R3NKUqhrdo9EJgB/5ziuqcHSMuGH6MGA3Ddw4OBVt1rbngIRQNm
 B4o1seK4RxQmwMek6OELdEigwgPmfJz+PpEL/24JOWDj4hrLAWZ2o9taQYyhSzsBuLOk
 PoVJbDvya8XW/pVUyKc7z1h65bS+vHLFMCMBirOwFQxng9Si2nJLtOQTzD8shgOaM6sH
 13Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JfB4DNuQ68MTs5G+tjYP/Y0o2T88viEDp4mQ3OPA+wY=;
 b=Bzjj5lkJBJKQduddxQY0PULl/Di6yUkIiDLGjLuVUSjN+9am259CHMrC4f0B6WIJ2e
 mjL9cXHTLFxoaJlOu4j15k2PamepOW0Pkm2r0rRS/CQfPzUJwoHIvPYWU0do7L+zCEN3
 gTX1kh2vM5PWQU2MiKPaxyznr8PwnwwFgM+v1CphGaecHjv//xi2Z9ViDSra4cTbfY7K
 ih8OEu1Pi5l4af2/6KW27Qb0H7Nrf6IFVXiB7Xw29gTsNa08bMLt4RqXLcjwuXE1Aygv
 vknn0Vpe3yWi1pFktJ8YNKjOUdMGcpiv8mcr9b8HZJxxqOGEJKEVCUv+lFftboz2Qdbj
 /+rQ==
X-Gm-Message-State: AOAM530VQt5y/tw6nNI9tpjMnV1VcT+pbIIQY6YsriCF1kIfTrcquibX
 0teEw9HhQzXYvxSPhyohMwAlVCuE
X-Google-Smtp-Source: ABdhPJy/7BYPburHWA9H7Rtevxa9zyaM7kAm6LVNyLDZBYaUhLm5/f6bb35U1jtDnsKgAc9CyScbcg==
X-Received: by 2002:a1c:cc1a:: with SMTP id h26mr13942437wmb.127.1590873574438; 
 Sat, 30 May 2020 14:19:34 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e10sm14881159wrn.11.2020.05.30.14.19.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 30 May 2020 14:19:33 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] pinctrl: bcm2835: Add support for wake-up
 interrupts
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20200529191522.27938-1-f.fainelli@gmail.com>
 <20200529191522.27938-5-f.fainelli@gmail.com>
 <2677905e-a9ad-a44e-93bc-ad185aa269de@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bf0ceef7-4015-69f1-336c-4d296f96adae@gmail.com>
Date: Sat, 30 May 2020 14:19:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <2677905e-a9ad-a44e-93bc-ad185aa269de@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_141938_645852_B36709E2 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/30/2020 12:49 AM, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 29.05.20 um 21:15 schrieb Florian Fainelli:
>> Leverage the IRQCHIP_MASK_ON_SUSPEND flag in order to avoid having to
>> specifically treat the GPIO interrupts during suspend and resume, and
>> simply implement an irq_set_wake() callback that is responsible for
>> enabling the parent wake-up interrupt as a wake-up interrupt.
>>
>> To avoid allocating unnecessary resources for other chips, the wake-up
>> interrupts are only initialized if we have a brcm,bcm7211-gpio
>> compatibility string.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 76 ++++++++++++++++++++++++++-
>>  1 file changed, 75 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> index 1b00d93aa66e..1fbf067a3eed 100644
>> --- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> +++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> @@ -19,6 +19,7 @@
>>  #include <linux/irq.h>
>>  #include <linux/irqdesc.h>
>>  #include <linux/init.h>
>> +#include <linux/interrupt.h>
>>  #include <linux/of_address.h>
>>  #include <linux/of.h>
>>  #include <linux/of_irq.h>
>> @@ -76,6 +77,7 @@
>>  struct bcm2835_pinctrl {
>>  	struct device *dev;
>>  	void __iomem *base;
>> +	int *wake_irq;
>>  
>>  	/* note: locking assumes each bank will have its own unsigned long */
>>  	unsigned long enabled_irq_map[BCM2835_NUM_BANKS];
>> @@ -435,6 +437,11 @@ static void bcm2835_gpio_irq_handler(struct irq_desc *desc)
>>  	chained_irq_exit(host_chip, desc);
>>  }
>>  
>> +static irqreturn_t bcm2835_gpio_wake_irq_handler(int irq, void *dev_id)
>> +{
>> +	return IRQ_HANDLED;
>> +}
>> +
>>  static inline void __bcm2835_gpio_irq_config(struct bcm2835_pinctrl *pc,
>>  	unsigned reg, unsigned offset, bool enable)
>>  {
>> @@ -634,6 +641,34 @@ static void bcm2835_gpio_irq_ack(struct irq_data *data)
>>  	bcm2835_gpio_set_bit(pc, GPEDS0, gpio);
>>  }
>>  
>> +static int bcm2835_gpio_irq_set_wake(struct irq_data *data, unsigned int on)
>> +{
>> +	struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
>> +	struct bcm2835_pinctrl *pc = gpiochip_get_data(chip);
>> +	unsigned gpio = irqd_to_hwirq(data);
>> +	unsigned int irqgroup;
>> +	int ret = -EINVAL;
>> +
>> +	if (!pc->wake_irq)
>> +		return ret;
>> +
>> +	if (gpio <= 27)
>> +		irqgroup = 0;
>> +	else if (gpio >= 28 && gpio <= 45)
>> +		irqgroup = 1;
>> +	else if (gpio >= 46 && gpio <= 53)
>> +		irqgroup = 2;
> in case the BCM7211 has 58 GPIOs, but the wake up interrupts are only
> available for the first 54 this should deserve a comment.

irqgroup 2 covers GPIOs 46 through 57, thanks for noticing. Do you have
more comments before I spin a v3? Thank you for reviewing.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

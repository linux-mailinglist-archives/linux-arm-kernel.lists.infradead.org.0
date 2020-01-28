Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272D14B229
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QeL4847RjRW7KDOalQkt75jTp14cjDr2n8iZrW0Iizk=; b=WMdu2Sjvjg20DB
	6yIF7NaXed53TU/mZ2ZrSHJz8/+MkJRztFPQL2smUyB1uf2vLPQQzngh45ByCrJlGlYYWNZJJiwaY
	oGaF9CsAmo9toLfy9NJf6T5/9ehK1kAvIJw2124z34TarX7eLEuy6WZ5F8MEAz1rrZ6QyOZNNM7Ih
	W3ebyIH0OwbCq1grDgFjtPxAJ+kVw6LX1pNIxXq/KZlUf0r8kE/nrBswq+j8ZzHVLxXFMYQGRHYrc
	gDQjUatk2HBW8aIseXPZIqPsCMNigAWpSFpaGVpMpn/0sdnPuij3vdGjITjYMG3DPok/Pud05JswU
	D6kvWKIzDiePOBNnlBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNgR-0006rU-NC; Tue, 28 Jan 2020 10:01:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNgI-0006qq-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 10:01:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0DB87B122;
 Tue, 28 Jan 2020 10:01:11 +0000 (UTC)
In-Reply-To: <1580148908-4863-3-git-send-email-stefan.wahren@i2se.com>
Date: Tue, 28 Jan 2020 10:44:23 +0100
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Stefan Wahren" <stefan.wahren@i2se.com>, "Florian Fainelli"
 <f.fainelli@gmail.com>, "Linus Walleij" <linus.walleij@linaro.org>, "Ray
 Jui" <rjui@broadcom.com>, "Scott Branden" <sbranden@broadcom.com>
Subject: Re: [RFC PATCH 2/4] pinctrl: bcm2835: Refactor platform data
Message-Id: <C07BSWY2PTAT.1MNBWW503QTQ0@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_020114_797677_0C3A1C9C 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,
thanks for the series!

On Mon Jan 27, 2020 at 7:15 PM, Stefan Wahren wrote:
> This prepares the platform data to be easier to extend for more GPIOs.
> Except of this there is no functional change.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

[...]

> @@ -1083,6 +1112,7 @@ static int bcm2835_pinctrl_probe(struct
> platform_device *pdev)
> struct device *dev = &pdev->dev;
> struct device_node *np = dev->of_node;
> struct bcm2835_pinctrl *pc;
> + struct bcm_plat_data *pdata;

You could define pdata as const here...

> struct gpio_irq_chip *girq;
> struct resource iomem;
> int err, i;
> @@ -1108,7 +1138,13 @@ static int bcm2835_pinctrl_probe(struct
> platform_device *pdev)
> if (IS_ERR(pc->base))
> return PTR_ERR(pc->base);
>  
> - pc->gpio_chip = bcm2835_gpio_chip;
> + match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
> + if (!match)
> + return -EINVAL;
> +
> + pdata = (struct bcm_plat_data *)match->data;

...And avoid this cast.

> +
> + memcpy(&pc->gpio_chip, pdata->gpio_chip, sizeof(pc->gpio_chip));

Here (and below) you could do:

	pc->gpio_chip = *pdata->gpio_chip;

IMO it's nicer, but it's a matter of taste.

> pc->gpio_chip.parent = dev;
> pc->gpio_chip.of_node = np;
>  
> @@ -1159,19 +1195,14 @@ static int bcm2835_pinctrl_probe(struct
> platform_device *pdev)
> return err;
> }
>  
> - match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
> - if (match) {
> - bcm2835_pinctrl_desc.confops =
> - (const struct pinconf_ops *)match->data;
> - }
> -
> - pc->pctl_dev = devm_pinctrl_register(dev, &bcm2835_pinctrl_desc, pc);
> + memcpy(&pc->pctl_desc, pdata->pctl_desc, sizeof(pc->pctl_desc));
> + pc->pctl_dev = devm_pinctrl_register(dev, &pc->pctl_desc, pc);
> if (IS_ERR(pc->pctl_dev)) {
> gpiochip_remove(&pc->gpio_chip);
> return PTR_ERR(pc->pctl_dev);
> }
>  
> - pc->gpio_range = bcm2835_pinctrl_gpio_range;
> + memcpy(&pc->gpio_range, pdata->gpio_range, sizeof(pc->gpio_range));
> pc->gpio_range.base = pc->gpio_chip.base;
> pc->gpio_range.gc = &pc->gpio_chip;
> pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

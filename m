Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D947D17C885
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 23:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI2yrrmVj+ZKpVbQqeGS3FudmuIQE146f0ycAmaVRuw=; b=sl3ShM2CdD918K
	J5fzMo7zd5+oSxh0KWu9h8vXfW+VYdLOeafxtmyrokXin9GBOTPpw6mJejRTyyaPqbqB/uUtnVsn6
	khcPF56Y5NTZJ++Dh/iOZYl3UlAaSUvB/iJgFhRAGV7YsMv2xP86RIiLCwi5byBx0+2dBWnHNM8RR
	8GE9THrk9D27ga8tks5kGnjKM1HKfPf7Q4FRt3EFbX3vwTq0W9PEwqb9ug12/lA5SG/rDMPA/qAc7
	J1FL6ITEJnX5SldmBXe/oNRQlwjG9K8VJdP+3DptQ/mvfGEx4wy56QAhj6bIynIhGu7oKTZYiZ2+y
	IKE7X2thcKR4GaOIIlOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALo2-0004nh-MG; Fri, 06 Mar 2020 22:50:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALnu-0004nN-Jk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 22:50:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id j19so3913892lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 14:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=+KdFgHd0Khi4D1I+q98xetrP7WjqAjfW7zo+CRETAms=;
 b=e8HNVypbS1BSjAYaVJJGJ+lKqiyoZLEYraBW0NcV4WgM3WRpmeJseFIlMHSsduthi8
 bfvxHTjVtPlItpMk7F/T9BgaTmF4A0GeTIML+V+gg1wHMUr1twtjejyU971EbA3I7srS
 P67lwS73bevLsMsn6lSRm+pieEbC3gt76dyLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=+KdFgHd0Khi4D1I+q98xetrP7WjqAjfW7zo+CRETAms=;
 b=MA5ciiMCxqZFQTn0XKdeZVkJQUwhsTYx0ZCSAfIPA4MUiWsu9OluZSSViu/moRavn/
 0w99kAr33a/Oyy0b6MhvSAkf8ws6DRoiPd4d9gTFBtmryzdD13dLW0mLqXu/JVKcaN0q
 omvW1HvxuDNMRfechYy/40lWl5rolBR+8g374CL7AVY+eQ5TC6CpwfsrVOEv3PDe/L7v
 IctKvIX+3xgSjU7o/iodZlH/OalaX/mljTb2AAejS4t6J7Wgv4I13MXqArN67y0lV/5t
 yxosdcH/5OX6vC7149rbO+xIbInzKhKrR8RFn9T9dfJwrJXMHHj4grKJMm9nn9g6RIsG
 KhYw==
X-Gm-Message-State: ANhLgQ2+bjQGmGy2+pVQG68ROUu1nQ4ox5Bi8uCz5RB0vmbHzk5Cdt4x
 T1wTyF1PSA5finzPLaL+CI/fsF5+LS0vvzQGiHsTjg==
X-Google-Smtp-Source: ADFU+vvb+PrrT95TpfxieL14D0NqyXJi/a9FHEMKFcoukv944eoKgmEzoL0AOVCOoUwoDUqsoNYVB8prKmFXlelzJYQ=
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr3329042ljg.105.1583535048747; 
 Fri, 06 Mar 2020 14:50:48 -0800 (PST)
From: Kevin Li <kevin-ke.li@broadcom.com>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <8d4fc59e-f892-7228-4369-f40ced5dc2d3@gmail.com>
In-Reply-To: <8d4fc59e-f892-7228-4369-f40ced5dc2d3@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQK6AtPk+W1UvlC/8YJn5FlJAEq5hQIs4nExpmKljtA=
Date: Fri, 6 Mar 2020 14:50:46 -0800
Message-ID: <31b665e609f3cfee935f4489a073af21@mail.gmail.com>
Subject: RE: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
To: Florian Fainelli <f.fainelli@gmail.com>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_145050_655742_85CB086E 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Stephen Boyd <swboyd@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

It is called from bcm63xx-i2s-whistler.c.
Maybe the name "_probe" function confused. It was 2 platform drivers, I
combined them together now.

Let me know if this answers your question, and what to do to address your
question.

Regards!
Kevin

-----Original Message-----
From: Florian Fainelli [mailto:f.fainelli@gmail.com]
Sent: Friday, March 06, 2020 2:34 PM
To: Kevin Li <kevin-ke.li@broadcom.com>; Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org; linux-kernel@vger.kernel.org; Kuninori
Morimoto <kuninori.morimoto.gx@renesas.com>; Scott Branden
<sbranden@broadcom.com>; Liam Girdwood <lgirdwood@gmail.com>; Ray Jui
<rjui@broadcom.com>; Takashi Iwai <tiwai@suse.com>; Jaroslav Kysela
<perex@perex.cz>; bcm-kernel-feedback-list@broadcom.com; Stephen Boyd
<swboyd@chromium.org>; linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver

On 3/6/20 2:27 PM, Kevin Li wrote:
> This patch adds Broadcom DSL/PON SoC audio driver with Whistler I2S
> block. The SoC supported by this patch are BCM63158B0,BCM63178 and
> BCM47622/6755.
>
> Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
> ---

[snip]

> +int bcm63xx_soc_platform_probe(struct platform_device *pdev,
> +			       struct bcm_i2s_priv *i2s_priv) {
> +	int ret;
> +
> +	i2s_priv->r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
> +	if (!i2s_priv->r_irq) {
> +		dev_err(&pdev->dev, "Unable to get register irq resource.\n");
> +		return -ENODEV;
> +	}
> +
> +	ret = devm_request_irq(&pdev->dev, i2s_priv->r_irq->start, i2s_dma_isr,
> +			i2s_priv->r_irq->flags, "i2s_dma", (void *)i2s_priv);
> +	if (ret) {
> +		dev_err(&pdev->dev,
> +			"i2s_init: failed to request interrupt.ret=%d\n", ret);
> +		return ret;
> +	}
> +
> +	return devm_snd_soc_register_component(&pdev->dev,
> +					&bcm63xx_soc_platform, NULL, 0); }
> +
> +int bcm63xx_soc_platform_remove(struct platform_device *pdev) {
> +	return 0;
> +}

How does one probe this module if the bcm63xx_soc_platform_probe() functions
are not called from anywhere and/or hooked up to the module entry/exit
points?

Are you not missing a platform_driver entry which matches the compatible
string you defined?
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

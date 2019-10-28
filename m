Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F5CE7D1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 00:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8KNVxwbr7CKVVHMGseZJkFBujcbvk9N8OA5Pd/9nCQ=; b=T8/cZ5pDOWQ4HU
	jfhvWjnjXcxI3r9PNkPLpmYcTReEBbl9q8CI5sJruVxqAkpBeTs0sFHchBQaxdNnApCWI5ELRLx9v
	8qFHJokBbxH1huvJ87yfj/CqqnC95ktD1YzyhLQC6VMTFsahMCNLnWz48DF7U/MLXvtJHR/8Bldpn
	nv3NiX4UN53ATQnDNdHjtAqcWtYUZqGQqOJKVemQ4K9Hy5PocqjuKhKfwKz1i3PpBJJ3977zNmIZC
	twukkHeacDjSp1CQw5hCSsSbHYxR5NqtUPI4fIv/JF79g//ZjPPaQ9Y8gGaUzWgC0bmV/qneF6dAS
	ETu9aQ6k5A8ijcnM086Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPEax-0006TJ-5Z; Mon, 28 Oct 2019 23:38:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPEan-0006SU-3s
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 23:38:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id t12so1911449plo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 16:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rcCZ53RwEYpDpGOEaXXe4dALJ7rLP+WtLnX4AoLa6xE=;
 b=R+hY9P1plzrpzZCLwFiO8LmTIAQjJ/N8JxGhyEFI4ihQQfdN0ElpOroT5q3npDcTzK
 T7xxO/yNgSFGo9/aXULo47a1Tam3xx8PcFBDI/7bdj2DcH2pVqjlQIQfvFMNMo6sjTSA
 o+URwc1NZNWP0vZKJCX3EKJQHhNqJIB93uAHSAj1DtY+/fkemy3YPsh/E63ZQPuJZ96y
 3hQz0sOx3z/8IGCw1B1fg7FxXAg7+DuS3SW5XrCFHLL0T5Izl+imMfBpJ8W/pnwgrH+6
 ljxusI0GMLkNmKZXSBhRr92OBD4B50R1VPF39yvUigiHtFv0pesAPkbfkaUp+PrieCHg
 OSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rcCZ53RwEYpDpGOEaXXe4dALJ7rLP+WtLnX4AoLa6xE=;
 b=suRqzjNiFQ8mAYaA2jveK18Waw4SiC64cYQ9Upf9suOYGMMH5clahFYDNFTgE81KcJ
 XtHoj6FzSZ9b0sFSBTr1/jG4nXkxZX8OCtr8W76VFR7q2hrSL1cntUApSU25sVsbB44h
 krM27tWo/s4bEAWXeHkH2Saxq1BJBKpAynR4jHCAlCm+b30KxpGK5ACLmVHqLAW8KROu
 W19w/OTofen0WV5x446vdS/F6NvAD1IdEPPDNYjBScZsOTFimOYg8Wpc3RILezPWYSAb
 rpUSQ/++JugZeOYcg1Gy+0SghCRHe5/gKx70sjkpkHbyc5vUgGzQwu+8iEypZykXK0UJ
 Uf3g==
X-Gm-Message-State: APjAAAX8H87C88eoAp6MBqMOzp6itpjZH+Qy8dBzb6saGpNR1iAfSoG3
 LY1b/8vr3ZWrbGUWgArICTc=
X-Google-Smtp-Source: APXvYqxwuSbByXQBKFk5+9hCeN4OZScPkx8p4Zb6Ry7/i9qhgON4+IsHT1hSF3thJVEwiUIzcRMzIQ==
X-Received: by 2002:a17:902:a610:: with SMTP id
 u16mr738406plq.200.1572305911798; 
 Mon, 28 Oct 2019 16:38:31 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id v6sm11598182pgv.24.2019.10.28.16.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 16:38:30 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:38:28 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] input: sun4i-lradc-keys: Add wakup support
Message-ID: <20191028233828.GA57214@dtor-ws>
References: <20191028221502.3503543-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028221502.3503543-1-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_163833_177007_EC8232DF 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-sunxi@googlegroups.com,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ondrej,

On Mon, Oct 28, 2019 at 11:15:02PM +0100, Ondrej Jirman wrote:
> Allow the driver to wakeup the system on key press.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/input/keyboard/sun4i-lradc-keys.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/input/keyboard/sun4i-lradc-keys.c b/drivers/input/keyboard/sun4i-lradc-keys.c
> index 4a796bed48ac..bba679d7b54b 100644
> --- a/drivers/input/keyboard/sun4i-lradc-keys.c
> +++ b/drivers/input/keyboard/sun4i-lradc-keys.c
> @@ -22,6 +22,8 @@
>  #include <linux/module.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_wakeirq.h>
> +#include <linux/pm_wakeup.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
>  
> @@ -226,8 +228,7 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
>  {
>  	struct sun4i_lradc_data *lradc;
>  	struct device *dev = &pdev->dev;
> -	int i;
> -	int error;
> +	int i, error, irq;
>  
>  	lradc = devm_kzalloc(dev, sizeof(struct sun4i_lradc_data), GFP_KERNEL);
>  	if (!lradc)
> @@ -272,8 +273,13 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
>  	if (IS_ERR(lradc->base))
>  		return PTR_ERR(lradc->base);
>  
> -	error = devm_request_irq(dev, platform_get_irq(pdev, 0),
> -				 sun4i_lradc_irq, 0,
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(&pdev->dev, "Failed to get IRQ\n");
> +		return irq;
> +	}
> +
> +	error = devm_request_irq(dev, irq, sun4i_lradc_irq, 0,
>  				 "sun4i-a10-lradc-keys", lradc);
>  	if (error)
>  		return error;
> @@ -282,6 +288,14 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
>  	if (error)
>  		return error;
>  
> +	device_init_wakeup(dev, true);

I do not think we want to do this unconditionally. Can we maybe key off
"wakeup-source" device property.

> +
> +	error = dev_pm_set_wake_irq(dev, irq);
> +	if (error) {
> +		dev_err(dev, "Could not set wake IRQ\n");
> +		return error;
> +	}
> +

I wonder if we could teach platform driver core to handle this for us.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

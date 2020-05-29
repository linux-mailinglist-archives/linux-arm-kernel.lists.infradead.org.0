Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27DF1E80E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQGwAxAo0wgs1xomyWO3yZUt0Q2+FPB60TEs/EFJ7pU=; b=LrqJMkSzTb4U3+
	HOuTCTNf3Z63O6EBGfrk4f2tPS1/Ii69tv/61pKH++0OSlwAZTcf84btDEdsfnUCA9d4o9Jx7sFCA
	Xbie7bWsCfREcBkN5TWNJXAEr22s0uuy9kv/zYtTTpv9eIh46iQ5p6pVImlNRJf3TuGVKzJK59eyK
	dvyvU6peKuZzzmat5yVw3eyOcvblgBd3OF6btdLodt+wrb6xdW7eJTnwRrClF0Rb6FJ0KkuLhwlPs
	G+ucRhQjJCwAtGlYlHnBOIunHlH6WVeg5RB4n3os3hjkJDcT1YCCpuDJ0Q8JbMNQ2mQIoGknkVfSm
	WJfzS94kXWpq+EALSRVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegL4-0004nh-CH; Fri, 29 May 2020 14:50:26 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegKu-0004mY-B2; Fri, 29 May 2020 14:50:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id x18so1243271pll.6;
 Fri, 29 May 2020 07:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ckAKropeOCUm1zmt0HIr3BWF9IN5QnUNbPwdDc91gQM=;
 b=VApd29jCPL4t/dmJjYuL4RaTRnmPGPnedoBqJignh4pwfT+adxmEfTg6KII8hVU3+y
 P+HgN3s66RdiqfaK5p5d5Yb+BT/bbTfelEz53DfeySa6BOi8Nz7ffDOzXCWc89PjESDx
 j6npuyY26G43teVevipd+CCGm4HtCtJrWRFgp4B5iTes87Z/DOyGYha+cTN2aS6Yq7+g
 UIcmEP7iCNmgbhNY34/sjXKt1JDcShF6tnfO6arWC71pCNhSjMtPj7a+U0UGOqyJbLTn
 eXE2kLLF08hY0We0hSvVFKsCyOel7J8thLG3PvUb5jL/2Zf8PvzV6kVN8vl8lNQ2kvTd
 uw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ckAKropeOCUm1zmt0HIr3BWF9IN5QnUNbPwdDc91gQM=;
 b=fchPDEWbhZwKFvXrXqCQvBIETpnmNZvW8dZu0cFb7FjsZXhfcUD2ncteuApUDpH4Kz
 +dO2W2njm6q7+qQcuwhG95U+FdviutXg52CHfKfKcFsIs+qGg4i9HiNxxB3sLJnWO5uP
 QIuPLLgxhkwzQBEeXB1ITj7nSWZHW2m+8gLQ9T8gpG/kQB2AmtIAYmpHs/ZzEOjaa8QV
 aOOY06M9gfI7GYZGq/0ij7ZxFLSPGXErk3M1V/ijUOBy4/Q2vW/f0ipf6KaTm8rc5ATa
 HyY0z6Bj9eghMa1RVZBYYjGVIntNtlALvx2BtrSFq9Tc8nFh/fegoM744f9y07gl+44i
 5W2A==
X-Gm-Message-State: AOAM530OkdPi1KOTjuSnQIWocR3Zz/jzvnAp6nNjMZqjfikmBRGdcQRY
 i+eMcAfVEtfsSqSUt/wcEBc=
X-Google-Smtp-Source: ABdhPJxKeEIcZPHMl4KTv3Kl/4nwkc/Lyd2ImrMkBUvZkzIyDKXQUYsPEnihKLG8uevhr4cQxpz+iw==
X-Received: by 2002:a17:90a:4805:: with SMTP id
 a5mr4970593pjh.22.1590763815238; 
 Fri, 29 May 2020 07:50:15 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 140sm4674978pfy.95.2020.05.29.07.50.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 07:50:14 -0700 (PDT)
Date: Fri, 29 May 2020 07:50:13 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 01/11] acpi: thermal: Fix error handling in the
 register function
Message-ID: <20200529145013.GA125062@roeck-us.net>
References: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
 <20200528192051.28034-2-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192051.28034-2-andrzej.p@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_075016_385246_1546CCAE 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:20:41PM +0200, Andrzej Pietrasiewicz wrote:
> The acpi_thermal_register_thermal_zone() is missing any error handling.
> This needs to be fixed.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/acpi/thermal.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
> index 19067a5e5293..6de8066ca1e7 100644
> --- a/drivers/acpi/thermal.c
> +++ b/drivers/acpi/thermal.c
> @@ -901,23 +901,35 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
>  	result = sysfs_create_link(&tz->device->dev.kobj,
>  				   &tz->thermal_zone->device.kobj, "thermal_zone");
>  	if (result)
> -		return result;
> +		goto unregister_tzd;
>  
>  	result = sysfs_create_link(&tz->thermal_zone->device.kobj,
>  				   &tz->device->dev.kobj, "device");
>  	if (result)
> -		return result;
> +		goto remove_tz_link;
>  
>  	status =  acpi_bus_attach_private_data(tz->device->handle,
>  					       tz->thermal_zone);
> -	if (ACPI_FAILURE(status))
> -		return -ENODEV;
> +	if (ACPI_FAILURE(status)) {
> +		result = -ENODEV;
> +		goto remove_dev_link;
> +	}
>  
>  	tz->tz_enabled = 1;
>  
>  	dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
>  		 tz->thermal_zone->id);
> +
>  	return 0;
> +
> +remove_dev_link:
> +	sysfs_remove_link(&tz->thermal_zone->device.kobj, "device");
> +remove_tz_link:
> +	sysfs_remove_link(&tz->device->dev.kobj, "thermal_zone");
> +unregister_tzd:
> +	thermal_zone_device_unregister(tz->thermal_zone);
> +
> +	return result;
>  }
>  
>  static void acpi_thermal_unregister_thermal_zone(struct acpi_thermal *tz)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

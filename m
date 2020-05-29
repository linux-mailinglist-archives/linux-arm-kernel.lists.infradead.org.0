Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F081E80F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nC0WXMZ8vLcuJgWMW6UWPM/X7feeS5NOAUPpEaASEnw=; b=NFRzzBGq8GNRde
	BNcWZp769ypYdhZyaNt2m+xU6yfo2EpzW887PZf8MjgmeeFYpZC76n5vEYWyjzxXNavz8Lkxy7IQ/
	iyZsEgYFyidjVXvjh1OkpsjHidJPTt7j8BrdbaIk8fwWmTiZSnxebh8nz/SLBONExla8/QQt/BSnJ
	q8mGqngG/L1NwxQI4+z793KKkrZkIONXioB6ia6KYNl+YQLAVsf6ok+jt59XLZairO6MF11IOM/dT
	/bu7gIYlm8MdkBHjr/Ci1WAFuPt9OjwucotXa/jW4aLuo2WbiaImgNosYVnOqXCL/6KfI0OlkKqPV
	CqWq9iGWarTRwXo7RXUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegLr-00059W-69; Fri, 29 May 2020 14:51:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegLg-00058k-TQ; Fri, 29 May 2020 14:51:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id f21so1567971pgg.12;
 Fri, 29 May 2020 07:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jOr9kSCuiRiGZqn8Tb20ICSny+xva6gwuSuQrspoPj0=;
 b=KgwcPZgZePP7ksJE/N3Elst8TGaRjtTyng3aVjAQVMiuK5WRj3KBrPfHTaEo6hH/5e
 NneEeN/a3Q4eVBsbszr8/xziSKQK53Cx1/6TLkiXvS8U4iZAh68lgseLhACqZS43k1Y0
 N1X3LVpLdfopR37McJJB4ZVw8N9NVCcsz8RHKEzSnz335rwWLh3vfQiQSGRherRJ0hYP
 lBLgwY5IO3LGlXYEe4+o53bxWcxv57+99+ayF1+XEQ5xRQ9pV127/3/7OjdsJYysJjO7
 Zgqh36dbycrH4G3rU1cCji+DELoV0L/qNEk0OVOlqbv/RwkIlvpncwtNXGy0eWhtF9Wp
 Iwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jOr9kSCuiRiGZqn8Tb20ICSny+xva6gwuSuQrspoPj0=;
 b=labEEB7GA+HH6QMgqh0vtSx67iP0WXkYzeLn4khoJ4zSqGQw6szIEs6umCuA3n2EF6
 MvNSuHh8mHu8He8bOuykoOyyIw2/wY2z+8LQqoX0H5gBQmspw90b0GBFlV0HucnS+I2D
 IL4UzR3RZOSxAizmftP4PGJPbyCwNwlPHz+y2Xi1l7WqCrCNONk4aiRkR3ZjDK03uIm1
 KvGfyUTjHuk5isRPn9QaQrqRmU+0KGPRL4Gh7sg72T2THdpeqRu9j6OhhSX8KKWHtCZm
 /iCIm+axAOgAM+vwaCRg56UnCw2A14rg5FwgTljiTSITYINwc5o5ZPKl8K4/+Uevsoqf
 n5NQ==
X-Gm-Message-State: AOAM533quipiX86vvtYG/j8wEbj548Q9g4+9ltML+NMQdypP4x9rMmB8
 Xte+kJo4ta4s8GmY7JQLQEw=
X-Google-Smtp-Source: ABdhPJyuEWKA2q+MgeYdj6dmRKu/uvmTHR2Eywfghl8T0eMS68ZZfCLq9KCdRvKzdhJYo7ebVpb7jg==
X-Received: by 2002:a62:1d48:: with SMTP id d69mr9214260pfd.27.1590763863863; 
 Fri, 29 May 2020 07:51:03 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b23sm6933857pgs.33.2020.05.29.07.51.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 07:51:03 -0700 (PDT)
Date: Fri, 29 May 2020 07:51:02 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 03/11] thermal: Add current mode to thermal zone device
Message-ID: <20200529145102.GA125312@roeck-us.net>
References: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
 <20200528192051.28034-4-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192051.28034-4-andrzej.p@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_075104_946384_A0ECD693 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Thu, May 28, 2020 at 09:20:43PM +0200, Andrzej Pietrasiewicz wrote:
> Prepare for changing the place where the mode is stored: now it is in
> drivers, which might or might not implement get_mode()/set_mode() methods.
> A lot of cleanup can be done thanks to storing it in struct tzd. The
> get_mode() methods will become redundant.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  include/linux/thermal.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 216185bb3014..5f91d7f04512 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -128,6 +128,7 @@ struct thermal_cooling_device {
>   * @trip_temp_attrs:	attributes for trip points for sysfs: trip temperature
>   * @trip_type_attrs:	attributes for trip points for sysfs: trip type
>   * @trip_hyst_attrs:	attributes for trip points for sysfs: trip hysteresis
> + * @mode:		current mode of this thermal zone
>   * @devdata:	private pointer for device private data
>   * @trips:	number of trip points the thermal zone supports
>   * @trips_disabled;	bitmap for disabled trips
> @@ -170,6 +171,7 @@ struct thermal_zone_device {
>  	struct thermal_attr *trip_temp_attrs;
>  	struct thermal_attr *trip_type_attrs;
>  	struct thermal_attr *trip_hyst_attrs;
> +	enum thermal_device_mode mode;
>  	void *devdata;
>  	int trips;
>  	unsigned long trips_disabled;	/* bitmap for disabled trips */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

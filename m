Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB2C1A99FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpQ4699MIQwW7FFzs9hvPrL2+wNERgwhDS34OVp9Ej8=; b=LWY9CIoGvs3I1H
	fJDiCnN3BLSBjlXcK0uSzJd8ZrCVWUmmslSrXJwcpS9NRRmny+dgKnouR3iESgXoqxDCKA/uiSGmH
	qrDx3/idvIIX44b/5CAsi6ifLPf3arGTeFgsevI8JcQ+YxBq8wsxc+6OEpKgsM7CUUpsRcNT1bn09
	Xx2SgcJy9KWIys/y4AOQXXu+Ekq7pAQdC1u/gk8eJ6hZ353HkqhvtZ/mmHCMd3dSc1PqRl6xKVTlw
	FirvkVwVtfurMLuU562QrEWr0w4QhcxjG9zPv90VJ+qiW9Kq55yIfx5/F/cg04KYpeO+gLPuY5DD8
	N9H+sF8P0MMEjiStKRzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOezd-0006hJ-4E; Wed, 15 Apr 2020 10:10:05 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOezL-0006gk-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:09:48 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200415100945euoutp0175f53a3ce3ebf8fffe34a62c1b210e2d~F9muWcHjO2102121021euoutp015
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:09:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200415100945euoutp0175f53a3ce3ebf8fffe34a62c1b210e2d~F9muWcHjO2102121021euoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586945385;
 bh=hy53jcbN1hQcobPDd2wliURBggIkGahlr5dTChgt6Fg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=F+vVTrYT2IOhS0YRCMosN/7ROMce1gTETYgfWzd0KwitqkaHtf1BFldm2iI1+1mRG
 4rXjz9LSqWtwxRC+BlkVamEqJWHC+scFy8YAXcT0lovJDEyP/v8Zgo1fbdIpmxDsjS
 O43ByKS+d3nHly0g4V0diMXABmIoOdDn5uUIEuVg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200415100945eucas1p1aa4f8a443591406032d911421dd8d4b0~F9mt-N0ND3022630226eucas1p1l;
 Wed, 15 Apr 2020 10:09:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A2.AE.60698.96DD69E5; Wed, 15
 Apr 2020 11:09:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200415100944eucas1p1dcfeb784e790ca2fc3417fd2797e3f5d~F9mtpd1bi0596205962eucas1p1b;
 Wed, 15 Apr 2020 10:09:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200415100944eusmtrp133f86e2db262813d9ace24cbc70dda2e~F9mtodNUt1618016180eusmtrp1l;
 Wed, 15 Apr 2020 10:09:44 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-97-5e96dd69b12f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 24.EE.07950.86DD69E5; Wed, 15
 Apr 2020 11:09:44 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200415100943eusmtip137db8f225d7ca69f2d0d1757b57f8fd4~F9msZ0Gmi2340423404eusmtip1Z;
 Wed, 15 Apr 2020 10:09:43 +0000 (GMT)
Subject: Re: [RFC 3/8] thermal: Store thermal mode in a dedicated enum
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <4085ca11-5060-c786-93af-f77d6f5d6e60@samsung.com>
Date: Wed, 15 Apr 2020 12:09:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200407174926.23971-4-andrzej.p@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0wTWRTHc2em06FLzaUoPYsSTRMfGIUa9sONrgajMZMYHzEb4wPQiiOS
 pWhaYcUPClHAVnyBiDZ1QUWgNfIob0RieOmKFlZXIqtsZGmkNVbQgoAuuC0jkW+/8z//e//n
 JIejFU1sMBefeETQJWoSVKyMqWkf71we33s5Rt055k8sDycZMmofp0hR/z8Myb7ylSa/e0KI
 ufMUQ4zX1aTv+RaS4bnCkL7760hP2l2KmJ3JpNKeJSHW3HqG1Pe5WVLcdB4RW3+3hBg/W2ji
 OduKSHtBEOnqiiK3G500edzxVEIcfedYMlFrY4izSknupf9Jk0pbLh05j6/rLUR8laWH4ks+
 hvP1pl4pX1mylL/Z6KJ4m9XA8q+6G1n+vd3u1QtP8B/eOaT8m7wWir8w5Gb5ivd1FH9+Qs2P
 PXsn2Rq4S/bzfiEhPlnQha/ZKzvoLKqmD1esOJrfcgelotzFRuTHAf4J3IMGqRHJOAUuQXDJ
 cI8Si2EEQ18tlM+lwB4Erek/Tr8YOlMgFfViBKlFS0R2I5i8vNvHgXgDOMbaJT6ejSNgvMY9
 lUDjT1Jo/stF+xosXgkXM63Ix3K8BkayH00xgxfCl8GTU8Fz8A74+LpFInoC4I+rDsbHfng1
 DOa1Tv1DYyX87cinRJ4PtW4zLQ6a6Qc3rDEirwejLYsSORDePqiSijwPOnKyGN9wgEsRTJx2
 0mJRi6A4Z5IVXavglf2zlzlvQiiUNYSL8lqwdvXSPhnwLHjhDhBnmAXZNXnfZDmczlCI7kVQ
 XlTOTsca6y30BaQyzdjMNGMb04xtTN9zCxBjRUohSa+NE/QRicJvYXqNVp+UGBcWe0hrQ96r
 7ph8MFKHmv7b14wwh1T+8gVluTEKiSZZn6JtRsDRqtnyMq1Xku/XpBwTdIf26JISBH0zmssx
 KqU84oYrWoHjNEeEXwXhsKCb7lKcX3AqkvHl1TLl9U1hQoox55jr1rqdkU8+RD+NjhiODfp3
 mXqIaysOCQqMMiSf697Y+HLbHMwef5nWn2keXMI6j6uuHYgMKHw4WuK2PI72r+ppG45Ke92Z
 +Wn0h9ZSTyoaGQj9pSEuqGJl8NrYZwM30zG42u6aQ5ybM6qZamfDwPztaoOK0R/UrFhK6/Sa
 /wG5JSu10QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe885O5vS4jQtX6QbCzGCpmfLfAwTMYjzrcKiKM2WHjRyznY2
 yz6Uod1W3iLL1igz89aNNvNSdtNllmFr1cArmKMWNa3E0rTLpgV++/H8/78HHngkpMwhCpbs
 ztDzugx1upz2pzp+P+1bkdZ3dkf40QIWatp/U/Cjc5yAysF+Ck6X/iHh4shCML/Mo8B4ORwG
 3q6HoyOlFAw8Wgtdh+8RYHZngbXzlAhqS5ooaBrw0FD1oBCBZdApAuPPGhJG8m0I2srmg92e
 ANea3SS86HCIwDVQQMOvBgsF7roguH/kFQlWSwkZu4Br7KtAXF1NF8FVfwvjmkx9Ys5avZy7
 0vyR4Cy1J2iu19lMc0Odnd55xSHu62eXmHt/rpXgir54aO72UCPBFf4K58ZefxZtCNimiNZp
 DXp+SZpW0K+Rb2dBqWCjQKFcGaVgVZGJq5UR8rCY6BQ+fXcWrwuL2alIc1feITNvs/svtd5A
 Oagk1Ij8JJhZib+cLBMbkb9ExlxFuKL9LmlEEm+wAD+9lTXdCcCTTiM93fmEcHlxDu0LAph1
 2DXWJvJxIKPC4/WeqUUkMybGo93VpC+QMVrsKPxO+ZhmVuPiY7XIx1ImBo+efj7FFBOCJ4Zz
 CR/PY7bi1kbTv85c/Oy8a8r1Y9bg4XO2qZ0kE4onLzr+cRDudl0ipnkxbvCYySIkM83QTTMU
 0wzFNEMpQ1QtCuQNgiZVIygVglojGDJSFclajQV5/6m+bbyuERmH4lsQI0Hy2dL26yU7ZCJ1
 lpCtaUFYQsoDpbc03pE0RZ19gNdpk3SGdF5oQRHe44rJ4HnJWu93ZuiT2Ag2EqLYSFWkahXI
 g6THmccJMiZVref38Hwmr/vvERK/4ByUGOcCtj33AldVeZ62W6zrrFs2HuwJMX8oVXVN/tz1
 pmF40URub67bIXdmVu11f5hjXpriIZIHlfmfRgt27X1i/5iStOwPUz9RcaY+btO7h/F5/M1s
 i/+TwY0xK/qNx77Nmrt9c1t0gPNH+T7bTlt2XmvB9xs9hgmxLT6io8gemy+nhDQ1u5zUCeq/
 DC6zDWUDAAA=
X-CMS-MailID: 20200415100944eucas1p1dcfeb784e790ca2fc3417fd2797e3f5d
X-Msg-Generator: CA
X-RootMTR: 20200415100944eucas1p1dcfeb784e790ca2fc3417fd2797e3f5d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415100944eucas1p1dcfeb784e790ca2fc3417fd2797e3f5d
References: <20200407174926.23971-1-andrzej.p@collabora.com>
 <20200407174926.23971-4-andrzej.p@collabora.com>
 <CGME20200415100944eucas1p1dcfeb784e790ca2fc3417fd2797e3f5d@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_030947_338893_58F90886 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, platform-driver-x86@vger.kernel.org,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 4/7/20 7:49 PM, Andrzej Pietrasiewicz wrote:
> Prepare for adding THERMAL_DEVICE_INITIAL mode.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/acpi/thermal.c                        | 27 +++++++++----------
>  drivers/platform/x86/acerhdf.c                | 12 ++++++---
>  .../intel/int340x_thermal/int3400_thermal.c   | 18 +++++--------
>  3 files changed, 27 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
> index 19067a5e5293..a93b0412dd6b 100644
> --- a/drivers/acpi/thermal.c
> +++ b/drivers/acpi/thermal.c
> @@ -172,7 +172,7 @@ struct acpi_thermal {
>  	struct acpi_thermal_trips trips;
>  	struct acpi_handle_list devices;
>  	struct thermal_zone_device *thermal_zone;
> -	int tz_enabled;
> +	enum thermal_device_mode mode;
>  	int kelvin_offset;	/* in millidegrees */
>  	struct work_struct thermal_check_work;
>  };
> @@ -500,7 +500,7 @@ static void acpi_thermal_check(void *data)
>  {
>  	struct acpi_thermal *tz = data;
>  
> -	if (!tz->tz_enabled)
> +	if (tz->mode != THERMAL_DEVICE_ENABLED)
>  		return;
>  
>  	thermal_zone_device_update(tz->thermal_zone,
> @@ -534,8 +534,7 @@ static int thermal_get_mode(struct thermal_zone_device *thermal,
>  	if (!tz)
>  		return -EINVAL;
>  
> -	*mode = tz->tz_enabled ? THERMAL_DEVICE_ENABLED :
> -		THERMAL_DEVICE_DISABLED;
> +	*mode = tz->mode;
>  
>  	return 0;
>  }
> @@ -544,27 +543,25 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
>  				enum thermal_device_mode mode)
>  {
>  	struct acpi_thermal *tz = thermal->devdata;
> -	int enable;
>  
>  	if (!tz)
>  		return -EINVAL;
>  
> +	if (mode != THERMAL_DEVICE_DISABLED &&
> +	    mode != THERMAL_DEVICE_ENABLED)
> +		return -EINVAL;
>  	/*
>  	 * enable/disable thermal management from ACPI thermal driver
>  	 */
> -	if (mode == THERMAL_DEVICE_ENABLED)
> -		enable = 1;
> -	else if (mode == THERMAL_DEVICE_DISABLED) {
> -		enable = 0;
> +	if (mode == THERMAL_DEVICE_DISABLED)
>  		pr_warn("thermal zone will be disabled\n");
> -	} else
> -		return -EINVAL;
>  
> -	if (enable != tz->tz_enabled) {
> -		tz->tz_enabled = enable;
> +	if (mode != tz->mode) {
> +		tz->mode = mode;
>  		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
>  			"%s kernel ACPI thermal control\n",
> -			tz->tz_enabled ? "Enable" : "Disable"));
> +			tz->mode == THERMAL_DEVICE_ENABLED ?
> +			"Enable" : "Disable"));
>  		acpi_thermal_check(tz);
>  	}
>  	return 0;
> @@ -913,7 +910,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
>  	if (ACPI_FAILURE(status))
>  		return -ENODEV;
>  
> -	tz->tz_enabled = 1;
> +	tz->mode = THERMAL_DEVICE_ENABLED;
>  
>  	dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
>  		 tz->thermal_zone->id);
> diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
> index d5188c1d688b..87e357017d4a 100644
> --- a/drivers/platform/x86/acerhdf.c
> +++ b/drivers/platform/x86/acerhdf.c
> @@ -65,8 +65,10 @@
>  
>  #ifdef START_IN_KERNEL_MODE
>  static int kernelmode = 1;
> +static enum thermal_device_mode thermal_mode = THERMAL_DEVICE_ENABLED;
>  #else
>  static int kernelmode;
> +static enum thermal_device_mode thermal_mode = THERMAL_DEVICE_DISABLED;
>  #endif
>  
>  static unsigned int interval = 10;
> @@ -416,8 +418,7 @@ static int acerhdf_get_mode(struct thermal_zone_device *thermal,
>  	if (verbose)
>  		pr_notice("kernel mode fan control %d\n", kernelmode);
>  
> -	*mode = (kernelmode) ? THERMAL_DEVICE_ENABLED
> -			     : THERMAL_DEVICE_DISABLED;
> +	*mode = thermal_mode;
>  
>  	return 0;
>  }
> @@ -435,10 +436,13 @@ static int acerhdf_set_mode(struct thermal_zone_device *thermal,
>  	    mode != THERMAL_DEVICE_ENABLED)
>  		return -EINVAL;
>  
> -	if (mode == THERMAL_DEVICE_DISABLED && kernelmode)
> +	if (mode == THERMAL_DEVICE_DISABLED && kernelmode) {
>  		acerhdf_revert_to_bios_mode();
> -	else if (mode == THERMAL_DEVICE_ENABLED && !kernelmode)
> +		thermal_mode = THERMAL_DEVICE_DISABLED;
> +	} else if (mode == THERMAL_DEVICE_ENABLED && !kernelmode) {
>  		acerhdf_enable_kernelmode();
> +		thermal_mode = THERMAL_DEVICE_ENABLED;
> +	}
>  
>  	return 0;
>  }

The conversion missed:

* handling of "force_bios" and force_product" kernel parameters:

	if (force_bios[0]) {
		version = force_bios;
		pr_info("forcing BIOS version: %s\n", version);
		kernelmode = 0;
	}

	if (force_product[0]) {
		product = force_product;
		pr_info("forcing BIOS product: %s\n", product);
		kernelmode = 0;
	}

* acerhdf_revert_to_bios_mode() call on error in acerhdf_set_cur_state()

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> index 634b943e9e3d..fcbd1b14fa74 100644
> --- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> +++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
> @@ -44,7 +44,7 @@ static char *int3400_thermal_uuids[INT3400_THERMAL_MAXIMUM_UUID] = {
>  struct int3400_thermal_priv {
>  	struct acpi_device *adev;
>  	struct thermal_zone_device *thermal;
> -	int mode;
> +	enum thermal_device_mode mode;
>  	int art_count;
>  	struct art *arts;
>  	int trt_count;
> @@ -247,24 +247,20 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
>  				enum thermal_device_mode mode)
>  {
>  	struct int3400_thermal_priv *priv = thermal->devdata;
> -	bool enable;
>  	int result = 0;
>  
>  	if (!priv)
>  		return -EINVAL;
>  
> -	if (mode == THERMAL_DEVICE_ENABLED)
> -		enable = true;
> -	else if (mode == THERMAL_DEVICE_DISABLED)
> -		enable = false;
> -	else
> +	if (mode != THERMAL_DEVICE_ENABLED &&
> +	    mode != THERMAL_DEVICE_DISABLED)
>  		return -EINVAL;
>  
> -	if (enable != priv->mode) {
> -		priv->mode = enable;
> +	if (mode != priv->mode) {
> +		priv->mode = mode;
>  		result = int3400_thermal_run_osc(priv->adev->handle,
> -						 priv->current_uuid_index,
> -						 enable);
> +						priv->current_uuid_index,
> +						mode == THERMAL_DEVICE_ENABLED);
>  	}
>  	return result;
>  }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

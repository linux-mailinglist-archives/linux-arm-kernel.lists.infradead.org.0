Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C54116C54
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eSEWugmjodWkB8jUnQPotYXvautsV4VyglS+G9zNIw=; b=s/Hy+20ZuSkvLf
	oq6SWYzzGqYFaUAI3QZiBT0fOHRzfcGoCC4vRohhXdg8MJL/W7sk/8q9DfDVF3pA7GedRqsswbEQq
	KPUrOaZhuk1UJ2haVLqDRusGf8tCFZjXaTlBtkihFqG13A646c5Fafc7o0oDwFGulc6OX4uDvU6pz
	ojEqwhD5UCQar/fHXkrnXVqnyrdNNuGyG/ovpS3gI2pg4Wj6pmOO+L68iKArFoHxoEcxFJa1mlBOV
	nO22JvY/mj3SCoalYmGOGsICnAB4V0EqMoQmxKx0KvuLk54W3yweksKaxaKIPyQzybn79w/mUpMBZ
	wKmV1fExb7JrWO1FNgtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHIM-00037Y-RL; Mon, 09 Dec 2019 11:33:42 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHIA-00036n-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 11:33:35 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8cl5GwTcsYXUq177o8Etu3PEQqFiiTcbfyJnGVDGRtim50uaTGUSXn5za5a6TUi1/8aDs6uc0N
 sffwQZMY7cng5dPTl6e8NklULEhp6jO+8SNHYftwGJbdJWcqkp+g0u5hBIWBgJhRZ0ZLti7u6O
 vkV3g7sPyM8rjIXSwIq3cmtalVQPxjJoe0b8mq9lpkjHVjYglbHNnGTJHZ1BK7pgVnRRLY0HkY
 aVBVTXE7/jKwJJC3h05xNqZC+/6DXsNfX80MdNaA1lzI77KHjGKK+qtlQxM9+URW/b8Jv9KHwH
 AYk=
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="59697710"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Dec 2019 04:33:27 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Dec 2019 04:33:27 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 9 Dec 2019 04:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jp+wwKaacKcziM55n/Mjp0g2uaW9AI1kZ+026KfgzoK4gs7nbvCURm2hV3HEIVJJb5tJc27yuxsvYhy22EtbNWZrP8zqq9xpsRnETyN0KH5Fw/yVjx6NLoGRjdFiIMmsUsLulV8k2AYmbNUvVVjGZ6/33mDKMXxxzsd13pQSrnxCK4nSWvcjGyIk8KSiQ1NhvslsZLHA+YNbiAchdWncc5Q7bG9aItTTY2RMWmD9N6k5o8pmcSVeQ57mbROsuc3ZakbhGasyO5UKLlIc4wMNDhaGM9HtOHc7pqxGbrpP4cppRvZk2IVpDTgcTujhnMJc69KgJXPTPhSJrthco5yJZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngIUD1SPLnedxeWW+0AMAjW683ih3T9oCh1bqJBAV78=;
 b=V7VTQS2jtV3qoiQOL4iNipUQsqu87XWQqDNHLgP8GP3WnFEBhRTG/mYfeNriSPXs9SRaOlqF7H+5CKFlrJ+a6UZjfXhxEMuhpeA76YobTbe1PGBy4bHUk6ldARdlWAB5f7jV52ZauKTIR6U6My7DbB9YJzTBuo2o7qlAOsubLHoqWwPv42s18TlpJBxEyxLbIBASM3Ho025vG15VCev6H/I/894sgqAGJuWQraLPITHQHT1lEXqsNi/BsaQLKxTJMUWsOMlTL0InyyTLvhb0Cd4/f91ocxdZESY+FMbLTVXvjIdyvQxZw56N5U3ztt2V6zl4kD9loKCu2nN76jrMYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngIUD1SPLnedxeWW+0AMAjW683ih3T9oCh1bqJBAV78=;
 b=urJqVS9Vs4AQ7hRjQnoC12CCs6nDjsoor9qgOa2FWC8WknVd8tYkjq/GLXZqo74Aavt1Xb0ElL5FE/pUiyNnWbBLYhy69JvLNjfPzkb4ujFSd1bzHPoDb7DdmHgW0ibN234WNtbR07vVLL2o+/Vi8dnheOmJrF+kcf6PVWIsIs0=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3627.namprd11.prod.outlook.com (20.178.230.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Mon, 9 Dec 2019 11:33:24 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2516.017; Mon, 9 Dec 2019
 11:33:24 +0000
From: <Claudiu.Beznea@microchip.com>
To: <kamel.bouhara@bootlin.com>, <sre@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Topic: [PATCH v3] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Index: AQHVrnUp2NWt7Ancx0qWA3/sYhrP8aexq/mA
Date: Mon, 9 Dec 2019 11:33:23 +0000
Message-ID: <14a9f500-3f4a-2b6b-cd27-f48c6cb73cce@microchip.com>
References: <20191209094329.45638-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191209094329.45638-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0075.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::16) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191209133315906
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16359fb5-d851-45dc-68b2-08d77c9b99bf
x-ms-traffictypediagnostic: DM6PR11MB3627:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3627E6F7006A74E0F1D6D09487580@DM6PR11MB3627.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(366004)(136003)(189003)(199004)(8936002)(478600001)(966005)(31686004)(31696002)(86362001)(2616005)(305945005)(81156014)(8676002)(26005)(81166006)(186003)(66946007)(66556008)(6512007)(2906002)(6486002)(64756008)(66446008)(66476007)(4326008)(316002)(110136005)(52116002)(53546011)(6506007)(5660300002)(229853002)(36756003)(71200400001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3627;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: txnTAZHzvDI3aKQX4jCSxgcmNgIUdiaCFnan4MtUR+dva40EHOskuWzV0feHOwQkq1qNIzeV26qrG58UzT73YEb2VRWcc1zyhZ91GLyxX08B/zFACY3RylF9R5sLTfQYRQTEnp7+IPQFp/rGL0iAai2GsTmD3Ix/jgAx3W8b2cf3bjALmMOb0YEllzYlNZAvawIx6b0r27I5APgOg/z1PD9xKS3hpBoRYbd/kthnb+q4pbtpGWz5gWcEbMnJEQ8cBACF+dmX+WDJRjzIBlj2H/KoYze4oiCph0PRqwIgpcuiFQJfnKOB2uRn6kf26IKBcwmO1dUjpfdEMYATM56xw1Y6J6211QkgdiRsDFFmZnwIbq00lDXzcvSBKuZQQwPwV/quIDxHPEYn4Bj+GKOO9HrKzlaPWYFpuL22Ss4DabePojGfvK5U+XxB9EAqW7bkZ18cpPUU5wDy4z5d9xRgNVLiZn8TZNHc2lSXXGAa/0I=
Content-ID: <8330DB8D5B29824CB5117A7F3B23BDF7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 16359fb5-d851-45dc-68b2-08d77c9b99bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 11:33:23.9146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKcmt0U0GBdGe5Sek5Bh+dDjsw1WxaPG9AH8mfHsVHoG0/NN8LH4oePBtrjqEntoNK6cKMmsiKoi8E22HZRVeIZ4KL2OahfYxd70gIWwCe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3627
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_033330_822680_5CC5EE15 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kamel,

On 09.12.2019 11:43, Kamel Bouhara wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> This patch export the power on reason through the sysfs interface and
> introduce some generic reset sources.
> Update the ABI documentation to list current power on sources.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
> Changes in v2
> =============
>         - Be less specific on the crystal oscillator value
>         - Add an Acked-by
> Changes in v3
> =============
>         - Really be less specific on the crystal oscillator value
> 
>  .../sysfs-devices-platform-power-on-reason    | 14 ++++++
>  drivers/power/reset/at91-reset.c              | 44 +++++++++++++------
>  include/linux/power/power_on_reason.h         | 19 ++++++++
>  3 files changed, 64 insertions(+), 13 deletions(-)
>  create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
>  create mode 100644 include/linux/power/power_on_reason.h
> 
> diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> new file mode 100644
> index 000000000000..83daeb9b1aa2
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> @@ -0,0 +1,14 @@
> +What:          /sys/devices/platform/.../power_on_reason
> +
> +Date:          October 2019
> +KernelVersion: 5.4
> +Contact:       Kamel Bouhara <kamel.bouhara@bootlin.com>
> +Description:   This file shows system power on reason.
> +               The possible sources are:
> +               General System Power-ON, RTC wakeup, Watchdog timeout,
> +               Software Reset, User pressed reset button,
> +               CPU Clock failure, 32.768kHz Oscillator Failure,

Crystal oscillator value is still present here.

> +               Low power mode exit, Unknown.
> +
> +               The file is read only.
> +
> diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
> index 44ca983a49a1..3cb2df40af37 100644
> --- a/drivers/power/reset/at91-reset.c
> +++ b/drivers/power/reset/at91-reset.c
> @@ -17,7 +17,7 @@
>  #include <linux/of_address.h>
>  #include <linux/platform_device.h>
>  #include <linux/reboot.h>
> -
> +#include <linux/power/power_on_reason.h>

As far as I know, headers in include/linux are only visible in kernel.
Although you may use this header, in future, in other drivers (as Alexandre
specified in a previous email), at the moment it is only used by
at91-reset.c. So, why not keeping them in at91-reset.c or leave it as is
for the moment and introduce it when this will be necessary?

Moreover, you are doing 2 things on a patch:
1/ export the reset reasons through sysfs
2/ introduce the reset reason defines

Thank you,
Claudiu Beznea

>  #include <soc/at91/at91sam9_ddrsdr.h>
>  #include <soc/at91/at91sam9_sdramc.h>
> 
> @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
>         return NOTIFY_DONE;
>  }
> 
> -static void __init at91_reset_status(struct platform_device *pdev)
> +static const char *at91_reset_reason(struct platform_device *pdev)
>  {
>         const char *reason;
>         u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
> 
>         switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
>         case RESET_TYPE_GENERAL:
> -               reason = "general reset";
> +               reason = POWER_ON_REASON_GENERAL;
>                 break;
>         case RESET_TYPE_WAKEUP:
> -               reason = "wakeup";
> +               reason = POWER_ON_REASON_RTC;
>                 break;
>         case RESET_TYPE_WATCHDOG:
> -               reason = "watchdog reset";
> +               reason = POWER_ON_REASON_WATCHDOG;
>                 break;
>         case RESET_TYPE_SOFTWARE:
> -               reason = "software reset";
> +               reason = POWER_ON_REASON_SOFTWARE;
>                 break;
>         case RESET_TYPE_USER:
> -               reason = "user reset";
> +               reason = POWER_ON_REASON_USER;
>                 break;
>         case RESET_TYPE_CPU_FAIL:
> -               reason = "CPU clock failure detection";
> +               reason = POWER_ON_REASON_CPU_FAIL;
>                 break;
>         case RESET_TYPE_XTAL_FAIL:
> -               reason = "32.768 kHz crystal failure detection";
> +               reason = POWER_ON_REASON_XTAL_FAIL;
>                 break;
>         case RESET_TYPE_ULP2:
> -               reason = "ULP2 reset";
> +               reason = POWER_ON_REASON_LOW_POWER;
>                 break;
>         default:
> -               reason = "unknown reset";
> +               reason = POWER_ON_REASON_UNKNOWN;
>                 break;
>         }
> 
> -       dev_info(&pdev->dev, "Starting after %s\n", reason);
> +       return reason;
>  }
> 
>  static const struct of_device_id at91_ramc_of_match[] = {
> @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
>         .priority = 192,
>  };
> 
> +static ssize_t power_on_reason_show(struct device *dev,
> +                                   struct device_attribute *attr,
> +                                   char *buf)
> +{
> +       struct platform_device *pdev = to_platform_device(dev);
> +
> +       return sprintf(buf, "%s\n", at91_reset_reason(pdev));
> +}
> +
> +static DEVICE_ATTR_RO(power_on_reason);
> +
>  static int __init at91_reset_probe(struct platform_device *pdev)
>  {
>         const struct of_device_id *match;
> @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
>                 return ret;
>         }
> 
> -       at91_reset_status(pdev);
> +       ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
> +       if (ret) {
> +               dev_err(&pdev->dev, "Could not create sysfs entry\n");
> +               return ret;
> +       }
> +
> +       dev_info(&pdev->dev, "Starting after %s reset\n",
> +                at91_reset_reason(pdev));
> 
>         return 0;
>  }
> diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
> new file mode 100644
> index 000000000000..9c44baa52911
> --- /dev/null
> +++ b/include/linux/power/power_on_reason.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
> + */
> +
> +#ifndef POWER_ON_REASON_H
> +#define POWER_ON_REASON_H
> +
> +#define POWER_ON_REASON_GENERAL "General"
> +#define POWER_ON_REASON_RTC "RTC wakeup"
> +#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
> +#define POWER_ON_REASON_SOFTWARE "Software"
> +#define POWER_ON_REASON_USER "User"
> +#define POWER_ON_REASON_CPU_FAIL "CPU clock Failure"
> +#define POWER_ON_REASON_XTAL_FAIL "Crystal oscillator Failure"
> +#define POWER_ON_REASON_LOW_POWER "Low power exit"
> +#define POWER_ON_REASON_UNKNOWN "Unknown"
> +
> +#endif /* POWER_ON_REASON_H */
> --
> 2.24.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

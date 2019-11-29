Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0EE10D476
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 11:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk46uHSpy1Yh25RxmEMTX788UQZVQsl8D30hp4cbKUg=; b=qCiXarG5WrQjAd
	pRiQGN2V9QWbc9ZXs8JxXQFScE8q3gEqL9joQgjEjWqRILirUpqOJz6LeBUBxZrLiepJIBaUsm3EY
	zh70ezl3b7cX3X46+lsNdJzwBJqlBDUYOXEIYzpTJDmGrf27PEF299JzFQffKCAMTw/Jw0rSIDTUC
	g1EpN+0/8K4uVIQEBbV4PVMf4Arw93qXQsc1Us5E6zGavttrr34ec4ge5/1GncSAK12Zgv0//x3tr
	Eb53oqmQkeThSxd5tfhUoH4ggppj4HGdMA4rjqTZ4HrZoYsl4HB5WzP4YqKl/gc+VR+CiF6tPIWYw
	nFxfX0Nz6BO/ZZwG1oWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iadyM-0008HY-Mb; Fri, 29 Nov 2019 10:58:02 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iadyA-0008Gb-Rk
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 10:57:54 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: naqoJRT3fpe7t89hrKXOTYjV3j/yUEiEsisXubHPRfXrb74jcgI/q9tRWHcJhpHMyYv819G7FI
 z69iOhDX+cxhbqsBxVztbpNMzZZYtjXHQeDGHM0dCZAzezGE5DTnzHaz5Nk74y68Ganp6pRWzT
 0NyQetGHzINyWI2cn7nSs5WhRo3UcwpuNOyp+FfJdTB0rN8bKioJp6Brdc6pFmgReAptX4mRlu
 umpMyZyKYveu7LWXfwjOK7f91aAnuxjw8Eg2giNmjxXjcwUHdIjTBkVL6opSLMG3b5/EXslq5+
 r78=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="57273289"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 03:57:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 03:57:46 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 29 Nov 2019 03:57:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKc0agaIKmA+bqWMS+WDobciHdeWvlkSteYd9plic2g4KTspxG9NvlPb/quKz23BDR+cZJT1M5E7CdqaZN5X6ViUHHKzqvQeIt+VRfqSZnjDqmJq7ZxrjXKIYPrliLdw1JrgFDEQw9ML1OZbkbaxQ1LyagtAh1NwXpZnRpO6xhAuJbLM3f8tQJOPV4EP4uTQWXUWeI2HoK4gaWozD26sqAzx7yhywJv9KZbmhtI1nXJuoSkUy817RDDta7MHUkC0R1kStIp0WSYBfZy4p5mSjNkF/xbsnWHv6uvOPwjyTf75TI8HengHz9rCdv3jm2kP9wnihR80PtsUVKdZpYoEEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EN32HTsrbJ+oLqIii+6COmhZOL7UbsPDBR4aZinOdac=;
 b=CIBq9sGeagZcu0YtcdlLet4b27juaGJN+r3Q+vmzJjSkKUN+q7SocgPYknAX8ZKJjRPffj9h/EZZOxE2GSRrPCQVK3jTus6omNOvK37FLSYFUeLIQX/vCpwZ8F079aDbq9Q7jeItjYl0jAC/XAemrKiT+if/zM7rSbK2YbCOfyEE05GmsFnAAowQ+5qhWiOYozYdVQNgjr/HAYANby/rsvvtJDAvtaj2Yfq+WABzXHVoMvT6vcD+BSfdxoqI6XiQmGFexpKL3cDn7T4hmv1bE4NeuGRWHBRNtnnDR9RVX1YNdcfmrnARKmgKXhf12ArVk5DqkdoPcrU1w6xaPPrIJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EN32HTsrbJ+oLqIii+6COmhZOL7UbsPDBR4aZinOdac=;
 b=nGRonSCdBRkzf+UF6lTC1rue9sCW70s10crA/FO3u+DhJYk+gLLA0YpoZXt3tbbvp4GeXk3Kz3KxTDmfDPqjsbG+V94lOV0bYqg5emDIOG3mapHTwBZmeS8yPakKibxaoCAlHJSSHwB0iTUINOpN0ymDz5ZUWYTA3+4O8KYnh9U=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4332.namprd11.prod.outlook.com (52.132.250.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Fri, 29 Nov 2019 10:57:45 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2474.023; Fri, 29 Nov 2019
 10:57:45 +0000
From: <Claudiu.Beznea@microchip.com>
To: <kamel.bouhara@bootlin.com>, <sre@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Topic: [PATCH] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Index: AQHVpqPUrVvL4JbtF0GEzLdoaJ+YqA==
Date: Fri, 29 Nov 2019 10:57:45 +0000
Message-ID: <034c9d01-633a-eeaa-f61f-d185be7227f2@microchip.com>
References: <20191017124058.19300-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191017124058.19300-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0065.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::42) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191129125738470
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffffde53-59f9-4c90-746c-08d774baf6bb
x-ms-traffictypediagnostic: DM6PR11MB4332:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB433220C984C7705A0B23593887460@DM6PR11MB4332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(376002)(136003)(396003)(366004)(189003)(199004)(25786009)(6512007)(36756003)(31696002)(66946007)(305945005)(7736002)(478600001)(229853002)(316002)(66066001)(6486002)(6436002)(110136005)(99286004)(5660300002)(66446008)(54906003)(64756008)(256004)(8676002)(102836004)(52116002)(2616005)(386003)(11346002)(53546011)(8936002)(6246003)(3846002)(446003)(26005)(186003)(66556008)(76176011)(2501003)(81156014)(4326008)(71190400001)(86362001)(6506007)(66476007)(14454004)(81166006)(2906002)(14444005)(71200400001)(31686004)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4332;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oy434Nw8vwyLK55aVa1ABmG1dV+EpXstdIdEKRt5Oj2IJ25S7eGcSqtMAx2NIM92rZvrFzdhynJx+ML7jBznbmqC0Am+SssfFHThr77xnEJxyAZgCEeea6+8QN9s6VHMlNaKTuaqnwqyZ9oX1J8qtCPA3SXs8HCiqvFmjHIWlj0nDvgpX7qBT1UudM4b9RafgjLG28OnjUbupqjU6YhQ01iDib7jwOWW9y+jzeHqRZeJ++fcbwuMafqhj4RXyynBdn6dxb/TgC9Fgri7d3UrNoMTaWqtqKU1C6Igid6+PteQYWtBVnPj5xeYK6L6E3zSg7fqQqi9BZffhsPnNZdVoIdmOe1EmcCYqysIEpaK8gZU54DukX3QKT6jHyfB3lOfOJEFQofZZNIg7DcHQbIjvepnhuTdr1bhJGgjsmchA9/F7XKOjA7np66IbUaX09v/
Content-ID: <1A7DF38D6827FD4095E36D72FB5464F0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ffffde53-59f9-4c90-746c-08d774baf6bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 10:57:45.0962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F0rTItfevz9OpieE4ZXUHdKqhtxf7mLEUBJPahXOuwNr8Qg4q4DM3222VsRHfFbGTCGXQhS2MJCneBcojU1oktHDPd8oqI15EenESPRgUtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_025750_965630_65D7D147 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kamel,

On 17.10.2019 15:40, Kamel Bouhara wrote:
> This patch export the power on reason through the sysfs interface and
> introduce some generic reset sources.
> Update the ABI documentation to list current power on sources.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
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
> +What:		/sys/devices/platform/.../power_on_reason
> +
> +Date:		October 2019
> +KernelVersion:	5.4
> +Contact:	Kamel Bouhara <kamel.bouhara@bootlin.com>
> +Description:	This file shows system power on reason.
> +		The possible sources are:
> +		General System Power-ON, RTC wakeup, Watchdog timeout,
> +		Software Reset, User pressed reset button,
> +		CPU Clock failure, 32.768kHz Oscillator Failure,
> +		Low power mode exit, Unknown.
> +
> +		The file is read only.
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
>  #include <soc/at91/at91sam9_ddrsdr.h>
>  #include <soc/at91/at91sam9_sdramc.h>
> 
> @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
>  	return NOTIFY_DONE;
>  }
> 
> -static void __init at91_reset_status(struct platform_device *pdev)
> +static const char *at91_reset_reason(struct platform_device *pdev)
>  {
>  	const char *reason;
>  	u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
> 
>  	switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
>  	case RESET_TYPE_GENERAL:
> -		reason = "general reset";
> +		reason = POWER_ON_REASON_GENERAL;
>  		break;
>  	case RESET_TYPE_WAKEUP:
> -		reason = "wakeup";
> +		reason = POWER_ON_REASON_RTC;
>  		break;
>  	case RESET_TYPE_WATCHDOG:
> -		reason = "watchdog reset";
> +		reason = POWER_ON_REASON_WATCHDOG;
>  		break;
>  	case RESET_TYPE_SOFTWARE:
> -		reason = "software reset";
> +		reason = POWER_ON_REASON_SOFTWARE;
>  		break;
>  	case RESET_TYPE_USER:
> -		reason = "user reset";
> +		reason = POWER_ON_REASON_USER;
>  		break;
>  	case RESET_TYPE_CPU_FAIL:
> -		reason = "CPU clock failure detection";
> +		reason = POWER_ON_REASON_CPU_FAIL;
>  		break;
>  	case RESET_TYPE_XTAL_FAIL:
> -		reason = "32.768 kHz crystal failure detection";
> +		reason = POWER_ON_REASON_XTAL_FAIL;
>  		break;
>  	case RESET_TYPE_ULP2:
> -		reason = "ULP2 reset";
> +		reason = POWER_ON_REASON_LOW_POWER;
>  		break;
>  	default:
> -		reason = "unknown reset";
> +		reason = POWER_ON_REASON_UNKNOWN;
>  		break;
>  	}
> 
> -	dev_info(&pdev->dev, "Starting after %s\n", reason);
> +	return reason;
>  }
> 
>  static const struct of_device_id at91_ramc_of_match[] = {
> @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
>  	.priority = 192,
>  };
> 
> +static ssize_t power_on_reason_show(struct device *dev,
> +				    struct device_attribute *attr,
> +				    char *buf)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +
> +	return sprintf(buf, "%s\n", at91_reset_reason(pdev));
> +}
> +
> +static DEVICE_ATTR_RO(power_on_reason);
> +
>  static int __init at91_reset_probe(struct platform_device *pdev)
>  {
>  	const struct of_device_id *match;
> @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
>  		return ret;
>  	}
> 
> -	at91_reset_status(pdev);
> +	ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Could not create sysfs entry\n");
> +		return ret;
> +	}
> +
> +	dev_info(&pdev->dev, "Starting after %s reset\n",
> +		 at91_reset_reason(pdev));
> 
>  	return 0;
>  }
> diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
> new file mode 100644
> index 000000000000..9978cc757427
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
> +#define POWER_ON_REASON_CPU_FAIL "CPU Clock Failure"
> +#define POWER_ON_REASON_XTAL_FAIL "32.768k Crystal oscillator Failure"
> +#define POWER_ON_REASON_LOW_POWER "Low power exit"
> +#define POWER_ON_REASON_UNKNOWN "Unknown"
> +
> +#endif /* POWER_ON_REASON_H */

Is this new header necessary?

Thank you,
Claudiu Beznea

> --
> 2.23.0
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

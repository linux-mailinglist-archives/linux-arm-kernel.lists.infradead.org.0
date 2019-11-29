Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE73910D499
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q2DBoWsD22R5qe4zrUW/ImT27B+5Inba5qgt4O6v+Y=; b=U2k8XqUY+dBO7/
	KzRHbkclMDIwi8EZyumJLz4/3D5QCOITSsx1HIOrYtH/z8As58pQ3IhUhiCSoom5wxLyCxSjZPdAt
	+Hk2+3Okh8JjtMFmAbf7FVUp4VrRYZnFi3RbikGHM/SPrnds40xVZroLCIXqoBfGV7flzkhXGfdm+
	fXiOFJVMFffYof/lK4enP+3bpwmGQcEaV6OGttRgC2z69p38WVYnCa/ZitH+q8aEv2sZx72hAqfez
	Kcs3wZ2fW2qE96L60gQmaFb0Gv3tfV+8R2OBy9agbddcf8z8d9VMXJ70mgFqDbi4MyqY/Im9gLNq/
	UWsUQNEqHLNTTdbNI3/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaeFG-0006Wy-RX; Fri, 29 Nov 2019 11:15:30 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaeF6-0006WZ-U7
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:15:22 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: u5/hn2/4mpykZoYvjM3Pd1UIsg/4tTZfhwQv7r8tqtbuw7vm9uupFBEV6l0iEWL1ApkSyQLGqo
 LZCEJ12pd4BNmTwFdxRQMGb6KfkwmUcuZZON/VPex63W2vhLTTO4M/4e95r5qymcgRgCO2HDI8
 ZMiUYryedQwWAYXaG+Y8RN7e9DG0ks1flV3mN0DmLatgs1VUQRjHCH9wFrX11RwK6pPbmP1dzJ
 JjEP2kA0+iTw0HVHhTIR/PaigraVt4SGmww0aTxnFAgZVNRPgVa06tHJjeWvH25x5hTrQ10TXm
 Nw8=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="57276019"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 04:15:20 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 04:15:19 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 29 Nov 2019 04:15:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/8VtkJb9imnVHg8x1xK5Kf0fu8n8lvLQ5RpPKi0dBj/0LXxEHDcT5VqN4H8M9MKrHjBQDuo7bnUlo3AfLatKzTadOK/hiMdvGMoz3239PgVIFeJp939ux6swUr6saMIMRRi+xueuR1Und61BWKVFXUeqLhpI9LsJAwqXaZwXjNGnsRXAQdqpSJSDq3ibsYnEVPw5E+r1GQZVDE6S5jDeQNggOckwVceYm66EqcB+5V6ihpiOvXiZy0MhVj1OOgFt9J1Pjr1M0+fW24/mhLd6Gs8F7z3Xc8Zoip5+XV9wR28LPtXWf612ibpd7iQKM5T6AgKgihjPizca/5zia+RAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gkUt9w7CPOxidC9msuoeI3Otip4NRh24RmoGfoom8C8=;
 b=nJ39GAG9HKV4XHIVIg/Sa+Tf0+AlstAudw3OtFODR6INO67GnEyRxeHU/Q8PoLppZ4So3eWwfMyAtR+WF3xJD5bouibEuSyrBVWepKM39jmUK04Mx9VyuaYiqXVuw+NT5T69b1MFZpdVCAXIjgcWOu62cQMksYWEGOAQw1L3QcaDVj1+pqOaGfYDi7BI8WiIcLqmaLQDgDZi6A2IP40xKweS6Un3TJiAEPmuq2YgXWnCvUzYYEzmluXNh5Kix/OOcEmPcscCbXRiDxt6Nxe/6gkYUvdesopmMSoQogghZc9rYZLVk5AEtr1kn4aunizaYWOSuu5O06x8NUZfDudlHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gkUt9w7CPOxidC9msuoeI3Otip4NRh24RmoGfoom8C8=;
 b=in74dIPa1w3L5iawUniJPoM0cwATT7y5sy1bNlua6rBbxh6MRLoTB6d9VCv7ajLKCcNU76itAk0nnwS8jiUZQnGuqg3cnDOI0tQij2TNus+CEEcMPl45+ailnpoM35G5CKiO0ur+lTJBn2yofTenySoY+0npyd4Ady1IPFx6nbc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1883.namprd11.prod.outlook.com (10.175.87.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Fri, 29 Nov 2019 11:15:18 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Fri, 29 Nov
 2019 11:15:18 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Claudiu.Beznea@microchip.com>
Subject: Re: [PATCH] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Topic: [PATCH] power: reset: at91-reset: add sysfs interface to the
 power on reason
Thread-Index: AQHVhOg1ctfVLowJVU2Cc9kl1+OI1KeiPdiAgAABb4CAAANmgA==
Date: Fri, 29 Nov 2019 11:15:18 +0000
Message-ID: <00f4e9a2-f6bd-9242-cafd-9c0c4f4dc619@microchip.com>
References: <20191017124058.19300-1-kamel.bouhara@bootlin.com>
 <034c9d01-633a-eeaa-f61f-d185be7227f2@microchip.com>
 <20191129110253.GX299836@piout.net>
In-Reply-To: <20191129110253.GX299836@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0018.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191129131503049
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b3afca4-ce3f-47d7-24c1-08d774bd6a5a
x-ms-traffictypediagnostic: DM5PR11MB1883:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1883A785AE98481031B61469E8460@DM5PR11MB1883.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(53546011)(6506007)(386003)(6486002)(186003)(26005)(11346002)(102836004)(71200400001)(71190400001)(446003)(2616005)(6436002)(86362001)(31696002)(14444005)(256004)(52116002)(76176011)(5660300002)(36756003)(66446008)(64756008)(66556008)(66476007)(66946007)(31686004)(6512007)(6636002)(8676002)(81156014)(81166006)(6306002)(8936002)(6246003)(966005)(14454004)(4326008)(7736002)(305945005)(66066001)(316002)(54906003)(99286004)(110136005)(2906002)(478600001)(6116002)(25786009)(229853002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1883;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2mNqYDLfqju4NbHsTWcOmehm1Dp8oXMSJEv3sDhGwbOQLixx4BQ23dwvlRHGtOhczy4fycHpeeWPNjEHAZ9vYDKKoj1Eq3pd9/zSllp8WIWfzBcNNylEk3SAEItb3qEaHeClTc2Swbva8KLeud0gEkAcVEqH0PeNibmHKYjp2bG5rEcWUdC+Ry0KqxMIgiNWhAehEaOB8qDKiO81cWm65BUq8tVNyXKBwUyl1JnDX+mgUvGuJEhNQELRBXKgnjQMWB1yt8LWM7kwWPPW/5UQSS/1f7J2C3mmcfkDhi/6DhoFVyexZ0KYkBiydl7KtF5nOZzr76dcxbb3xCdzj78yHSWtsn5EMAQ2kHujlYT6qxgHD9CLFKDr/sg6QnO6twZikeuFbadiF0uWHjT9lLCqCAy4K2z5SXyAYm5vctM3iHD4UCo55Mo9HY5tIrNr2ou31rzV94HxeMpelB4Nmsy86bMA9k1CH1XoI/dTS8L2y4U=
Content-ID: <272A4C50138D21468F19C7FC4700AD6A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b3afca4-ce3f-47d7-24c1-08d774bd6a5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 11:15:18.0576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BTh7pcR7nuiVNagjILDdW4KGBmKNl3D8mZ53LaueGZ8HzabEBOtv5+EWTLK+DNCiFmFs0frykdXweg4EONdfFVDiXkIIGXCF8lorQPpxsZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_031520_985512_0AC64B68 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: kamel.bouhara@bootlin.com, linux-pm@vger.kernel.org, sre@kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29.11.2019 13:02, Alexandre Belloni wrote:

> On 29/11/2019 10:57:45+0000, Claudiu.Beznea@microchip.com wrote:
>> Hi Kamel,
>>
>> On 17.10.2019 15:40, Kamel Bouhara wrote:
>>> This patch export the power on reason through the sysfs interface and
>>> introduce some generic reset sources.
>>> Update the ABI documentation to list current power on sources.
>>>
>>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>> ---
>>>   .../sysfs-devices-platform-power-on-reason    | 14 ++++++
>>>   drivers/power/reset/at91-reset.c              | 44 +++++++++++++------
>>>   include/linux/power/power_on_reason.h         | 19 ++++++++
>>>   3 files changed, 64 insertions(+), 13 deletions(-)
>>>   create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
>>>   create mode 100644 include/linux/power/power_on_reason.h
>>>
>>> diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
>>> new file mode 100644
>>> index 000000000000..83daeb9b1aa2
>>> --- /dev/null
>>> +++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
>>> @@ -0,0 +1,14 @@
>>> +What:              /sys/devices/platform/.../power_on_reason
>>> +
>>> +Date:              October 2019
>>> +KernelVersion:     5.4
>>> +Contact:   Kamel Bouhara <kamel.bouhara@bootlin.com>
>>> +Description:       This file shows system power on reason.
>>> +           The possible sources are:
>>> +           General System Power-ON, RTC wakeup, Watchdog timeout,
>>> +           Software Reset, User pressed reset button,
>>> +           CPU Clock failure, 32.768kHz Oscillator Failure,
>>> +           Low power mode exit, Unknown.
>>> +
>>> +           The file is read only.
>>> +
>>> diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
>>> index 44ca983a49a1..3cb2df40af37 100644
>>> --- a/drivers/power/reset/at91-reset.c
>>> +++ b/drivers/power/reset/at91-reset.c
>>> @@ -17,7 +17,7 @@
>>>   #include <linux/of_address.h>
>>>   #include <linux/platform_device.h>
>>>   #include <linux/reboot.h>
>>> -
>>> +#include <linux/power/power_on_reason.h>
>>>   #include <soc/at91/at91sam9_ddrsdr.h>
>>>   #include <soc/at91/at91sam9_sdramc.h>
>>>
>>> @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
>>>      return NOTIFY_DONE;
>>>   }
>>>
>>> -static void __init at91_reset_status(struct platform_device *pdev)
>>> +static const char *at91_reset_reason(struct platform_device *pdev)
>>>   {
>>>      const char *reason;
>>>      u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
>>>
>>>      switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
>>>      case RESET_TYPE_GENERAL:
>>> -           reason = "general reset";
>>> +           reason = POWER_ON_REASON_GENERAL;
>>>              break;
>>>      case RESET_TYPE_WAKEUP:
>>> -           reason = "wakeup";
>>> +           reason = POWER_ON_REASON_RTC;
>>>              break;
>>>      case RESET_TYPE_WATCHDOG:
>>> -           reason = "watchdog reset";
>>> +           reason = POWER_ON_REASON_WATCHDOG;
>>>              break;
>>>      case RESET_TYPE_SOFTWARE:
>>> -           reason = "software reset";
>>> +           reason = POWER_ON_REASON_SOFTWARE;
>>>              break;
>>>      case RESET_TYPE_USER:
>>> -           reason = "user reset";
>>> +           reason = POWER_ON_REASON_USER;
>>>              break;
>>>      case RESET_TYPE_CPU_FAIL:
>>> -           reason = "CPU clock failure detection";
>>> +           reason = POWER_ON_REASON_CPU_FAIL;
>>>              break;
>>>      case RESET_TYPE_XTAL_FAIL:
>>> -           reason = "32.768 kHz crystal failure detection";
>>> +           reason = POWER_ON_REASON_XTAL_FAIL;
>>>              break;
>>>      case RESET_TYPE_ULP2:
>>> -           reason = "ULP2 reset";
>>> +           reason = POWER_ON_REASON_LOW_POWER;
>>>              break;
>>>      default:
>>> -           reason = "unknown reset";
>>> +           reason = POWER_ON_REASON_UNKNOWN;
>>>              break;
>>>      }
>>>
>>> -   dev_info(&pdev->dev, "Starting after %s\n", reason);
>>> +   return reason;
>>>   }
>>>
>>>   static const struct of_device_id at91_ramc_of_match[] = {
>>> @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
>>>      .priority = 192,
>>>   };
>>>
>>> +static ssize_t power_on_reason_show(struct device *dev,
>>> +                               struct device_attribute *attr,
>>> +                               char *buf)
>>> +{
>>> +   struct platform_device *pdev = to_platform_device(dev);
>>> +
>>> +   return sprintf(buf, "%s\n", at91_reset_reason(pdev));
>>> +}
>>> +
>>> +static DEVICE_ATTR_RO(power_on_reason);
>>> +
>>>   static int __init at91_reset_probe(struct platform_device *pdev)
>>>   {
>>>      const struct of_device_id *match;
>>> @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
>>>              return ret;
>>>      }
>>>
>>> -   at91_reset_status(pdev);
>>> +   ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
>>> +   if (ret) {
>>> +           dev_err(&pdev->dev, "Could not create sysfs entry\n");
>>> +           return ret;
>>> +   }
>>> +
>>> +   dev_info(&pdev->dev, "Starting after %s reset\n",
>>> +            at91_reset_reason(pdev));
>>>
>>>      return 0;
>>>   }
>>> diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
>>> new file mode 100644
>>> index 000000000000..9978cc757427
>>> --- /dev/null
>>> +++ b/include/linux/power/power_on_reason.h
>>> @@ -0,0 +1,19 @@
>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>> +/*
>>> + * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
>>> + */
>>> +
>>> +#ifndef POWER_ON_REASON_H
>>> +#define POWER_ON_REASON_H
>>> +
>>> +#define POWER_ON_REASON_GENERAL "General"
>>> +#define POWER_ON_REASON_RTC "RTC wakeup"
>>> +#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
>>> +#define POWER_ON_REASON_SOFTWARE "Software"
>>> +#define POWER_ON_REASON_USER "User"
>>> +#define POWER_ON_REASON_CPU_FAIL "CPU Clock Failure"
>>> +#define POWER_ON_REASON_XTAL_FAIL "32.768k Crystal oscillator Failure"

Hi,

Looks rather odd to have a hardcoded crystal value inside a generic header.
Also how is REASON_CPU_FAIL related to CPU Clock ?

Eugen

>>> +#define POWER_ON_REASON_LOW_POWER "Low power exit"
>>> +#define POWER_ON_REASON_UNKNOWN "Unknown"
>>> +
>>> +#endif /* POWER_ON_REASON_H */
>>
>> Is this new header necessary?
>>
> 
> Yes because we want other drivers to be able to reuse them as-is so the
> ABI is stable.
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2A4135A10
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2v9CAtVXMWgiNTrJN4AE4iqYe2HGtTVK4MygJyEZg4=; b=qmS3AlZYHZvH1y
	osroiKFmj0OsK1ejTKfV9p91fdbKswtZqAo32x2ylVh+OaCxvGABMFoNniuxATp2L2V+Zz3CYNB/2
	67e9t/cHWo0wi7h+cDU0X9x+402GZr0J0xoMtZCIA95SW7tviMjEjQU6xgkrZL59P++hb55MgyfPv
	vOoKvR/b4W/vf+SgCak2A/D/xAJ420gln8pXh1CwyNpMhsWHhr7gHHtAP57/5Sqm7dibze6k+SLBu
	Cq4Ax3yoBh103a9eusR+3R2/6W12B87qEx1LscDUONsTouMqUJjIhRsmo6zY2Rb+WSmrSYhu1AH8B
	ds8POe6r/mFQrlYi2Fdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXsK-00007N-55; Thu, 09 Jan 2020 13:29:24 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXs6-00005d-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:29:15 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7+TpYCIKp8KLbGHqaQMp4G4BTP0XnKB55yUpLMTmcuzsey5Pn+BHYmaQ+/wxpXGi7X61MOTesM
 EBzRN5RX+Phru8rMixe7dKkFkLTurQ+JECmdv873BpvO+5p07pQ/SatNlqYmBMjHcwiZlyjLjd
 tHz01Bijes8Al/Ly5LARP2/VadA0MN2bdGX6TMba3djv3z+u+3y8oBwwy80MI9yUtgt1c9t0xg
 R+n/Ry4kM3eq21rJZcLN++jS4Bfjzf0A0FZik1ObnfGBU4v263tQwL7BcjrU/A3yaCMxl9P0UE
 yEc=
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="62720854"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 06:29:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 06:29:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jan 2020 06:29:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5xx2Fl2ZmkldECzykc13xZ+HS4eOpS553RXI4A3AoLZiPBJZpNkEvnmUAAbcI9oshN42Zurycstz/TpnkxEXUm7h5eGHdYNAvj5ctGRDN19IILQ/XoNYKpwnHmis+Wcg8xk8KQpEz2pJUphB/yNDpkbZ6i4WZG3jR96/DruCiSPRHMU9ZERLcFDvFQEzVKwOXaV5kpLgGhuPLwXEnp+mpNu6mTsEZhkQEHVuYqryP8IgCYijJDH416cLsgh00YM31ywQdjm6Xh/8hOkwHRwnFhEaiwIryjZT9Yn3OXSSCK0KiDP47SE6PalIiK/JnPYytMLqohrUqszBiuYiIQmtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSQhJaKkg5XYWz0wqeEtlveLBRwvnek0nE6yhTD59VM=;
 b=X7rEX+7OetSuxpFWajEf1tNY59x4VGsfCcVhzPYAvy4lQcyND2p8AWgSzs68/LVanbC+pM43BHK85WEqJtudg0eJyt7ohrh0kGbdeB7cxgFvJvaZIBMgHL7+djnm44eOlorqFxOXSSzT2Mbh6/Msk7kqJlXRVrPlnh41do9jvjVre36d0TjBQHiWH0CvV7MgSC53I5vBX2hntoBJsI8kV5YawQtzxrqNIADmU4wqvcBXxmgY4fjPFbmPMrtMF76FtbB0Isb6m48MCbq2ehFQEn80Qoz35Q6KG7EtCRdQT8/8ljW6dNkqo5wFOrD5SuXxkv9bpXx0x732oGY5IdbahQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSQhJaKkg5XYWz0wqeEtlveLBRwvnek0nE6yhTD59VM=;
 b=UKA5RSetPImgCEgolKvup7WLAJ1W1l2/ZodK2HjBzzMpVuTb9b/2YxQBF8vLgwB1+CvKnHi7fcxQMuBHph3C2Z07BvnTeOtdmmuQprEgv3NPOGEB//nRxOrB06eCbqPXlDnSgSFaU5Bw7YlE8co2IEft9EJ0fv8DkLxuBnvDn5c=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4071.namprd11.prod.outlook.com (10.255.162.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 9 Jan 2020 13:29:05 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2623.011; Thu, 9 Jan 2020
 13:29:05 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 3/6] i2c: at91: Send bus clear command if SCL is down
Thread-Topic: [PATCH v2 3/6] i2c: at91: Send bus clear command if SCL is down
Thread-Index: AQHVwhsKlTodLDZUaUCcsTrXKcjnqKfiNVOAgAAn9wA=
Date: Thu, 9 Jan 2020 13:29:04 +0000
Message-ID: <66cd3857-9ad8-1d1b-0bad-844a37074b6f@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-4-codrin.ciubotariu@microchip.com>
 <20200109110557.GO25745@shell.armlinux.org.uk>
In-Reply-To: <20200109110557.GO25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1813306-31f6-4a6b-32d6-08d79507e5f0
x-ms-traffictypediagnostic: BY5PR11MB4071:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4071D1B170288135C1724AC7E7390@BY5PR11MB4071.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(39860400002)(346002)(396003)(189003)(199004)(478600001)(8676002)(4326008)(81156014)(81166006)(2906002)(966005)(6512007)(186003)(6506007)(26005)(53546011)(36756003)(8936002)(86362001)(5660300002)(31686004)(2616005)(31696002)(71200400001)(6916009)(54906003)(107886003)(316002)(91956017)(66556008)(64756008)(66446008)(76116006)(66476007)(66946007)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4071;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RM4FirdhXzAG1gncsj2pzbv2S5CvuzEx1VyE7xaK1We5N0VhtcmK1V44ymcT3dDDcyS0Ac9MjNQGCtC3E5d7zTH5P/5pecXuTzMkhccwyZSfvlwMe6BWUP3d/WqOuHHdQrVkngXZlNMJmvrTM/c7caj4RjofTqkiXkCs+XOBnwVqHpusClIdn9IWkuZALmptS2WZBm9Ves8Cxqf45X2WcSCX0eaUZVsmdRGlCqi/9J5Oc6TYbfi/UIgxzJzxfR8SXdtZvwOQtRsQUD/H//3DMcLGsG6buFPuCtai03qjqAZ+1ynboy/FOtegtD/php5yqCL92SPnD5KkgARAWmjXQfJ1lQsC4T/wRFLEYurCxIrtP4oOR0B+D2/MFENsCfbUiig5Nzhe4dWcwkiNT7uB8iqL/yljHfyhEsG+3d4/rRGMHyuerT5CG0ZjgNe14jzxP2Ztvu6zf6MQhJ1nVAXdQrflFmMXJuB0ceYKxHBVQo7hsUgIJesm7fc5na1MNShlYIl1e6dea382xiCRdRcpQg==
Content-ID: <2312E60AD5A02746A6CAC601FD8D5D1A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c1813306-31f6-4a6b-32d6-08d79507e5f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 13:29:04.9569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lUNB3Mf642iHUc07TxeDxVztw1Wky5ifXnp5rq0+wl3c09uhA8c0csGb32/hQQhGTBensc1H+30OW5QuAMX0lT+mhXZR+72tdYKIDxb+CxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_052911_021196_0226A395 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 devicetree@vger.kernel.org, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.01.2020 13:05, Russell King - ARM Linux admin wrote:
> On Fri, Jan 03, 2020 at 09:49:07AM +0000, Codrin.Ciubotariu@microchip.com wrote:
>> After a transfer timeout, some faulty I2C slave devices might hold down
>> the SCL pin. We can generate a bus clear command, hoping that the slave
>> might release the pins.
>>
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>> ---
>>
>> Changes in v2:
>>   - use CLEAR command only if SDA is down; update patch subject to
>>     reflect this;
> 
> Given this change, shouldn't the commit message above be updated?

It looks like both the subject and the commit message need to be fixed...

Thank you for your review.

Best regards,
Codrin

> 
>>   - CLEAR command is no longer used for sama5d2, only sam9x60;
>>
>>   drivers/i2c/busses/i2c-at91-core.c   |  9 ++++++++
>>   drivers/i2c/busses/i2c-at91-master.c | 32 +++++++++++++++++++++++-----
>>   drivers/i2c/busses/i2c-at91.h        |  7 +++++-
>>   3 files changed, 42 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
>> index e13af4874976..128eafc05adb 100644
>> --- a/drivers/i2c/busses/i2c-at91-core.c
>> +++ b/drivers/i2c/busses/i2c-at91-core.c
>> @@ -71,6 +71,7 @@ static struct at91_twi_pdata at91rm9200_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata at91sam9261_config = {
>> @@ -82,6 +83,7 @@ static struct at91_twi_pdata at91sam9261_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata at91sam9260_config = {
>> @@ -93,6 +95,7 @@ static struct at91_twi_pdata at91sam9260_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata at91sam9g20_config = {
>> @@ -104,6 +107,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata at91sam9g10_config = {
>> @@ -115,6 +119,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static const struct platform_device_id at91_twi_devtypes[] = {
>> @@ -148,6 +153,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
>>        .has_dig_filtr = false,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata sama5d4_config = {
>> @@ -159,6 +165,7 @@ static struct at91_twi_pdata sama5d4_config = {
>>        .has_dig_filtr = true,
>>        .has_adv_dig_filtr = false,
>>        .has_ana_filtr = false,
>> +     .has_clear_cmd = false,
>>   };
>>
>>   static struct at91_twi_pdata sama5d2_config = {
>> @@ -170,6 +177,7 @@ static struct at91_twi_pdata sama5d2_config = {
>>        .has_dig_filtr = true,
>>        .has_adv_dig_filtr = true,
>>        .has_ana_filtr = true,
>> +     .has_clear_cmd = false, /* due to errata, CLEAR cmd is not working */
>>   };
>>
>>   static struct at91_twi_pdata sam9x60_config = {
>> @@ -181,6 +189,7 @@ static struct at91_twi_pdata sam9x60_config = {
>>        .has_dig_filtr = true,
>>        .has_adv_dig_filtr = true,
>>        .has_ana_filtr = true,
>> +     .has_clear_cmd = true,
>>   };
>>
>>   static const struct of_device_id atmel_twi_dt_ids[] = {
>> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
>> index c55e8ff35201..8c4f20317847 100644
>> --- a/drivers/i2c/busses/i2c-at91-master.c
>> +++ b/drivers/i2c/busses/i2c-at91-master.c
>> @@ -480,7 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>        unsigned long time_left;
>>        bool has_unre_flag = dev->pdata->has_unre_flag;
>>        bool has_alt_cmd = dev->pdata->has_alt_cmd;
>> -     struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +     bool has_clear_cmd = dev->pdata->has_clear_cmd;
>>
>>        /*
>>         * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
>> @@ -641,10 +641,32 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>                               AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>>        }
>>
>> -     if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> -             dev_dbg(dev->dev,
>> -                     "SDA is down; clear bus using gpio\n");
>> -             i2c_recover_bus(&dev->adapter);
>> +     /*
>> +      * some faulty I2C slave devices might hold SDA down;
>> +      * we can send a bus clear command, hoping that the pins will be
>> +      * released
>> +      */
>> +     if (has_clear_cmd) {
>> +             if (!(dev->transfer_status & AT91_TWI_SDA)) {
>> +                     dev_dbg(dev->dev,
>> +                             "SDA is down; sending bus clear command\n");
>> +                     if (dev->use_alt_cmd) {
>> +                             unsigned int acr;
>> +
>> +                             acr = at91_twi_read(dev, AT91_TWI_ACR);
>> +                             acr &= ~AT91_TWI_ACR_DATAL_MASK;
>> +                             at91_twi_write(dev, AT91_TWI_ACR, acr);
>> +                     }
>> +                     at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
>> +             }
>> +     } else {
>> +             struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +
>> +             if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> +                     dev_dbg(dev->dev,
>> +                             "SDA is down; clear bus using gpio\n");
>> +                     i2c_recover_bus(&dev->adapter);
>> +             }
>>        }
>>
>>        return ret;
>> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
>> index eb335b71e775..80f77d523346 100644
>> --- a/drivers/i2c/busses/i2c-at91.h
>> +++ b/drivers/i2c/busses/i2c-at91.h
>> @@ -36,6 +36,7 @@
>>   #define      AT91_TWI_SVDIS          BIT(5)  /* Slave Transfer Disable */
>>   #define      AT91_TWI_QUICK          BIT(6)  /* SMBus quick command */
>>   #define      AT91_TWI_SWRST          BIT(7)  /* Software Reset */
>> +#define      AT91_TWI_CLEAR          BIT(15) /* Bus clear command */
>>   #define      AT91_TWI_ACMEN          BIT(16) /* Alternative Command Mode Enable */
>>   #define      AT91_TWI_ACMDIS         BIT(17) /* Alternative Command Mode Disable */
>>   #define      AT91_TWI_THRCLR         BIT(24) /* Transmit Holding Register Clear */
>> @@ -69,6 +70,8 @@
>>   #define      AT91_TWI_NACK           BIT(8)  /* Not Acknowledged */
>>   #define      AT91_TWI_EOSACC         BIT(11) /* End Of Slave Access */
>>   #define      AT91_TWI_LOCK           BIT(23) /* TWI Lock due to Frame Errors */
>> +#define      AT91_TWI_SCL            BIT(24) /* TWI SCL status */
>> +#define      AT91_TWI_SDA            BIT(25) /* TWI SDA status */
>>
>>   #define      AT91_TWI_INT_MASK \
>>        (AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
>> @@ -81,7 +84,8 @@
>>   #define      AT91_TWI_THR            0x0034  /* Transmit Holding Register */
>>
>>   #define      AT91_TWI_ACR            0x0040  /* Alternative Command Register */
>> -#define      AT91_TWI_ACR_DATAL(len) ((len) & 0xff)
>> +#define      AT91_TWI_ACR_DATAL_MASK GENMASK(15, 0)
>> +#define      AT91_TWI_ACR_DATAL(len) ((len) & AT91_TWI_ACR_DATAL_MASK)
>>   #define      AT91_TWI_ACR_DIR        BIT(8)
>>
>>   #define AT91_TWI_FILTR               0x0044
>> @@ -118,6 +122,7 @@ struct at91_twi_pdata {
>>        bool has_dig_filtr;
>>        bool has_adv_dig_filtr;
>>        bool has_ana_filtr;
>> +     bool has_clear_cmd;
>>        struct at_dma_slave dma_slave;
>>   };
>>
>> --
>> 2.20.1
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
> 
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

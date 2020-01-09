Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334B313578B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEkOK5BHXa1z7zuaa0SrApoTWAfNmUPGYAhYUM1AdAc=; b=i0vIRb+Fft10c4
	7JdaXXJUUcIRjjyu/tWO0SGH7MuJVQm1At/+hNHSuzNaqZzr+7OxHIx0MgoNOLBdyUCSKRmKTyBaV
	EZlPo6ZPhvJRlz4ix6lJQ0a0mFH4K61QmjHgbjvU/x63BsSjkrvRirKTtB2eiAot6uM3Zv4jNKOC6
	xEpsEcK7x6TDQ8gkb45jwizf2UHLY/b2wy3r9CNpg2F4fdBRli5bW0sv9qi3lGXD9PIExlEUPbIQe
	xL+LJ8T5Q0eZSLZs+sEvrUJAXDBvgZPp1STtAPaBuYOxJM2F76IagVRl/l62H6pRjE2m3RJAPZ+SC
	8AhYSj+cT2H8oniow56Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVWN-0005CB-RD; Thu, 09 Jan 2020 10:58:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVWF-0005BD-63
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:58:28 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: QYKj7tIxen8k/VvWKZWpceZ07mo8qS9AzN6qr53fJPErJi9C4blICBugmhxM+xE0hxlqaJ2w8S
 9HGaSgkqBEg4cF5VGcA3G8om8oe/bPShzg6h7KDcrkD36TULrT58fMimVOu4JPVjwSpISbaSQC
 vBbnEdYnyRYVzVxRGMJoLlAULNviJGwuUk/529TDBrciQfOEebuWMazXUhuooB6hx8QAlMpeBD
 ew1Q2VC+Q9r77qGoOeN7tbDa8dvKfogJKMRvawXkQ20EPhnkaukL9AwohdXhvzzomJYxedVl38
 oto=
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="64161692"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 03:58:24 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 03:58:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jan 2020 03:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccP2BiSIGOfXyQMacdyQ/XrikSZ1EYfWDskBthegYbrqAc9iWd2V82TfD4EVWUHdcVdU3pF4ybF7N4ndXHGTxRbL4oVnO5LAMHuM4Wx6W17nQk658F2Obzb2qeLUrfA1fRVBwfnOITZMc/bbIQoczft+briX08ZRzRS2WFtqwG3hJ3vnZ2dgpmWKCJjik869/F/botlEn0YNdMKIcxRubQ6hiv7lqsS109rcRJKi4FmapS9h0bwXdYwHzjd2tWwu/mBG0Eh0O43f8Lv3f6jitUbU6S/baVl1GysHdoejQD1SOwP7OJaevsJwJh6+/+lysDIn33sGZU6wECxS8KE62Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nga0iz9/QYJBv3QYpNa9zz6EiB8yXbFsJpNGO9Czt2U=;
 b=Z1+05fAPWxezzsF1DviU8STU+uiWPbKWKLswkdB57DnNhmF6yLOUfzzcsY19zv0Qra/XdX9u/ZhZkx5EFGjbiKx5HAKPHrM2vS8IL8g7VMqNaBL99D9WULtqVDTAnoBSRLpQ0kZhNpzamo68mHDpQQqqj7HjYiydmRPLWsHOcpTETGpQgNC2+kzDxKsJleoGVLpJasCGIBH5C4imUk/kVFVgoVX1H1y+woCx4zk1J/WcH1IeAa5S96q8RDgwsOSdW0i/jvXgKguxSAum0MXhmH0n6P/NFnzcYhp2oz8bWyZ1dqQKEH8jeOIHl94+D57btgadRM6h6XWwpMgmAXQE6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nga0iz9/QYJBv3QYpNa9zz6EiB8yXbFsJpNGO9Czt2U=;
 b=KPfD1z63yvyyaVf1kDp+Ix/ECvKJh9yQYVesuGtyKaO8whH17fv0w4zTIVPg8ZOLzEaZ9WKWjnewGvCLuYCbz5bAQtCW0xlwKUZsgPEzGDDFgY0hlQ/DDDXX9l5v1LZuevuSm9SOI1HycreE+h3T5Hwmc97WXZZrcpw6vehFVM8=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4212.namprd11.prod.outlook.com (52.132.255.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 9 Jan 2020 10:58:22 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2623.011; Thu, 9 Jan 2020
 10:58:22 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <kamel.bouhara@bootlin.com>, <wsa@the-dreams.de>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh@kernel.org>
Subject: Re: [PATCH v2 3/6] i2c: at91: Send bus clear command if SCL is down
Thread-Topic: [PATCH v2 3/6] i2c: at91: Send bus clear command if SCL is down
Thread-Index: AQHVwhsKlTodLDZUaUCcsTrXKcjnqKfh/d+AgAA1VIA=
Date: Thu, 9 Jan 2020 10:58:22 +0000
Message-ID: <d2fb2414-5c7f-3bc0-caf5-8927e6a2ccee@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-4-codrin.ciubotariu@microchip.com>
 <20200109074729.zare4va5ugbq62f3@M43218.corp.atmel.com>
In-Reply-To: <20200109074729.zare4va5ugbq62f3@M43218.corp.atmel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc09237f-6bd5-48f6-bb45-08d794f2d830
x-ms-traffictypediagnostic: BY5PR11MB4212:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42121C8E3C22D369B3C97AE2E7390@BY5PR11MB4212.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(39860400002)(376002)(199004)(55674003)(189003)(2906002)(6506007)(71200400001)(6512007)(53546011)(76116006)(64756008)(91956017)(6486002)(31696002)(2616005)(478600001)(86362001)(66446008)(66946007)(8936002)(36756003)(66476007)(81166006)(81156014)(8676002)(66556008)(5660300002)(186003)(26005)(110136005)(31686004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4212;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FeMgfYLbjHmmIO1u7ZWWRPSkRpjxECmukWRxvGJ0Eb7tyuxHO4hbIXyn90Y9AD3cuHACtktsqZM4vm0GLCCwHHYsLp5I0C5syiBf4/CPDbNScy10CUKiUGq+ImIJhsvynNUdA7Y5XMhMeEpxtM6KMOQO+VN1E+Jerlz9DUPhbq0eS21/mIMPz9l7mN3o8AHx7Ctw35o9mchY1EJigEbh/nTIz3Jz73pOMV3Mfj1e43BR0pUQZrDhuISvE0k6kAqqw0GyoD2p1DH5ANZLTRapJBUzeXMSZwHpL9uYt7K4Q2D7SxoPfY/1o7wJkUIAhkrARcWCcKC4DiRKaXZWhvR4NMsWzNFTrEss3Aw9Q8khHs0Eu1D1IKU8/w5WtvKIdzN49r8iEZV5JQUXPl+XuRC38QTfN98HfD8a6IqWnYIlbPMIDCEYBpOsCTmSzkgTEJUXXsHduyCJ3I6MEu2TQ9Nu19FhSvFZdEbVC5BGr1U0hWRqjuUBp5B+cEtL2v7Liiq0
Content-ID: <D40C8276CAF1624DAE30D3A67E4C4F07@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc09237f-6bd5-48f6-bb45-08d794f2d830
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 10:58:22.5094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H+HglKda2hLlL9wOgz6qo974QAUJxZ8bEM6quGCH7rxGmL2T5pHFKxdesDsobgKJdsvMYh7J1r0RUzYbN5cPiCbUqtMcCiSj/7z1xA9tfcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_025827_236020_C814A808 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.01.2020 09:47, Ludovic Desroches wrote:
> On Fri, Jan 03, 2020 at 09:49:07AM +0000, Codrin Ciubotariu - M19940 wrote:
>> After a transfer timeout, some faulty I2C slave devices might hold down
>> the SCL pin. We can generate a bus clear command, hoping that the slave
>> might release the pins.
>>
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> 
> This patch may conflict with another one removing the explicit set to
> false.

Yes, Eugen's patches got accepted in the meantime. I will rebase and 
adapt to the new style.

> 
>> ---
>>
>> Changes in v2:
>>   - use CLEAR command only if SDA is down; update patch subject to
>>     reflect this;
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
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata at91sam9261_config = {
>> @@ -82,6 +83,7 @@ static struct at91_twi_pdata at91sam9261_config = {
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata at91sam9260_config = {
>> @@ -93,6 +95,7 @@ static struct at91_twi_pdata at91sam9260_config = {
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata at91sam9g20_config = {
>> @@ -104,6 +107,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata at91sam9g10_config = {
>> @@ -115,6 +119,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static const struct platform_device_id at91_twi_devtypes[] = {
>> @@ -148,6 +153,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
>>   	.has_dig_filtr = false,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata sama5d4_config = {
>> @@ -159,6 +165,7 @@ static struct at91_twi_pdata sama5d4_config = {
>>   	.has_dig_filtr = true,
>>   	.has_adv_dig_filtr = false,
>>   	.has_ana_filtr = false,
>> +	.has_clear_cmd = false,
>>   };
>>   
>>   static struct at91_twi_pdata sama5d2_config = {
>> @@ -170,6 +177,7 @@ static struct at91_twi_pdata sama5d2_config = {
>>   	.has_dig_filtr = true,
>>   	.has_adv_dig_filtr = true,
>>   	.has_ana_filtr = true,
>> +	.has_clear_cmd = false,	/* due to errata, CLEAR cmd is not working */
> 
> In this case it's probably worth keeping it.

Yes, I also think it's useful to let this one.

Thanks and best regards,
Codrin

> 
> Ludovic
> 
>>   };
>>   
>>   static struct at91_twi_pdata sam9x60_config = {
>> @@ -181,6 +189,7 @@ static struct at91_twi_pdata sam9x60_config = {
>>   	.has_dig_filtr = true,
>>   	.has_adv_dig_filtr = true,
>>   	.has_ana_filtr = true,
>> +	.has_clear_cmd = true,
>>   };
>>   
>>   static const struct of_device_id atmel_twi_dt_ids[] = {
>> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
>> index c55e8ff35201..8c4f20317847 100644
>> --- a/drivers/i2c/busses/i2c-at91-master.c
>> +++ b/drivers/i2c/busses/i2c-at91-master.c
>> @@ -480,7 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>   	unsigned long time_left;
>>   	bool has_unre_flag = dev->pdata->has_unre_flag;
>>   	bool has_alt_cmd = dev->pdata->has_alt_cmd;
>> -	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +	bool has_clear_cmd = dev->pdata->has_clear_cmd;
>>   
>>   	/*
>>   	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
>> @@ -641,10 +641,32 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>   			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>>   	}
>>   
>> -	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> -		dev_dbg(dev->dev,
>> -			"SDA is down; clear bus using gpio\n");
>> -		i2c_recover_bus(&dev->adapter);
>> +	/*
>> +	 * some faulty I2C slave devices might hold SDA down;
>> +	 * we can send a bus clear command, hoping that the pins will be
>> +	 * released
>> +	 */
>> +	if (has_clear_cmd) {
>> +		if (!(dev->transfer_status & AT91_TWI_SDA)) {
>> +			dev_dbg(dev->dev,
>> +				"SDA is down; sending bus clear command\n");
>> +			if (dev->use_alt_cmd) {
>> +				unsigned int acr;
>> +
>> +				acr = at91_twi_read(dev, AT91_TWI_ACR);
>> +				acr &= ~AT91_TWI_ACR_DATAL_MASK;
>> +				at91_twi_write(dev, AT91_TWI_ACR, acr);
>> +			}
>> +			at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
>> +		}
>> +	} else {
>> +		struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +
>> +		if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> +			dev_dbg(dev->dev,
>> +				"SDA is down; clear bus using gpio\n");
>> +			i2c_recover_bus(&dev->adapter);
>> +		}
>>   	}
>>   
>>   	return ret;
>> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
>> index eb335b71e775..80f77d523346 100644
>> --- a/drivers/i2c/busses/i2c-at91.h
>> +++ b/drivers/i2c/busses/i2c-at91.h
>> @@ -36,6 +36,7 @@
>>   #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
>>   #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
>>   #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
>> +#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
>>   #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
>>   #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
>>   #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
>> @@ -69,6 +70,8 @@
>>   #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>>   #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
>>   #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
>> +#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
>> +#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
>>   
>>   #define	AT91_TWI_INT_MASK \
>>   	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
>> @@ -81,7 +84,8 @@
>>   #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
>>   
>>   #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
>> -#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
>> +#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
>> +#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
>>   #define	AT91_TWI_ACR_DIR	BIT(8)
>>   
>>   #define AT91_TWI_FILTR		0x0044
>> @@ -118,6 +122,7 @@ struct at91_twi_pdata {
>>   	bool has_dig_filtr;
>>   	bool has_adv_dig_filtr;
>>   	bool has_ana_filtr;
>> +	bool has_clear_cmd;
>>   	struct at_dma_slave dma_slave;
>>   };
>>   
>> -- 
>> 2.20.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

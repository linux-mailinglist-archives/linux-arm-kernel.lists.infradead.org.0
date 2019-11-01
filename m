Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3260EECB58
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:26:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz9Wfzxc0w1jmZlX/knA1zySiJLvNUJ/ORN2GJwOirM=; b=rIgupVMe+dORmt
	485LWu5D7kbSGtq4hB94Nr0xPP80c5EqfzaF5Fqd7SzaFlyq0aq6COYkCEesuiRs39zQU0fvAN07G
	00ymO2VcAN7Sg1h/5KrrlIRMo1489D2cJGLldiHx4HwVHhP56d4ZbUZIWrxkAuWRJXvdA4ryz15am
	6EXme1QqY6HtpRcUrACEKleQ0h7djIMI8t9OZ5r2+wVd19yYMCIIwpul7cO5UKjf1s+GM18qIGL4p
	hRNlTLsQ3auBgXSy/Ysi/RgwW1QZzebVWUCH0L5elDhnBhECkPgoTVvFKsWl3FFwHH9L3d9zt4ixg
	R4CkKBa+Jcd87BF+mNkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfNB-0001KN-Ts; Fri, 01 Nov 2019 22:26:25 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQfN3-0001JE-6n
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:26:21 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: vTk8Xw/Jz0giKfyq11MxmgdHKVtgrzmmS9WtKt4n0u6JD8ieR5/2zzuIdZRl4fXCXnLhRjPQjQ
 nnrZgVrI6kGncKvGD6kfUteDHokMgD3Q4yGU5i/Zc/SyXN28UU7n/Taq7sRB6SBG0eTNqOBgle
 ECkK6OQKptzQwhZ1A45kj2Cx54qKsf18CAhsCi6Wgb7474U/HcHBdBCQg/ue+pkHpSyCz9wqqR
 oiKVAV9VnqSZ4aC7lza7kx3xvagjNG8eeHHM6mHNayXVQUK1uEd7tyfpPGCfi8gwfrNdQFs2Eu
 Z/E=
X-IronPort-AV: E=Sophos;i="5.68,257,1569308400"; d="scan'208";a="55383965"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Nov 2019 15:26:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 Nov 2019 15:26:09 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 1 Nov 2019 15:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETuSKV3eExHhosRqvtQbfELNCbacmO/TfExpjstCtV/+q/S2gVk+sIISj9SVnrwz9huwtHbEZ0bND5r681BOT/S9pTsboCXFdYfgMwNLG0Z2oq5xGTWnq6Yc6E7XeaqQ5Df8BJ49brweYE+pofty/cMTme/+R6eORtB4sAhLtFfURH0r9nzWeF6LavGqP41YQYsDqfqQtWizsoAg/fRmlPv99KBgZHj50XdHiKBYyrEnJJz94vGujPyEHBDQg+pymbFJu0X32K+vVAe2v6IGQChcmH+SM5itMWrm259nI5qP933rBMxGVIkRZ2h+6gIdthHrklTRDEuNMRRKgJ+Q8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hWSwu6l/A38ttzOxR6zL+0Q2TPRNkyixy5A9GPh/0NQ=;
 b=crXAdE93DAPJJGlJ/lkAhLUF/VUJK26JlKxxOG3mIQwhpHs4en2Bf1VS4KBAZKwjYkZkmq5e7cUORVSkIZhaZ6tcQ5OlHpWwitNNSC3vcLOubivZEcy6RVZSM3q22arM31MjhY04/J6/d6/rDYgkIuvZo8Oeo+BkhXeGvKZfFbHRgZVmq2b00cFA5jD1GPjZ+D1gIiuy+T96R5WABBXGhrA3MzwK3CsHx14ZHY4/ocEa85qKTgo5IqEcfVEL44atYKF9mJUq1W8F65PUvPcyBKCVgAMqgbVve9wOwlYA8P0egXIOrHn4yDAeUGnj06ok0q7HOJfE9QGJsSOLAanDhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hWSwu6l/A38ttzOxR6zL+0Q2TPRNkyixy5A9GPh/0NQ=;
 b=oHuEBqESFm3cOpN9YcKBULsEung1q2hkeP/qY6D8riht6XDGpEA/eYB39sFdcKnJHEeqp1O24093VDD1vZDH9rcjFu0rxeyP9OayhZ0M3Lu3X9U6h+vWfJ/tG39cMcXRArH5XIbpJIy2OUJAqsgbpc9x3jZh051vQDkKwovMMUA=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB4186.namprd11.prod.outlook.com (20.176.127.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Fri, 1 Nov 2019 22:26:07 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 22:26:07 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <Codrin.Ciubotariu@microchip.com>
Subject: Re: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
Thread-Topic: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
Thread-Index: AQHVkQNaIVwwnhsvuE+7AE46+3c0oQ==
Date: Fri, 1 Nov 2019 22:26:07 +0000
Message-ID: <4255d320-e6c2-8865-7167-ddf9e1951250@microchip.com>
References: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
 <20191101142602.voj2jeexvvgwgr23@M43218.corp.atmel.com>
In-Reply-To: <20191101142602.voj2jeexvvgwgr23@M43218.corp.atmel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR1PR01CA0009.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::22) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191102002600222
x-originating-ip: [65.39.94.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4449cc85-e3ea-427d-804c-08d75f1a7d29
x-ms-traffictypediagnostic: DM6PR11MB4186:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4186711CCBA4FE109284905F87620@DM6PR11MB4186.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(366004)(396003)(199004)(189003)(6246003)(2616005)(64756008)(66556008)(66476007)(66446008)(446003)(11346002)(476003)(486006)(4326008)(14454004)(6486002)(31696002)(110136005)(86362001)(186003)(316002)(229853002)(66946007)(53546011)(36756003)(3846002)(6506007)(102836004)(6116002)(26005)(54906003)(76176011)(386003)(52116002)(5660300002)(31686004)(256004)(6636002)(66066001)(14444005)(81156014)(71190400001)(71200400001)(25786009)(99286004)(478600001)(7736002)(305945005)(6436002)(6512007)(8936002)(81166006)(2906002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4186;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SEQVpM5+QBYNIOscFMiJX0o/DO/wBLGl0LnegaZ6jRWseYaKfUCLOW2sfuK3GG051JQUKnRF59KapeLjDVxW7VaspC7r0Qbs8Ff7ZBbUlqnzAaOASDxOCul5YQwZ3tlPT9qur3aDxqokFURA3yRp48uMeUQVryu6o3IEq/D6KCDFLXniTNo+S6PwDVhEF0z4ZBDkwHu+TfWdX1A2wEQoAGvEn8NoaG33RGzmwYPUnEVeKVLqqWK2SCPxrCsLwLjwYzZxa53gGYHe4AB1ULBcKnLvNxyF+MCiZGYyh23ZOD1Zw5Gze1BSwIYHFNnVCC2eo+t56G3c39u5MLoBmYhYrxhyD2SACQWfEnhrx25dHDyFKU9R2Q2lQnrVMdNuiH+iw1BYTueIsYHZ+uVyIrsZRkYOVc1TTKvOGE5UWO44GnUYP+/Cg4qNugxZbqmUj+sX
Content-ID: <582B8FF54CA6194CADDB631A932BB54C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4449cc85-e3ea-427d-804c-08d75f1a7d29
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 22:26:07.5141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ojpnM6EC2Ys632QfqldCFI7SkkRn8VwSK4sW6NxWhaHdsIK4R6aXvVSz40T9sftrE/xd/TxHtl3BbiDda7AVUcffnzoeRhRsCZUTl8u+88A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_152617_257120_469C0E1D 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01.11.2019 16:26, Ludovic Desroches - M43218 wrote:
> On Fri, Nov 01, 2019 at 11:20:31AM +0200, Codrin Ciubotariu wrote:
>> On SAM9X60, slewrate should be enabled on pins with a switching frequency
>> below 50Mhz. Since most of our pins do not exceed this value, we enable
>> slewrate by default. Pins with a switching value that exceeds 50Mhz will
>> have to explicitly disable slewrate.
>>
>> This patch changes the ABI. However, the slewrate macros are only used
>> by SAM9X60 and, at this moment, there are no device-tree files available
>> for this platform.
>>
>> Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> 
> Thanks
> 
>> ---
>>
>> Changes in v2:
>>  - updated commit message to reflect the ABI change
>>
>>  drivers/pinctrl/pinctrl-at91.c     | 4 ++--
>>  include/dt-bindings/pinctrl/at91.h | 4 ++--
>>  2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
>> index 117075b5798f..c135149e84e9 100644
>> --- a/drivers/pinctrl/pinctrl-at91.c
>> +++ b/drivers/pinctrl/pinctrl-at91.c
>> @@ -85,8 +85,8 @@ enum drive_strength_bit {
>>  					 DRIVE_STRENGTH_SHIFT)
>>  
>>  enum slewrate_bit {
>> -	SLEWRATE_BIT_DIS,
>>  	SLEWRATE_BIT_ENA,
>> +	SLEWRATE_BIT_DIS,
>>  };
>>  
>>  #define SLEWRATE_BIT_MSK(name)		(SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
>> @@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
>>  {
>>  	unsigned int tmp;
>>  
>> -	if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
>> +	if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
>>  		return;
>>  
>>  	tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
>> diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
>> index 3831f91fb3ba..e8e117306b1b 100644
>> --- a/include/dt-bindings/pinctrl/at91.h
>> +++ b/include/dt-bindings/pinctrl/at91.h
>> @@ -27,8 +27,8 @@
>>  #define AT91_PINCTRL_DRIVE_STRENGTH_MED			(0x2 << 5)
>>  #define AT91_PINCTRL_DRIVE_STRENGTH_HI			(0x3 << 5)
>>  
>> -#define AT91_PINCTRL_SLEWRATE_DIS	(0x0 << 9)
>> -#define AT91_PINCTRL_SLEWRATE_ENA	(0x1 << 9)
>> +#define AT91_PINCTRL_SLEWRATE_ENA	(0x0 << 9)
>> +#define AT91_PINCTRL_SLEWRATE_DIS	(0x1 << 9)
>>  
>>  #define AT91_PIOA	0
>>  #define AT91_PIOB	1
>> -- 
>> 2.20.1
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

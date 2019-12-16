Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F21208BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 15:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=UEcDwbVd0pIMSdF4ziwmRNaYctTSiwbChBmD+i/xrF0=; b=LfQOcx3hCgCk+X
	mLMimx1BkmVJfb0FJWAphSiWYnxt+u8PBh6EPmcp6sRRRdn+Arf04K1mAlv0Pj1EoqouZjNV1sBum
	WnRqL2FoZgT/VJZW8rRhAoYbg6GnffKBpMCnxtPNHI3KSgyE/2D+uZXpXvKfOrGBPKvaa5dOR7sIs
	jqBooeJ71jdTz6GnjVxoJhJM87BIbw757ZjtCBPIPHSq6h8FATCm8P0KlHyqre55ERpOgDR5EniS2
	3X9/8tXJ5oBM5sdK7sn+UnYuQiZJP0+yK7ZW58ItR+387OBo1O0XN5cWBxUrNDCdEYrvMQqMYOl6h
	UtB5kmuNh5O254xsty7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrTd-0003mK-9g; Mon, 16 Dec 2019 14:36:01 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrTT-0003lb-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 14:35:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HPcO1pLSu4ZkjnyYYNStIlQ47w8CAN9kHnaHlNaCJeAU+0ReIYMwxHrlvTPKV1j0AEvriqDuV5oUJmJvCrU0tlnUtyUv+HEMfo2SePPr3i4L0CcntdmnTn73yMV27T2ko/jSmmxSsjit0MmX4Fx3oKX+ewojnU1h8Mt6Mu8OG1BXiewFq/C0/mPihaePmzozWeagme3mwOLE2YqYrbJ8633weOZm1MVne4RLf3Y45LDv3m9G1KaTodcA6h16ofofl2rUm98r8ST9dHNRBOMebnTx44/8E0NYE/uUHC8de8NggPJyXVvZe283pWoOOoLXobCDFaEoPMSSE1xbySzsIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxaAqFX80L1buzhWJZDDzjc1AnduXYvz5s91FeSRXxU=;
 b=ULpIs7Xv4mXlqUrA9WqS/b/jid5mUEOxdrAD+pnFv3DcZzUS6nZLs/dp/PTeKkPrLuo+Qi6OJqJ5xxz92H2JYGq90SmotdDN7cGSgbe8gcNrteQhO6ppwLJ3ScXPi6y1onymPSjSKGd7Tti884qPryN4UM9o7wJbkrCQgc/vqvUHEKw4PreeR7QBEzlKDu0ZHF/3I6Cp+/Juq92CudQdrH9hXakgAshdOLuV0t/ZztCEdI3OxCPhaO/usTFnoxGfcvMienuvRs+8mrz2mF+Fnv1LXG6vRQqgc23HryiPsDaY4frTCqzmrSt8fpvcSKSakXjYtCgpzTxgZtx4UGe2cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxaAqFX80L1buzhWJZDDzjc1AnduXYvz5s91FeSRXxU=;
 b=DX+6a4icQ9ymbNZ/2JNoTz4z45Bd0esNw89gqdKWLvMJVXczqPeKri8+LzT9qlwchY1Puh1q4n34KWerYKaqTEcMsDLd/6hC3kQFeR9rNp78kSb7TEKTqc8j7dzFTIeXQPl7wJNXitnTNVBjPrZuXHPKMLYhe8d94DgGNQAdWjg=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4077.eurprd04.prod.outlook.com (52.134.123.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Mon, 16 Dec 2019 14:35:43 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 14:35:42 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH RFC v6 5/9] interconnect: imx: Add platform driver for
 imx8mm
Thread-Topic: [PATCH RFC v6 5/9] interconnect: imx: Add platform driver for
 imx8mm
Thread-Index: AQHVmyea6vLOQFY6S0eW72n/jayYZA==
Date: Mon, 16 Dec 2019 14:35:42 +0000
Message-ID: <VI1PR04MB702351C3615C360AF5A643A3EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <60d36b71294d162d25c9f889177cab30e41d5ae7.1573761527.git.leonard.crestez@nxp.com>
 <537baef4-d3bf-8de9-d168-21af0062b30a@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0d4f113c-6dde-4463-de75-08d782353ae5
x-ms-traffictypediagnostic: VI1PR04MB4077:|VI1PR04MB4077:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4077D32B33E3C0DDC8B19F5AEE510@VI1PR04MB4077.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(9686003)(66946007)(64756008)(66446008)(66556008)(66476007)(7416002)(76116006)(55016002)(316002)(54906003)(110136005)(71200400001)(33656002)(8676002)(81166006)(7696005)(6506007)(53546011)(86362001)(5660300002)(52536014)(186003)(478600001)(4326008)(26005)(8936002)(91956017)(81156014)(2906002)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4077;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LCgNjNbpIvcc1nyETWfPr+SupogvMVUGLnOUTp3308qJ+bEeG3j0SX4WSdbnohHoso6uYs/CXWTyJtgXAb41mkMddWe7bQkf7jEv0UBiSARnuom1bzis3xc1b2eIZVS57NZt8RJmlngZkQA1zC0o5epQath/QEiUld4r5dSHnTa9IbFsFPS0XQmP+Bh6ZVZoCfMCPVHgjJVgwawzs5sPgt8TC+kOWIa1rZjYsJcj9dYMbjw2YiFlLmJUR0xhwA/TgTm2EaDe1KenAh2CPVgk/vxSh7KtLEKglASCP1pGpGCsE5U+eY8elSZHu02il/bCa4a9FPQhUs0AVNvw2rWaIYBvwErjeTaTBsBp/IcaqdoVspYw2YXJlGf2s4Z1BAiQdhFl+YXCtpLgL3yW7gtiyQAl0uMK31J7L60PKjKB85y5sU22HXDzzOkfCD0YMsPs/1qr5cBEyoWsMDYyo91o0Xzf1XcbLJEkAVQhDHfTyewXDyt1KVGvNnnC9lYupLCe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4f113c-6dde-4463-de75-08d782353ae5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 14:35:42.7731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jF9cGhZv/3JPAKRwVo+9duJE6EMGym2jkNlsatBO9dG5Sa2e4wnK234Z0c/ezFW2LvSWqhpCQ9lOZrx3PQcRGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_063551_592880_36EBF9B5 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.12.2019 09:35, Georgi Djakov wrote:
> Hi Leonard,
> 
> On 11/14/19 22:09, Leonard Crestez wrote:
>> Add a platform driver for the i.MX8MM SoC describing bus topology.
>>
>> Bandwidth adjustments is currently only supported on the DDRC and main
>> NOC. Scaling for the vpu/gpu/display NICs could be added in the future.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/interconnect/imx/Kconfig          |   4 +
>>   drivers/interconnect/imx/Makefile         |   1 +
>>   drivers/interconnect/imx/imx8mm.c         | 105 ++++++++++++++++++++++
>>   include/dt-bindings/interconnect/imx8mm.h |  49 ++++++++++
>>   4 files changed, 159 insertions(+)
>>   create mode 100644 drivers/interconnect/imx/imx8mm.c
>>   create mode 100644 include/dt-bindings/interconnect/imx8mm.h
>>
>> diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
>> index 7d81d3c83a61..15671fe7f600 100644
>> --- a/drivers/interconnect/imx/Kconfig
>> +++ b/drivers/interconnect/imx/Kconfig
>> @@ -1,5 +1,9 @@
>>   config INTERCONNECT_IMX
>>   	bool "i.MX interconnect drivers"
>>   	depends on ARCH_MXC || COMPILE_TEST
>>   	help
>>   	  Generic interconnect driver for i.MX SOCs
>> +
>> +config INTERCONNECT_IMX8MM
>> +	def_bool y
> 
> Can this be a module?

Yes. I'll turn this into a tristate; at the very least it would be 
useful to check modprobe cycling.

By default imx boots with bus frequency set to "high" so there are no 
hard dependencies on interconnect.

Historically in our vendor tree we had boot drivers which made bus 
scaling requests (like sdcard and ethernet) but I'm not sure this is 
strictly required.

>> +	depends on INTERCONNECT_IMX
>> diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
>> index bb92fd9fe4a5..5f658c1608a6 100644
>> --- a/drivers/interconnect/imx/Makefile
>> +++ b/drivers/interconnect/imx/Makefile
>> @@ -1 +1,2 @@
>>   obj-$(CONFIG_INTERCONNECT_IMX) += imx.o
>> +obj-$(CONFIG_INTERCONNECT_IMX8MM) += imx8mm.o
>> diff --git a/drivers/interconnect/imx/imx8mm.c b/drivers/interconnect/imx/imx8mm.c
>> new file mode 100644
>> index 000000000000..acc002153729
>> --- /dev/null
> 
> Thanks,
> Georgi
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

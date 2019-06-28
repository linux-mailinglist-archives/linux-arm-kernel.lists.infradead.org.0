Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8359458
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fuW6veU1+2RpPfEHCwPZ8SeMWuv6UX9Nmyd44EO84U4=; b=NdlHUUrnFzDPgG
	9HnLoRS8hcBhNmjLV6OLTQujey8WvnHNy9pzwfDQC84HglfgXbTVwe+RHQY+/VyH8neTs5uTN60ch
	T5dKXqwyHGZ0qg7dXeBBgYJsAO/WFc+0taEjfZZPbnwr4gnZa7YSEMlv7I9jWGoSEmZd3Qc4qrg1F
	FJDVyJi17WohfA8Wr/SXP/1DJIm/fhYmCsY3tpEtI+l0kLbF7WzKBrWcJBg+c0+CdZZtsFhQgljhQ
	keOZR44mvmF5gpn59cO0gQRHUZZBcG5cei/e8muYaKHkv44PKSorxXSi1j3HwzVVbylh3V/hfDnjy
	4zupCXiudvVBAcRs3Ivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkdP-0001Z0-1u; Fri, 28 Jun 2019 06:45:23 +0000
Received: from mail-eopbgr00088.outbound.protection.outlook.com ([40.107.0.88]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkdC-0001QT-HD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzpOF9k3OtNN6SAfRIg3+Gwqwhl8IFtRP9SE64p5lTk=;
 b=GIdpzTd8qAtdUPpPeTTwMcwAyxPxPrcattEO4M/k0Ho5YLI0DLvZfAmDUsWZXhTPGfl69jU1qKqLoNeYuhoRcBHQC+fSgEy+Z1HiBFOdA4jsWdpjxZIPQQCy0oRFpujccYVXL5lEy1oYWhEv6FmwhqTdIVFhEPazBPCMb3gR4mo=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5039.eurprd04.prod.outlook.com (20.177.50.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Fri, 28 Jun 2019 06:45:07 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2008.014; Fri, 28 Jun 2019
 06:45:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Index: AQHVLWLGEgwa/2nQ4E+GYs5uFNg8hw==
Date: Fri, 28 Jun 2019 06:45:07 +0000
Message-ID: <VI1PR04MB505542FB866BC18A27D22B90EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
 <VI1PR04MB50553915C0D978A8019BDC5CEEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <DB3PR0402MB39161C60DC780B693933F9EAF5FC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f1ae866-ddc7-44cc-c6b9-08d6fb9428a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5039; 
x-ms-traffictypediagnostic: VI1PR04MB5039:
x-microsoft-antispam-prvs: <VI1PR04MB5039C882AB3613AC6E44147FEEFC0@VI1PR04MB5039.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(189003)(199004)(486006)(33656002)(446003)(99286004)(68736007)(44832011)(25786009)(9686003)(53936002)(476003)(6246003)(14454004)(4326008)(55016002)(7416002)(66066001)(229853002)(74316002)(3846002)(6116002)(2501003)(305945005)(316002)(8676002)(6436002)(81156014)(81166006)(8936002)(64756008)(54906003)(66476007)(91956017)(76116006)(256004)(73956011)(186003)(2906002)(71190400001)(71200400001)(102836004)(6506007)(76176011)(7696005)(478600001)(53546011)(66446008)(5660300002)(14444005)(86362001)(26005)(110136005)(66556008)(52536014)(66946007)(7736002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5039;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: o6/b9SLGTYtpiJZj8Y0s70joOGF+K1wD3bEQqNaDf/TWjgWrMSWgjnB8TIS6JY9smV3k5BAdfqVoeUPg0VEQ6JxjBB3ok2/UvzPKxCsFHorjfiCzNHxFrH9Rx1OCBx+nDVk10AesjRi45wluqZrL4KBCXiLGsGjfRXLTUku8G/lETPLxyOCvzZ7pqGn4pC5eWbFSyNhllwuCbyGvU93ACrZHpDHVFrrVB51Nj8elZ1pNQRJ2hR+uy6FIqK5VOlwAipveR0vi7qtwwR9LVezvCfaDpiRUmyhFam2NuJrfUZDtScSBhBXQf9rDf6Vao4AtADV0FxvRpwdDIFoE/llvrJ0ZB6Olqciet8wUV9eJHPGawoGGpBEmYN9aAVHxBJQpbZfSDdmSNvDB51bCEKmBrNzUaOgUsw0eG0YH1xOVsNc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f1ae866-ddc7-44cc-c6b9-08d6fb9428a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 06:45:07.3730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_234510_575762_1FCB74CB 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/28/2019 9:16 AM, Anson Huang wrote:
>> From: Leonard Crestez
>>> From: Anson Huang <Anson.Huang@nxp.com>
>>>
>>> According to latest datasheet (Rev.1, 10/2018) from below links, in
>>> the consumer datasheet, 1.5GHz is mentioned as highest opp but depends
>>> on speed grading fuse, and in the industrial datasheet, 1.3GHz is
>>> mentioned as highest opp but depends on speed grading fuse. 1.5GHz and
>>> 1.3GHz opp use same voltage, so no need for consumer part to support
>>> 1.3GHz opp, with same voltage, CPU should run at highest frequency in
>>> order to go into idle as quick as possible, this can save power.
>>
>> I looked at the same datasheets and it's not clear to me that 1.3 Ghz should
>> be disallowed for consumer parts. Power consumption increases with both
>> voltage and frequency so having two OPPs with same voltage does make
>> sense.
> 
> The consumer part datasheet does NOT mention 1.3GHz at all, so consumer part ONLY
> support 1GHz/1.5GHz, and industrial part ONLY support 800MHz/1.3GHz, this is what
> we did in our internal tree and NPI release, so better to make them aligned, otherwise,
> we have to change it when kernel upgrade.

Datasheet seems ambiguous: it mentions "max freq for volt" so my 
understanding is that any lower freqs should also work at that voltage.

This also seems to be the understanding behind commit 8cfd813c7307 
("arm64: dts: imx8mq: fix higher CPU operating point") by Lucas.

On datasheet page 7 it mentions that product code can have "JZ" or "HZ" 
for 1.3Ghz or 1.5Ghz. Are you saying that only industrial parts can be "JZ"?

>>>    			opp-hz = /bits/ 64 <1500000000>;
>>>    			opp-microvolt = <1000000>;
>>>    			/* Consumer only but rely on speed grading */
>>> -			opp-supported-hw = <0x8>, <0x7>;
>>> +			opp-supported-hw = <0x8>, <0x3>;
>>
>> If you don't want to rely on the fact that only consumer parts should be
>> fused for 1.5 Ghz then please delete the comment.
> 
> Don't quite understand, 1.5GHz is indeed consumer ONLY, but if the consumer
> part is fused to 1GHz, then 1.5GHz is also NOT available, so it also rely on speed
> grading. So keep the comment there is OK?

What I meant with that comment is that 1.5Ghz is only mentioned for 
consumer parts but instead of explicitly banning it on industrial parts 
we rely on MFG never fusing industrial parts for 1.5Ghz.

Now you're explicitly banning it on industrial parts.

This comment is indeed confusing so better to just remove all instances.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

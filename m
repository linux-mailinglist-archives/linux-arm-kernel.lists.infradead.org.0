Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603F05BCBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 15:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NjcQZKsNiLPfaeLE82GAsIplzN4oYKMMSxFz79c4dmo=; b=BrcRJxRz+J4YQ3
	dtaDZMSBSDl78vwD/3cdi7O2rwszQC2qd+B8KiMnL2udwEZMskgeEm940rCxFz4D7nB4hp1Q+NjHU
	GJT601sHfKyeXK+4nXAxKwlIs3557WWEFm35cgeTGY2rtpYX0mbuCMK1Kyz1H+ai/3vPIXsvHwSk8
	eX1UF/kBmNRJmsZcW8hLh/R01GE/MI9kAmB/C/BYvZzxNVAQ34d9qAfuSYJrU6xl8BexV/E8DFQbJ
	B2T/Vb07PY0o9u9vslLYk6oUsxViEH5/CTJ4HT1R8nHNB0v0vX8o/RP1JfyKG9JaeKlJ2xUtjqfbB
	UVS7yOQ5sIX9C1lOCoeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhwEu-0006M6-Jg; Mon, 01 Jul 2019 13:21:00 +0000
Received: from mail-db5eur03on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::623]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhwEm-0006LV-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 13:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaUAOPXohnVzqkJWmyYjhVRxTzpR9ETGSfw0coirnpU=;
 b=BmqZP4N45I/2fHOuCtgjfLP3ZAJet3nMAo+14RhKTh0uxm5AoT7GLIxlr/ZQjoVTiUH8rMwpb+W/OhXrm0WMY4vhQAub9M6s4qdVqOW1mt9d833ln8iCntkmxgB1nMoT50decNxniXVdZhlUjBM29UCIr/KCeR50Z/itUMNyIZQ=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5133.eurprd04.prod.outlook.com (20.177.50.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 13:20:49 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 13:20:49 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8mm: Correct OPP table according
 to latest datasheet
Thread-Index: AQHVLmXFrcvuT+m33U+Utu0uFxLfsA==
Date: Mon, 1 Jul 2019 13:20:49 +0000
Message-ID: <VI1PR04MB5055B324BD963A50698A0AA9EEF90@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190629102157.8026-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87341a7a-cb93-4da3-a19e-08d6fe26ef54
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5133; 
x-ms-traffictypediagnostic: VI1PR04MB5133:
x-microsoft-antispam-prvs: <VI1PR04MB51337C39C1D510A69D7404B6EEF90@VI1PR04MB5133.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(199004)(189003)(66476007)(66556008)(66446008)(66946007)(64756008)(44832011)(66066001)(446003)(86362001)(81156014)(53936002)(55016002)(8676002)(81166006)(25786009)(6246003)(316002)(73956011)(486006)(52536014)(54906003)(478600001)(14454004)(71190400001)(71200400001)(76116006)(91956017)(476003)(33656002)(9686003)(110136005)(7416002)(76176011)(53546011)(6506007)(102836004)(229853002)(5660300002)(26005)(186003)(2501003)(256004)(4744005)(99286004)(7696005)(6436002)(4326008)(8936002)(305945005)(7736002)(6116002)(3846002)(74316002)(68736007)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5133;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SItNQtVosjwD7wxDstdr9fpgogvf1z9tMFPOFSKY9ie2CqihiE9AQJrVGVrg2Q5g43Q0EVClLvpDmYXyowYupni8sabTO4SMGj+BK+/o37M1p3BGQVOxqHWp6om703LXwHLyV76DsL55eXCsvjB/caWKUpsIkvB176AZISZJyOsEpAhIUnYobAwfw7/z/daSJtLgv1o26ky0pLBw9+dMZKMoquKWiTi8fgjW0rqko+zBb7qGLRlKR6BB92azR8JiULgmsh+vlR40vpjzBKtLlcTTkMX51dWdzlGiD5qIuab36MbR1M7iuWasP+KW/Cv3TvApqrh9C8AuqaNG63hMsf5cdJlGKwgyovDj1UGu8Aw3EBrua+yd41AScq0iN2dZ5nIE4IbWPYpdT61YiGT9/z14yAopUNfl3xilS8no/Uo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87341a7a-cb93-4da3-a19e-08d6fe26ef54
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 13:20:49.5638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_062052_849433_65FA1321 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:623 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/29/2019 1:31 PM, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> According to latest datasheet (Rev.0.2, 04/2019) from below links,
> 1.8GHz is ONLY available for consumer part, so the market segment
> bits for 1.8GHz opp should ONLY available for consumer part accordingly.
>  > Fixes: f403a26c865b (arm64: dts: imx8mm: Add cpu speed grading and 
all OPPs)
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For both:
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

The vendor tree goes through a lot of testing so switching to the exact 
speed grading interpretation from there does make sense.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

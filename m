Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01AAE99E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r48FbzSVKf113/AWkVXcJyUjJjElX0uFJIAlmPqDO0s=; b=Ku6Ys4mkOTaTLv
	OfzmWaCIMFc6tq1ji3RzeNuWCSOH1/FWTKVlmF5MevH37Pv4h2BhjeQ8z9PL2gzM+3kkPX0c+WSdt
	USuA5JJYZH3h4iBtKV3TqHh9lDR4PR+ah3i0uejsGjrS2vpuwA0JWgDM4ERdAF+6iuGrTuVufTpDC
	GHD79yqXEAiJuHlfes0xzhqToC7euTwhF16JtmbKzLnaZ5JIqOoVNIDs1271Kma5znagSxW8cviWN
	WCrTEz5VE14K9QZa3XtJbKWUtY962Lf3kFhJ3wKE0THVXEeYBIAKcK1m1DfeETcJ9BIebCOiSSdE6
	E+GgytsfHHW6j11/27cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPl6R-0005X2-84; Wed, 30 Oct 2019 10:21:23 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPl6H-0005WJ-Sd
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:21:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3Z0zuSCPPMvyBlw6NQqKc/TfRpgxt+mQMMgAIbGr30zccJRIexpq3l+6D967pchiJnSKC1LabLAdIgbyDkBUJ8ejzwqp2rbAKJjOGwPv7buGKQwLBRpwf2hpIxvqpUBmLLzWo+L/Zjwlc5oh2abQiTVektfHivElvkYfk8O8PX5A/MWmxsvxRiKY6n27yZQ5Bfh+glSu5SkXQrW93dDSECiPv4quUKfeEQxZuQqECGoRbUKiVJq4+/aqR+WWMII1lp3oeB5eXiKSfZzRIwLrGMrkIjwjdYlDjzkaQBsZFFrZrRiiPw3ZMo9N6gatbVEhOgauWEUarcbJUjsVyjgVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kdq9QOAVIZ8f0JCm8tQbe+C3f0MeU7KlFAJZhP6HpT8=;
 b=JAjVR9tzQIAbC5dRbMrkGA/t/XflT3HbPIYlnT3oV/GvTNaX860h8oYNq8WL0T75nfx8HgRUzpGC+r3RWtJ9qvwWOA2s2ippmzqwcuWDKFAjDK13JjxGTYvKRmRum7zDx7REQNXzjSmIbRbgHBOW/1Pe75B9m6p9oUrvQMLVtSe0ir30jBRGXeXLurvoDbWq8Ccsn+POT7SN+Fa598k9tI/tgD/XEMrLLGrBDDbSXTkX34YJOm7HrVRqXmgXJKgU/UB7fVooEXlRF1nv6Stxttj5SlEyg2mbVrdze/dW62p643gFAjmHeG6JjnHErWVE622TEHleWmaN4bH0cw40nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kdq9QOAVIZ8f0JCm8tQbe+C3f0MeU7KlFAJZhP6HpT8=;
 b=FWjEutTHJJasS8V4jN4xqtP6bb/7qv2KX+6VVMqAVLrkssxfLVqSB82eXoZtOLIHC8i/7hCeoJy7d4bZjZdgHSbKQutj8sr1BXDfea8kqy+mJj78mEvSHEO0vlqFhWawMKsOU20k5ab6koAoBB9cin4SfySBEUa9ZeI3k+uy9TY=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4260.eurprd04.prod.outlook.com (52.134.124.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Wed, 30 Oct 2019 10:21:08 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.033; Wed, 30 Oct 2019
 10:21:08 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 0/7] clk: imx: switch to clk_hw based API
Thread-Topic: [PATCH 0/7] clk: imx: switch to clk_hw based API
Thread-Index: AQHVjl55CLrCj3Q1sEiGZunySWSfBKdy+rWA
Date: Wed, 30 Oct 2019 10:21:08 +0000
Message-ID: <20191030102059.ppb7le3qnfhbcii5@fsr-ub1664-175>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P195CA0028.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::41) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7aa7261a-7d9f-4896-caac-08d75d22e0ed
x-ms-traffictypediagnostic: AM0PR04MB4260:|AM0PR04MB4260:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4260328A2042C6C35AFC5A4BF6600@AM0PR04MB4260.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(199004)(189003)(11346002)(66476007)(66446008)(66946007)(8676002)(64756008)(76176011)(81166006)(66556008)(486006)(386003)(52116002)(81156014)(316002)(99286004)(102836004)(8936002)(478600001)(26005)(186003)(3846002)(6116002)(256004)(25786009)(4326008)(446003)(2906002)(476003)(6862004)(44832011)(86362001)(33716001)(6512007)(9686003)(6436002)(66066001)(229853002)(1076003)(71190400001)(71200400001)(6486002)(14454004)(305945005)(7736002)(54906003)(6506007)(53546011)(6246003)(5660300002)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4260;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sHdaHsUC6QmpjWwoN4FRqrOPDS1BK1t0zwKSmoHceM++j5YENN+XUe9npcuU59mD6uVqaBKBp60C6H82SbzhgRZyFqSjJ0nYeEID2d+JVN3ZOrFu+yZAnKwX2eF16lsCeXsV9yD5wpfdm7E/LjygNgAT7GTq0/zTN9dMQxIikGGQdSxtHYjnernokiGScZtgrjPciKDkacL6qWIJaPPBoJbELwYWh8ZS0nl1E/wf3zJbBPXmVjr7h5Lre7wMv4fXl1mOyEMuJQHj6p7r4skmLzHmn2pSrgdxdk00ThGX3b4e+FpzzmeUPItGTsSsZ6ACFyvgaHpP6nJbCRp8h43YAXf4zTLmz3DE7iuKsLhDgfSyF17vQ+Yu6K/YQmdpxWjNPzAPxismWUybTCpm6m2O9JBSqDng2RXarn53Ul/rM4fCE/cNQF/scTwhmExDtPKr
Content-ID: <43350CFBC5517E408DDBE9D9EFAFA719@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa7261a-7d9f-4896-caac-08d75d22e0ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 10:21:08.2314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MG1w9bPkz9j8DbOEYMeQPyXUqSd1O98yfGuNl8quB567JEGEEkvbtgSCGf10mY3JXp/EAjGltDCthECu0nLLwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_032113_932293_9AABFF2A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-29 13:40:49, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This is a preparation patch set to switch i.MX8MM/N/Q clk
> driver to clk_hw based API.
> 
> There are some patches under reviewing for i.MX8M clk driver,
> to avoid conflicts, so not include i.MX8M clk_hw patches in this
> pach set.
> 
> The patch set covers the APIs used by i.MX8M clk driver.
> 

Thanks for working on this.

The entire series looks good.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> Peng Fan (7):
>   clk: imx: clk-pll14xx: Switch to clk_hw based API
>   clk: imx: clk-composite-8m: Switch to clk_hw based API
>   clk: imx: add imx_unregister_hw_clocks
>   clk: imx: add hw API imx_clk_hw_mux2_flags
>   clk: imx: frac-pll: Switch to clk_hw based API
>   clk: imx: sccg-pll: Switch to clk_hw based API
>   clk: imx: gate3: Switch to clk_hw based API
> 
>  drivers/clk/imx/clk-composite-8m.c |  4 +--
>  drivers/clk/imx/clk-frac-pll.c     |  4 +--
>  drivers/clk/imx/clk-pll14xx.c      | 22 ++++++++-----
>  drivers/clk/imx/clk-sccg-pll.c     |  4 +--
>  drivers/clk/imx/clk.c              |  8 +++++
>  drivers/clk/imx/clk.h              | 67 ++++++++++++++++++++++++++++++--------
>  6 files changed, 80 insertions(+), 29 deletions(-)
> 
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

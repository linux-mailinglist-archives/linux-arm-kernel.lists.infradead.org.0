Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02EF169276
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 01:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGB3A5hneoMX9sTVCcXRNLrhhzFBJcS154pFh/Dvs8o=; b=j8Ff++alalVnCs
	53H/eCvmR7FH1XPkO/I1NWLCA1xMtwh0SjnsvMGC0UEowIYjhQB985MHJuvs1amQlvlbcFzOWZTBC
	8nyd/TxO3UenYAYRtPut53gPE6pHd29xJaYHdS61Jq/p2W+EaaRPnvQtZBCMyorx7otL/PlA1LTyK
	Chm6WMAU/44f5sdX265rfB921YzrOiUp/htFSu6UWowj1k0bLRKMNZJiD2Pslq1aFWkHXEe8sbUwU
	31OFqPJRgZo2mGuBFCoQZLDK0DJ2k0bNnoTeDK0E2oeU6UUxByWDEtVo2dxKTHbjNJeIfPxyrW8+E
	zmNqEIAu9VGLEtDAgDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5esP-0006JH-3r; Sun, 23 Feb 2020 00:12:05 +0000
Received: from mail-eopbgr30081.outbound.protection.outlook.com ([40.107.3.81]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5esF-0006Ix-IH
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 00:11:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVhy7TZ1Uc3XTmv3kKGI/xxykR2PzYOw02Ltb8BNsdpaMtW177uFwMJE2oqtCZCUwGELPZDhcPbtYq6I2UwyneUPqt8WY2hfhCRtEzuDR2CSjCFcZTljZ34XjVyb5Tw3N4acgQow+ZZ36CZmyug4EbIOkHU9kLht6kou0Wiy837JW1JM3ibVpUg/0+hjX/FGD5+xWfyaUnl24AVyQ3iTU7rAqBCzMTg/eU58xMaa7p3bArYdlHG1ANob9foVN0QUCzbaYAWcE/Q0mQYnOrBjLiDjMzceIQiSQSDOvHLVkYCvERtwve+ifbKd8clJ/HIS5hE71GioQQf1Rsal4VoKpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4o+r2wDMxw3rW5ZvK8Q/Cj6vGlgk5qpR0cj3XmRMLQ=;
 b=My7mTYnuhfdxbMW3ja+EZ9HM1zIlB/34Qwsinb/HXu+LZeFmCZz16azw/3tDokKDV+ZP2aFw16TSfB/IvTpBbljL1iI6uzpqsFCh4IRFeK4nBu3xtBga3LHaXEnAQhgb1KXZFwl1DMModFPws1QkcxXc9Z1hPOIf10KG5TjjDzpOCluR6ZnoetHxhYTvwetv/HhHByeTojdXUiNwHLru95lf9WDK10F1urGxLAlWcLvbhNPNen+KmS2zDDLPScrePK5YRxhTuZXxTkcYHS5FonqzCGJhdAcGpOJYjj5+xjSbep54MErBFyBXwMQ/zFbrTn0fGA/CQmSMWpDXx5yR3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4o+r2wDMxw3rW5ZvK8Q/Cj6vGlgk5qpR0cj3XmRMLQ=;
 b=PtMT/NNyooJUFBuUZtNOJDOoZ79IhqsUMDhyGPtBN1UhPnVKEVZgca+iT0qsM3A+/lK9wZMCF1Ru9lppR2IYR3Op+LhVoJMTC5xuQr0hvGbw9Jl45JfRgTLCWo8Rf63kMN4fi5kiN1mFcV/Bboz/wUWAJaXUIsjPt5xcWwrKXCs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7090.eurprd04.prod.outlook.com (10.186.131.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sun, 23 Feb 2020 00:11:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Sun, 23 Feb 2020
 00:11:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [PATCH 5/9] remoteproc: imx_rproc: parse early-booted property
Thread-Topic: [PATCH 5/9] remoteproc: imx_rproc: parse early-booted property
Thread-Index: AQHV5vbyD0uyt2f6hkqWNb+JRXycMagmNX+AgAG3jNA=
Date: Sun, 23 Feb 2020 00:11:51 +0000
Message-ID: <AM0PR04MB4481882E603D1C83C637183788EF0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-6-git-send-email-peng.fan@nxp.com>
 <20200221215605.GC10368@xps15>
In-Reply-To: <20200221215605.GC10368@xps15>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [117.82.241.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c536a0fe-03fb-48a8-f797-08d7b7f4fb7e
x-ms-traffictypediagnostic: AM0PR04MB7090:|AM0PR04MB7090:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7090B6C2F6A9B86CDABB36D788EF0@AM0PR04MB7090.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0322B4EDE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(199004)(189003)(2906002)(86362001)(71200400001)(54906003)(55016002)(316002)(33656002)(4326008)(7416002)(966005)(76116006)(478600001)(186003)(66476007)(6916009)(66446008)(66556008)(64756008)(9686003)(52536014)(66946007)(5660300002)(7696005)(26005)(81156014)(81166006)(44832011)(8936002)(8676002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7090;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K2VUt0n4TGNql8wH54NmGE3OjzTOfogIxn7gehC8my6tVn5rEjbty8aDLiopnOkcN9xofsraS3RMcjqPg9eNsPexAjVTjJa7FZlcizo7Bg3f2JsvMWuDfCG4rXJsZ9ME/eHsslsxfjDuXxEAUUIpeolP7KNZGM754jK2F4ZmZ/9JdlK5Ar+ZrtdfxoDQqragLXpFezlmjnDpynRlEbnTfGcNT49vG20L2iZnYg4ulwB5NwkoDY4QksTVMGmGOhaDDUBImFYSuj+4Qn13chsYCHmyksZMDkYInWgHG+TGle/3sfeT/qh3x9WtXqo7E+lPG62P9Qir9+Lul8achEJrNobLO9HRLlsu2gqsItBgVTGFlnYHiOFgRRi01quU3DU93evvfznJpxnQ/ICx4sP8HYpx0SIaRsESn4QIQBofkZ1ngTB7fTBz7N0iVcK5YIZh8QaaKHoctLTk0PdtCe0ABls6weBE4S8e/LbslGusmHmcGLTCYvPPLz7d0NHVANv64/xBNkSIYaoM3n+rpPznPg==
x-ms-exchange-antispam-messagedata: zATgaAsMxHfe9CMz+YiogORXbaGMR2qNq3q9bP7o9IEV2txzgBnIN8JFKPFOfpklbBU1wTlEmxeqylPAu9l6nNWKUwku/i9lJGFeqNdRwVmCQ4GuRJRA60dN4n8Gkb4D8uR3rNO1wIe718V6q6n/QA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c536a0fe-03fb-48a8-f797-08d7b7f4fb7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2020 00:11:51.4200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXA0K82kth63PuivgoP6OuawyHMeLoraxNO+gemvnRkVVtCuSiBOoRXCmKxuUqxNqlwtWOi4QwAzHiAM7SARQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_161155_608083_86A9DD10 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 5/9] remoteproc: imx_rproc: parse early-booted property
> 
> On Wed, Feb 19, 2020 at 03:27:41PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > If early-property exists, there is no need to check syscon.
> > Just mark early_boot as true.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/remoteproc/imx_rproc.c | 18 +++++++++++-------
> >  1 file changed, 11 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/remoteproc/imx_rproc.c
> > b/drivers/remoteproc/imx_rproc.c index b9fabe269fd2..e31ea1090cf3
> > 100644
> > --- a/drivers/remoteproc/imx_rproc.c
> > +++ b/drivers/remoteproc/imx_rproc.c
> > @@ -483,7 +483,9 @@ static int imx_rproc_configure_mode(struct
> imx_rproc *priv)
> >  	int ret;
> >  	u32 val;
> >
> > -	if (of_get_property(dev->of_node, "early-booted", NULL)) {
> > +	if (dcfg->variants == IMX7ULP) {
> 
> Where does dcfg->variants comes from?
> 
> This patch doesn't compile, nor does the one before it.  I will not review
> another patchset like that.

Ah. Weird. variants should be variant. 
See https://patchwork.kernel.org/patch/11390559/

I need wait early boot related functions in
remoteproc-core.c ready, then post v2.

Thanks,
Peng.
> 
> > +		priv->early_boot = true;
> > +	} else if (of_get_property(dev->of_node, "early-booted", NULL)) {
> >  		priv->early_boot = true;
> >  	} else {
> >  		ret = regmap_read(priv->regmap, dcfg->src_reg, &val); @@ -509,15
> > +511,17 @@ static int imx_rproc_probe(struct platform_device *pdev)
> >  	struct rproc *rproc;
> >  	struct regmap_config config = { .name = "imx-rproc" };
> >  	const struct imx_rproc_dcfg *dcfg;
> > -	struct regmap *regmap;
> > +	struct regmap *regmap = NULL;
> >  	int ret;
> >
> > -	regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
> > -	if (IS_ERR(regmap)) {
> > -		dev_err(dev, "failed to find syscon\n");
> > -		return PTR_ERR(regmap);
> > +	if (!of_get_property(np, "early-booted", NULL)) {
> > +		regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
> > +		if (IS_ERR(regmap)) {
> > +			dev_err(dev, "failed to find syscon\n");
> > +			return PTR_ERR(regmap);
> > +		}
> > +		regmap_attach_dev(dev, regmap, &config);
> >  	}
> > -	regmap_attach_dev(dev, regmap, &config);
> >
> >  	/* set some other name then imx */
> >  	rproc = rproc_alloc(dev, "imx-rproc", &imx_rproc_ops,
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

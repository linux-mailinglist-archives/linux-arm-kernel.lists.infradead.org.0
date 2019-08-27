Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA669DEF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f34gpNB/ggi6+z/Tst1qid9b6bwP8SAFfF92PDFCZrk=; b=JcMbh19wGR8lE9
	nkB736gzdzA1+AqMMA+Kckm3McsfP4MPX5G/5YHSgeRaJXmkJAIH+P2ibmpCE5mY5OU3xju6uTHof
	IztcWh4gw8AB43WU5ZwpUv+iHPhhTCSP0+F40n7kb41geHJq9FRhWbrkcMasFbPBzBMIhwOFdKWac
	YqzsVXcukDJ2heM7pdBgJTDr6Z+JhSu03O9HcFPM0S0HEFau/BG8/cYRD84Gwk0Bv3saOUlnKHxKS
	LNn2TcqIdeLLrB7rDiwHqLmDypo6Per6MaVgdDCBfAJqxG6yPNoxHj8rxDaXrmroL38ZVn12yNNjo
	X6Q0rGdRz633HsnE/s1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2W9c-0005TE-Au; Tue, 27 Aug 2019 07:44:36 +0000
Received: from mail-ve1eur01on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::625]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2W9P-0005Sn-Iw
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:44:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MpKALyCItok5SPg1doT9QiiTql2sDTp/U/cp7Lg/rwP/P35Vx2yk+NR9M6xvgcyL5xsjAs+MZmj9VHdXKF2BCQeqYb+0mN4RFpBLm3nDHN17wMcSlpe3PBPI+6h4h/VwHKZ4MdwWb4Y+od967Kwq7fHkPIah8VwqCfdzMo/coRrL++jtwLQgiLW0BejcQEwEsmeTPLwPriKWAWRon90vVavkDtDPTMV/8LQw4sroKVjY8y7bD3a1xV9k8Lv1XGM+evCIOQE93PUECR3/kDMUs05iVvuboag3l2eb47Whj+twByHNuWHLVogut9iECua1Z/tRkDnh7W7MunhFYRiDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdFFSZtM2sPw2p5vCdHcvsqNJlIfy03d+5Kq4ViMgxo=;
 b=F8w0HLJYgyuwgoZkYDDHCSHPqRScnPa+9VPi3nVPitUBpkwHtSh0et2mnpD2BrpLxZZpLODUJATLSwaheKShwCz4u/r9v2AkqManamptIVNktrAfHQRb7CXaff4+lyGTztC+4HKYga9LqITJrn0QYiqyM+v52NluwUC0mXcE74UYblT5M7/QnCLP5gS+U2frWwVzRyVWG+Pz9TbcIp6KZD+segDNfh0g/hwuOcNXOUXTQTUev5lBljIxAI+xJMRsCp2Q7MaVrs7O+59UvXnulQx7+CJW19R8D+9EoNywAiEHgFBUUSeXOBaevFxXJX60dPfGzc3gbp1VN6ZXo0cigA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdFFSZtM2sPw2p5vCdHcvsqNJlIfy03d+5Kq4ViMgxo=;
 b=aDa4j5FX25yj44ERyT0wtbq1JknRbOhuHI8zwnRmGSgYN+eCheh/sI/OZjNldQKJ0eUSpP6yHImZvtlHpNJFcGhXrMzPPZBx0jxTaZw+AJBd7Np5CKLTiGmhW2j0rDHZ/pIEWQN9+9TgQrQIphgseaD9yyR6htWk6+hlSfQC1bc=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB4349.eurprd04.prod.outlook.com (52.134.122.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 07:44:20 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 07:44:20 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "timur@kernel.org" <timur@kernel.org>, "Xiubo.Lee@gmail.com"
 <Xiubo.Lee@gmail.com>, "nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "tiwai@suse.com" <tiwai@suse.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>, Viorel Suman
 <viorel.suman@nxp.com>, "perex@perex.cz" <perex@perex.cz>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ASoC: imx-audmix: register the card on a proper dev
Thread-Topic: [PATCH] ASoC: imx-audmix: register the card on a proper dev
Thread-Index: AQHVXItnJrx+gT0oHE+CkZPy//zxeKcOnWCA
Date: Tue, 27 Aug 2019 07:44:20 +0000
Message-ID: <65ef17869dbc0a785e2abe9c27df24fdfb273c16.camel@nxp.com>
References: <1566921315-23402-1-git-send-email-shengjiu.wang@nxp.com>
In-Reply-To: <1566921315-23402-1-git-send-email-shengjiu.wang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0613489f-769b-4d1d-1420-08d72ac25f2b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4349; 
x-ms-traffictypediagnostic: VI1PR04MB4349:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB43497917CE243D66CC79EDF9F9A00@VI1PR04MB4349.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(66476007)(5660300002)(66946007)(64756008)(6506007)(66556008)(76176011)(4326008)(54906003)(7416002)(66446008)(81156014)(76116006)(71190400001)(8676002)(99286004)(6512007)(91956017)(50226002)(14454004)(81166006)(71200400001)(102836004)(6486002)(186003)(26005)(25786009)(6436002)(8936002)(229853002)(486006)(446003)(110136005)(44832011)(305945005)(36756003)(7736002)(6246003)(2906002)(478600001)(2201001)(66066001)(3846002)(53936002)(86362001)(2501003)(316002)(256004)(476003)(2616005)(11346002)(118296001)(6116002)(99106002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4349;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Nh5OoJxoi0Bymo8qndR0NU02ynGHtrTSLCH6TXplOXgA9zQkLYznUgKM5KxxneTJQJklsil5QaIZcAI36tI//DbpcKjfwpr4uokgwG2dIRIBADnN3oWywJjCT6O1mBSZrrNmY7NnaG3fi96Q/EERY6wR+VmQ2vwbywJRqn+3QUT75mpWJHGFhQjGSZO9/CnCUkzdhr5LPYsCo8LvWe38rz8O3ZPPVEJ8SdxLOtELZ7AD+GlnUAoX/33QPQLpKQgo2xa0kLSe0LXTpA13u6ry0nZgLE2/C0WR9WqeiY0QF1WQlk+Xp9F6yG1Rvdu549vGnh8HFXdbNBrRMQ2AZAROP3eupfLMRCzZifhluq0affDkCeBL/IGFjMFbPVCQJzKGd0t9ROWjbOJJGW38Prl6kNuD9aeLYEHO+O/2xc/hBIM=
Content-ID: <72DF92E13A17A0468403E9BD125780DB@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0613489f-769b-4d1d-1420-08d72ac25f2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 07:44:20.2636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7sAT+ls6inUpirlNbjRxOvH6xxJl6hu1abdQbR+3v6scGUchbh5R0+DQ6rZIJHgi+4rnRC+W1tobSlET64ui6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_004423_733041_5CA623D3 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:625 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 11:55 -0400, Shengjiu Wang wrote:
> This platform device is registered from "fsl_audmix", which is
> its parent device. If use pdev->dev.parent for the priv->card.dev,
> the value set by dev_set_drvdata in parent device will be covered
> by the value in child device.
> 
> Fixes: b86ef5367761 ("ASoC: fsl: Add Audio Mixer machine driver")
> Signed-off-by: Viorel Suman <viorel.suman@nxp.com>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

Thanks Shengjiu for the fix!

> ---
>  sound/soc/fsl/imx-audmix.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/soc/fsl/imx-audmix.c b/sound/soc/fsl/imx-audmix.c
> index 9e1cb18859ce..71590ca6394b 100644
> --- a/sound/soc/fsl/imx-audmix.c
> +++ b/sound/soc/fsl/imx-audmix.c
> @@ -325,14 +325,14 @@ static int imx_audmix_probe(struct
> platform_device *pdev)
>  	priv->card.num_configs = priv->num_dai_conf;
>  	priv->card.dapm_routes = priv->dapm_routes;
>  	priv->card.num_dapm_routes = priv->num_dapm_routes;
> -	priv->card.dev = pdev->dev.parent;
> +	priv->card.dev = &pdev->dev;
>  	priv->card.owner = THIS_MODULE;
>  	priv->card.name = "imx-audmix";
>  
>  	platform_set_drvdata(pdev, &priv->card);
>  	snd_soc_card_set_drvdata(&priv->card, priv);
>  
> -	ret = devm_snd_soc_register_card(pdev->dev.parent, &priv-
> >card);
> +	ret = devm_snd_soc_register_card(&pdev->dev, &priv->card);
>  	if (ret) {
>  		dev_err(&pdev->dev, "snd_soc_register_card failed\n");
>  		return ret;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

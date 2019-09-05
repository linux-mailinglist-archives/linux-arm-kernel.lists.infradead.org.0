Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385F7A9C40
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CF3oA1av4l46zN6vFfaBx/CMbjRQoOYV71ulhm+ZEc=; b=ic/fN1L7I3rVwz
	cvVjyZ8NeZZUZlenhQvmIRXE+DLacKdUI6VJ0WSfHcE7jBeQeZi2DC4q3mft2dosYHBqmeaz91Zrg
	unqN8oBjQ+BWDKVdGa1CK30iMKffDNxoEYzxk6wfOlPuEPAEr6yh9nD7prhJj30TFq9745CpOMSdX
	2as/7Uk5p5DdTzuYVdttOdr3aoboeJpljDHhHWwHCXPozcmxEefnnCKfJZx7ToELrC9+gjM0JEENt
	dTC9wTCdx35WGOlVDDq4FqU2zN2YLzJRC7DoEHd+iTja6PjL9dqt26EFKZGyKMgZELa2gqNeRv76/
	v1wIjKjSvSGsslBAonDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mZl-0005kY-Qx; Thu, 05 Sep 2019 07:53:05 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mZI-0005WO-Bb
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:52:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfAj7lGITKEsoy9pfh+XuBAyj8pPDO5kF96Qo0c+D7wjbeKvgKUJQa048lNesS3TsiUt6ood4uPifV6ojxbBEShPdn0Upo16j6/gAPgtMQ/fk7Qs4yQHISftm9+09ytFR+ZYdmVuQ5rP4Do7F/jQoIukvE6hx2hU65kYD0DpJB4lLIyUxvoRdo2H1fhcI7UfT+JJLOUxpWC5BYYUxrQ84zW3380QHZ6LS86+UNnuCnD81v+l4FgJ/Ndzm5uOecXqRFmO1YBQMP4Ru3zIqWdB2FlCeRhh4ZSNL8D/PrxNfvGIdBJ8a3oaXcbtAevj3Rmo4D3+AdO/OLvGKslxwolWUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iQLqvk79EUKMr9LYXVcDfX8PLWyOxSgwN5hGT/140MM=;
 b=exmVlUFcG2RbZe7M6/ORCBxgV/9KuZVTfpYfLV1bjQdiLHPn/C3V4AN6qMfJle8mGMMDBULSobo/h+ZxbMDt33KD72DPFFksODSBlMsh7Ze4uXD8KtA8pCFEr3xtu03IuLX4w5e2X6gcNvsup6p2kO8hsmWNbuiQhosvgC+46VHsVQ//gDgMVe8WAPdOF+0xa7vUapYZE7N21jgzLz0utvNfoEE2HlA8TYjjXoMw+egeO58U44Ao8hoaT8bJPDw44AL1ZBwgKcXkY+SGxi3VpdRkhbaA9uxDNOO5BS8X+N5bH6gFUhJwvqqxMSfdpVaJVi7YqJWu4MP+my506bLNNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iQLqvk79EUKMr9LYXVcDfX8PLWyOxSgwN5hGT/140MM=;
 b=cwZL6L8f4PD6zxQ4vNkisy+5qzfz4rxNUP7SgiKwH2HMWOl0DLaGUM8HS6O3vkfg4UBgz4A9YrdjesfZP1o/hvkf9yoc/E0boHFr5Sx64kSdBLJqf2wvtnx++bGfQV24e31Ge+v4ZLWx5gqz9Wj5BOGy16fIybMcCz/7j8HRFFA=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB3165.eurprd04.prod.outlook.com (10.170.229.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 5 Sep 2019 07:52:31 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000%6]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 07:52:31 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: dl-linux-imx <linux-imx@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "pierre-louis.bossart@linux.intel.com"
 <pierre-louis.bossart@linux.intel.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "tiwai@suse.com" <tiwai@suse.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "perex@perex.cz" <perex@perex.cz>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: Re: [PATCH -next] ASoC: SOF: imx8: Fix COMPILE_TEST error
Thread-Topic: [PATCH -next] ASoC: SOF: imx8: Fix COMPILE_TEST error
Thread-Index: AQHVY7VbB4D3lAJHKUqwCvNT4h8v+Kcctk8A
Date: Thu, 5 Sep 2019 07:52:29 +0000
Message-ID: <4264c89ddbcff9d67498bc9d89ec4f1826819f46.camel@nxp.com>
References: <20190905064400.24800-1-yuehaibing@huawei.com>
In-Reply-To: <20190905064400.24800-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f65588a-407c-4bb1-12d5-08d731d60166
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3165; 
x-ms-traffictypediagnostic: VI1PR04MB3165:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB316549629C5742A69A189254F9BB0@VI1PR04MB3165.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(199004)(189003)(478600001)(229853002)(66066001)(86362001)(3846002)(14454004)(2201001)(2906002)(6116002)(6506007)(4326008)(6246003)(6486002)(118296001)(36756003)(25786009)(446003)(6436002)(11346002)(2616005)(186003)(53936002)(66446008)(64756008)(66556008)(66476007)(44832011)(6512007)(76116006)(91956017)(476003)(66946007)(2501003)(71190400001)(71200400001)(486006)(7416002)(102836004)(5660300002)(256004)(14444005)(26005)(81156014)(8676002)(305945005)(81166006)(316002)(99286004)(110136005)(7736002)(54906003)(76176011)(8936002)(50226002)(99106002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3165;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H0oCHBkrKTpxB8lE6dJb/VAOqsb2qjfXSggCiA70HXAtuIb+lTg7D9AHau0gxV2t1FsuYArp5m9+ARXgsKWHVQKXZJxWqusaT7E1en/gewCiaFsTClQewHVneeFjVa9yFbbFo6ycqJ2wfFqJfA/Aps9gPPTzxneWq9QZD85bbyUa8s+Nd9X4DPhQzV2U7NpBJZ0BL8+TwRFJPo+Mg0uAkVzfIYVIX/OquNbYAVqdk/Umf64e6gt6+AADowx+7l7D3Ukq6bzgotLIRqxYDCXkJyGXujpgNuiX8baO1nHdBEC3SgObV653oqXSWYrO9zdPpMGHaj64UgCOaLrjMx1wzQr2Ju7TKIghLhSgAspAm299mbpFoE6nB9Z0YXUFpv0sA+psipprmB/EZEfPMR93eF3R5FVsJfvS39Fz7hgp4xg=
Content-ID: <62718A8F03EE39469AC1D348B4132E3C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f65588a-407c-4bb1-12d5-08d731d60166
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 07:52:29.7612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t35Mye64P8YOO4B/5KYt85v5cg7ngXUkv51z5CA4NT84if2ZOWCZ99ujE/VY/TiFP5kLQtmmaBr0kkQN9Nx37A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005236_475340_5600A218 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-09-05 at 14:44 +0800, YueHaibing wrote:
> When do compile test, if SND_SOC_SOF_OF is not set, we get:
> 
> sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_request':
> imx8.c:(.text+0xb0): undefined reference to `snd_sof_ipc_msgs_rx'
> sound/soc/sof/imx/imx8.o: In function `imx8_ipc_msg_data':
> imx8.c:(.text+0xf4): undefined reference to `sof_mailbox_read'
> sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_reply':
> imx8.c:(.text+0x160): undefined reference to `sof_mailbox_read'
> 
> Make SND_SOC_SOF_IMX_TOPLEVEL always depends on SND_SOC_SOF_OF
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  sound/soc/sof/imx/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index fd73d84..5acae75 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -2,7 +2,8 @@
>  
>  config SND_SOC_SOF_IMX_TOPLEVEL
>  	bool "SOF support for NXP i.MX audio DSPs"
> -	depends on ARM64 && SND_SOC_SOF_OF || COMPILE_TEST
> +	depends on ARM64|| COMPILE_TEST
> +	depends on SND_SOC_SOF_OF
>  	help
>            This adds support for Sound Open Firmware for NXP i.MX
> platforms.
>            Say Y if you have such a device.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

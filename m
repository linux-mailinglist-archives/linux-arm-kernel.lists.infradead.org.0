Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323341D0AF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i41GbCcCiI/kQQQ9NNpukSBgtqziXdpa43cBqJuLMHM=; b=ZgDpK0vYeSruIu
	XZMteDfKe3dNtRXQnbhFyutQlBEr1Plb6cv0OdraaWL5KlZa+caG1fRyS9a/VOLidaoM+hvy3PwMp
	iG2nt/S9IYKDkRwKE6UKpn8hCpyztYIMe0eY2TFRbD8GayDNNtwnhbDH5Err/PdCtbr8XVWHELwUu
	vT9uq/VEmahche9WS8e2a0EPv28aP8jaxgbFh02I2xmfDbHMdtUlpjEb6fsCw00YTvgzhGEPwDoow
	9nLRmOpBEYDptW4sLZiWvzUSvDu394WrVxbJDKlCWKRy5B98Te81pBE6Cdhxxsf/E+Gq9qmdZfmja
	kWyNrOSD/nSYSu5RA6Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmuV-0004Jt-Vj; Wed, 13 May 2020 08:38:40 +0000
Received: from mail-eopbgr30042.outbound.protection.outlook.com ([40.107.3.42]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmuN-0004JO-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:38:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SmH8WaOMNs8PYT1XuUQ60/zYNYTUcnFj37o6Pcf9EfZxBHgtpTw6xMuZ4FxzzHXeFGaZADmwKvF+5K/NqrkAxdCqziuiKC6rnWAIwyjG+7rdlCQlnD375ofkpYjkvIXxqq+ljRHvkbv7r4QQBPxufemwZz1KVmJWHnKkgX4J+qUTQANfEa5sMKbGL9jjtwUBmiH4GZXmjyAHjJn5tLRz6IpTHW97uZKBNmezvvkUy7nDneKrtIBvMj1EqqUxsmSbofd5ouVOI6jtPzNu9gloiutUTcGPya4h6WC4NdQDJ8/VawZI0WRj7WHuPPWnGfVMTPvt2J52Qm9BemJRTAZCEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TL9yJhR9Y2wElyXPT1hZMdTQWY9hm5+xUAJ+GWDTE4s=;
 b=PzXbg8MTVJCjzoue8xCDlk+Fn5Box8Av0g/cF7AEc0V7GrUK9njyUOML+nabRG2lMvBGglqSqiRGOklaJbv6FuLpKdxtqBaOSfWe0UKpWJB8uW7YMEAKEWnhya/dbx7Y8/PT4F1n042lS1TqwN7k3k7THU3lzGpcF1gxaBZWAqvFgLvUK+CFu60CxEB76GL1KbULLa0IvsUOXA1fbRfsnhT1+4QfJDrVDZ9I7n/eE0hu+9yuVm00TVN/JPzxThuVIxoSdIQZVWcZMfpDZ0rzeXzLGRsl2bc0+yjt5mGZlIBjsQAm+Y5BAtWSSzlO2S0Jsl5YjW6zcGUxn+xbAsL/hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TL9yJhR9Y2wElyXPT1hZMdTQWY9hm5+xUAJ+GWDTE4s=;
 b=kqaYSwQkW6fc+HGvkbnwSPygPUYp/ZgJHLAUMIPzKfNhwPkDBUn0ym2lLGab0s6gZwIrXICRZQ7gQz2bkAKK66yecbplViddbBXcjbkRCDseMUHZDGFbFetiBRbYg6wR3Fbm/fl/eUyWLjAfa23F0k/7ewmWFIrVtfaC1DQg3l4=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6416.eurprd04.prod.outlook.com (2603:10a6:803:12a::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Wed, 13 May
 2020 08:38:26 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 08:38:26 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Topic: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Index: AQHWJ3cnZ0DWmxBZKkqSbDLRijv4Zqiln1IAgAATtwA=
Date: Wed, 13 May 2020 08:38:26 +0000
Message-ID: <VE1PR04MB6638F5096376BA0AF204C64189BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513072132.GL5877@pengutronix.de>
In-Reply-To: <20200513072132.GL5877@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3cddd13e-d9af-4a89-9b1c-08d7f7190163
x-ms-traffictypediagnostic: VE1PR04MB6416:|VE1PR04MB6416:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6416D0459DBE9A7C29986DF089BF0@VE1PR04MB6416.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4pEO/apa3tRHSlVdc88o4UaVkNYvrCzrVAtSphtBzC3B8itWKRV3V/ERk+X0S5JuZwlPPtOWenbqnuRzRmchPCTZHtdA7eNe3NKO0pL7cbaOWDdIURa702Wca14z3emJMkxlhZXhI4W630drRfg85UukJHfbDl8UAIZmKxrnlCXxT4m1iGs/xjmdzvzcCX6tlxKfsz21mzuuz4mnv9Pigr4V3vvjRnJqTtuYTfpQvGmzRQrC4DBOO+HtZY1lB8jcQk4LVID6y+739gx8C8QFmOVrnY+/S/tsr+TChXU4YkyGDDd1aU1ByQyvKwxFbE0adKfdeZE5E1+mNA+Sw3CxUIXFv4QBZuMfjqGAnJ7XAJQhMuVGdioTFVCUnsQiBP/gVWiKD0Jp9NuUvj16miNKwqZRXNl19B2Xo/7sRFqhkqibIVHTheAD0Z25X2+GE/iYLt4NsnoHh1QNdzJDQcuYL1r1FAsRMj+WTBct1T/PNoU5J/PxiJhS9MyMRRhsiI9UI857av3O0Oir6lZGh/zmkNB00X3X5GFoY56+or6sp+g9Dcb6ybVt41wHQOQg1hXuu8Qkqt6g7wmwjYO+zwsfX/hYhHNlgoNnnOKtru+uDC4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(366004)(136003)(39860400002)(376002)(33430700001)(45080400002)(76116006)(7696005)(33440700001)(66946007)(966005)(66446008)(478600001)(66556008)(6506007)(4326008)(64756008)(66476007)(33656002)(52536014)(26005)(54906003)(9686003)(2906002)(8936002)(5660300002)(8676002)(316002)(6916009)(7416002)(186003)(55016002)(83080400001)(71200400001)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Yo6kpBTbN7TabHamGCFe3zCml0F5ACk0CMH6kPA5JNg1KtYUC87HVBBXMXW5qqjjElgnMr4W53lZaPLcM6aubKLW2JMHSPhP52mcj+iWLQ4tA1d2PGlDiMi7WW6S0ulDCjLtm6XN8ruXw/etuagEDLqs+mRxrOpDEKMQgBq3s+V1FXldcigCmGZlnhAWuj1vMTIK08Kur4bxLELErLTNo4LMWObkteYiFXddEXl/SgrkfHWAgr0m0q340HyX9f0enBu94cHz2djorq8ZcagNrIOa2Pt4mzmdVLJ+h6vYu04lswzCu7MNfFiLaqK//w6bXpVdpY66U9e2YZ9vJMMYZlXb+1J5pPPC2QIQBizsLW/JDLGkBkfyFJFONXGWzDhkEzr8paKwWjUj7vSjDcDTorL42Eqib/B9G8nRtVyj2vETWDMyXkUdYOUuR8q4vXGcYUtnX4Jn69nColBg+ozLxHbJTWGodnAZPLzmk/U9zXY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cddd13e-d9af-4a89-9b1c-08d7f7190163
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:38:26.4263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /6UcIDjavkMDFVa42XScF2QHJE+RjL39X9D+f/MlYmXECTDe8KU0QAtwTQSR6iNl2n4zGH2tn8LCWpyERhR9FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_013831_146203_261E0E63 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.42 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> This patch is the one bisecting will end up with when somebody uses an older
> SDMA firmware or the ROM scripts. It should have a better description what
> happens and what should be done about it.
Emm..That's true. Timeout will be caught in such case, hence, maybe we can fall back it to pio always.
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > Acked-by: Mark Brown <broonie@kernel.org>
> > ---
> >  drivers/spi/spi-imx.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > f4f28a4..70df8e6 100644
> > --- a/drivers/spi/spi-imx.c
> > +++ b/drivers/spi/spi-imx.c
> > @@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct
> spi_imx_data *spi_imx,
> >  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
> >  	spi_imx->spi_bus_clk = clk;
> >
> > -	if (spi_imx->usedma)
> > -		ctrl |= MX51_ECSPI_CTRL_SMC;
> > +	/* ERR009165: work in XHC mode as PIO */
> > +	ctrl &= ~MX51_ECSPI_CTRL_SMC;
> >
> >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> >
> > @@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data
> *spi_imx)
> >  	 * and enable DMA request.
> >  	 */
> >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > +		MX51_ECSPI_DMA_TX_WML(0) |
> >  		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
> >  		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
> >  		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
> @@ -1171,7
> > +1171,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
> >  	tx.direction = DMA_MEM_TO_DEV;
> >  	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
> >  	tx.dst_addr_width = buswidth;
> > -	tx.dst_maxburst = spi_imx->wml;
> > +	/*
> > +	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
> > +	 * to speed up fifo filling as possible.
> > +	 */
> > +	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> >  	ret = dmaengine_slave_config(master->dma_tx, &tx);
> >  	if (ret) {
> >  		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n",
> > ret); @@ -1265,10 +1269,6 @@ static int spi_imx_sdma_init(struct
> > device *dev, struct spi_imx_data *spi_imx,  {
> >  	int ret;
> >
> > -	/* use pio mode for i.mx6dl chip TKT238285 */
> > -	if (of_machine_is_compatible("fsl,imx6dl"))
> > -		return 0;
> > -
> >  	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;
> >
> >  	/* Prepare for TX DMA: */
> > --
> > 2.7.4
> >
> >
> 
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7C2f49309
> 819cc4c45418108d7f70e46fb%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> 7C1%7C637249513003506970&amp;sdata=RoLVnDaCfG20i88OmmlpbMH6lZu
> qqW2CJv4VSSDkPcM%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

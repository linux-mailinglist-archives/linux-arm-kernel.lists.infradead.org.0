Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0900617F227
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1T9YjMDz0uTJe6jMu+MQs0KjaGuiprcwn1TmXup+KU=; b=XDzllmBa9BtqKN
	zmFpYQr2NmhmjOeH+JS794N6XZdwc20btrYcvLeckrnUjCJwVak+8PSIl+EUOksqk7/yIymJnnbjE
	R3UTr2tMdQVPyWl8O/V/uf0O9oSchm9PYk0j6cAeud5RU7k0Q55mEYG4ToFVtTCLpmw7/in9IoyHo
	9OG+FjHQzmSyIHcRI0RbSzL3bGpwYeWQYGweQUUfUGfIkBTQ31x8abA+fZY+/ei5xWyrhZFlzw0PJ
	w7QOADpeuH/pW+uVQVtqXGb0jzGplVxP/8YX0wltzkzQD+5Th3OCrXtdW7Kn95X6/Kl4B0P/oi0Jc
	KH5U+IH9q/jcRUkypgcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaU0-00012n-AT; Tue, 10 Mar 2020 08:43:24 +0000
Received: from mail-eopbgr50079.outbound.protection.outlook.com ([40.107.5.79]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaTq-00012C-7Z
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:43:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=haHVO2di8NNLviFOo/SUP4qe830pgrhALXNyZUpkIfm0fksNNhxuSvOLWXLywtNxdPw38vXmRYyBE8UTY/0/30Wr8PmpLfNR2aVhueakFNcj3246S1ugGPPY8KK8Fog3pjIMmTeq+nIwG1NdTW9H3LosOFfrSzasyOc/hNJd6nDf6URIkGHx+Jfn4KvP8Ej/g1x0MU4R9oKMv9gtRL4SyEsj4UZHcwponNjqPO9jXGYmXktKplDUdYRPTAv9UqvuNqrR08nBt4RXPliheSaMtC46cyUgAoYmIhuSyajaCYC0QzQ3GvxrZGMQzinjImK1U/Mrafw9EeFbp9QiF5CLcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pnfkJ/k4wd00NZOVQx8YQu1E7BMnrnwcruoNVQQZJZY=;
 b=IaXAtkG5rAaXqzDPWQ7pbZDMLhhe2Xn8wbR776830FsfwbjY4mrokt3LoaEu78DSyaT2AoiQOvLcgIIb5qsyGvyEvHb2ZOljng9LestH92A/pFY77MAer0qsNp0sdmSFzVNUmg+gmo/7/o5JKHnW0Ucnc8IILNbzcKnRp/3WhSiFQ/ZrViqGhyxQwlYhxEiadEM3rhHCHQKdUSEb3A7w5laM5ycmZvxMqVoZH6p9mk9TfkOBpSdKOcwXRqBxnmYBXyKex2DqzgNYUjX2/gG1rJpK2ywr08Yb8aMUlA5aXGEHsDyC1S5A+t8dX8DWARhhrC8r/ZKIxDmvqSFyg9Ju3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pnfkJ/k4wd00NZOVQx8YQu1E7BMnrnwcruoNVQQZJZY=;
 b=ienBFuE/FLne81Z+fRSHMgQ3n9Krd5ZXMjx3VoRXDtd+frNitNQTMlnvb3tOU7HFtqMJQN9VmbrA1X9AUXPH/lEZrolnoU2Ie8zUdaMIuP6jB3tXrax/hJyPtXxWosCbp/pOCQVf13oLNI2du/bpwH5FNzrd9ky+xT9joyt+XOY=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6557.eurprd04.prod.outlook.com (10.255.118.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Tue, 10 Mar 2020 08:43:10 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 08:43:10 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Thread-Topic: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Thread-Index: AQHV9oxbuHZ2XTzKaki/DoqL8Pfb26hBd3KAgAAG/XA=
Date: Tue, 10 Mar 2020 08:43:10 +0000
Message-ID: <VE1PR04MB66384342F94C7B789C980F7A89FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-8-git-send-email-yibin.gong@nxp.com>
 <20200310080240.GS3335@pengutronix.de>
In-Reply-To: <20200310080240.GS3335@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ffb03ec-75d1-4e46-b110-08d7c4cf106d
x-ms-traffictypediagnostic: VE1PR04MB6557:|VE1PR04MB6557:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6557128EB05EF1307B00E38689FF0@VE1PR04MB6557.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(189003)(199004)(66476007)(66446008)(64756008)(66556008)(76116006)(52536014)(71200400001)(966005)(4326008)(478600001)(45080400002)(55016002)(33656002)(81156014)(81166006)(8676002)(6916009)(26005)(186003)(5660300002)(8936002)(7696005)(9686003)(66946007)(2906002)(6506007)(86362001)(316002)(54906003)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6557;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KAzY0N/PnvGehHrVUWf/7HAGmq44LEGa8icUGBqbQ26G2Vq5Kl7TGFXURfxIbK5nrMpwTKspSeT5gmT50WsJLWkR2dxIgcsdXKso/sa5fi+rxk+cFEKvKZlDsHvDmnzI71Pg5Xv52TqMHs38B2pSHr7YEW8TYwnNz0xTOxA38AuIDgqxgihbldKqqewDqD0IoGIbzUEDbHmxwvL0UL9ZRCVtmRVq4AWBkK4CBT4egj3C8iAOavsNUqiqQ3aojIoWc0CgMrk6I+3oUCfdnvXjr1nna4nrSwVBd4u94fDj5DpjLZ4PJiXJis+kzjDNCSctJf3VJ1F61XviA7mQxRXToG7wvxoBKdR8zEB/63PEbtfZoFwFNq0n0t6iAoVEZpClaYOetczLS3vY1uM6LuBCFXDOv3pSTTvUfMlyCMKz70OjglOgx4sF3s/FeR15Ux4tWVqQTTWAnjeOz34b2lXMej121cSZG6JE20vKPxp8TUa+E1lGVHyGLtQFQeVxbmu64PK+tveddzpiEEC2C182KQ==
x-ms-exchange-antispam-messagedata: qsHgGtntmm4vaFNAPyIlCPsyORvqoRl2HW8SkUsmfPDZa7umhX0EwN3Mga8ypgtfMjVL8ygwSI2/EAZXLs7Inp5S0etyxM1VYDSJc7zMFBhzDZs6C9UohCw+4B0N1LKjMz+2JVMdn+ntRDhuIHB2Yw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ffb03ec-75d1-4e46-b110-08d7c4cf106d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 08:43:10.6164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s2W28q8n/ADKJe9OtRwJAg7ptaP6U5HJ/pdPphHk0PKi2zx/8FgonQc9ElJkQCor0vZkNAOlmJTdM0ZCBKeUig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_014314_375529_906A037F 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
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

On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Mar 10, 2020 at 07:31:56PM +0800, Robin Gong wrote:
> > ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and i.mx8m/8mm
> > still need this errata. Please refer to nxp official errata document
> > from
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nx
> p.com%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Cf73bfc11a68c4
> 2f5f6d308d7c4c96efa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C
> 637194241755109112&amp;sdata=xzIUP8qZkrlDXX0yjTcUNZB6zDrevTdHFg1o4
> PZZd8E%3D&amp;reserved=0 .
> >
> > For removing workaround on those chips. Add new i.mx6ul type.
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > Acked-by: Mark Brown <broonie@kernel.org>
> > ---
> >  drivers/spi/spi-imx.c | 50
> > +++++++++++++++++++++++++++++++++++++++++++++-----
> >  1 file changed, 45 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > 842a86e..f7ee2ec 100644
> > --- a/drivers/spi/spi-imx.c
> > +++ b/drivers/spi/spi-imx.c
> > @@ -57,6 +57,7 @@ enum spi_imx_devtype {
> >  	IMX35_CSPI,	/* CSPI on all i.mx except above */
> >  	IMX51_ECSPI,	/* ECSPI on i.mx51 */
> >  	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
> > +	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
> >  };
> >
> >  struct spi_imx_data;
> > @@ -75,6 +76,11 @@ struct spi_imx_devtype_data {
> >  	bool has_slavemode;
> >  	unsigned int fifo_size;
> >  	bool dynamic_burst;
> > +	/*
> > +	 * ERR009165 fixed or not:
> > +	 *
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nx
> p.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7Cyi
> bin.gong%40nxp.com%7Cf73bfc11a68c42f5f6d308d7c4c96efa%7C686ea1d3bc
> 2b4c6fa92cd99c5c301635%7C0%7C1%7C637194241755109112&amp;sdata=m
> uw4HL5nMDjREJwVd885Wrxka0moMaaZ%2BhJgsAgY3eo%3D&amp;reserved=
> 0
> > +	 */
> > +	bool tx_glitch_fixed;
> >  	enum spi_imx_devtype devtype;
> >  };
> >
> > @@ -128,7 +134,8 @@ static inline int is_imx35_cspi(struct
> > spi_imx_data *d)
> >
> >  static inline int is_imx51_ecspi(struct spi_imx_data *d)  {
> > -	return d->devtype_data->devtype == IMX51_ECSPI;
> > +	return d->devtype_data->devtype == IMX51_ECSPI ||
> > +	       d->devtype_data->devtype == IMX6UL_ECSPI;
> >  }
> 
> Erm, no. A i.MX51 ECSPI is a i.MX51 ECSPI and not a i.MX6UL ECSPI. If you want
> to handle them equally somewhere then explicitly test for i.MX6ul *and*
> i.MX51 there.
But all i.mx6 chips including i.MX53 ECSPI are almost same as i.MX51 ECSPI, and ERR00915 is fixed from i.mx6ul....
> 
> >
> >  static inline int is_imx53_ecspi(struct spi_imx_data *d) @@ -585,9
> > +592,16 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data
> *spi_imx,
> >  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
> >  	spi_imx->spi_bus_clk = clk;
> >
> > -	/* ERR009165: work in XHC mode as PIO */
> > -	if (spi_imx->usedma)
> > -		ctrl &= ~MX51_ECSPI_CTRL_SMC;
> > +	/*
> > +	 * ERR009165: work in XHC mode instead of SMC as PIO on the chips
> > +	 * before i.mx6ul.
> > +	 */
> > +	if (spi_imx->usedma) {
> > +		if (spi_imx->devtype_data->tx_glitch_fixed)
> > +			ctrl |= MX51_ECSPI_CTRL_SMC;
> > +		else
> > +			ctrl &= ~MX51_ECSPI_CTRL_SMC;
> > +	}
> 
> Changed again, but the PIO case still not honoured. This should look like
> 	if (spi_imx->usedma && spi_imx->devtype_data->tx_glitch_fixed)
> 		ctrl |= MX51_ECSPI_CTRL_SMC;
> 	else
> 		ctrl &= ~MX51_ECSPI_CTRL_SMC;
> 
Okay, will fix in v7.
> >
> >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> >
> > @@ -615,6 +629,8 @@ static void mx51_setup_wml(struct spi_imx_data
> > *spi_imx)  {
> >  	u32 tx_wml = 0;
> >
> > +	if (spi_imx->devtype_data->tx_glitch_fixed)
> > +		tx_wml = spi_imx->wml;
> 
> That explains the variable introduced in the last patch, ok.
> 
> I have the impression that splitting up 06/13 and 07/13 into two patches
> doesn't make it easier to review.
But 06 is a errata for all i.mx6 legacy chips, while 07 is for i.mx6ul and newer chips which have been already fixed the HW issue. I think two patches are better.  
> 
> Sascha
> 
> 
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Cf73bfc11
> a68c42f5f6d308d7c4c96efa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7
> C1%7C637194241755114106&amp;sdata=DKe%2B2SynMv%2Be3rMBrO79ou6
> 5ADTwO03KRT%2FqsDbCWjc%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

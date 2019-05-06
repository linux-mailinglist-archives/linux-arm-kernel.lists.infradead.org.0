Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB75146A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMpTnCyP5emK5+J+8Y+AwOg/2suhVozwFuMd0pLmnKQ=; b=rE6BP38xFFD7E7
	TEz5t/vXGlBr8JosbBCq0wA+ktt3mqapnkXcL5c1rr9ojG3xVzoN77WYMAfoq1/EQ16wtcNbfH8wR
	kHbfdpvc4YptF7ns2vvZzdRTtcCDVBfvchdq68AJI6tF4t7tX+bktqTjFqdvtZcaAClOlqWwqcW94
	jG6LlccdVa9i0LdfdwVP665j87b+k/T3c4d62ybKGNwUmpB+uM0+all+GSlFi4qD7ncanUDUjnupX
	UJL92jfBPm2VXav53d9+jE8BNX1b8Fs40zPgnvol9+IAVWtChsZYbLEA48gCyg2KB6VubGYap+VXB
	rI45gb46ajhZUd9SyD6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZFk-0006ic-9n; Mon, 06 May 2019 08:45:40 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZFb-0006i1-79
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yhqinn/fTkT2CCk6OS8uqagWWGsSiQ0BvrKZJyrhaKs=;
 b=pPMMgfgtCz5JJdbfUk88q3r3ESup/OPSpcnOcDYks8Iqg6EML4hvgbAZLYKCP1/M8bA+mwSze5Cd54Q2yHKEuCYXDaqJvFa56m44oylmpT9/ujG/TpOnL3i3lcwPsq43KjoWnxqRqarcR0/zd7Ervg2Xgu+0pDXXI6xbc/sgYJk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5956.eurprd04.prod.outlook.com (20.178.113.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 08:45:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:45:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVA0ZmyuV26b+HdU+wzmbIrs3FtKZdxl6AgAACjxA=
Date: Mon, 6 May 2019 08:45:27 +0000
Message-ID: <AM0PR04MB44819A6FA84A71ED01CC9C4E88300@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
 <20190505134130.28071-2-peng.fan@nxp.com>
 <AM0PR04MB421139D3806F75ED9426C8DB80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB421139D3806F75ED9426C8DB80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1dee24b2-5fd9-4ab2-cc8b-08d6d1ff3054
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5956; 
x-ms-traffictypediagnostic: AM0PR04MB5956:
x-microsoft-antispam-prvs: <AM0PR04MB5956B6CBF9E0531EAEA7C57488300@AM0PR04MB5956.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(199004)(189003)(2201001)(68736007)(2906002)(33656002)(7736002)(110136005)(316002)(54906003)(53936002)(11346002)(446003)(8936002)(476003)(86362001)(81156014)(81166006)(7696005)(76176011)(53546011)(102836004)(486006)(6506007)(44832011)(26005)(478600001)(99286004)(8676002)(2501003)(186003)(4326008)(6436002)(66446008)(66066001)(66476007)(74316002)(66556008)(64756008)(229853002)(256004)(14444005)(25786009)(52536014)(305945005)(14454004)(6246003)(5660300002)(71190400001)(71200400001)(55016002)(7416002)(3846002)(6116002)(73956011)(66946007)(9686003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5956;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FYOzvaaQyjkKb15ktyq94j3Rz5cT03yfaXl25s+jk+EGH/7MvQmi5YE+PKMtr2eGnJXYIeALu1ken6sW8FQLk8xapnwIi/m3LkAgbxFysbJ8hS7lcSmJ2212KbDEbVBaM9MATsOeNNuIk59gEOFslJ6cfTfCOanNuYZsto6+MuJ6K/Nus2Bavi8PM7zpaKwJILeXL3K9Z8udEkG+wMeVFdgGlgc0hTKwnQ4Nz4C2Oa5WBDlzmWwFTjOV1oa9dMJyAOwc5bAR/Vcs4fE4QvK3H0cNY/f4W2AwvUUrdLkbBah2NjxSXBH4J7feIp36+p4v3jDTKFrMneB/jqYu+0HWaWhoSU61SeI5IWANvL2BfmabUwxXsbyoWfep44R73rtsjzGSUzZVKMzcP4/3zJFTLMd9iHjYnUuT8QBiBlSbu4s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dee24b2-5fd9-4ab2-cc8b-08d6d1ff3054
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:45:27.5974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_014531_265321_1D12DEDD 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Aisheng,

> Subject: RE: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
> 
> > From: Peng Fan
> > Sent: Sunday, May 5, 2019 9:28 PM
> > Subject: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
> >
> > This patch adds i.MX8 nvmem ocotp driver to access fuse via RPC to
> > i.MX8 system controller.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Only a few minor comments.
> Otherwise, this patch looks good to me.
> 
> First, the patch title probably better to be:
> nvmem: imx: add i.MX8 SCU based ocotp driver support

Fix in V2.

> 
> > Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >  drivers/nvmem/Kconfig         |   7 +++
> >  drivers/nvmem/Makefile        |   2 +
> >  drivers/nvmem/imx-ocotp-scu.c | 135
> > ++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 144 insertions(+)
> >  create mode 100644 drivers/nvmem/imx-ocotp-scu.c
> >
> > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig index
> > 530d570724c9..0e705c04bd8c 100644
> > --- a/drivers/nvmem/Kconfig
> > +++ b/drivers/nvmem/Kconfig
> > @@ -36,6 +36,13 @@ config NVMEM_IMX_OCOTP
> >  	  This driver can also be built as a module. If so, the module
> >  	  will be called nvmem-imx-ocotp.
> >
> > +config NVMEM_IMX_OCOTP_SCU
> > +	tristate "i.MX8 On-Chip OTP Controller support"
> 
> i.MX8 SCU On-Chip OTP Controller support
Fix in V2
> 
> > +	depends on IMX_SCU
> > +	help
> > +	  This is a driver for the On-Chip OTP Controller (OCOTP)
> 
> SCU On-Chip OTP
Fix in V2.
> 
> > +	  available on i.MX8 SoCs.
> > +
[.....]

> > +
> > +static int imx_scu_ocotp_read(void *context, unsigned int offset,
> > +			      void *val, size_t bytes)
> > +{
> > +	struct ocotp_priv *priv = context;
> > +	u32 count, index, num_bytes;
> > +	u8 *buf, *p;
> 
> It seems buf has never been used as u8.
> So probably a better way is:
> U32 *buf;
> Void *p.
> Then we can save all the explicit conversion of u32.

Fix in V2.

> 
> > +	int i, ret;
> > +
> > +	index = offset >> 2;
> > +	num_bytes = round_up((offset % 4) + bytes, 4);
> > +	count = num_bytes >> 2;
> > +
> > +	if (count > (priv->data->nregs - index))
> > +		count = priv->data->nregs - index;
> > +
> > +	p = kzalloc(num_bytes, GFP_KERNEL);
> > +	if (!p)
> > +		return -ENOMEM;
> > +
> > +	buf = p;
> > +
> > +	for (i = index; i < (index + count); i++) {
> > +		if (priv->data->devtype == IMX8QXP) {
> > +			if ((i > 271) && (i < 544)) {
> > +				*(u32 *)buf = 0;
> > +				buf += 4;
> > +				continue;
> > +			}
> > +		}
> > +
> > +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i,
> > +						(u32 *)buf);
> 
> Is this API already in kernel?

Ah. I forgot to post out that API in this patchset. Will add that in V2.

[....]
> > +
> > +MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
> > +MODULE_DESCRIPTION("i.MX8QM OCOTP fuse box driver");
> 
> i.MX8 SCU OCOTP fuse box driver

Fix in V2.

Thanks,
Peng.

> 
> Regards
> Dong Aisheng
> 
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

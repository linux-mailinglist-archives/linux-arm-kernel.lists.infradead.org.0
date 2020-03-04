Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC38178968
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 05:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kw2L7NBu9k/fLAnlvCeQFee3c0fQlmX/u3WQzhLlWHM=; b=CcxNGGG44ZOvRv
	BFUf7MWL9lq3jyKwYgCEFCwJ98zzrK63e0MUSYbS34ZiE4/ewHPXw5yW6FPAjB8fpdDwD9OR7iATt
	laM/S5m21PjfWWpd+Ix6womuHh5xjp9dec+/pg1zr4uDaAB424uAUT0kPavajFRIpsKpvpsjQ+/fF
	lDfi+k6CVM+qoSOMV3B1Eag5fqBvOxtPRL32TVEjnuOCPYzmwSGps+x/exdM9DXgS2wMXA8OnrXmM
	6jWoTZZJSBC3BtYtfkEphnBpRoKUB3BzjdRXPVCPIo9aNwBOSC1e9gWZlK0lzM9tC+A1Xavy7t43u
	GrJQxXvmuJjw27kanthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9LPM-0000OF-TQ; Wed, 04 Mar 2020 04:13:20 +0000
Received: from mail-eopbgr00055.outbound.protection.outlook.com ([40.107.0.55]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9LPC-0000NJ-8v
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 04:13:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQDu9qa4n/IpwNs4B9NsbaDvnZ/J9WS7LTGSOgo1cqDGAJM4CLaEbwtUT7ljFzdxNRe6PepHEyMbdIlAJwArPiT4+/JEN5QTpyQjkUOrtP0q/MUsDmnsUAcJyiW3paCy/1X1UZDRd/8dO/oOqY91wYqrdIqexJGOeezve6um6mXB7pzVFIij481m/lp9MEXEblI6uJXhl4CPm3YQToVJRZWy1mu3vNk5/l5rjn3I8x32aDElZ/Qk0o1feKTbu8aoxEIRdwlgTa6HjW3zqi5alG9SelAv4BJu4+nGxY1IYlXkin72pSGFqoJG7Qinj1dZHBXlnsf6ATwg2KQO1kBpHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTRoE4lltFzufIfyV2KOZuDWYZEZS59gl/NdWZXpfMQ=;
 b=MKDfC3Q3wBmhuAD0Djd8ykJN2J0sYSb/oUixQIuvyGfTd9lpR13pX5H6KHCde4GNhCKKnDGfCkP11eaP6jhRm+yxqBGwR6CJsgc6SIlcLTe22JDfM3C0M+KZ3c04wEhkvvRuBLtEilsD4PW+i44zzSWFjCnh/60sPwDtdebE7bvT1Ugq0WFchLiEfjov8YmpBvRTYJZkkq/vVSylxveBtzZVUvu64iE/FBbt+twLHQbiwL0aoXRiLl/mhYrOX2RR5nxDsqHCRCGsBaazIPKeXOVWDm1cBv0NmJrxLwIKffhIA+1CLE1oNJoh6jXhD4JhCf/fctPOLK8IzWUDV5ZnzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTRoE4lltFzufIfyV2KOZuDWYZEZS59gl/NdWZXpfMQ=;
 b=EbuVYYZpR+Yn/z94dCFxN/CLU1Nr9zutEkBh13fuZ2kPHueQVjReWmupBROpTFIwWzgDGPoq3h7sePupwbHgDQ44MO/M/5Z2wkyeYtUHSdQhQaQx5JoH7TGSRjBZhh5ukqte7LiwuxaG8prAe6l6AoDrYazoBHGZj+/4aTcqTg8=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5308.eurprd04.prod.outlook.com (20.176.235.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Wed, 4 Mar 2020 04:13:03 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::85a4:256:671:705d]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::85a4:256:671:705d%4]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 04:13:03 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [v6] i2c: imx: support slave mode for imx I2C driver
Thread-Topic: [EXT] Re: [v6] i2c: imx: support slave mode for imx I2C driver
Thread-Index: AQHVqc+jQ6SBbHZv70GSkQhd1Ae4kKepv5SAgAGvTQCAjPNQoA==
Date: Wed, 4 Mar 2020 04:13:03 +0000
Message-ID: <DB7PR04MB4490D8434B77DE285A9518448FE50@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20191203114809.21226-1-biwen.li@nxp.com>
 <20191204100005.r56huywxa7h3c6zr@pengutronix.de>
 <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
In-Reply-To: <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a17cfa81-a22e-4ad7-dbbc-08d7bff255bf
x-ms-traffictypediagnostic: DB7PR04MB5308:|DB7PR04MB5308:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5308A9E5D48CA7F9F34BCC7D8FE50@DB7PR04MB5308.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0332AACBC3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(136003)(346002)(376002)(366004)(39860400002)(396003)(199004)(189003)(26005)(186003)(316002)(44832011)(33656002)(71200400001)(55016002)(86362001)(66556008)(4326008)(5660300002)(52536014)(81156014)(64756008)(2906002)(66446008)(81166006)(8676002)(9686003)(66946007)(53546011)(478600001)(66476007)(8936002)(54906003)(76116006)(7696005)(6506007)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5308;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1GXLghqyGAZ57y/r+2g++cGWswsXw++pLuYb5mVeVASAbMe7cFrErGUqznNqVQaE1KD9XZssKVva/vkWdsx9QmrmCjl4M2tGz2C87z46hdPv2y7OZdZHSS0W7PXp0DDCnXt+gAx//JD3mGMitdIMs3VBaEpXA1WDOdSZBj5jB+7iSzApAw1H04QNMjpWW6Ogon0KnWkj/2TxHdijbIfvsp8hxXxDLlO8VBhu895agdepfavQrE+/KZ5NttstlOmiIyxm5zQ5mM46usHfFKfVpU3SPT7JcDGdYfWmEs2N8M9GxXhPNxLzkEUkba29hnUjs5y0vn+NQPLeNa8Z6LGjpFj/vBmq33CdvTrgvSSMzmPZhbiqcs1bSgq+0+Ge3SI6yNzhN73snDZj1ZfBaN3IZT/qT6gbGCgZZtqRME1X5DLHSTnhCgfvWk78Gk4dtNfjuMIm/kkdZXD/4AArZbytFu9iZ/1lDa1Rz05oCwSIcN1tqekUejXUH2GMG5VgpC8uI0Us4897Znq2S/ikggXF+myh+Bu3rypYcpOVOPkcrCmI9E1n+qEsx+askGnLkEachkHhOCN+JccOGfodf/TzAPs8tT8wXkciniBujnS7MwOgeOQhyfBrTwTPR8ThxB5Y
x-ms-exchange-antispam-messagedata: qcmNN2JVtZVOSNLukCN6JTzmB9TLJNumHZnltQu9aY+fNKL7yWBZ7VQxO/3WfI9DaYw9e7+10XHOHK/peoB6Ch2dv5f8WK1GEk14NEgqB6VE8FHSTxXvn58up8B2NBZBUecYBNFegQPOsB3O1skIMw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a17cfa81-a22e-4ad7-dbbc-08d7bff255bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2020 04:13:03.6243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wHJ6e8YrY/k09bb+sUxUzbhBY3mrHnaLUsY8SF1HcQfK+qo5IBZR1ds1fRyBelZjKWqxKPLZT8QAKx9e43O7Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_201310_415233_89CF562A 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 Leo Li <leoyang.li@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Jiafei Pan <jiafei.pan@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

Any comments?

Best Regards,
Biwen Li

> 
> Hi,
> 
> On 04.12.19 11:00, Sascha Hauer wrote:
> > Hi,
> >
> > The patch looks ok to me now, but I still do not like the #ifdeffery
> > around CONFIG_I2C_SLAVE. With the patch I just sent (You are on Cc:)
> > we could apply the following on your patch which makes it more
> > readable and increases compile coverage.
> >
> > Wolfram, Biwen, what do you think?
> 
> 
> RCAR depends on slave:
> config I2C_RCAR
> 
>          tristate "Renesas R-Car I2C Controller"
> 
>          depends on ARCH_RENESAS || COMPILE_TEST
> 
>          select I2C_SLAVE
> see:
> drivers/i2c/busses/i2c-rcar.c
> 
> So, I would suggest to do the same in imx.
> 
> So far, I tested this patch on iMX6S. It works in one board (i2c-gpio + i2c-imx)
> and two board (i2c-imx + i2c-imx) configuration.
> Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> 
> >
> > Sascha
> >
> > ---------------------------8<------------------------------
> >
> >  From 52f7c2bf59db61d4b27b59ca6404136e3ed77310 Mon Sep 17
> 00:00:00
> > 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Wed, 4 Dec 2019 10:56:34 +0100
> > Subject: [PATCH] fixup! i2c: imx: support slave mode for imx I2C
> > driver
> >
> > ---
> >   drivers/i2c/busses/i2c-imx.c | 21 ++++++++++-----------
> >   1 file changed, 10 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-imx.c
> > b/drivers/i2c/busses/i2c-imx.c index 40ccfca600bf..c5d9ae8226cd 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -203,9 +203,7 @@ struct imx_i2c_struct {
> >       struct pinctrl_state *pinctrl_pins_gpio;
> >
> >       struct imx_i2c_dma      *dma;
> > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> >       struct i2c_client       *slave;
> > -#endif
> >   };
> >
> >   static const struct imx_i2c_hwdata imx1_i2c_hwdata = { @@ -913,12
> > +911,10 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >
> >       dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> >
> > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> >       if (i2c_imx->slave) {
> >               dev_err(&i2c_imx->adapter.dev, "Please not do operations
> of master mode in slave mode");
> >               return -EBUSY;
> >       }
> > -#endif
> >
> >       result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> >       if (result < 0)
> > @@ -1068,7 +1064,6 @@ static u32 i2c_imx_func(struct i2c_adapter
> *adapter)
> >               | I2C_FUNC_SMBUS_READ_BLOCK_DATA;
> >   }
> >
> > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> >   static int i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
> >   {
> >       int temp;
> > @@ -1159,6 +1154,10 @@ static int i2c_imx_reg_slave(struct i2c_client
> *client)
> >   {
> >       struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> >       int ret;
> > +
> > +     if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> > +             return -EINVAL;
> > +
> >       if (i2c_imx->slave)
> >               return -EBUSY;
> >
> > @@ -1173,6 +1172,9 @@ static int i2c_imx_unreg_slave(struct i2c_client
> *client)
> >   {
> >       struct imx_i2c_struct *i2c_imx =
> > i2c_get_adapdata(client->adapter);
> >
> > +     if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> > +             return -EINVAL;
> > +
> >       if (!i2c_imx->slave)
> >               return -EINVAL;
> >
> > @@ -1188,15 +1190,12 @@ static int i2c_imx_unreg_slave(struct
> > i2c_client *client)
> >
> >       return 0;
> >   }
> > -#endif
> >
> >   static const struct i2c_algorithm i2c_imx_algo = {
> >       .master_xfer    = i2c_imx_xfer,
> >       .functionality  = i2c_imx_func,
> > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> >       .reg_slave      = i2c_imx_reg_slave,
> >       .unreg_slave    = i2c_imx_unreg_slave,
> > -#endif
> >   };
> >
> >   static irqreturn_t i2c_imx_isr(int irq, void *dev_id) @@ -1208,10
> > +1207,10 @@ static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> >
> >       if (status & I2SR_IIF) {
> >               i2c_imx_clr_if_bit(status, i2c_imx); -#if
> > IS_ENABLED(CONFIG_I2C_SLAVE)
> > -             if (i2c_imx->slave)
> > +
> > +             if (IS_ENABLED(CONFIG_I2C_SLAVE) && i2c_imx->slave)
> >                       return i2c_imx_slave_isr(i2c_imx); -#endif
> > +
> >               i2c_imx->i2csr = status;
> >               return i2c_imx_master_isr(i2c_imx);
> >       }
> >
> 
> Kind regards,
> Oleksij Rempel
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7C2374a
> 486922f4625717e08d779786b2f%7C686ea1d3bc2b4c6fa92cd99c5c30163
> 5%7C0%7C0%7C637111430406497837&amp;sdata=fiW0xphV%2FFRLNU3x
> xYaU6qzAyiydVfJwiHc5Xu%2BcvCQ%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC4F178AFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 07:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJEPltm8L36uaeCwMKWJc/G5BmfRig7zHAvX6hvRYBY=; b=q3YxqsqkvNlxRB
	a+YppTW4jl9DGtC3KgJcBH9vwOI8EdcK1kqqgca3EXwwLr4Dte5wv4W5NlahQ3Z42w9mJX0dqjLuC
	qG305vlV26dDqpYa2Ai4F1xZxQeV4jTkyrrZnQtB/GhcioaJSKJ2OgJOrJDrst2WQQwwgobWyr0Pc
	lcsilwL6R84aqAJDyoVKEq15ka2F/xNpMgQXIKsNMQ+/b6FY9CtOAa8WxKUYQs+yhSNFJ5PxAodo5
	7y2pCs5VUrU/jjz9Eu7DhyHy/d2oRO0ht+4CfZjK8VK9/6G/iaeSnETIK8a4M7EJ1f5RZnLdP/+Xw
	F4DNhhXjZJZEn5kR2KFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Nv9-0001qe-10; Wed, 04 Mar 2020 06:54:19 +0000
Received: from mail-db8eur05on2065.outbound.protection.outlook.com
 ([40.107.20.65] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Nv0-0001qB-Nc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 06:54:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYq5nNr6SKAZklYHOycGPH71/uMKuE+xOJaHc+NZleExSr8jhXLjxitiHVQZyMV72Nf67JSQuOXM7wL6Pnv3tqpbXOw2rNVdr7htByh4omea357DhZolz27LBUoGYmwOlcvSU+XtsWWqVvEPDCGMnkVsEgHIsezMX8QOHPcp9yR+2vZEOdGxQqlNtYCP/lh9yaaXMdHgXi+R2otc4OwJ/+K4FWO398YVrzSmo8PIhVcdsOYJbXDtE+IXQu0yNWC3ogauo8blszLwbRgXl0Yb3Vi/bjE8PIadq1oecSg9kJO9RGKqNTLKROWYnQ72ezZkgqqGOC6CrOEW3LjqAecwQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqn64LkHcz3WLjdI68cq5ydoDUna3l0UBLeBX6Nj+BA=;
 b=RCdLYCCHggJnE9Q3S9nxELIfDXVEdRbblrGu6wHJXXXSXWOYQd9sU2SCtQTJFfKpblxT8HoR2Bu/9EYTXQTXVQ6OgJUYiwFeox9xqoC3LiBn/vh+RBstgvy6hH06agkjvqHsIjQRKNZ5Z2Tll0rYEJxKcFBZQVz18j8j72CLLEeaeOzuxMlsKv4efhpfshSCbeffM1P1pEqC6Ux6LsEFZ6SqUpeChQ7AUE0GnSrKdJ1V8j6/zzqwOH6ZdoZfXsYraUsmds3KFxhc7Dkpe+zrwwg1M0qbcvQIN5yOY1UqS1wyn7MFs684U10qtp9wrfS2b9WKBfduMLT2vFihw5XAeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqn64LkHcz3WLjdI68cq5ydoDUna3l0UBLeBX6Nj+BA=;
 b=nkZvycSDLnpn8kZQYofZToAEt+ttLGahLe55CkQwUFeGY+p5BMhn1nFes11VLjWuZhW7Oke6ZudujRLefOjV403l79BcVIzmnIcL6wO4qTq81MODLChqGfHu5AdN74ouaa8qO0FTYq5Qx7SnOqHVspM6DE12KyTC9f7g7s/AbYc=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5033.eurprd04.prod.outlook.com (20.176.233.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Wed, 4 Mar 2020 06:54:08 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::85a4:256:671:705d]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::85a4:256:671:705d%4]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 06:54:08 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: RE: [EXT] Re: [v6] i2c: imx: support slave mode for imx I2C driver
Thread-Topic: [EXT] Re: [v6] i2c: imx: support slave mode for imx I2C driver
Thread-Index: AQHVqc+jQ6SBbHZv70GSkQhd1Ae4kKepv5SAgAGvTQCAjPNQoIAAFAKAgAAQB3A=
Date: Wed, 4 Mar 2020 06:54:08 +0000
Message-ID: <DB7PR04MB44909B54E4760B88071C5B128FE50@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20191203114809.21226-1-biwen.li@nxp.com>
 <20191204100005.r56huywxa7h3c6zr@pengutronix.de>
 <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
 <DB7PR04MB4490D8434B77DE285A9518448FE50@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <20200304052235.mvpjqa2u56joew3r@pengutronix.de>
In-Reply-To: <20200304052235.mvpjqa2u56joew3r@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7af6944f-0bcc-4474-ff30-08d7c008d636
x-ms-traffictypediagnostic: DB7PR04MB5033:|DB7PR04MB5033:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB503322262517CB0134E15F868FE50@DB7PR04MB5033.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0332AACBC3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(189003)(199004)(478600001)(52536014)(44832011)(5660300002)(4326008)(86362001)(2906002)(71200400001)(6506007)(6916009)(9686003)(53546011)(66446008)(8936002)(64756008)(54906003)(8676002)(66476007)(33656002)(81156014)(66556008)(316002)(26005)(7696005)(81166006)(76116006)(55016002)(186003)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5033;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RNU8KSJ+EE5ZdnSulX4W54k2lhHYDScvv6uW0bpyY6ZinHezbSCaftzaX/RkQ3ltAd2VOhahVMUwwUpKF4Mz/2iKpBUG47iTpLuLsht2eiXvt0nBKErlsmjnx6cGiWrxPJ6V4Q/rjMgPzCYU7mWLJtAmkMaHnZZOS5+cvjlGMZDWn1M2S+j1b1rgBkDhjJdCOO9oiLjhk64FClSxH1Aq7oRNxaVPgX+U0G4U0ER6+MdiR0ZtcfcQB286mjc4KDvaSM8pdFAs7ohTlTByMMXXsStqH+Rc2duCvrKNPBdKSls8d8bw0N037a7IYij2JMM+jSmNRRHELVr1NMGGyFp8UWqhPij1lBaGFpdVqjK2vyvOECdImKhz21QYD2GnvWKZsEAuqu1ghRPXcV05q+0CvBnLJUSPwXn3u42d14R6AMThIUUVTyc+CvRL1XICsT2rf02PkWZkjKu4BlhwDWlmR0rB+qQAS5hrswGd2QzjJF0LmkZWl4kVGnQm6Y+6WUjSJnep7AJzKIy0mEmaff6FyPkv2DUGeuyNEr6cRfn+z9eXNMdet/L+Lq/ZtXPgSini5PQ7DLxLsHNJzpb4oBbSBHEmfgw+rvS9NMHM/wpST1V8LOdFfjOms5DZo113ibe+
x-ms-exchange-antispam-messagedata: C4qSpp0nUUOP7CPuPl78SY5HkFhfjadRI3lGL2teRb2SqmKvd8mKvBVP7+A9HiLyef3iDwFbsc+X7au+xo3vIhR8mYFMiAikDzZAGpmKIjjA4nJkcRBGClI/XzEv2FTDpcUTeutLIvHj1WDElWJIUA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7af6944f-0bcc-4474-ff30-08d7c008d636
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2020 06:54:08.1065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1NYSyOyM+sAwHjC0pKekR16Zy5QO161xIOfNNJUshUzoMK0mRFxDibOycj2SEBKNN3zV7PqsEngmQOdcqu0/iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_225410_901230_45E72361 
X-CRM114-Status: GOOD (  29.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.65 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Clark Wang <xiaoning.wang@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Jiafei Pan <jiafei.pan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Caution: EXT Email
> 
> Hi Biwen,
> 
> On Wed, Mar 04, 2020 at 04:13:03AM +0000, Biwen Li wrote:
> > Hi Wolfram,
> >
> > Any comments?
> 
> Wolfram is waiting until you react to our comments. Until this is not happened,
> I will not ACK this patch and Wolfram will not take it.
Hi Oleksij,

Okay, got it. Thank you for your reply.
Please look into my reply for you and Sascha.

Best Regards,
Biwen Li
> 
> regards,
> Oleksij
> 
> > Best Regards,
> > Biwen Li
> >
> > >
> > > Hi,
> > >
> > > On 04.12.19 11:00, Sascha Hauer wrote:
> > > > Hi,
> > > >
> > > > The patch looks ok to me now, but I still do not like the
> > > > #ifdeffery around CONFIG_I2C_SLAVE. With the patch I just sent
> > > > (You are on Cc:) we could apply the following on your patch which
> > > > makes it more readable and increases compile coverage.
> > > >
> > > > Wolfram, Biwen, what do you think?
Hi Sascha,

Your patch is ok. But I agree with RCAR.(Keep I2C_SLAVE).
In first version I get a build error, so I add the option in second version patch.
If you want to remove the option I2C_SLAVE, firstly you should
delete it in <linux kernel source code>/include/linux/i2c.h. Then
build error will be gone and it's safe to remove option I2C_SLAVE.

Best Regards,
Biwen Li
> > >
> > >
> > > RCAR depends on slave:
> > > config I2C_RCAR
> > >
> > >          tristate "Renesas R-Car I2C Controller"
> > >
> > >          depends on ARCH_RENESAS || COMPILE_TEST
> > >
> > >          select I2C_SLAVE
> > > see:
> > > drivers/i2c/busses/i2c-rcar.c
> > >
> > > So, I would suggest to do the same in imx.
> > >
> > > So far, I tested this patch on iMX6S. It works in one board
> > > (i2c-gpio + i2c-imx) and two board (i2c-imx + i2c-imx) configuration.
> > > Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Hi Oleksij,

Okay, thank you so much.
I agree with your suggestions.

Best Regards,
Biwen Li
> > >
> > >
> > > >
> > > > Sascha
> > > >
> > > > ---------------------------8<------------------------------
> > > >
> > > >  From 52f7c2bf59db61d4b27b59ca6404136e3ed77310 Mon Sep 17
> > > 00:00:00
> > > > 2001
> > > > From: Sascha Hauer <s.hauer@pengutronix.de>
> > > > Date: Wed, 4 Dec 2019 10:56:34 +0100
> > > > Subject: [PATCH] fixup! i2c: imx: support slave mode for imx I2C
> > > > driver
> > > >
> > > > ---
> > > >   drivers/i2c/busses/i2c-imx.c | 21 ++++++++++-----------
> > > >   1 file changed, 10 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/i2c/busses/i2c-imx.c
> > > > b/drivers/i2c/busses/i2c-imx.c index 40ccfca600bf..c5d9ae8226cd
> > > > 100644
> > > > --- a/drivers/i2c/busses/i2c-imx.c
> > > > +++ b/drivers/i2c/busses/i2c-imx.c
> > > > @@ -203,9 +203,7 @@ struct imx_i2c_struct {
> > > >       struct pinctrl_state *pinctrl_pins_gpio;
> > > >
> > > >       struct imx_i2c_dma      *dma;
> > > > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > > >       struct i2c_client       *slave;
> > > > -#endif
> > > >   };
> > > >
> > > >   static const struct imx_i2c_hwdata imx1_i2c_hwdata = { @@
> > > > -913,12
> > > > +911,10 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> > > >
> > > >       dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> > > >
> > > > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > > >       if (i2c_imx->slave) {
> > > >               dev_err(&i2c_imx->adapter.dev, "Please not do
> > > > operations
> > > of master mode in slave mode");
> > > >               return -EBUSY;
> > > >       }
> > > > -#endif
> > > >
> > > >       result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> > > >       if (result < 0)
> > > > @@ -1068,7 +1064,6 @@ static u32 i2c_imx_func(struct i2c_adapter
> > > *adapter)
> > > >               | I2C_FUNC_SMBUS_READ_BLOCK_DATA;
> > > >   }
> > > >
> > > > -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > > >   static int i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
> > > >   {
> > > >       int temp;
> > > > @@ -1159,6 +1154,10 @@ static int i2c_imx_reg_slave(struct
> > > > i2c_client
> > > *client)
> > > >   {
> > > >       struct imx_i2c_struct *i2c_imx =
> i2c_get_adapdata(client->adapter);
> > > >       int ret;
> > > > +
> > > > +     if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> > > > +             return -EINVAL;
> > > > +
> > > >       if (i2c_imx->slave)
> > > >               return -EBUSY;
> > > >
> > > > @@ -1173,6 +1172,9 @@ static int i2c_imx_unreg_slave(struct
> > > > i2c_client
> > > *client)
> > > >   {
> > > >       struct imx_i2c_struct *i2c_imx =
> > > > i2c_get_adapdata(client->adapter);
> > > >
> > > > +     if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> > > > +             return -EINVAL;
> > > > +
> > > >       if (!i2c_imx->slave)
> > > >               return -EINVAL;
> > > >
> > > > @@ -1188,15 +1190,12 @@ static int i2c_imx_unreg_slave(struct
> > > > i2c_client *client)
> > > >
> > > >       return 0;
> > > >   }
> > > > -#endif
> > > >
> > > >   static const struct i2c_algorithm i2c_imx_algo = {
> > > >       .master_xfer    = i2c_imx_xfer,
> > > >       .functionality  = i2c_imx_func, -#if
> > > > IS_ENABLED(CONFIG_I2C_SLAVE)
> > > >       .reg_slave      = i2c_imx_reg_slave,
> > > >       .unreg_slave    = i2c_imx_unreg_slave,
> > > > -#endif
> > > >   };
> > > >
> > > >   static irqreturn_t i2c_imx_isr(int irq, void *dev_id) @@
> > > > -1208,10
> > > > +1207,10 @@ static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> > > >
> > > >       if (status & I2SR_IIF) {
> > > >               i2c_imx_clr_if_bit(status, i2c_imx); -#if
> > > > IS_ENABLED(CONFIG_I2C_SLAVE)
> > > > -             if (i2c_imx->slave)
> > > > +
> > > > +             if (IS_ENABLED(CONFIG_I2C_SLAVE) && i2c_imx->slave)
> > > >                       return i2c_imx_slave_isr(i2c_imx); -#endif
> > > > +
> > > >               i2c_imx->i2csr = status;
> > > >               return i2c_imx_master_isr(i2c_imx);
> > > >       }
> > > >
> > >
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7Ce5b72
> 9bd982449714e7708d7bffc0f7f%7C686ea1d3bc2b4c6fa92cd99c5c301635
> %7C0%7C0%7C637188961657171765&amp;sdata=6NGHA8U89taUe48JY7
> GT23wYNrvvTVXQ%2BOfrT3sZmDk%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone:
> +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

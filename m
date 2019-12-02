Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A58910E98C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vr1s9JTttrsYYWfao4/QTTg5m0563ifq2tQ3kSLu4K4=; b=hE3hpc/2e055HZ
	PbiK/A8cVRdTw3qA4JaKNm+uWUNFKBkZDWG1Ltp0IvS9r8a4zxHSJnbiIb3xyPxDruaACPcDbrEZP
	j8v6/IZ+KFLOJXujhO1D6uvSIaJM4EbXSs154kaBaQJweAc0xqixhKtF+YlG+ZqOzPrHZ5EMmZj3T
	syaLQYprhc4EJYbcvXyJP5DFqcqGZao6YuoN4YiDdZWi24pCtobBDgu2YrgiYGfkHnU7ozUAVpYN5
	sZZLlE8qGSG+SGyyG10c2L0q7DpuyxWFu2/Xf2V19nPfXr5aL76Vz8rSn4XusrhSXmRz/hZyta4/y
	a3ft2xd6xFUTT9gGpZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjx2-00052Q-N2; Mon, 02 Dec 2019 11:33:12 +0000
Received: from mail-eopbgr30077.outbound.protection.outlook.com ([40.107.3.77]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjwu-00051u-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:33:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3ZjaQgVZRro5MZdOyHzAW+Ac4BiYgD3mzGIWzdt17wP7m85h+iVLLGthsSgqL/JC/zt29N1bsrhO62iqAXnGPZscW61beyaExEUZQUlqwNoP34n9CiqtOAWE/1TTN6uPhu80OJ6DST2cPm0mKR/10DNcT8IGyzAyuxA5CwySRAtP+bmgQyTD0jNe4y8DqNZSZiAOPgzlpqXskoDgxeEliiXOt/gpeVIEneaSgojwhkU536QNZklJ8MbSdeypayoSgtx0NDWXpAoJJeNpN1PDyInKnTkg1pk2zwFQ5ISDqpt5vlM4rkx1N7FRn+Zy2XDAHAiMYFQdNpyUxp3iA+AFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zy4At1otdeuQ4hCjZsCdoNyay9mWgvG3JMUYY8Disgk=;
 b=ENFlaZj4gTwDFExLrM5Eo80/DMs/p4qPMG7aVVBgd5IH8JgFIOn4jFJQ987ubvosIeDQq0Ais/94/ZIHvCBX8KS7znbAxxcA97ygdNgjnh2ZvOC7BW/UkwEhzg9soPx6XanoHKYyZbmhNFwmMFyTTPtoAjg6hulykollFBMITSzT/KFqd8DFrsgatNfxJoQPhKGvQpq+snHoEiHdd/0/3anatQjXaWr63+dUZozA44+hTX1cz0Hoyefl2kyUaIhJ6OgG2U7Al45FHhYVkCLT4wrSLvL7gx8cYSkpzqCAoAo2LjyzsGHN0Vmga8+QFazCrINCMVXaY9qbew5iWHY+Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zy4At1otdeuQ4hCjZsCdoNyay9mWgvG3JMUYY8Disgk=;
 b=p4ItF2VG4/lnBSqR9VWI3zjHQGcMAqOOAOsNn0hxRgUm+DFi2WGWhUZAwN9s9Su4F/uvQnMaZn3mEhpl+4Mq/3/qDjFI/mAAOLEVLy0bDMKhrvyua5k7Gcs5GyrayQIbJXxY+St2fib0mFsNdk4e5jB3bu9mvkXbO4QkhTqdmsI=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5194.eurprd04.prod.outlook.com (20.176.235.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Mon, 2 Dec 2019 11:32:57 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0%6]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 11:32:57 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [v5] i2c: imx: support slave mode for imx I2C driver
Thread-Topic: [EXT] Re: [v5] i2c: imx: support slave mode for imx I2C driver
Thread-Index: AQHVppQxnceFGU0hbkmDRwYjgnSxe6emoAGAgAAVmeA=
Date: Mon, 2 Dec 2019 11:32:57 +0000
Message-ID: <DB7PR04MB4490A7B35547A7396BBDC3898F430@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20191129090513.2150-1-biwen.li@nxp.com>
 <20191202095509.ynxq2dyri36i2fwk@pengutronix.de>
In-Reply-To: <20191202095509.ynxq2dyri36i2fwk@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2f368d9-0560-4663-7ea3-08d7771b611e
x-ms-traffictypediagnostic: DB7PR04MB5194:|DB7PR04MB5194:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB51942BD9E5864FF9FE1735D88F430@DB7PR04MB5194.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(8936002)(2906002)(6246003)(55016002)(33656002)(6116002)(6306002)(76116006)(6916009)(6436002)(71200400001)(71190400001)(74316002)(7736002)(256004)(305945005)(11346002)(9686003)(76176011)(25786009)(7696005)(446003)(66556008)(66446008)(5660300002)(8676002)(6506007)(14444005)(14454004)(66066001)(3846002)(66946007)(186003)(478600001)(316002)(4326008)(54906003)(229853002)(86362001)(44832011)(26005)(81166006)(52536014)(81156014)(99286004)(64756008)(102836004)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5194;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vMn2dkba1Eemk10pymxJESRbaMZDwMRo0v5trZAOy246bbBU9vQTuw9zsMpFM49VJHfIa4WxqebQypCfXQ/spdkJxRtyXPvPiHWI4+EIS/53xVeCaMZPyR80zZMXC1aFuHeCalhPl4KyUyw33gXRdO6u/R2XtGVvpOriMqQpAKVkrPMwvrXbkkP91T/mURAriERmjyfkyXGNPrj3mjhPgQ1vv6LnIuG9QQN2P/uSzUM8g2L/xGdLoC6dJR7rKIA/p84RMBY6U+owLrBpRxmBI7ALeS7Tt2U4qh92jybVuATQhS+YH60K5TNlfDETVmTgsKeBkllAJABOG56aKL7GGlwi/KW9FiIBxsMQeMMElXvaHu/15mxOfNIjFJx3r0dG3+pi1ZTugj5mNByWk9Hvq/DYvvY1Ym9OiL53fP2CPsG4phS/V9nlL7TsZbOq0U/8C53O8UeeNAa1eWOsBzW91mAho4LeJn8sT8EV3IM88bQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f368d9-0560-4663-7ea3-08d7771b611e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 11:32:57.2146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0+xTcKJIomgrQ8dS02+op8PCF56yA0JAv7CXxuOdhkCprEsj832WrT91hJ6lO0XU0dsECFuF9PkpH3PWh7bmug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_033304_776038_172941C3 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Xiaobo Xie <xiaobo.xie@nxp.com>,
 Leo Li <leoyang.li@nxp.com>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 Clark Wang <xiaoning.wang@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Jiafei Pan <jiafei.pan@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [EXT] Re: [v5] i2c: imx: support slave mode for imx I2C driver
> 
> Caution: EXT Email
> 
> Hi,
> 
> Some more comments inline.
> 
> On Fri, Nov 29, 2019 at 05:05:13PM +0800, Biwen Li wrote:
> > The patch supports slave mode for imx I2C driver
> >
> > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > ---
> > Change in v5:
> >       - fix a bug that cannot determine in what mode(master mode or
> >         slave mode)
> >
> > Change in v4:
> >       - add MACRO CONFIG_I2C_SLAVE to fix compilation issue
> >
> > Change in v3:
> >       - support layerscape and i.mx platform
> >
> > Change in v2:
> >       - remove MACRO CONFIG_I2C_SLAVE
> >
> >
> >  drivers/i2c/busses/i2c-imx.c | 216
> > ++++++++++++++++++++++++++++++++---
> >  1 file changed, 198 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-imx.c
> > b/drivers/i2c/busses/i2c-imx.c index a3b61336fe55..52f70de16900 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -203,6 +203,9 @@ struct imx_i2c_struct {
> >       struct pinctrl_state *pinctrl_pins_gpio;
> >
> >       struct imx_i2c_dma      *dma;
> > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > +     struct i2c_client       *slave;
> > +#endif
> >  };
> >
> >  static const struct imx_i2c_hwdata imx1_i2c_hwdata = { @@ -279,6
> > +282,14 @@ static inline unsigned char imx_i2c_read_reg(struct
> imx_i2c_struct *i2c_imx,
> >       return readb(i2c_imx->base + (reg <<
> > i2c_imx->hwdata->regshift));  }
> >
> > +/* Set up i2c controller register and i2c status register to default
> > +value. */ static void i2c_imx_reset_regs(struct imx_i2c_struct
> > +*i2c_imx) {
> > +     imx_i2c_write_reg(i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
> > +                     i2c_imx, IMX_I2C_I2CR);
> > +     imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> > +IMX_I2C_I2SR); }
> > +
> >  /* Functions for DMA support */
> >  static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
> >                                               dma_addr_t phy_addr)
> @@
> > -588,23 +599,33 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> >       imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);  }
> >
> > -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> > +/* Clear interrupt flag bit */
> > +static void i2c_imx_clr_if_bit(unsigned int status, struct
> > +imx_i2c_struct *i2c_imx)
> >  {
> > -     struct imx_i2c_struct *i2c_imx = dev_id;
> > -     unsigned int temp;
> > +     status &= ~I2SR_IIF;
> > +     status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> > +     imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR); }
> >
> > -     temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > -     if (temp & I2SR_IIF) {
> > -             /* save status register */
> > -             i2c_imx->i2csr = temp;
> > -             temp &= ~I2SR_IIF;
> > -             temp |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> > -             imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2SR);
> > -             wake_up(&i2c_imx->queue);
> > -             return IRQ_HANDLED;
> > -     }
> > +/* Clear arbitration lost bit */
> > +static void i2c_imx_clr_al_bit(unsigned int status, struct
> > +imx_i2c_struct *i2c_imx) {
> 
> Can you please remove some of the really obvious comments? When a function
> is named clr_al_bit, then it doesn't need a comment which says that this
> function really does this. There are more comments like this in the patch.
Got it, I will remove it in v6.
> 
> > +     status &= ~I2SR_IAL;
> > +     status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IAL);
> > +     imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR); }
> >
> > -     return IRQ_NONE;
> > +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> > +{
> > +     unsigned int status;
> > +
> > +     /* Save status register */
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     i2c_imx->i2csr = status | I2SR_IIF;
> 
> Instead of reading the status register again you could set i2c_imx->i2csr in the
> caller.
> 
> > +
> > +     wake_up(&i2c_imx->queue);
> > +
> > +     return IRQ_HANDLED;
> >  }
> >
> >  static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx, @@
> > -900,6 +921,13 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >
> >       dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> >
> > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > +     if (i2c_imx->slave) {
> > +             dev_err(&i2c_imx->adapter.dev, "Please not do operations of
> master mode in slave mode");
> > +             return -EBUSY;
> > +     }
> > +#endif
> > +
> >       result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> >       if (result < 0)
> >               goto out;
> > @@ -1048,11 +1076,166 @@ static u32 i2c_imx_func(struct i2c_adapter
> *adapter)
> >               | I2C_FUNC_SMBUS_READ_BLOCK_DATA;  }
> >
> > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > +static int i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx) {
> > +     int temp;
> > +
> > +     /* Resume */
> > +     temp = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> > +     if (temp < 0) {
> > +             dev_err(&i2c_imx->adapter.dev, "failed to resume i2c
> controller");
> > +             return temp;
> > +     }
> > +
> > +     /* Set slave addr. */
> > +     imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx,
> > + IMX_I2C_IADR);
> > +
> > +     i2c_imx_reset_regs(i2c_imx);
> > +
> > +     /* Enable module */
> > +     temp = i2c_imx->hwdata->i2cr_ien_opcode;
> > +     imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > +
> > +     /* Enable interrupt from i2c module */
> > +     temp |= I2CR_IIEN;
> > +     imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> 
> Do these have to be two register accesses?
Yes, unless it will be not workable of interrupt.
> 
> > +
> > +     /* Wait controller to be stable */
> > +     usleep_range(50, 150);
> > +     return 0;
> > +}
> > +
> > +static irqreturn_t i2c_imx_slave_isr(struct imx_i2c_struct *i2c_imx)
> > +{
> > +     unsigned int status, ctl;
> > +     u8 value;
> > +
> > +     if (!i2c_imx->slave) {
> > +             dev_err(&i2c_imx->adapter.dev, "cannot deal with slave
> irq,i2c_imx->slave is null");
> > +             return IRQ_NONE;
> > +     }
> 
> This function is never called with !i2c_imx->slave.
Got it, I will remove it in v6.
> 
> > +
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> > +     if (status & I2SR_IAL) { /* Arbitration lost */
> > +             i2c_imx_clr_al_bit(status, i2c_imx);
> > +     } else if (status & I2SR_IAAS) { /* Addressed as a slave */
> > +             if (status & I2SR_SRW) { /* Master wants to read from us*/
> > +                     dev_dbg(&i2c_imx->adapter.dev, "read requested");
> > +                     i2c_slave_event(i2c_imx->slave,
> > + I2C_SLAVE_READ_REQUESTED, &value);
> > +
> > +                     /* Slave transmit */
> > +                     ctl |= I2CR_MTX;
> > +                     imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> > +
> > +                     /* Send data */
> > +                     imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> > +             } else { /* Master wants to write to us */
> > +                     dev_dbg(&i2c_imx->adapter.dev, "write
> requested");
> > +                     i2c_slave_event(i2c_imx->slave,
> > + I2C_SLAVE_WRITE_REQUESTED, &value);
> > +
> > +                     /* Slave receive */
> > +                     ctl &= ~I2CR_MTX;
> > +                     imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> > +                     /* Dummy read */
> > +                     imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> > +             }
> > +     } else if (!(ctl & I2CR_MTX)) { /* Receive mode */
> > +                     if (status & I2SR_IBB) { /* No STOP signal detected
> */
> > +                             ctl &= ~I2CR_MTX;
> > +                             imx_i2c_write_reg(ctl, i2c_imx,
> > + IMX_I2C_I2CR);
> > +
> > +                             value = imx_i2c_read_reg(i2c_imx,
> IMX_I2C_I2DR);
> > +                             i2c_slave_event(i2c_imx->slave,
> I2C_SLAVE_WRITE_RECEIVED, &value);
> > +                     } else { /* STOP signal is detected */
> > +                             dev_dbg(&i2c_imx->adapter.dev,
> > +                                     "STOP signal detected");
> > +                             i2c_slave_event(i2c_imx->slave,
> I2C_SLAVE_STOP, &value);
> > +                     }
> > +     } else if (!(status & I2SR_RXAK)) {     /* Transmit mode received ACK
> */
> > +             ctl |= I2CR_MTX;
> > +             imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> > +
> > +             i2c_slave_event(i2c_imx->slave,
> > + I2C_SLAVE_READ_PROCESSED, &value);
> > +
> > +             imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> > +     } else { /* Transmit mode received NAK */
> > +             ctl &= ~I2CR_MTX;
> > +             imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> > +             imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> > +     }
> > +     return IRQ_HANDLED;
> > +}
> > +
> > +static int i2c_imx_reg_slave(struct i2c_client *client) {
> > +     struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> > +     int ret;
> > +     if (i2c_imx->slave)
> > +             return -EBUSY;
> > +
> > +     i2c_imx->slave = client;
> > +
> > +     ret = i2c_imx_slave_init(i2c_imx);
> > +     if (ret < 0)
> > +             dev_err(&i2c_imx->adapter.dev, "failed to switch to
> > + slave mode");
> 
> The caller already reports an error. No need to do it here again.
Okay, got it, I will remove it in v6.
> 
> > +
> > +     return ret;
> > +}
> > +
> > +static int i2c_imx_unreg_slave(struct i2c_client *client) {
> > +     struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> > +     int ret;
> > +
> > +     if (!i2c_imx->slave)
> > +             return -EINVAL;
> > +
> > +     /* Reset slave address. */
> > +     imx_i2c_write_reg(0, i2c_imx, IMX_I2C_IADR);
> > +
> > +     i2c_imx_reset_regs(i2c_imx);
> > +
> > +     i2c_imx->slave = NULL;
> > +
> > +     /* Suspend */
> > +     ret = pm_runtime_put_sync(i2c_imx->adapter.dev.parent);
> > +     if (ret < 0)
> > +             dev_err(&i2c_imx->adapter.dev, "failed to suspend i2c
> > + controller");
> 
> I doubt this message is useful.
Got it, I will remove it in v6.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7C8f076a1a
> 982f408bd62808d7770dbb1f%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C0%7C637108773168503613&amp;sdata=tzCXguqtJVjaAisPkUzsqwI1frtL
> 3ToGNpmyJGnLA3s%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

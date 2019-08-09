Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6582187062
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 06:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3UVpEqEbEulJ785/F1A7kntFhEG/WoSedIWZWemmdI=; b=FL4CVrelSHVJHL
	P6GeTPRFF6LzTkgx8iDxo8XQNbG7wyIZXG258tOawNxCyFXpZyDAq9cf2b1M3ixayOzla2LexzMHm
	JVUKRm8exgfqKSv7WHylnFyKLpfM5CPmvC7BVZ7IJjG3r4Sa2kUN9aXPXaW+rhAwRcwgfHDHDkFC7
	rNuwuwnk3KhIyGr+QTPAwqUPv489IQzMJ4Vqp+7okSXMchlldizT71v87OP2rFRSw6tjc67Qs8G0G
	cBsy0QL3HvJYShMaoRch5qHm3AFJ324vzqmzSKMyjZr/OR3h94m4YBt+NHVWeXM0T+KfbmwtwFJGY
	Sv7o0UdoYU3zbM9IYxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvw9L-0004nk-2w; Fri, 09 Aug 2019 04:05:07 +0000
Received: from mail-eopbgr140084.outbound.protection.outlook.com
 ([40.107.14.84] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvw95-0004nR-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 04:04:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OM38ykUjfo43Fag6nCAKJ9BkzzFtaSPvLlG2kLzodkc+ieqXpYb3UGbKCN8gj+YPTXcrf+zma3hjRJ8i1I23tlgLjJR1ZmkQdwECFXjqc4LabbKgLaU2xeMSt4VPIpkiE3jli/qqeHjTiwRaZ9ZidJLGrcxiKOtDTc7EmaueBeUi2HetENvMQC8QfhgCYywGBwXmnSSqzvX+8Mlf32MAdOcyTy2JhyY2UrCXpDx3p22XbEPoOA8qsB0pWGRL85Mb4xthO13zBSDhcLe+Gmgq2kDLP2wKBsQLMZmiMD48Qa3lUJwrflZEKZqO/Xle4NIBMet33oi+kCaUE9j7dV1jMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzNK8YM8H7z0M2Stbl8qUE6U+GRfzgf8YvEbwmqaapE=;
 b=i0QZWH231K4tOqYGDg6yyCTCLm5RgR6VmbOOeeXsgmpfcMmBcEliS8a++DwAd7aSJRBDlBio/2SeZlqaqzMDofePIP1lVx4jRXAsJsSKV3O/0/MmCuUHM7ExJQ5LJ5UgrFv2NMThBiuVllwMVef+g5dbN81E+pQgyqrYL1r/OFogZ/kFYH3n3r1qbH33y3rbswgXII8NWJanFljNJZe3DIcd5kGRdntNf1UqDmGq560MJMMzUa6k7TiIFo0Xbw2qpO74ZOSGqW5cbe/wKj9+8pqbcdCrFc913n7UjMPjRXz5GLSc+k05dVA+Ws+bKNFBX617oFI6vGDZUTzNH9npjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzNK8YM8H7z0M2Stbl8qUE6U+GRfzgf8YvEbwmqaapE=;
 b=ny5Qr0WGXMQVKPUNc0T62QF2Xv1MvbyZnNJe4ZBTyMAFh+58N/WzbS9kCwx0TFC0Ha0AFH/dKK8EF37CuwZ9U4iNPSkr/Edan+kadeuhtQChVIW+xgyjvZOOSp4ihDcPz0VgepWLritEmw1YbouzyGl1Fai6rAe+kQL06OFdWnc=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4828.eurprd04.prod.outlook.com (20.176.233.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 04:04:45 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::ccc8:8:c071:8283]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::ccc8:8:c071:8283%5]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 04:04:45 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Thread-Topic: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Thread-Index: AQHVTZ48m9LP8x07tUuNIj/REJ9fGqbxTP4AgADfP4A=
Date: Fri, 9 Aug 2019 04:04:45 +0000
Message-ID: <DB7PR04MB4490F2C2C4B69F0F011420C98FD60@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190808035343.34120-1-biwen.li@nxp.com>
 <20190808141814.wr4hlmbaek6p7dy2@pengutronix.de>
In-Reply-To: <20190808141814.wr4hlmbaek6p7dy2@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efd32612-30de-4ac7-0544-08d71c7eb6b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4828; 
x-ms-traffictypediagnostic: DB7PR04MB4828:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB48281CC02822B9B6DF432B498FD60@DB7PR04MB4828.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(199004)(189003)(2906002)(74316002)(33656002)(81166006)(71200400001)(71190400001)(4326008)(53936002)(81156014)(25786009)(102836004)(305945005)(6246003)(8676002)(3846002)(6116002)(7736002)(256004)(6506007)(7696005)(86362001)(26005)(186003)(76176011)(14454004)(11346002)(446003)(478600001)(476003)(6916009)(486006)(55016002)(316002)(44832011)(229853002)(6306002)(52536014)(54906003)(9686003)(66066001)(6436002)(99286004)(66946007)(66476007)(66446008)(64756008)(66556008)(76116006)(8936002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4828;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K0yIC2am2zzHBLi7wmRbB8VPHR6vZFCesEAxmsq70pyb85cj+qWAjJvtSZu6zp3xrx8iQxM38fqSv5atMPAEdG8msh1R5H7m16Q8zR1bt0i0cyLIhAXEJEXSwwCwOh//tqHCh+UWz5EX7r3JlArlSB4Yo3o0MAU3eo/xp4BTjCvoAaAEbL45WNpD1O0MWwYue9jGXscrbwVOnpSKhj5b65uA3GpgzkmPoyWLNX+cEDQOCr6idxTQUg3jvzFyieC+/zKT8y8abniaqq1yqb95xUnsPAuOmXp0yWAIZEDj8ESEve8SulhG0cY1ZnrK8SFcQ5v2C39rm+LOwLQxSP/56592kGjpLX/LfmVszvXYyJgR0khkFaDiS0eGMkK6fR+MSmBR1yqXGNMTVSD1gi+ujyqe1bYox5ewAyE/tjtQaiU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efd32612-30de-4ac7-0544-08d71c7eb6b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 04:04:45.0501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bdtjL4Y72+uoWotlRQaKntAScMnBvM5xPiSs14xYXq0TkA3mPOD0QR//v4wBxXO1e7bn6WWN3KqErj8ojCtDYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4828
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_210453_369202_ACB0F89C 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Hi,
> 
> On Thu, Aug 08, 2019 at 11:53:43AM +0800, Biwen Li wrote:
> > The patch supports slave mode for imx I2C driver
> >
> > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > ---
> >  drivers/i2c/busses/i2c-imx.c | 199
> > ++++++++++++++++++++++++++++++++---
> >  1 file changed, 185 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-imx.c
> > b/drivers/i2c/busses/i2c-imx.c index b1b8b938d7f4..f7583a9fa56f 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -202,6 +202,9 @@ struct imx_i2c_struct {
> >       struct pinctrl_state *pinctrl_pins_gpio;
> >
> >       struct imx_i2c_dma      *dma;
> > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > +     struct i2c_client               *slave;
> > +#endif /* CONFIG_I2C_SLAVE */
> 
> Other drivers just do a "select I2C_SLAVE" in Kconfig to get rid of these #ifs. We
> should do the same.
Hi sascha, I don't know your meaning, could you let it clearer?
> 
> >  };
> >
> >  static const struct imx_i2c_hwdata imx1_i2c_hwdata = { @@ -583,23
> > +586,40 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> >       imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);  }
> >
> > -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> > +/* Clear interrupt flag bit */
> > +static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
> >  {
> > -     struct imx_i2c_struct *i2c_imx = dev_id;
> > -     unsigned int temp;
> > +     unsigned int status;
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
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     status &= ~I2SR_IIF;
> > +     status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> > +     imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR); }
> > +
> > +/* Clear arbitration lost bit */
> > +static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx) {
> > +     unsigned int status;
> > +
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     status &= ~I2SR_IAL;
> > +     imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR); }
> >
> > -     return IRQ_NONE;
> > +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> > +{
> > +     unsigned int status;
> > +
> > +     dev_dbg(&i2c_imx->adapter.dev, "<%s>: master interrupt\n",
> > + __func__);
> 
> Generally this driver has way too many dev_dbg spread around in hot pathes
> already. IMO adding more doesn't make the output more useful.
Ok, got it. I will delete it in v2.
> 
> > +
> > +     /* Save status register */
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     i2c_imx->i2csr = status | I2SR_IIF;
> > +
> > +     wake_up(&i2c_imx->queue);
> > +
> > +     return IRQ_HANDLED;
> >  }
> >
> >  static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx, @@
> > -1043,11 +1063,162 @@ static u32 i2c_imx_func(struct i2c_adapter
> *adapter)
> >               | I2C_FUNC_SMBUS_READ_BLOCK_DATA;  }
> >
> > +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> > +static void i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx) {
> > +     unsigned int temp;
> > +
> > +     dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> > +
> > +     /* Set slave addr. */
> > +     imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx,
> > + IMX_I2C_IADR);
> > +
> > +     /* Disable i2c module */
> > +     temp = i2c_imx->hwdata->i2cr_ien_opcode
> > +                     ^ I2CR_IEN;
> 
> unnecessary line break.
Ok, no problem. I will remove the line break in v2.
> 
> > +     imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > +
> > +     /* Reset status register */
> > +     imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> > +                       IMX_I2C_I2SR);
> > +
> > +     /* Enable module and enable interrupt from i2c module */
> > +     temp = i2c_imx->hwdata->i2cr_ien_opcode
> > +                     | I2CR_IIEN;
> 
> ditto.
Ok. I will remove the line break in v2.
> 
> > +     imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > +
> > +     /* Wait controller to be stable */
> > +     usleep_range(50, 150);
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
> > +
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> > +     if (status & I2SR_IAL) { /* Arbitration lost */
> > +             i2c_imx_clr_al_bit(i2c_imx);
> > +     } else if (status & I2SR_IAAS) { /* Addressed as a slave */
> > +             if (status & I2SR_SRW) { /* Master wants to read from us*/
> > +                     dev_dbg(&i2c_imx->adapter.dev, "read requested");
> > +                     i2c_slave_event(i2c_imx->slave,
> > + I2C_SLAVE_READ_REQUESTED, &value);
> > +
> > +                     /* Slave transimt */
> 
> s/transimt/transmit/
You are right. I will correct it in v2.
> 
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
> > +                     value = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> 
> value is unused, no need to assign a value to it.
Ok, I will correct this in v2.
> 
> > +             }
> > +     } else {
> > +             if (!(ctl & I2CR_MTX)) { /* Receive mode */
> 
> Since you have an 'else' path please convert this to positive logic.
> This makes it easier to read.
Ok,got it, I will convert this to positive logic in v2.
> 
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
> > +             } else { /* Transmit mode */
> > +                     if (!(status & I2SR_RXAK)) {    /* Received ACK */
> 
> Same here.
Ok,got it, I will convert this to positive logic in v2.
> 
> > +                             ctl |= I2CR_MTX;
> > +                             imx_i2c_write_reg(ctl, i2c_imx,
> > + IMX_I2C_I2CR);
> > +
> > +                             i2c_slave_event(i2c_imx->slave,
> > + I2C_SLAVE_READ_PROCESSED, &value);
> > +
> > +                             imx_i2c_write_reg(value, i2c_imx,
> IMX_I2C_I2DR);
> > +                     } else { /* Received NAK */
> > +                             ctl &= ~I2CR_MTX;
> > +                             imx_i2c_write_reg(ctl, i2c_imx,
> IMX_I2C_I2CR);
> > +                             value = imx_i2c_read_reg(i2c_imx,
> > + IMX_I2C_I2DR);
> 
> Also value unused.
Ok,got it, I will correct this in v2.
> 
> > +                     }
> > +             }
> > +     }
> > +     return IRQ_HANDLED;
> > +}
> > +
> > +static int i2c_imx_reg_slave(struct i2c_client *client) {
> > +     struct imx_i2c_struct *i2c_imx =
> > +i2c_get_adapdata(client->adapter);
> > +
> > +     if (i2c_imx->slave)
> > +             return -EINVAL;
> 
> Better -EBUSY?
Yes, you are right, I will correct it in v2.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7C6741b4f5
> b14646209b6d08d71c0b46cf%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C0%7C637008707067019414&amp;sdata=b95HQ8KRhoLS8R%2BMWyaF
> FTo%2BOr9qqVM45nTn8OoboPg%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

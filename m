Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C0E424E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 06:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1LtpEHASPieunm9HbLtB49P3oliJHlfIifzYMAmsSI=; b=RC1K3uIQtYyHj4
	5x2KrVxkxazVkXfHA0azy2s3gfZ5nFj+2ZAYLT/hSOcwL5xFE593LSz4g3IFTk2/WBAPwIQ2Pn66D
	O4OYI7woARfSu3rvmV+cr83QBjj6bAnEX7biOSKOwci6F2vOHYJDclUUQcwh10CTh7ctnzxFqohVi
	yOViTpEBTT6OMF3c/tsAYp5GHBaF4f4D5NXdkOy/QFfila8AUaCZQpkwWPk7vJunCNGPB9O0ZWzbM
	lUgELWhvSPqWMggnlaP2N/ZFRF7ucHCdXbt703SbqoMhaGQzBFp6b5OzXckoKMtOuMLcCLDxEPyyp
	QJUYzu2glXSn0Y1PHM0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqo5-0002eO-1o; Fri, 25 Oct 2019 04:02:33 +0000
Received: from mail-eopbgr60061.outbound.protection.outlook.com ([40.107.6.61]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqnp-0002dk-6i
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 04:02:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GFU66+nlc2vH/3YothWXOTwh4wYYyFgSxy7YzArnGHOYbxrvaDUZLlugZITktMEQIkdIlQajbKVf2/NQ3cDjqcwaDBWB6mGmUS6cqEDZ4SHcb5I8Sm9NjsP1a9ENQe9+fuDGaEmzKTTLWJoSnNTbq5yNaaLaUlHk4H4miVEKKcn7aE/vYg+1r6bygT/uSILbzyNA/joLHNmdiDa+5MCJ+7huwBGWF1O9DRpzDpxbf8DyyaJl95cI4thZ6Xq2MPratHmJ3jt+S45RV7avZUGEVLt7sUOiJnLxQOzxsg148g0L6lbAG00wMj/oNzp0No0knGpN4Rjg2zucGICq10nvDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjO3uxAkCvKKGiM1TYo4mo3McHDcGqUnYnG2oW0XHSE=;
 b=BoM14+iyvNQknQqoEtwARK4tHcSqVfiHJ8Go+bJWF6LUcZXkXePOvifxBbjNiVzJ7v7rZ7798BSuuQmeO5G7ddsZvjyoxF32I0PN5iZxmqhuyNsvUFK7UsRVK1iqUXoHNypjGYGSaaF0MZ2h1pHLuXxvL0lwMemlcJAkF/0SyKrqAgsWBp0EkUbo2i+GfWRaGJh7/6km2gUSYXDo7ffSB8d7q0nG99QZttaxIUoBNJ5KgSWAC/WA/6arTa/j+Vrhb//eM09NVnJD4uG4F5zMO/t8aL6QYOL++0R07t6no62bUXhf18/3r9fHvBA4+CkyLbjDydPf1qM7knl+MrCr8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjO3uxAkCvKKGiM1TYo4mo3McHDcGqUnYnG2oW0XHSE=;
 b=hRX3vhaSC3oQkczRmXre68jPXZEKXHiHGTRw82lY87DhUwb0f2ApC29CvkJhpjTucotmeu4sAMbyQz98sta0IEeWQh+82jxZVC47FikxOD79ZcvIBZvs2zxXBRBJKZBIhRGm1Qi/2sOFNp5tYgzeoiIF8WEhqHogY7Fk/iwV0fc=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5369.eurprd04.prod.outlook.com (20.178.106.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Fri, 25 Oct 2019 04:02:12 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11%7]) with mapi id 15.20.2387.023; Fri, 25 Oct 2019
 04:02:11 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>, "wsa@the-dreams.de"
 <wsa@the-dreams.de>, Leo Li <leoyang.li@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>
Subject: RE: [EXT] Re: [RESEND v2] i2c: imx: support slave mode for imx I2C
 driver
Thread-Topic: [EXT] Re: [RESEND v2] i2c: imx: support slave mode for imx I2C
 driver
Thread-Index: AQHVfoxewHuv09PlikyRjcKTMbPNCadZ+F4AgAAGvMA=
Date: Fri, 25 Oct 2019 04:02:11 +0000
Message-ID: <DB7PR04MB449066A02FB9FD0A795CFAFB8F650@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20191009101802.19309-1-biwen.li@nxp.com>
 <113865e9-e846-1079-6f58-7fddb245398c@pengutronix.de>
In-Reply-To: <113865e9-e846-1079-6f58-7fddb245398c@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 828d6945-bc66-4677-c1b9-08d759001d22
x-ms-traffictypediagnostic: DB7PR04MB5369:|DB7PR04MB5369:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5369B463E43526CE8EC993CC8F650@DB7PR04MB5369.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(199004)(189003)(6506007)(33656002)(99286004)(11346002)(2201001)(6636002)(2501003)(66066001)(86362001)(2906002)(76116006)(66946007)(66476007)(25786009)(186003)(26005)(66556008)(64756008)(3846002)(6116002)(76176011)(14454004)(66446008)(478600001)(316002)(8936002)(110136005)(305945005)(74316002)(7736002)(5660300002)(102836004)(53546011)(476003)(81156014)(486006)(52536014)(81166006)(446003)(8676002)(44832011)(6436002)(229853002)(9686003)(71190400001)(55016002)(71200400001)(4326008)(7696005)(14444005)(54906003)(256004)(6246003)(6306002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5369;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ISmVJcSyjODcN1OK+jZsRK0vl7KjA4jRVNjWB7d/lYLC/X46AMyeeTYRiQsSeVd7VuSqb7Qjd1yALcPM3ppNB5a7YtQxWaZseC40qQHges/B3wS6H/YXRW5jte35D/UZU3i8k9tkKMSVH6bibW3WsBPpoUkzyW+W3PYsfmkNXFH6+LGMGyOys3qZxFyBIo0oNkKa3TcZaEVhbU9Ki7ukdWRlB2Ab7uE/tfg9ezBdc0xCfP3kNuE3Ctq/JS4LpjjKdm2udMuAWktYI7Ls68F3W50eBHlOUDbbayP5Tq0T2i42oW2rJd8ABTuWK4Rq4lCVBZqZFyeUurApxtoOA4ZZWDHjinV7pdbgzTjfAJA0myDD9HBbDdlV+9UF5PC9EXGYpcyv/eQSuOnrcKdhJbxQiipzYvyYGAUlGYXn1AzA0FxvkWaSbDVkdDLf4E514Yf6
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 828d6945-bc66-4677-c1b9-08d759001d22
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 04:02:11.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vrnTyRXDTzr+qDCUhfT9sLRZzapLiugVLlGWlyC4ux2UXEAK4nOH5B86zOuZS9Xrhnh7Ab393rn6UAo79QAKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5369
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_210217_501832_7AA79F15 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Xiaobo Xie <xiaobo.xie@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Jiafei Pan <jiafei.pan@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Hi,
> 
> I'm trying to test you patch on i.MX6S RIoTBoard. So far I fail to get it
> working with following setup:
> 1. register i2c-gpio
> 2. connect i2c-gpio SCL to i2c-imx SCL pin and i2c-gpio SDA to i2c-imx SDA
> pin 3. run this command to register i2c slave eeprom on i2c-imx:
> echo slave-24c02 0x1064 > /sys/bus/i2c/devices/i2c-3/new_device
> 4. run "i2cdetect 4" on i2c-gpio to detect eeprom on i2c-imx slave.
> 
> So far, nothing was detected and even irq counter of i2c-imx didn't
> increased.
> 
> Do I'm missing some thing? Please, help me to test you patch.
You not miss anything, but the i2c-gpio driver from upstream is not
workable on imx(I have tested the i2c-gpio driver with oscilloscope
on imx8mm-evk, I cannot get any signal from the i2c-gpio bus).
If you want to test the slave mode, please use two real i2c controller on
one or two boards to test it. And please use my next patch to test it. Thanks.
> 
> And, please, do not forget to include me in the next patch round, if you wont
> to get your patches mainline.
> 
> This devicetree i used for testing:
> #include "imx6dl-riotboard.dts"
> 
> / {
>          i2c_gpio: i2c-gpio {
>                  compatible = "i2c-gpio";
>                  #address-cells = <1>;
>                  #size-cells = <0>;
>                  pinctrl-names = "default";
>                  pinctrl-0 = <&pinctrl_i2c_gpio>;
>                  gpios = <
>                          &gpio4 27 GPIO_ACTIVE_HIGH /* SDA */
>                          &gpio4 26 GPIO_ACTIVE_HIGH /* SCL */
>                  >;
>                  clock-frequency = <10000>;
>                  status = "okay";
>          };
> };
> 
> &iomuxc {
>          pinctrl-names = "default";
> 
>          imx6-riotboard {
>                  pinctrl_i2c_gpio: i2c-gpiogrp {
>                          fsl,pins = <
> 
> MX6QDL_PAD_DISP0_DAT6__GPIO4_IO27 0x4001b8b1
> 
> MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26 0x4001b8b1
>                          >;
>                  };
>          };
> };
> 
> &i2c4 {
>                  clock-frequency = <10000>;
> 
> };
> 
> 
> Regards,
> Oleksij
> 
> On 09.10.19 12:18, Biwen Li wrote:
> > The patch supports slave mode for imx I2C driver
> >
> > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > ---
> > Change in v2:
> >       - remove MACRO CONFIG_I2C_SLAVE
> >
> >   drivers/i2c/busses/i2c-imx.c | 180
> ++++++++++++++++++++++++++++++++---
> >   1 file changed, 166 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-imx.c
> > b/drivers/i2c/busses/i2c-imx.c index a3b61336fe55..d9858bc63656
> 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -203,6 +203,7 @@ struct imx_i2c_struct {
> >       struct pinctrl_state *pinctrl_pins_gpio;
> >
> >       struct imx_i2c_dma      *dma;
> > +     struct i2c_client       *slave;
> >   };
> >
> >   static const struct imx_i2c_hwdata imx1_i2c_hwdata = { @@ -588,23
> > +589,38 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> >       imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> >   }
> >
> > -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> > +/* Clear interrupt flag bit */
> > +static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
> >   {
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
> >
> > -     return IRQ_NONE;
> > +/* Clear arbitration lost bit */
> > +static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx) {
> > +     unsigned int status;
> > +
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     status &= ~I2SR_IAL;
> > +     imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR); }
> > +
> > +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> > +{
> > +     unsigned int status;
> > +
> > +     /* Save status register */
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     i2c_imx->i2csr = status | I2SR_IIF;
> > +
> > +     wake_up(&i2c_imx->queue);
> > +
> > +     return IRQ_HANDLED;
> >   }
> >
> >   static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx, @@
> > -1048,11 +1064,147 @@ static u32 i2c_imx_func(struct i2c_adapter
> *adapter)
> >               | I2C_FUNC_SMBUS_READ_BLOCK_DATA;
> >   }
> >
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
> > +     temp = i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN;
> > +     imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > +
> > +     /* Reset status register */
> > +     imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> > +                       IMX_I2C_I2SR);
> > +
> > +     /* Enable module and enable interrupt from i2c module */
> > +     temp = i2c_imx->hwdata->i2cr_ien_opcode | I2CR_IIEN;
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
> > +                     dev_dbg(&i2c_imx->adapter.dev, "read
> requested");
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
> > +     } else if (!(status & I2SR_RXAK)) {     /* Transmit mode received
> ACK */
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
> > +     struct imx_i2c_struct *i2c_imx =
> > +i2c_get_adapdata(client->adapter);
> > +
> > +     if (i2c_imx->slave)
> > +             return -EBUSY;
> > +
> > +     dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> > +     i2c_imx->slave = client;
> > +
> > +     i2c_imx_slave_init(i2c_imx);
> > +
> > +     return 0;
> > +}
> > +
> > +static int i2c_imx_unreg_slave(struct i2c_client *client) {
> > +     struct imx_i2c_struct *i2c_imx =
> > +i2c_get_adapdata(client->adapter);
> > +
> > +     if (!i2c_imx->slave)
> > +             return -EINVAL;
> > +
> > +     i2c_imx->slave = NULL;
> > +
> > +     return 0;
> > +}
> > +
> >   static const struct i2c_algorithm i2c_imx_algo = {
> >       .master_xfer    = i2c_imx_xfer,
> >       .functionality  = i2c_imx_func,
> > +     .reg_slave      = i2c_imx_reg_slave,
> > +     .unreg_slave    = i2c_imx_unreg_slave,
> >   };
> >
> > +static irqreturn_t i2c_imx_isr(int irq, void *dev_id) {
> > +     struct imx_i2c_struct *i2c_imx = dev_id;
> > +     unsigned int status, ctl;
> > +     irqreturn_t irq_status = IRQ_NONE;
> > +
> > +     status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> > +     ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> > +
> > +     if (status & I2SR_IIF) {
> > +             i2c_imx_clr_if_bit(i2c_imx);
> > +             if (ctl & I2CR_MSTA)
> > +                     irq_status = i2c_imx_master_isr(i2c_imx);
> > +             else
> > +                     irq_status = i2c_imx_slave_isr(i2c_imx);
> > +     }
> > +
> > +     return irq_status;
> > +}
> > +
> >   static int i2c_imx_probe(struct platform_device *pdev)
> >   {
> >       struct imx_i2c_struct *i2c_imx;
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
> pengutronix.de%2F&amp;data=02%7C01%7Cbiwen.li%40nxp.com%7C9c6ca
> faaa6674668897208d75091e527%7C686ea1d3bc2b4c6fa92cd99c5c3016
> 35%7C0%7C0%7C637066459873832484&amp;sdata=oVna%2BRGXEFHUK
> bLi3t%2BAFA3fhPDtteSpK5X%2B2r9kUhU%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5A61850E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CN5L6orEQRHKnx8zjBax9BfNmz2CVx+jyfhjftiLWk=; b=Ar/rN1qCht93wn
	jFiwIqSoYyApuhLeg9StgwgsaNQN8HenW1NbAMJIaZZdTUAVJSKqjTQ8Jediid123vCWC8ttH7pml
	tLw0S6gRGiPL8NBfEmcd3ESSLzyhMblG7TsdFN0ksXOWxEN7ULcYDYglgulEMFvRD4/wC9lHkp9VM
	GKSeh3Eg081Rgld9FSFzXaroATRuveiICX6aBxtX8pZjkv+SfNhHZf1nTb9w7BOaM+Jg1zIZKWHOU
	rsnOm2jTfjfnHBAwyIIDtIzkG9ptxPCBpTn7aRl31NfuxgH0LUdFZ+hFgeDdXW3fRUApB5hSu53V8
	RhxKQ+WRfIUwDP6Qn1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCriI-0001eZ-A3; Fri, 13 Mar 2020 21:19:26 +0000
Received: from mail-eopbgr1400124.outbound.protection.outlook.com
 ([40.107.140.124] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCri7-0001e4-Tz
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:19:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btlDedRqm5YbSOczf0U3f0jOgA4YA4ziDALUg6wRz8BB/jDr6TrneKD15e/e/wqtlGYawps1ORvGmS+I5n0D4KzZq/xoTVYs8MlKZ31Q4bj/h7AIIIz4H4m1TCDqvGh48ShDrDH+Ufh/KVNpoy6RuiOAgc/gsF4IeNLL1sup7uZag0MAEWtQvR56bfgQ1ds5vD/OPBO7NhqTVLWMMR9k8FkCKc+bxJnehZ/rvuNeAMhtQHjTr4zKJNA34MXsMjb2H8W51BRaVWPporTzRvx4sU90hb43Nvm2gUF3Y9dKKrIAn8Ww28GpuSuty8HHlqIKZbFu6GLUMIypu75BXkbEVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lbok6UjvQrC7Ycg0HMmlfXm+Cdi2GIxWlTVMksygmfg=;
 b=GwvrCVz7Zk77ytNOy03TeJHPqCLNMzTuN3513QYnns9GmHogX6eEcxMxUhfG2jjDwAf5trAcl+WbReFE+p/p57/hN8iE31re9LUDV/BWj0wYyCyCn22ViX/wikYJktLUCcCUoMcD2/zwHNflUkppRuEznk9UA+/AKwLC2/Fj9OV86ByWQivYj3CXLqF2JCcouQ8S8ZGyBWmDLOyfqhu3d2SRnsuspTfyt9sgxfV/tSZVrPo5BjdVYoCrRNjhXMgvGE6AlS7noqoyutF/dbGn2UEIMygH1t5zQr14+w6hKso1QF/+CFWzQL5zJSw6ByKSxlC5Lov/DU1RpkQjUUq+7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lbok6UjvQrC7Ycg0HMmlfXm+Cdi2GIxWlTVMksygmfg=;
 b=JbEx0kG5i0G8xgxGiNgxMTB2TsyseNOQs4luvJ9/SZPZGvgbZu1S211SrBoXHuu6fuQCVLUYDaDevHyOHOq51zVKvAFZw4OivGkYEHQ8c967LLzYaYrpNg4SdzP76Ek6wMuzQQ+D31Gv9it8jnLsR2dEkRzrdjTpgP8kE4iBaFM=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB3014.jpnprd01.prod.outlook.com (52.134.254.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Fri, 13 Mar 2020 21:19:10 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b%7]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 21:19:10 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v3 2/4] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Topic: [PATCH v3 2/4] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Index: AQHV+XwqOpisKE8Vd0G43g3MKXyh7ahHBmwAgAAAU+A=
Date: Fri, 13 Mar 2020 21:19:09 +0000
Message-ID: <OSBPR01MB3590A79B43A32FB69EBCDA89AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313211644.GK4751@pendragon.ideasonboard.com>
In-Reply-To: <20200313211644.GK4751@pendragon.ideasonboard.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: df068885-99ec-4f1d-b4a8-08d7c7942c1b
x-ms-traffictypediagnostic: OSBPR01MB3014:
x-microsoft-antispam-prvs: <OSBPR01MB3014B7A5362DC8999A238063AAFA0@OSBPR01MB3014.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(199004)(8676002)(8936002)(478600001)(55016002)(26005)(4326008)(81156014)(2906002)(7696005)(33656002)(66476007)(81166006)(66556008)(5660300002)(9686003)(6506007)(76116006)(64756008)(52536014)(66446008)(53546011)(66946007)(186003)(54906003)(316002)(86362001)(6916009)(71200400001)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3014;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mHKHqQ8QQ6zIZ5hOTaknpODMut4pjSPIjPv+Om+WeTqVWQtXJyDFLScfV6eO/1JaX1qN952fzes+bxTbFE8RFV8i3vCW6Xw0qHDOJSHGifnGb2+R4aDje93SnlldMCkO9Tsd/5jH/5ln1ZUc5uqxRQDymQS4xmelEZRhxk6GpOnq88eLIh8TbBX66zlItX3DG0/3yzUiyVtymq+O1RlPMHbFLQN2vaCZnxy9U81PGLJbFkjl8AtjcMJ1aT8mPe0LZMMm7WrV25saJ5xQo2YbpNkssZS32DWbD19F+CEP2+1vu+Gtjy5cE2O14jk4g5LK4lLikLvCts1LZ+Aa7WvpuBNBBtuk0QC00HDwszobuezYtSImkQVDX685aUXY+pqV0l5T5FUNDn3dq6vz6QTx54+hcwgCzgFffH/RseeBhNdJZjsGyxdeQIDeEBxvmhIX
x-ms-exchange-antispam-messagedata: VLOFCs6fB/dkHN0UTytxP8iPOP5wu74A74R3WbqnNuKAIOpFrmzkdjmfmcEDiZVOmdU7H7q1Fps0vVqprecIAnlLjCOBfz7yoS8IdqQeWPCNCauf0XojXRJo3lSKxm4akwYCt3JyO25PcCsG4alt7A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df068885-99ec-4f1d-b4a8-08d7c7942c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 21:19:10.0827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K1VSsj7vriMOn9kIZDPOV0mxh3piRdVBoFGoNblnm1Po3niFnF73/Zy7NBjV66rcTGKPsP0mJSnwy1Np3FVRPdAYqZtJF5PI/izep40s/f4R/2HTTmYJQxu9SVyNCbW8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_141916_031973_3F65F3B0 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thank you for the quick review.

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: 13 March 2020 21:17
> To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>; Shawn Guo
> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> Pengutronix Kernel Team <kernel@pengutronix.de>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Sakari
> Ailus <sakari.ailus@linux.intel.com>; NXP Linux Team <linux-imx@nxp.com>;
> Magnus Damm <magnus.damm@gmail.com>; Ezequiel Garcia
> <ezequiel@collabora.com>; Geert Uytterhoeven <geert@linux-m68k.org>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-renesas-
> soc@vger.kernel.org; Fabio Estevam <festevam@gmail.com>; linux-
> media@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH v3 2/4] media: i2c: ov5645: Switch to assigned-clock-
> rates
>
> Hi Prabakhar,
>
> Thank you for the patch.
>
> On Fri, Mar 13, 2020 at 09:12:32PM +0000, Lad Prabhakar wrote:
> > This patch switches to assigned-clock-rates for specifying the clock rate.
> > The clk-conf.c internally handles setting the clock rate when
> > assigned-clock-rates is passed.
> >
> > The driver now sets the clock frequency only if the deprecated
> > property clock-frequency is defined instead assigned-clock-rates, this
> > is to avoid breakage with existing DT binaries.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  drivers/media/i2c/ov5645.c | 21 +++++++++++----------
> >  1 file changed, 11 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > index a6c17d1..4fbabf3 100644
> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
> >  struct device_node *endpoint;
> >  struct ov5645 *ov5645;
> >  u8 chip_id_high, chip_id_low;
> > +bool set_clk = false;
>
> This isn't used.
>
Argh! missed it.

> >  unsigned int i;
> >  u32 xclk_freq;
> >  int ret;
> > @@ -1094,12 +1095,18 @@ static int ov5645_probe(struct i2c_client
> *client)
> >  return PTR_ERR(ov5645->xclk);
> >  }
> >
> > -ret = of_property_read_u32(dev->of_node, "clock-frequency",
> &xclk_freq);
> > -if (ret) {
> > -dev_err(dev, "could not get xclk frequency\n");
> > -return ret;
> > +/* check if deprecated property clock-frequency is defined */
> > +ret = of_property_read_u32(dev->of_node, "clock-frequency",
> > +   &xclk_freq);
> > +if (!ret) {
> > +ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > +if (ret) {
> > +dev_err(dev, "could not set xclk frequency\n");
> > +return ret;
> > +}
> >  }
> >
> > +xclk_freq = clk_get_rate(ov5645->xclk);
>
> I would move this line below the comment.
>
Sure will do that.

Cheers,
--Prabhakar

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> >  /* external clock must be 24MHz, allow 1% tolerance */
> >  if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> >  dev_err(dev, "external clock frequency %u is not
> supported\n", @@
> > -1107,12 +1114,6 @@ static int ov5645_probe(struct i2c_client *client)
> >  return -EINVAL;
> >  }
> >
> > -ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > -if (ret) {
> > -dev_err(dev, "could not set xclk frequency\n");
> > -return ret;
> > -}
> > -
> >  for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
> >  ov5645->supplies[i].supply = ov5645_supply_name[i];
> >
>
> --
> Regards,
>
> Laurent Pinchart


Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

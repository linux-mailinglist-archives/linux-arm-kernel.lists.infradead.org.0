Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BEA185131
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIJhzOQoC2uxWyiFtXYWQGddEhTU9ZleX9UPveJ7DuE=; b=ExwcvaIoqLjUSf
	1BzEwkbzxVFoRBIk37KmBWxb20eBFfbGmLKUijFfKQ5FJ87ZHvoV5CG7o1iUALs21s/QK0zPMnJqr
	l+fEcuSSg7S+PNZDlHlLpXUZMsnhtfEb3d0i/C0crXq61DQZUFDcjf+aKAQrFf/bv/LMqfvCuB2vB
	SFbuNYM2QHYlsjg48A1Yle5Bw3cKw8Bv/LiBo3Gj9fbCoOFHFhaHKI5yhZGzRFbhuyGEW1vfyVxk3
	sfJddBkRAov3btpcuT/8sN6rAviQjmBu/EzoMAc44bM2XdAMDDSQ6+V65AV+WcfocCcwer7GtLw7V
	ghQGWaUHC4agVqVFk58w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCru8-0007zz-RQ; Fri, 13 Mar 2020 21:31:40 +0000
Received: from mail-eopbgr1410093.outbound.protection.outlook.com
 ([40.107.141.93] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCru0-0007zN-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:31:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4u0To51Tf19sD3IF9sCozzoj4WH6wYBb/UMTEUV7JC6HWMi2G0M+rSz9s5qkeiLcsgcfUuvTk5pHjCBRHu4rrVC/L1Zin7LxXbOY/frjxdKv5OfDQBcjojkDsKJzTnMVAVT13RqGR/SY7WLsLz+h3Mbs58s6/roHwo58z9hezP3DRwyCZpvor4ZU1v543FAteTno7SOLOojmJSild/8h07jfxPwtrJyVd71G5xAjB+nYGI+AGj1LG+dRcvBsvpaxfgS9zjKW/R7Hcx/iz4b44zSf/0wtgQPfCRdnXUgGyLiL0xa/YnDc1r1m7GbiSbxWccwdURCsQTP1ORmfwGvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vV2QmqIooT0Wmx0w6qL2kYJsrRy8ZQ0IaXs+/XWX+ag=;
 b=MUqYjCC8NgG6XDJvyvlrZ8VJ7InBZAm8wDxOD7LnsTDIo6vkjYlblwjucfMWow72u40TDH1Ijd5nMTHi/KFxL+C6eP+hDA/rQ5Ggd0D1xopdxKBQWMokZjKXcx7nI0aDjVNEHcBoC/1EoQj4zn1WAcpQMeUSBTP93vVrCyWpvC92TDZyBktxMeqqVYAXNiyz9a1gLB3PYwZFMITgRgJQw9vhn5+Das+NECxy5RViFjw/YJo7FeymCjHUkewbgBWuc11IfQjagPkYWhWODd1FMEPF6yupciWIw7TAQgyNNz7meiTqG7rjWZwDjsu4tp7hY72xDTCHQf3goRI5+WNXTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vV2QmqIooT0Wmx0w6qL2kYJsrRy8ZQ0IaXs+/XWX+ag=;
 b=seULNl1uWF7QQKqajHYadrGnujS2agfpWw9uKxz0LzILkZpWFoR6j9VLAkN9hYclBQpo8BpawPgTRyeBzmOk8CTIt63/9nxiYB/5H3n+MSkTwGAxGWC8AxdQk0f+Zm9zpyVjwbviGh/tRccY955eo5qvDD7pqqiqJN/RPUV9+0s=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB1781.jpnprd01.prod.outlook.com (52.134.226.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Fri, 13 Mar 2020 21:31:26 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b%7]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 21:31:25 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
Thread-Topic: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
Thread-Index: AQHV+XwslyzFUyDDwkSkajiEN3hGNKhHCGKAgAAA6iA=
Date: Fri, 13 Mar 2020 21:31:25 +0000
Message-ID: <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
In-Reply-To: <20200313212345.GM4751@pendragon.ideasonboard.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a6b91b17-44e5-4599-c62c-08d7c795e26b
x-ms-traffictypediagnostic: OSBPR01MB1781:
x-microsoft-antispam-prvs: <OSBPR01MB17816026777D095FADAD3F81AAFA0@OSBPR01MB1781.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(86362001)(8936002)(66476007)(52536014)(5660300002)(6506007)(81156014)(33656002)(186003)(66556008)(81166006)(8676002)(66446008)(26005)(64756008)(2906002)(66946007)(71200400001)(53546011)(76116006)(54906003)(7696005)(55016002)(6916009)(7416002)(9686003)(498600001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB1781;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cjvx6wa6/fS6/vfLZMlPnyGjoX2lw39AfflI1rllFdcFIwd677bPplM4ZpxyAK1Bm/pJ0tFk6HKT4KE+kp65pLrfYYmTOtVn1rY/sToo+XERJtSqUK2MFBFyd9WA8mvt1tW/wL7SaHzrbw1x1LufiBMP9zqh5OXLiWag9Ayfb70/yD+guaVONlyl2WtWLgsbozG61M+ucB3kFqem+UJgFAk8G6X0d2bC6w+evupSMd9ajzG9aZxDvcV/HPpZ9TkfpaanXeCBAgsGG5HgddDx9NU8WSuqcbmJrWsCn2Sw1usLC60tCyZBGFkQCZAXP7kcU10hcMrniUljWIDTt6P5mW6ANa6JFnTpLzoyNNSL/wwAcQmxZJwIcTizojTo23iF9cCyPHw8dKKIXlutsP+qC5NjTLSItyJCgLBDo7up4yFoz2Vpm+KLY3pnl8Rh7Ajy
x-ms-exchange-antispam-messagedata: LJBHEOY9wgBNwCnQXU2qF0ZDcYwfbC//p3p+V6uI1kZm+oiODFzzst0ZYCYLY4HzfpV35yMJLv0qW02FCk26tPF55IfgKZwOR1+xPXS8CwfEcv5LHa4e7RE5VP0TE7wfSydFxQmUhgtakasqbOkCzQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b91b17-44e5-4599-c62c-08d7c795e26b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 21:31:25.7893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: McSjNVSAdl4MyvggEmhPPAmGRp8hKv/rCQzvKFU0QcSgaZY2p5CgfL3oKa/Cwr23Ad/Uq0wB2g/4OQRgtXaX8N8AHPMYvm7Nqy5gCo0Vz0xs7zbaqv7P2CLUhKoMgSSp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB1781
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_143132_393835_AB3461B7 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.93 listed in list.dnswl.org]
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

Thank you for the review.

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: 13 March 2020 21:24
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
> Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
> external clock frequency to 24480000
>
> Hi Prabhakar,
>
> Thank you for the patch.
>
> On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> > While testing on Renesas RZ/G2E platform, noticed the clock frequency
> > to be 24242424 as a result the probe failed. However increasing the
> > maximum leverage of external clock frequency to 24480000 fixes this
> > issue. Since this difference is small enough and is insignificant set
> > the same in the driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  drivers/media/i2c/ov5645.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > index 4fbabf3..b49359b 100644
> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> >  }
> >
> >  xclk_freq = clk_get_rate(ov5645->xclk);
> > -/* external clock must be 24MHz, allow 1% tolerance */
> > -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > +/* external clock must be 24MHz, allow a minimum 1% and a
> maximum of 2%
> > + * tolerance
>
> So where do these numbers come from ? I understand that 2% is what you
> need to make your clock fit in the range, but why -1%/+2% instead of -
> 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> that PLL parameters depend on the clock frequency, but could they be
> calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> frequency ?
>
To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
logs/comment says 24Mhz.

Cheers,
--Prabhakar

> > + */
> > +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> >  dev_err(dev, "external clock frequency %u is not
> supported\n",
> >  xclk_freq);
> >  return -EINVAL;
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

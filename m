Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D321F184229
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 09:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nS3A9F2r4CKx3XNGxpg9ybdbPQ+JYQHTKLMXddC13k=; b=iZ4wTvkKMEC2hE
	T3wQHM2gkIO4n+HRZzQUZhfXMvvOJazp4HRoh8TCeERbhnoxVhydfmjIdW9/5Yp96q73xnBwBz5ZG
	Fhlzc7gLjo8B3aBrNf6d8xVCkmhtyTFSbU2j5Rxi9hpciKnrzuX0JZhGJ0YhNHIi8ZUiKWDPfQGJ4
	+TcUsNUrsxLaACFBblWavEjcOMlbXcmz3WWt9FcFkPVTgaK/lFQE+Az7zW6pWnP6UpQWnTyq8mAK9
	OIAjiH9gp77uJZh7ZwnwNcw2Mt7NPC4/G0wOwu/01nQT5vhb2qvtx43azg9Tr52yaL5ZtIZIL1Hmk
	9dWGP52rgDbh6wtFLciQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfGw-0005tO-RG; Fri, 13 Mar 2020 08:02:22 +0000
Received: from mail-eopbgr1400090.outbound.protection.outlook.com
 ([40.107.140.90] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfGm-0005sT-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 08:02:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GDgIAkwYgZN3k2yo8r2LO5wDn/jEK0gVvOintNc+hLiSw5GkFaoT80GDvRyJlWGyWNPowfitKig2MiiWIzFT5QiBcPkME7OuCMbgpnxLW5Puhqi9yJ4Xpvdrt/GFSxSW38/5zvwRxzRgI+5wVQJ+3HCp4dAsmTj9ypIBSh99/BvfrppZY8EE/nZ5IcUShhk5MWWQTkzTlgbOBtT2c4VTHFafQMdsKzCyZWH3THHBiRLE4kWq9tarAmGV2qPcbHIXaHTCTCai4EYsiZsa56AN9eTIBst5plBJmE5lxI+2eEeHlSxpZrzXuoKVq1cCfD9uZbCbyhqSFwoEEBcXTxK20Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGC+YQ1cGl513boYqKKNwTKXD3SHCT91/ImlBTTYeOU=;
 b=Th4+FLI1WRiCAmOT0TMWN29Vl+HwKbvzGIbG+N8mNQkJwvc7XRCrMp/gyV6/NazUauG79wmfNqYRg2zG1UfY5bjH5rvdiPwyS7qpmIywOCb3D2Fd3xniMECFNuzAzvlquYCvGsQiEvbRTwGE+3BM1wFPA/UX9WTIIpjrtF6yqJqJ0q66oNeNs6CNvAYNBOE7RpYb//y4mByyppuNcSTY1ZdjfrJJPJHUin7DVNwndkyK57rIWqcJiXwUXpzrmHemQ+l4ALuO/tI5uT/+KwFQ5xUWPR6l9i0DYo2p2SR01GfuQ638iFWcqwlF2qLTSeIUjf/xOMaztQUXnSyH+IkYAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGC+YQ1cGl513boYqKKNwTKXD3SHCT91/ImlBTTYeOU=;
 b=bWVIs5/8H3LQKgmkiQCwdaYLBfCwov/uWvh3oI+RCuP72mcpKAVoxmVsdKz4ufBQ57/MhAg3rnpONy+H8OSdQFe2G12GvQDD0qtQJ+XEaYYVrPv8S8z4EXBc4NMrgZEjIRN43YgFDwIXwr7QiOvltrOXsM/lJmcRKXdhQ3O+eRo=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB3030.jpnprd01.prod.outlook.com (52.134.252.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 08:02:08 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b%7]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 08:02:08 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Topic: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Index: AQHV+LMHriTg1O9fLki5YHCWHclgDahFfJwAgAABE5CAABWjgIAAldMw
Date: Fri, 13 Mar 2020 08:02:08 +0000
Message-ID: <OSBPR01MB35902AAC382503C40DEF929BAAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdUgMHjU_ZANzJbxQji6K7Pdc-jD4C7JatQc-OtN=jJt_w@mail.gmail.com>
 <OSBPR01MB3590906C6121D1DFFF4ABF0DAAFD0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20200312230253.GB30932@pendragon.ideasonboard.com>
In-Reply-To: <20200312230253.GB30932@pendragon.ideasonboard.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a83edc62-e307-419b-2e97-08d7c724d410
x-ms-traffictypediagnostic: OSBPR01MB3030:
x-microsoft-antispam-prvs: <OSBPR01MB303015D3EC32A7729D085277AAFA0@OSBPR01MB3030.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(396003)(376002)(366004)(346002)(199004)(186003)(54906003)(81156014)(81166006)(52536014)(8676002)(86362001)(6506007)(8936002)(4326008)(316002)(76116006)(9686003)(53546011)(26005)(478600001)(33656002)(5660300002)(7696005)(64756008)(2906002)(66946007)(66556008)(55016002)(66476007)(66446008)(71200400001)(7416002)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3030;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ncvwFHQ5TQSRUaroFJON4z6cKvqNTenY7XTuorh6WA3p8W7GzQ9ZkJHewufZ3wjcJzqDKfhkLP36C7oz7YymU+Ihh49JgwtQaUJl5XLfqtEeSlpMzgOnH6clGeNCW2PMnttY0Ll19W6skOtNRfZO5BMg3QxY4cAgqlben6bFMfoHMyXcSdvh1sPI/2xoFFv3Fsu6NbDzMaiQRRV5dVPVN67Wrl0IFjTYaw9/rvMrb9kWhCe0p+t/EXvJ38BmgnWGv9PZf6Dkql5l7MU0NpedPmMg+e40bKsqVZCmu8tTR5ZC7yJfjelPJImlxx+Oho+BRU3Vij7HNv30SE/PSoCzZW9CcIt2sDRG4mUTtVE/yIPkMd7ERIX9xK5Arj35PL+SmEO/bK58CQqPVl8+2eF+0eccn6RtBVxYxm7mh6dn1HGmG/5v4TGzRfgdnWD/b6tC
x-ms-exchange-antispam-messagedata: qboE3iUMMH77kFz6r/WJhjlGlE2t2WKFbwtumd7qn+OSgzCkbuBIhrFYCrQ97z/zdZgLke6kfIyEvuqmm76lIMmrmnP0bxRmngLuIqBNw2lN/P6KnHI6bLYs6PugZlE+cbsznYuH70l9dPLRkIkD0w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a83edc62-e307-419b-2e97-08d7c724d410
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 08:02:08.5385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nxvYeIKEhjNZ+4FKeHQldQpO8syyHEQiBhIHVdWHWVMttoJXXRkMZZs26w/6Jvg6+TaR4U0psbQbLvMrI22Pf6nNJ4U18QVM2G7Y6TMvmhaI5m9SH9ffgTUZzLLpbRaL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_010213_049273_936F8116 
X-CRM114-Status: GOOD (  29.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.90 listed in list.dnswl.org]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thank you for the review.

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: 12 March 2020 23:03
> To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Rob Herring <robh+dt@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; Sakari Ailus
> <sakari.ailus@linux.intel.com>; NXP Linux Team <linux-imx@nxp.com>;
> Magnus Damm <magnus.damm@gmail.com>; Ezequiel Garcia
> <ezequiel@collabora.com>; open list:OPEN FIRMWARE AND FLATTENED
> DEVICE TREE BINDINGS <devicetree@vger.kernel.org>; Linux Kernel Mailing
> List <linux-kernel@vger.kernel.org>; Linux-Renesas <linux-renesas-
> soc@vger.kernel.org>; Fabio Estevam <festevam@gmail.com>; Linux ARM
> <linux-arm-kernel@lists.infradead.org>; Linux Media Mailing List <linux-
> media@vger.kernel.org>
> Subject: Re: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-
> rates
>
> Hi Prabhakar,
>
> On Thu, Mar 12, 2020 at 09:52:38PM +0000, Prabhakar Mahadev Lad wrote:
> > On 12 March 2020 21:42, Geert Uytterhoeven wrote:
> > > On Thu, Mar 12, 2020 at 10:13 PM Lad Prabhakar wrote:
> > > > This patch switches to assigned-clock-rates for specifying the clock rate.
> > > > The clk-conf.c internally handles setting the clock rate when
> > > > assigned-clock-rates is passed.
> > > >
> > > > The driver now sets the clock frequency only if the deprecated
> > > > property clock-frequency is defined instead assigned-clock-rates,
> > > > this is to avoid breakage with existing DT binaries.
> > > >
> > > > Signed-off-by: Lad Prabhakar
> > > > <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Thanks for your patch!
> > >
> > > > --- a/drivers/media/i2c/ov5645.c
> > > > +++ b/drivers/media/i2c/ov5645.c
> > > > @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client
> *client)
> > > >         struct device_node *endpoint;
> > > >         struct ov5645 *ov5645;
> > > >         u8 chip_id_high, chip_id_low;
> > > > +       bool set_clk = false;
> > > >         unsigned int i;
> > > >         u32 xclk_freq;
> > > >         int ret;
> > > > @@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client
> > > *client)
> > > >                 return PTR_ERR(ov5645->xclk);
> > > >         }
> > > >
> > > > -       ret = of_property_read_u32(dev->of_node, "clock-frequency",
> > > &xclk_freq);
> > > > +       ret = of_property_read_u32(dev->of_node, "assigned-clock-
> rates",
> > > > +                                  &xclk_freq);
> > > >         if (ret) {
> > >
> > > I think you can just leave out the above check...
> > >
> > > > -               dev_err(dev, "could not get xclk frequency\n");
> > > > -               return ret;
> > > > +               /* check if deprecated property clock-frequency is defined */
> > > > +               ret = of_property_read_u32(dev->of_node, "clock-
> frequency",
> > > > +                                          &xclk_freq);
> > > > +               if (ret) {
> > >
> > > ... and ignore the absence of the deprecated property.
> > >
> > > > +                       dev_err(dev, "could not get xclk frequency\n");
> > > > +                       return ret;
> > > > +               }
> > > > +               set_clk = true;
> > >
> > > I.e. just
> > >
> > >         /* check if deprecated property clock-frequency is defined */
> > >         xclk_freq = 0;
> > >         of_property_read_u32(dev->of_node, "clock-frequency",
> &xclk_freq);
> > >         if (xclk_freq) {
> > >                 ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > >                 if (ret) {
> > >                         dev_err(dev, "could not set xclk frequency\n");
> > >                         return ret;
> > >                 }
> > >         } else {
> > >                 xclk_freq = clk_get_rate(ov5645->xclk, xclk_freq);
> > >         }
> > >
> > I did think about it initially, but realized the clk_get_rate may vary
> > platform to platform for example in G2E clk_get_rate() returns a
> > frequency of 24242424 with assigned-clock-rates set to  24000000 and
> > probe would fail due to a check for external clock must be 24MHz, with 1%
> tolerance.
>
> Then you need to handle the tolerance in this driver :-)
>
Sure I will increase the tolerance here.

Cheers,
--Prabhakar

> > > >         }
> > > >
> > > >         /* external clock must be 24MHz, allow 1% tolerance */ @@
> > > > -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
> > > >                 return -EINVAL;
> > > >         }
> > > >
> > > > -       ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > > > -       if (ret) {
> > > > -               dev_err(dev, "could not set xclk frequency\n");
> > > > -               return ret;
> > > > +       if (set_clk) {
> > > > +               ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > > > +               if (ret) {
> > > > +                       dev_err(dev, "could not set xclk frequency\n");
> > > > +                       return ret;
> > > > +               }
> > > >
> > > >         }
> > > >
> > > >         for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
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

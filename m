Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBA3183BC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c241wloNZw9yXiliLvSub99gaEDbOjiR9eBUiB98SM=; b=ek0NEVwoZN/OoA
	eE9jyQ07e98e4yctJaMHdDrwfhYfRZxPg0sov5oOQ+HGksC/Mow6JDkyCpZPYW9j0h1udt368M35N
	z9U7T2Kolm4kgGw0lxVZ4435W1PIakWcG2JQq+ky9mhlzyGti3zao15C3vbtLuVYimtvKtEsTCEy/
	Cp6UsEmYtW/dIo6DN94ReT6V8TBwGKs64o5EBB/n8HXTXHr250mrCI/JdMb0O07HZS3S6ElUyNfA3
	e+Lfy58h4CKEPVHzNNN881KeH1yIA27yrGN+H8hJs0/0CAMhjb5o9M+W4RZ9dl2HvuTGyS3X4D1El
	qsMdwrOZ/pZ2/c9Qubjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVl6-0006gG-8a; Thu, 12 Mar 2020 21:52:52 +0000
Received: from mail-eopbgr1410115.outbound.protection.outlook.com
 ([40.107.141.115] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVkx-0006fh-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:52:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9cjXGCAB3/p/hSmywiPoRVib28S3L+tk5mPIqg0EUSSIwYVh21nGC4Zjuh2GQpXU4hSf4zTp0Icv9woD9g53WU69miv0+3u7eohcinCUDt6xR4SIpL3wWmlnph+CPWFbfZRjJwuaD/SYLUxeJsPHbku5HQaR1GA6tq4i7q0ek3aZ/L89e934Yd12n/A9RJqF+MeOQEjwhzRX4KnHpPFHUY38rVVlc8yjaWD3wd3YYeemVmNSBPCeheBv2IJjd6RZFb997lM2QatHbSbyS9irQVi2L7hhuwH6DH+M9sMMCJxiagF8A5cykqVPJmIk8BIDtHogWrJHsujUg4BEjimzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfQ78igUNeotD8hWxHNWXdmcPmyHb/QIAHDKwYIVw6I=;
 b=gTs2mQKK+bXg9op6yZtDYAekgu+/HSADqc4dLlhODxwr8Vh1flJtiAEtgemBn3MN3gk0mL6TLBQN2RrPMzhwadrnUzlRoBXS639bAkd5f6Q/bE9URYsKm+8MDP0q6XOFvXLb9ZgwSMN8Z+lBxcvRhVSFZhVnkIpmul3QFmVRgS7nQ+33lGlOzEzBsuk0PhI97uPNzJR6RxUJ6Gr8eZAXh7mEShJVVQkeIKkCaumvnStrgOi3gvJ0LT98smwkDVoxLnXM1BzPnXjF+IBhCe+sM0SNhqSm4m3j8oIGsrlkXjEkk/q0M7G/AoZ9cXb2ePaFyJub2AoPilyve44CRLO2iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfQ78igUNeotD8hWxHNWXdmcPmyHb/QIAHDKwYIVw6I=;
 b=BSFuDGiA83X/YWFwb4ddC0gQW3/bhXTd/93JK+JDvlsaqGUpNSytIJd5etGNccoLVsOuDDP9vJV8OjfqRtgrhPse+yWXlzLJkmbrlICPCsMN/0RoRJonhgsscLNByEwNMyed0t3k323E7qV62X1JkqfeyLim/njLd1U5rQGr/TA=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB4311.jpnprd01.prod.outlook.com (20.179.181.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 12 Mar 2020 21:52:38 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::6df0:eb47:a259:b94b%7]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 21:52:38 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: RE: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Topic: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Thread-Index: AQHV+LMHriTg1O9fLki5YHCWHclgDahFfJwAgAABE5A=
Date: Thu, 12 Mar 2020 21:52:38 +0000
Message-ID: <OSBPR01MB3590906C6121D1DFFF4ABF0DAAFD0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdUgMHjU_ZANzJbxQji6K7Pdc-jD4C7JatQc-OtN=jJt_w@mail.gmail.com>
In-Reply-To: <CAMuHMdUgMHjU_ZANzJbxQji6K7Pdc-jD4C7JatQc-OtN=jJt_w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 98f0e848-2158-42ed-f487-08d7c6cfaeb3
x-ms-traffictypediagnostic: OSBPR01MB4311:
x-microsoft-antispam-prvs: <OSBPR01MB4311E4575F484661DA876AF2AAFD0@OSBPR01MB4311.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(199004)(52536014)(71200400001)(54906003)(478600001)(2906002)(7696005)(6916009)(4326008)(81156014)(966005)(86362001)(81166006)(6506007)(8676002)(26005)(186003)(5660300002)(66556008)(66476007)(64756008)(66446008)(53546011)(7416002)(8936002)(316002)(33656002)(76116006)(55016002)(9686003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB4311;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nV2u5k2zErab0XQ5x6xbF/r7m3Dq2FIWBjXzNiiAXqw2NZ0qkozvJD7w26BUyQeemelGNHRCMVGgZ9Bw1Iw9mPaFB4dOrH/IfMozrqCnzguNIuVodI0vQROzq+YxP2ql0CsUKKITAKS3STFwGKw/Qcji4SlPE9suDhTU0yaJl562fNqkfCp13Yw3oFT25SggJKt/mZZQ54S21F+aQFZBtq7Ap9xP839uWsnNnihi8EFBLeLJY/+0qeb2xsZBxOT/o4FfoJYrquQXs7O0ZnA+IA4ihkhHI9eXWkSznFmGhefIxiCCrlPxVevwhqyMpm0njMm5Cr4YQNVWIbVPM2NI6msPInos1iwxccNFFLV4j8zWTQwbODSNcLNihW8a3KuXtwCWZQpY8p7omJB/7RHKtG061QfHa1yRwRDZpKToQpfGj6MmE0zVs6SaknJKW12I//T/6qqorkhqcOHZy40wYIDcqrnlwsU2wfrCo0hxRxWSmszgFf3xyA3ho+WNwFLlPAbaSctJXtsnkzLWaM2cpA==
x-ms-exchange-antispam-messagedata: flsNdWR17UCS7gNR8tB2PBvE5hORFfAIN6doAlo+Opx8GoLxAyWT6gEHYmmTvDG7y3miGg58/10TToeYwCjk8cfK0jgLDp6wGyc7F2d8qD21a5/fxnWlXVnUGqhrLzmjSCdgQo3Y/LP2UhN6cIatQw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f0e848-2158-42ed-f487-08d7c6cfaeb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2020 21:52:38.4725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RZ4gvB8xrBKpoMhRoiL2a1G9h7Nkc1gnPsFFME1Z1mDu+jtCGRVk53f12BwCvBZs6eu4fWHaBY0yAmCT6qKXzZWTIwGFeGWzXhBoPdKxhkhfJyjCL+Iy0XPK0TpF4Q1l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_145243_741024_05CCF260 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.115 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thank you for the quick review.

> -----Original Message-----
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: 12 March 2020 21:42
> To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>; Shawn Guo
> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> Pengutronix Kernel Team <kernel@pengutronix.de>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Sakari
> Ailus <sakari.ailus@linux.intel.com>; NXP Linux Team <linux-imx@nxp.com>;
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
> On Thu, Mar 12, 2020 at 10:13 PM Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com> wrote:
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
>
> Thanks for your patch!
>
> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
> >         struct device_node *endpoint;
> >         struct ov5645 *ov5645;
> >         u8 chip_id_high, chip_id_low;
> > +       bool set_clk = false;
> >         unsigned int i;
> >         u32 xclk_freq;
> >         int ret;
> > @@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client
> *client)
> >                 return PTR_ERR(ov5645->xclk);
> >         }
> >
> > -       ret = of_property_read_u32(dev->of_node, "clock-frequency",
> &xclk_freq);
> > +       ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
> > +                                  &xclk_freq);
> >         if (ret) {
>
> I think you can just leave out the above check...
>
> > -               dev_err(dev, "could not get xclk frequency\n");
> > -               return ret;
> > +               /* check if deprecated property clock-frequency is defined */
> > +               ret = of_property_read_u32(dev->of_node, "clock-frequency",
> > +                                          &xclk_freq);
> > +               if (ret) {
>
> ... and ignore the absence of the deprecated property.
>
> > +                       dev_err(dev, "could not get xclk frequency\n");
> > +                       return ret;
> > +               }
> > +               set_clk = true;
>
> I.e. just
>
>         /* check if deprecated property clock-frequency is defined */
>         xclk_freq = 0;
>         of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
>         if (xclk_freq) {
>                 ret = clk_set_rate(ov5645->xclk, xclk_freq);
>                 if (ret) {
>                         dev_err(dev, "could not set xclk frequency\n");
>                         return ret;
>                 }
>         } else {
>                 xclk_freq = clk_get_rate(ov5645->xclk, xclk_freq);
>         }
>
I did think about it initially, but realized the clk_get_rate may vary platform to platform
for example in G2E clk_get_rate() returns a frequency of 24242424 with
assigned-clock-rates set to  24000000 and probe would fail due to a check for
external clock must be 24MHz, with 1% tolerance.

Cheers,
--Prabhakar

> >         }
> >
> >         /* external clock must be 24MHz, allow 1% tolerance */ @@
> > -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
> >                 return -EINVAL;
> >         }
> >
> > -       ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > -       if (ret) {
> > -               dev_err(dev, "could not set xclk frequency\n");
> > -               return ret;
> > +       if (set_clk) {
> > +               ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > +               if (ret) {
> > +                       dev_err(dev, "could not set xclk frequency\n");
> > +                       return ret;
> > +               }
>
> >         }
> >
> >         for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
> > --
> > 2.7.4
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>
>
> --
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-
> m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

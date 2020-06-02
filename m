Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96141EB544
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4nugbTCssfDAxRJ8mWCzo8iuiIv/bWR9k1RnVGLdQA=; b=BDyYePmNOk4Pd7
	Q7l+E6uNIA6swlXgdGN/uYkR7XvlFl824KC9FGm7qmDZoaiUTvf43Id4CjHflmsiVFgQ2mn8jFck9
	0Mdr6kJBM+olil9lP3UnPiwfEP75utsZ5pD0mZvyD1ybI/xI8+2OBmlCzAmmcXdPYPURXn+UbStY8
	l6r/g/rNobFVD0qgqPllGUcL+BIzeKpJXPSBnut8lBo5yE2KdrFwClGfGFLS6cLhTSW+k0iJWtXcX
	Gmi4Sm/Cy32UV/1Lrz8j4ueh2u3ZeGIIM4/5BbQKLuDBW0zcEpd2uYEZEs3IiJQs7kqOnAFw2mLPU
	/+6jCid4DEPmn9tpLWvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzRl-0005k2-Ml; Tue, 02 Jun 2020 05:26:45 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzRd-0005jb-Ve
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 05:26:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQ4iXWHY4j1b0IEiicipu+8EImJMKFWgGrHeFSTKc7hZUJn+AdrdkKoP64+SO0Kq6hFiyq6yi2FAi+HKhYNlyokOIYJeCIHVnUSWVuCZUQWBSSsdLG3wpmu0Qk4KTY0u3GtpuVJ+rP3iS8utrpmakauquu0Fydjh2QnJoRSYaE4snbxGMFAsAACCQ8vlCfCPZd0clXOhnxbio2LQiZ7nHQ0A4im8HX3ckq8jyamZkXOLl3VzjP7ZtrLlJXgev0jcQaRh+gcgjz4sMhzEjnt7f6Eqr+KnhS/V2YgBkjNW1lWFdP00vFIHELX2zQQbmsz+x0JYTH77Xp2ekFgOgV54xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKVhJhd3Xi+yW1wLT3bWz9pe5zueKTCki1C1UcCv0uc=;
 b=dGkgpAg1lpmzqgXp/a0NTZCSakHqHlh1WfnGTDhD9xTmGA/YbbxN2rA7anBdXEVHB/phGZL97KnFsLoGXEFhVdvuR+lGqo7pO/q7HfoiRHr8K6rgqOik3ZG6QOjy0jXZgEDGP8KJZ2bDcUUK8/wiKQ4UiWJa4axxY6idQOLsFDqtxXqIwjF94XSye4Bzf1KIzmFJuszaGyQkGWIulGoYphQWe1+gRJd5oAkmfqdOV/rD8RS/dyEmCJ3gKWNKkcw33PHWQLKqtfYywdV0NbglJ0ELPqcCiu3IZ5jC/as+2FaJq2V97wXEdJh/Y4O3GN3zKRVx5L0b40S/M0Mo2/yIXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKVhJhd3Xi+yW1wLT3bWz9pe5zueKTCki1C1UcCv0uc=;
 b=g+yly9yjTgqVUijquJ9iwe1dMV1VcWRicIM7EtNUcoZCph0gULr1lEzdJGrURw5IKQCteldufb/GATvUzt68DtwsrY6d5RX44tn48W6nn0TMXI6tBbX+5hTSPLQh3mBRverce/lKh3D3qN9k/ATD3nv4Mie0w2P7CMuqOesfZNE=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2887.eurprd04.prod.outlook.com (2603:10a6:4:98::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Tue, 2 Jun
 2020 05:26:35 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Tue, 2 Jun 2020
 05:26:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: RE: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Topic: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Index: AQHWN+7rKaBs4BAoiEu6e8UDHht806jEzGYAgAAAQRA=
Date: Tue, 2 Jun 2020 05:26:35 +0000
Message-ID: <DB6PR0402MB27606610A4606A7336E8E764888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
 <1590999602-29482-2-git-send-email-peng.fan@nxp.com>
 <20200602052448.fxepmwltc4465q4i@pengutronix.de>
In-Reply-To: <20200602052448.fxepmwltc4465q4i@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5504a5e9-39fc-4d5b-ab10-08d806b5845c
x-ms-traffictypediagnostic: DB6PR0402MB2887:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2887930F968BB4586EC47DFD888B0@DB6PR0402MB2887.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DtKyt+Lb1zzCZB0oSBYBQBZ3wPWyKfWNoYGLQj9da8SxzWWI74qlmoszqekf8lqyZ+Zz8AynvfZcenM3VzC0qJ+obIpC2T1q76E4Ch3hG714XFVh3vw+DRqFb2ODP7zxUuso6x9+QZ/mFvpvG69HN3MAi+0Ww2iMTH9wnSWRUs6LkKtvs01Vbu5OMlHBr36M0dJTrQlAlGmnKtk5DUH+lBjEnwogla4LYwt6QhFFymQ16C1f9Al2ojivVgwJSTEWV8oXRCBm8hfqvtWACJVP2JQNfRn9FE3wIQAXfJRLUgW6E1wHAtVDxwWUOvGfgg6ouA2TsvLJEpnutPba/QuIXdNZ/fRHz3WAek8TsZLyIIdBYdQRHMqbL+56WS2iW2DfQ8ymP7zrEfi718Ney9gD3soiWk4GAzWJyHrbhiJAec1c7GNnyYaPJn9HpgezKZPPJH5P8aw/uZNjeDoCcyx8xA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(55016002)(44832011)(33656002)(7696005)(8936002)(86362001)(6916009)(54906003)(66556008)(66946007)(9686003)(15650500001)(478600001)(966005)(2906002)(186003)(66446008)(64756008)(66476007)(52536014)(5660300002)(71200400001)(6506007)(26005)(83380400001)(7416002)(8676002)(4326008)(316002)(76116006)(83080400001)(15585785002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /IcnyGqny95ZGbaizuoWQkqSHoyODkX2wf6r8r4eNNLly2pj5mhKXTipaZK9WPN4X77jNhhe9N6iFcIae5+7WpG+vUKp8H+2MMQLj5SUlfhPIZ7BG5U6kkp6qrQe25bxe6kutZ2P7jE09tiCXS3oiSfmxdnacrsPRKUsCKUsEC/yBEuBU0PHfl8m0ok0sglreDiKoqxoJkZTqoP2Lb2wkuo85F44A6H2twMuv2QMA0VO5STFLyVOHYSLSnqYBopc5AFa4Mji6psEE7eZqM2cX++L/Mb6KghtDL8nD1sF4fOdBTeGR5GuVsVJUDGXAamZA2J3PhYKH/IVOFhE0OM3m1YCifKaLgKAsuKhNTKi4WqorYbTCXM/4BmfjGWzFv6Zdy+GOuS0p/oJj5XoQHpRrf9V87pLfUTpR+A2w7BIBbqBdbQsZjDEdkqqUWQ24iRr+O601TaV3q65bsAciq53WoB4gouCvIRbxGIJby8UgfvB81uZ5k4HEoKpgqH9l/yh
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5504a5e9-39fc-4d5b-ab10-08d806b5845c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 05:26:35.1378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LGOnjIbvDVxjOOKRc0wqbY6s90sUfNXO2RdeAOIN8jV6d9hbFfp6/JBD+bRatYaoxrcgHqZ0kFhFUovB/vjjFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_222638_019453_D3775172 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.51 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "jaswinder.singh@linaro.org" <jaswinder.singh@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

> Subject: Re: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
> 
> On Mon, Jun 01, 2020 at 04:20:00PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs
> >
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > index 26b7a88c2fea..906377acf2cd 100644
> > --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> > @@ -18,7 +18,8 @@ Messaging Unit Device Node:
> >  Required properties:
> >  -------------------
> >  - compatible :	should be "fsl,<chip>-mu", the supported chips include
> > -		imx6sx, imx7s, imx8qxp, imx8qm.
> > +		imx6sx, imx7s, imx8qxp, imx8qm, imx8mq, imx8mm, imx8mn,
> > +		imx8mp.
> >  		The "fsl,imx6sx-mu" compatible is seen as generic and should
> >  		be included together with SoC specific compatible.
> >  		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
> > --
> > 2.16.4
> >
> >
> 
> Hi Peng,
> 
> The fsl,mu.yaml was already taken by Rob, so one or other patch will break by
> merge. I assume you should drop this change.

Yes. I'll rebase this patch based on Rob's tree. Thanks for reminding me.

Thanks,
Peng.

> 
> 
> Regards,
> Oleksij
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone:
> +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

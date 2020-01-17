Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0736014119E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 20:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJewojLr++lja5jfpu5lEm+MKcuTcocm/IY4PE/RgUY=; b=BTdMl1rQEC2xn+
	sXUlBAvJQ1ULj7Jiv+pS//gzDYHu0UnhCjU1ZJVlsk+PmPe+4PJLge2sF30y6O5RyMqOvVDABSb6o
	iJFJV9gSylFSpncV/2dBIecMUzKLEdP8jXyRL2y7InzFU5m0r7QeYsknRqjHOJKMAbXnpUYZcacOS
	wYNeVWUBYYAuCv17BHnr0yZOvECJtYJYAx6/rGN+JPiYYTpSi2pKbRbxXb6uuOz9E9Dz9RhyYBmcz
	x2WsiAUDsrdttJTMtEfsHfK78IPlCB6klntFhdGXjxXLkbhtxdm2m3M4bpzgMTkf7GgFDesSDeSPC
	4+RRi+PLXQ9b22xz8MHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXFe-000398-QC; Fri, 17 Jan 2020 19:25:50 +0000
Received: from mail-eopbgr60117.outbound.protection.outlook.com
 ([40.107.6.117] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXFS-000389-TE
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 19:25:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzKVjEjHWXAccgvByGYttaRF9m3Cw6wE2K2fAsMuAc/y1X8OtC1YPzTyFETsSViRXp4+stg09VzmENl2n1prYnLCEOj+oHs2DunUUUjnuba7VUmNMWmZiz+vJUyUsRjfFEZ86Pb+osfqJgdYaDnPa0E/7JrkdD2CB10mKlRakNlurmQBCsCee+Y7+AkUN8BWFs8HpmSLULUpYo3PULPxE3THMx2LMVT4yVLEhK2uCtkyMCszXOtFPaRz1IMns7rUKDZpMmfyTVDD7Hgf6PJ+4ZijjrTSN3ykyMFK91P0+C96nwsCNIo0NcNc5b9FFUBwUysMsi4LMfmOL9hAEP/rVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgQnG6EbZhFseySRN1N5tNYd1liLIpiifI6G70saHps=;
 b=aUEnv9WZqPSEnuUqdIJ4f+16A1Ah6t2lzZgo6agjISoeJqP5dvBFqo/AnU3C9iKwOT8txGRlEWYOIf0I4mjKxLAF16oWw6jvUpHyXUYjM0DvB9MeHC9tlPiDEo4/hfzHa/hj1XGKxHIADUO0xl/yQ4eG+07z/qkY2mRKFqcuU17e0qs2kKFxshzMRxEUWTffUiBkFiyTgYSCihOCXNp595MKitq845zWxV7xvh/GF/D7hd29BLhXChQ8SlLx59Yhx483Q7aDbQApuSXtpNe9G7QLy+E//PogQmd1CNmjmL1EmcZDYxfVKjRfKd8qb9YDKLFuLvLASxfapCVEuVe1Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GgQnG6EbZhFseySRN1N5tNYd1liLIpiifI6G70saHps=;
 b=KOWENYCrlQ+Zbil+TAMr7u+xUhrrHRcFVqr0/E5KWkFI4LaVzRtlS3inX34pyv1hQSh616rM98mOeEylSLiRN268Xe/tjgn2Xih4WF5uAexXb9LWEQ0+bdNkmU5Uf9LunJ7ckjo7IJCSCA6i5Bgc/5WMjFkvhrqPJksbhUlYlhM=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4927.eurprd05.prod.outlook.com (20.177.49.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 19:25:33 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 19:25:32 +0000
Received: from mail-qt1-f176.google.com (209.85.160.176) by
 MN2PR06CA0014.namprd06.prod.outlook.com (2603:10b6:208:23d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend
 Transport; Fri, 17 Jan 2020 19:25:28 +0000
Received: by mail-qt1-f176.google.com with SMTP id w30so22580904qtd.12 for
 <linux-arm-kernel@lists.infradead.org>; Fri, 17 Jan 2020 11:25:28 -0800 (PST)
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: colibri-imx7: fix ethernet performance
Thread-Topic: [PATCH] ARM: dts: colibri-imx7: fix ethernet performance
Thread-Index: AQHVzFWee8FNmNUk8keE1wDvLk5RZKftKX0AgAIVg4A=
Date: Fri, 17 Jan 2020 19:25:29 +0000
Message-ID: <CAGgjyvEOBeh_qQwimOT6Nk=nvq=1_+2ByBQkgY4F=XHE0J3BhQ@mail.gmail.com>
References: <20200116101313.2524795-1-oleksandr.suvorov@toradex.com>
 <d3b02f79be206a14d7810c42e08ab9e224f40ae2.camel@pengutronix.de>
In-Reply-To: <d3b02f79be206a14d7810c42e08ab9e224f40ae2.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:208:23d::19) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAVJnbDbLCZ3GBwrD7DEGWAuG/TateSaDgdNhk0d+OoAB6Vt/c1t
 KVHm4csd4Qq9W/VwfPXsZfsy0Q2e5hknbbCKbGM=
x-google-smtp-source: APXvYqym+sJd4UGR5CzxEiQvyvKmga7qU1pg3wbKFCYPXJ1mqf3OEByYDyVNPWYf4DPjVM6zv/oF7JyFHKr7yJEtIeg=
x-received: by 2002:ac8:1851:: with SMTP id n17mr9279297qtk.305.1579289124468; 
 Fri, 17 Jan 2020 11:25:24 -0800 (PST)
x-gmail-original-message-id: <CAGgjyvEOBeh_qQwimOT6Nk=nvq=1_+2ByBQkgY4F=XHE0J3BhQ@mail.gmail.com>
x-originating-ip: [209.85.160.176]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d987eb50-1b9c-43d9-7519-08d79b830304
x-ms-traffictypediagnostic: VI1PR05MB4927:
x-microsoft-antispam-prvs: <VI1PR05MB4927E1A40AB1A9FBD9140D66F9310@VI1PR05MB4927.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39850400004)(366004)(376002)(346002)(136003)(189003)(199004)(316002)(42186006)(54906003)(2906002)(71200400001)(9686003)(81156014)(53546011)(55236004)(5660300002)(55446002)(26005)(52116002)(8936002)(186003)(478600001)(81166006)(8676002)(44832011)(4326008)(6862004)(66476007)(66556008)(86362001)(64756008)(66446008)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4927;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nuWzjqRza5fEeLx8SBUoc0Yte8JFO58A91QPoo0NV02EOYHRbVrZ8s90hrYAazecPK21KK7bchu9a3dqnwS9ORTT3CvDWsiqNJ4TLjsE13RySa4kvpMBcDPcByHbVUFcs5B0xG0weu4sMcogNwHnhd/vL/SiduGdr1bekC5GmB4ei0HLbVJGHtNgeIEha/9+fAUw54WjGF68n5dIoP0z7q365fXaZzUM4KXorZ7yiigh2MLSkBLvOrLdPRssVAcdQk8wmWESaGTawb82pwWn3hkzFO5HCDR2qhh4jaYxodxtmKO7uzWsbZppCsWQnwK6w+O0TP505hmvqWmFtT5AommCepvhCsT1d+VDKCpOEy3BjUH0gF29op3+o9MN1gZWzq/6l49EsrSzORPqMKvBFG2WY0C99VqqCAOJsbzuLQ1sMDgWUgTffuXXHnyFzbkl
x-ms-exchange-transport-forked: True
Content-ID: <59C3FB37B579F84AAA85084BD2B513BF@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d987eb50-1b9c-43d9-7519-08d79b830304
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 19:25:29.0778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zv3Hfy0/jYE/M60RNMhKF0wCeHBeH5RVY6od4CQblIV0/5k2rBaScXPsUwsUA3AkwSiBEx5LPB3KwmHr3izNyf3zl8E1iYihRujQfaYIB3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_112539_007214_406BA079 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

2mntnrs: please ignore this patchset.

On Thu, Jan 16, 2020 at 1:35 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> On Do, 2020-01-16 at 10:13 +0000, Oleksandr Suvorov wrote:
> > Performance test of ethernet interface shows extremely low result:
> >
> > === w/o fix =================
> > Connecting to host 192.168.x.x, port 5201
> > [  5] local 192.168.x.y port59020 connected to 192.168.x.x port 5201
> > ...
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  2.78 MBytes  2.33 Mbits/sec  337      sender
> > [  5]   0.00-10.00  sec  2.66 MBytes  2.23
> > Mbits/sec           receiver
> > =============================
> >
> > Adding correct settings of the mdio bus with the respective phy
> > fixes this issue.
>
> So what's the actual issue being fixed here? High packet loss due to
> trying to force GBit speeds through 100MBit magnetics? So the addition
> of "max-speed = <100>;" is the real core of the fix?

Lucas, max-speed is not the core of this fix, actually, Micrel 8041 is
a 10/100 phy only.
But thank you for paying attention to this patchset. This is just a
part of a fix,
and it was mistakenly posted partially and with messed commit log.
I'll resend a complete solution when it is ready and retested again.

> The commit log should mention this.
>
> Regards,
> Lucas
>
> >
> > === after fix ===============
> > iperf3 -c 192.168.x.x
> > Connecting to host 192.168.x.x, port 5201
> > [  5] local 192.168.x.y port 50702 connected to 192.168.x.x port 5201
> > ...
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec   114 MBytes  95.4 Mbits/sec   56      sender
> > [  5]   0.00-10.00  sec   112 MBytes  94.1
> > Mbits/sec           receiver
> > =============================
> >
> > Fixed: commit b326629f25b7 ("ARM: dts: imx7: add Toradex Colibri
> >                     iMX7S/iMX7D support")
> > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> >
> > ---
> >
> >  arch/arm/boot/dts/imx7-colibri.dtsi | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> > b/arch/arm/boot/dts/imx7-colibri.dtsi
> > index d05be3f0e2a7..7b6a7c124345 100644
> > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> > @@ -115,7 +115,20 @@ &fec1 {
> >       assigned-clock-rates = <0>, <100000000>;
> >       phy-mode = "rmii";
> >       phy-supply = <&reg_LDO1>;
> > +     phy-handle = <&ethphy0>;
> >       fsl,magic-packet;
> > +
> > +     mdio {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             ethphy0: ethernet-phy@0 {
> > +                     compatible = "ethernet-phy-ieee802.3-c22";
> > +                     max-speed = <100>;
> > +                     micrel,led-mode = <0>;
> > +                     reg = <0>;
> > +             };
> > +     };
> >  };
> >
> >  &flexcan1 {
>


-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

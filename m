Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AC27B9D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUyf1H3/VMhLoERw/dhgXxsKdhI3pYMJofeffsj5Qv4=; b=GB6s/fvZ2v63Io
	shbSl3JyFy9hjsHWojjaLsKmdiVcyLQ9y9DVXaUypbt/g2nTaJQo3+dVznKBoBrIRjzsQvoEsC+iH
	QZN/iO50Omv5x8ndv9fBZKwfRKfjhP8aLYV54+AgjZtcWZYtL7NS9rV2EPFsakW9z7A7hRAquqf5i
	3aaI5ORRkmu3A1duYgiMpZ91FyZxtHoXUuf5nTmD+uva34To9Qzi2OpMQeSqe660ucrgd+aFxBIjG
	ii/TwI78pyPeDls9a+6RcBBv+LpYvMc8N9JIDegkzPjmmTwumI8in4ulYn+Xgi2ufqfVw8H75IdO7
	d1liFAagCSGVYQYM51lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiL5-0000Pi-Il; Wed, 31 Jul 2019 06:43:55 +0000
Received: from mail-eopbgr130098.outbound.protection.outlook.com
 ([40.107.13.98] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiKi-0000Ls-4h
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:43:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C7nuKTtIB9TT8DDRbooj8Qye9Xg3WPEXidT/8m3DbsI4N1uNe07RVyP1S7Rt3yyWPOTYOT0I8Ji8jSVE5Vs0WAHPePRqBJPXr+l98eFczNDybDa9W4evm2fodcDzexrh8eskDZkvWqFcQL1PTCuUuzMYZD/Ty1dhmNlW/Ce2NTiD82NqRxkIij7utzpgopkVHgsEs//V1eU5Ue/nSohjyqnRteIxpAzverLhvvlWx2k+AVehrXHD8F0I8sDvkoAF7eAtKoo75RJTizZaF6/ltsTkbMDGeOTkhhfABLFfZnxxDY1Tg4AvvJiPC0OdiqxlWCJKfz9rtYNkuRadPg+yXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVpbjrT1LnDXpbDC2yTmY8tdStzlFWkzGvznfv0kQY0=;
 b=E8f30Bz0TkgJwyI9W6ES3eFyWEDH6c4x5Sat27pLA3JVQHBO/pEmxYLJfepFjewT9FEdUwftJFB+ceyyc2p621bG9cW6A4HRbvFD4uuEWYHWQuZHIbkjZrDSOp9wBafWmWLiM6kCENRve6ck4YAOa+86RFT58ErHFfhRPEot1XzYOH/TjNDAovy7/X6ZDlsWd17TD05GL3vVtFuWAgAzrpwCrOHN/+dLYT8p9F5riFubC2dBZ14Zt3jEtGyRxLV1zFuv+EFNzbIm8U3CVV7Yboq8QMkz2nhGBL2zj9GxshoGi4iFATWv3Yj7jY1+FfsJK0BFX/aH5LUENDHIcudL/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVpbjrT1LnDXpbDC2yTmY8tdStzlFWkzGvznfv0kQY0=;
 b=CDAvYoMpe+OMp8abgLmB9LYg05sD2P1N2F2T/GRD1TCK6EfLQZ8aLPCOFnWiPs7ooGhooadAZNL2PwRcybGpH7U0d8tSMUQD8ntRcw/Kql51AA5FM/2OCHuhdno3smybV3Mdzw8wAV/00cjnmJFqsRY4VMt3S7bq1mIumvXjVfw=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2927.eurprd05.prod.outlook.com (10.175.20.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 06:43:24 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 06:43:24 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH 12/22] ARM: dts: imx6: Add touchscreens used on Toradex
 eval boards
Thread-Topic: [PATCH 12/22] ARM: dts: imx6: Add touchscreens used on Toradex
 eval boards
Thread-Index: AQHVRucqGTC4xSC72EKF/Chxy8fH4abjoekAgACmx4A=
Date: Wed, 31 Jul 2019 06:43:24 +0000
Message-ID: <60760aa2d4710252e13877c409d0c4d2267824a6.camel@toradex.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-13-dev@pschenker.ch>
 <CAOMZO5DRi6yawn3RF-Mouiejz0nc7htdsCjOBC_EXZZKUZ3nvA@mail.gmail.com>
In-Reply-To: <CAOMZO5DRi6yawn3RF-Mouiejz0nc7htdsCjOBC_EXZZKUZ3nvA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b46b4810-f29b-4fa9-660c-08d7158262c3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2927; 
x-ms-traffictypediagnostic: VI1PR0502MB2927:
x-microsoft-antispam-prvs: <VI1PR0502MB2927D1BF5EE61F325364D376F4DF0@VI1PR0502MB2927.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(39840400004)(376002)(136003)(346002)(189003)(199004)(2351001)(7736002)(71200400001)(71190400001)(478600001)(256004)(486006)(14444005)(54906003)(2616005)(476003)(44832011)(36756003)(76116006)(118296001)(14454004)(316002)(86362001)(91956017)(66476007)(66946007)(66556008)(66446008)(64756008)(1411001)(6246003)(5660300002)(76176011)(99286004)(186003)(53546011)(6916009)(26005)(2906002)(81166006)(3846002)(4326008)(25786009)(1361003)(6116002)(229853002)(6486002)(2501003)(66066001)(8936002)(6436002)(7416002)(6506007)(68736007)(6512007)(305945005)(102836004)(1730700003)(81156014)(11346002)(446003)(5640700003)(53936002)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2927;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QLnuOZ4j1Tklh3LUvLPYr1xwGIMKglErzKFRRp5ehZdTAQueIsh20j51CVeOc+Iy3ict/Pjbss59Vi3iYu7ep1jcolkv8e+RYA0BNik2ainyzZulm44bYiJCYZwdArFWpmRd33etG/4pk2dnvtVRGWfE5XFFVg6wiUT7kDRc7NLheL6JBHELFeFbRBZMIn7wD5w7JmjCgnMwnk6gDq4IpokDIiEk+1C9nqrWG89LgYtco6jfG1OMXOvAsT6s8bvBi8sRoiGmFSkO7bautPPjd9uBwHeVXkCzl4hGeCr/l+Z5QHn08YyUM7M+YfGlZIhtw9Vbwu5knnwlQ1DmsTbqLV1qHGQMPuXN+mZQDjYWA92Ql9dn/hJ/bGCvv6jmvGzjM7+1Ll5A/y1Jl0kTRVDFIS9mVA4voUk1txeTLapVGAU=
Content-ID: <1C5CED9DF11A2343A65EE4D73A529649@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b46b4810-f29b-4fa9-660c-08d7158262c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 06:43:24.1799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_234333_775205_3FE57CC0 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 17:46 -0300, Fabio Estevam wrote:
> On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > +       /* Atmel maxtouch controller */
> > +       atmel_mxt_ts: atmel_mxt_ts@4a {
> 
> Generic node names, please:
> 
> touchscreen@4a
> 
> > +               compatible = "atmel,maxtouch";
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_pcap_1>;
> > +               reg = <0x4a>;
> > +               interrupt-parent = <&gpio1>;
> > +               interrupts = <9 IRQ_TYPE_EDGE_FALLING>; /* SODIMM 28 */
> > +               reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>; /* SODIMM 30 */
> > +               status = "disabled";
> > +       };
> > +
> > +       /*
> > +        * the PCAPs use SODIMM 28/30, also used for PWM<B>, PWM<C>, aka
> > pwm1,
> > +        * pwm4. So if you enable one of the PCAP controllers disable the
> > pwms.
> > +        */
> > +       pcap: pcap@10 {
> 
> touchscreen@10
> 
> > +               /* TouchRevolution Fusion 7 and 10 multi-touch controller */
> > +               compatible = "touchrevolution,fusion-f0710a";
> 
> I do not find this binding documented.

Thanks for your feedback Fabio, and sorry such obvious stuff went through. I
will go through my whole patchset again more carefully lookup all the bindings.

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

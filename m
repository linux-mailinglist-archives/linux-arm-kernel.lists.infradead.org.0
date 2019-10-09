Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0486D09E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFBekGQB049AZEvRULdP2DNkmT2DLmHSCFpxwzB84Kk=; b=MwIsbbYRcYc51h
	mLfhhmK0bvS+rOzj7uAEQsOvsoQCJ7frZPyG11BZ2LbYhcPwty7fiAio8qideEXjhBWW3bmA4U+ar
	znLfV2JVnGUkQHAAKZsFIHZjtOkX82CNQ5xsomL7fsu62TPESuYRBg+qLgz866qSbO95qnV0mhRxv
	Tp/y6/6aPFtAkS3dVuOgAiwIaRvzUhDziHXhvkmJkGE0/xBII9wRw38TDZoy4Njjoz+kmEHgsVEce
	siVs1ZqVVcUX3MlkM7GAoja1+vGZyJj8LJXsJDgMRt5W8JyS39TUMvlHVFsMonsT0i0Xp4+IfwMKF
	8IF0ysWOdRh87LzVr4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7Mr-00084x-P5; Wed, 09 Oct 2019 08:30:45 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Ky-0005K5-DW
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:28:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DqMVeGG6nbnanNDcf/S41/aDvS0RIk/peitlSDMsrM5Q2lnGtID4+SSZqeeywuVuOC73E9Oa1GrLjLZpVgID51MiOxddKMo2vqjK8KfdrcyrLgeIHva3DAKVf2McXjb/2tq6FmDlWzse94PXWyC9vFgyk3YdHAbH3c9Zij9U7bM3nGNzljNm0CkXwXKH9SbZVAwHYqD/u7oXXWomkh/gst9RzArtfk63TnLfRWia6rW0JP7+SMjNjNMjQClRwr5Holk3aiE+rQo5CO+RxpRe9y44/LnokomLLNMIlnewoagUwRKUYxBQ9m1CMGKlzepYXpvcU574puZU2htWvICMog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g4RK3VEmkB8nnzf1I1M5vVCHF/qeK2sKQ7vprEPym4=;
 b=VGcrbAFfHk3FKr9w1UxaI5YeIjnBdnEHIjpN+Ptycx3UbpoJi2/Ll6uV4ZXW4miL9yOTWSOOfaVSjImjkd+yLr29dZupPHC0Sd5laci8i/lfd1XXvP+TPO5XHJudrBHoEPd5zNxFIxPyLboO9UXJmECBc7n8tuq68uB5FsTgCn45uf7r1uxW/DtshPU1Ke5XoaOrY71b4IEmP2vo8pr7RMRDcltrSpzgXHESOHAHhI91kCwnPj4wP5smitBHPeco/+D7HWaxkKlw5a+PBjX1inYbArSjWTfmlXezbcRHKat2HmQ8xAPXQfNLmlH0FkwJ3zU4TzoIAV8fvsxqLhredQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6g4RK3VEmkB8nnzf1I1M5vVCHF/qeK2sKQ7vprEPym4=;
 b=U761VbfheSjELIbbVwMhKTgbicQzYNK+k3Hd8qlqqcwrCeICpH50pZGDRRoujZuyNDp4RXmWCaJqbGO3MdBjR0X05OCth93EEp5Ia3P/4l68FBJQUdG10XwpLwnCzH5rbzH1xyjY5pfQ+z9mYR86sQ5xbytaQ4RRwGxKGcpyvqw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3770.eurprd04.prod.outlook.com (52.134.73.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Wed, 9 Oct 2019 08:28:44 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 08:28:44 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Topic: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Index: AQHVfK0Yhw8grvoW2E2n3r70yUmdBKdO0YaAgAEYy6CAAhJjgIAAAOgg
Date: Wed, 9 Oct 2019 08:28:44 +0000
Message-ID: <DB3PR0402MB3916CD3B5EC47C023F9D840DF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
 <20191007080135.4e5ljhh6z2rbx5bw@pengutronix.de>
 <AM6PR0402MB39118DABDE62496539D7EE6DF59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <20191009082455.5hqhotkbozsr7mgo@pengutronix.de>
In-Reply-To: <20191009082455.5hqhotkbozsr7mgo@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff5fea14-3243-438b-f61a-08d74c92b299
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3770:|DB3PR0402MB3770:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37707D6707E6C7EB2A9D8CD0F5950@DB3PR0402MB3770.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(199004)(189003)(64756008)(66066001)(256004)(45080400002)(76116006)(66946007)(6436002)(8936002)(66446008)(476003)(33656002)(7696005)(99286004)(229853002)(44832011)(486006)(86362001)(6246003)(25786009)(66556008)(53546011)(66476007)(76176011)(6916009)(9686003)(74316002)(54906003)(102836004)(4326008)(305945005)(446003)(7736002)(6506007)(2906002)(81156014)(81166006)(316002)(26005)(186003)(52536014)(71200400001)(71190400001)(5660300002)(55016002)(6306002)(3846002)(8676002)(14454004)(11346002)(478600001)(966005)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3770;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kTke/64SdOqG6pZaaEgFZmMztfYvX/m2bYiYSTSoFnpqHTTZ4erJ6F56DsRA6/7wlA4ybMWvA1mOB0a5y5a1Oap8QadI/wLwye6DPVBGnhG8snbSs03ddijFKgfKYYlKeCDA9zKcPx2LIBWK7OFPyPZpz3qnyuOlOBociEF314vqKOCassLAfpYr58G8BWoalErE+GvgLIq+nQuUqbCyGxf9q0Jfm6qMGE20maNTJ+Z8vfMUTfiurOOEPxCoO9GoyknxJ91a2PrVtd0GPMqnWjSspAH5FXfKyF7VaGzKlSE2PGXGLMp7IiXOorjXcmZTauZn77OESRdzNaaQwaKWTBkW0jJWt6q4U4WfhnYKMVegMx3x4jQc/6O8NNvh9ifbEd1JUlW3vWS0YQ5sXbikT8Piz1szea69e3THDZjdObMwXO2YAOcsz+MKXMeJD1oJZ+zAOC8Mq4/Q/4mp0Ib+fQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff5fea14-3243-438b-f61a-08d74c92b299
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 08:28:44.0435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96Fi9l4THHUCwH7951r2fT+OiY85f0kxyAu3S3+42PIVf6mXHfxAG3GAz8jgWckkQRE6nwq29axTkho0tUyEUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012848_480470_3A60D71D 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> On 19-10-08 00:48, Anson Huang wrote:
> > Hi, Marco
> >
> > > On 19-10-07 09:15, Anson Huang wrote:
> > > > The SCU firmware does NOT always have return value stored in
> > > > message header's function element even the API has response data,
> > > > those special APIs are defined as void function in SCU firmware,
> > > > so they should be treated as return success always.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > Changes since V1:
> > > > 	- Use direct API check instead of calling another function to check.
> > > > 	- This patch is based on
> > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > patc
> > > >
> > >
> hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> > > huang%
> > > >
> > >
> 40nxp.com%7C2de0a6be69b74cc249ad08d74afc9730%7C686ea1d3bc2b4c6f
> > > a92cd99
> > > >
> > >
> c5c301635%7C0%7C0%7C637060321046247040&amp;sdata=RMFAdLKGKb6
> > > mEdhycrzHX
> > > > R03E6Qr5pWyRc8Zk6ErlBc%3D&amp;reserved=0
> > >
> > > Thanks for this v2. It would be good to change the callers within this
> series.
> >
> > NOT quite understand your point, the callers does NOT need to be
> > changed, those
> > 2 special APIs callers are already following the right way of calling the APIs.
> 
> Ah okay. I searched the 5.4-rc2 tag and found the soc_uid_show() as only
> user but this user sets the have_resp field to false. Is this intended?

I already fixed it and patch applied by Shawn, see below:

https://patchwork.kernel.org/patch/11129497/

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

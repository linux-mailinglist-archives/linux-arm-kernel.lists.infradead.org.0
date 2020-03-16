Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6C186503
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wCrVujQW4veNe/Js5hO3tn65M3Db1uAPDLkVjYMTX0=; b=fXLmVopuP01P1Z
	GMZWWFscrImr5rLGx/kJU53IEQhnyXLzVPMxy7K3UiPrId2i+lxo1Rx0oEan2eYaStoY4lyWRX8qN
	fFcAK2VtrRAYRTu/dXHP02rWXlN5Ii5wJ/pT/EkA13kocAtwFyMuckHGfhUVSA5R8vLL9PKIwuk7d
	7jRlGCKnxVEP+B7RkSQTVcue6T6tGV1VGBRpz4QO7iu+y83Bhor/HMORRJchk0uqKdIFsCIGMqn0v
	yuwWLxcYMKxVnAdBffEzAlTZtZGn3jYQu2oN+Vvoq/lLsj72+2bKbjl1OhpTq8oeiC5gYunQUVGbx
	FKtS3Rrxo4JNije1Ixvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjHm-00018c-VA; Mon, 16 Mar 2020 06:31:38 +0000
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjHf-00017s-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:31:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cqR8waHcN+u0owd0rLZtcGFz45jnECP7rl8nTun4XB1zbD07C9JVzHp1aJBTZpiwibOvP2pb4YN6IUMwA/yfY9SkhRdAnK9q+59cqJ5UZGaB1YKNB7uVhLN0IFtxLy8joqG7PjjMhMmw1+0wJznIO9BTdddnzHcapIoKgxHQSwueCxGIxgmyoaSicILHGksAMIb6kcBYe2fL6ACzbpqsRKntADNzah5HnPcApVlBIf0M4aRycBbV+A9ENZ97xgMZNqYqcROlxJAbqK7fSFtM8mYLq3emtgNyDwO4mlMU7UO8DVRYlIb8OisQ48KACtISZCNYd53uq5BHLucMSk5CYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hjws3a9134Qnb0izpZ03iZAL20gLA1TvGePcAttjQDM=;
 b=NV60EDVyklVJQG5ckjZ734TRWsrdBqIvt13EN75zfKtNoBvOqfvNYjxafv5sagCHgYdvJD53XBGgO+8gHZDk7N1ctmdSERwPcICxsSpNeHy+DHS8RQUhqMwaIr5q086XZmyuY02WhiP5iVuqMVOO26BPvORXYujHjc0IvS6UlHFjlEmxjavqFyAWAXmqKvhOZi3Fak1apbFbHZVMctokRVkM45vGQGgupT0c+JMdNEzviEIURXCv0Cmrl3Zyn0Y9HdBbPxfJM+5se8Y7gNlsAGus56RAmw4dgA6vt52SOD50M5oBv2JM7sTJridEFZEQ/CSi6dK7ZWKUALorYLednQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hjws3a9134Qnb0izpZ03iZAL20gLA1TvGePcAttjQDM=;
 b=fClpkkAh7RHQ23wL4KQgutgxJhNdPjI3YRMgqEUKoWhyPj6p70Kgy/55eZcsHjexS0SuLGVH+YcRtmcLaJ42MWjXk86M/w6cxi6Pd5gJzlwLihKpLUz/54hiTYKo1OGbaOF9FnloYKiR0a2OO4BxHSganVlFCpz6eRwFNeKSkrw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 06:31:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 06:31:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
 alphabetically
Thread-Index: AQHV+zLk/B9B6rSt+kytjJn72vnzQ6hKufmAgAAIHNA=
Date: Mon, 16 Mar 2020 06:31:21 +0000
Message-ID: <DB3PR0402MB3916C7F4D25024A30FF4EABDF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
 <20200316060024.GG17221@dragon>
In-Reply-To: <20200316060024.GG17221@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 336e48fc-4fd9-4b04-ba47-08d7c973a4b1
x-ms-traffictypediagnostic: DB3PR0402MB3867:|DB3PR0402MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3867DE882FD79B397CD6540DF5F90@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(76116006)(9686003)(64756008)(66476007)(55016002)(66946007)(66446008)(66556008)(81166006)(8676002)(33656002)(44832011)(81156014)(26005)(186003)(8936002)(7696005)(54906003)(71200400001)(316002)(6506007)(478600001)(4326008)(52536014)(5660300002)(2906002)(86362001)(6916009)(32563001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zHeZaIdAeG4stka3oyfdun+MrPn1RdJTJyQ8JBYeIxRq9w+wGI3q7o/rBQaJ+NML7EMkmIgHl5ToU3ZLFcYqmqqrV8vxUzyCxdfA5lLvfCEFZZS2UN5zav1llw2dlWYJQx1mKfmEyb5Bx95v55PiPEYhBSBYu/Oj5tEHdNs7zLXOF7bfsFEh3PfZtF71tklGOuAOPcSAmxPhSnddGUmJTgx/jTfj9yQeRh8g0Eyrcl516N+nsGAi63fOoM8exdImj49HdPspXrH09HWCCfbXgrUms1H8DgMasXw1tftGTTOZJZat/1XsRBlD6tQDVbrwPP/aRNNKNrC7FPOccK6a4TywybigIXl6lssKaq7DYjmwxKvan9K3hqTBvdhSMeMK4IJNCip3r3ktqwmd74cwyINDIYXihpFVu3lWzp8gNmh5F4JPFhqk/J0eDdAFi9NOTWG1mqFcjsvaMtyoEhLY96h1xjUzFyHY2tfQ4jTBrxhqXGl7tbvA9lyTgBtjP/eRpP97qC9MwfmZY4A3HlQuAw==
x-ms-exchange-antispam-messagedata: gSTEjttzZKLpamMJXGsWuKKL6ggXN62JcVDKjwDSyTU6PltDVM9ng6L6Lw/0urqQ5NHLsAee0N5tzStRp5HmHNqZ45dccnVmjUwx7JEa949GMXkDz8KsrP7985kuKIComwGoCT0gZjJM4xMMvskElA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336e48fc-4fd9-4b04-ba47-08d7c973a4b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 06:31:21.6258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9kwoCqYRy1p7iGYGQgLVGAW90MyXVpz09VQWaWpMAmhAQn5TpYtmYdGZfzgI+FJLxbVRTBS9cpZwbKfizxG/xQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_233131_560363_843A96F5 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.66 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
> alphabetically
> 
> On Mon, Mar 16, 2020 at 09:26:32AM +0800, Anson Huang wrote:
> > Sort the labels alphabetically for consistency.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- Rebase to latest branch, no code change.
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 50
> > ++++++++++++++++-----------
> >  1 file changed, 30 insertions(+), 20 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > index d3d26cc..b1befdb 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > @@ -30,18 +30,7 @@
> >  	};
> >  };
> >
> > -&adma_lpuart0 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_lpuart0>;
> > -	status = "okay";
> > -};
> > -
> > -&fec1 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_fec1>;
> > -	phy-mode = "rgmii-id";
> > -	phy-handle = <&ethphy0>;
> > -	fsl,magic-packet;
> > +&adma_dsp {
> >  	status = "okay";
> >
> >  	mdio {
> 
> Here is a rebase issue, i.e. adma_dsp shouldn't get a mdio child node.
> It came from the conflict with one commit on my fixes branch.  I decided to
> drop the series for the coming merge window.  Let's start over again after
> 5.7-rc1 becomes available.

OK, I am also confused by this conflict, I normally do the patch based on your
for-next branch, and I did NOT meet the conflict at all, then I redo it based on
your dt branch I met the conflict and fix it...

So, do I need to resend the patch series later when 5.7-rc1 available?

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

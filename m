Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306867C026
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q9kvhKX+AL+/1cm8uTai4eNg5FffQ4D5FgWpRH/voY=; b=BPgJ11bk7TaUF1
	vR2dHeOXrqiLBUev2TCJJeJeyT9jSV9E/dQ88qw8JG0yq0H5EJmnChN+ZdCA4nYJmGJAWo2WMdNr3
	ZC5GtwBXpH3Uyb+NqnS/ZHJo93em0U4sXrxsBMQjJsv1pJVxIK6JxWbi3lSHgn6KZffdct5GaKC3/
	GIqtMTLCHWMNna/mkWMHRMsHhEuELau0XKeEh0iHbnp8P9xqp+nzNYMzjLSTq1zRPw7wg8V/yJO0c
	C60zaqaUbrasUnrZJgBhiQII2ZwRbu2gh8w0a26roo2Mjiv1a/Nr2Y48K5upM3GunZ38YO9r1uX+L
	saGr6uZeNFP4XBibKtcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmvE-0000eu-CG; Wed, 31 Jul 2019 11:37:32 +0000
Received: from mail-eopbgr10096.outbound.protection.outlook.com ([40.107.1.96]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmv5-0000cV-28
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:37:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9YE+9oa7l/TiPaEWuJ8vDl1qLGsrCscmiU+0eG7fmQwywreoa32VRruQykei7xYqvvNqJGyctW9AOfRcvR/nPDOuOdoSX+nnDAhMGAvvHHHHN+v2ho6f7HAAXxQtKNKWTsCpBVnToAYjeqwS1HVP/JiJfYRbBAXeOpsXwJtsSDPt4gPvsWfFXfViylLXkg1o2At+aph8/9d4seNWHndS/7SPt4P+LHZFhLHe2XstX2vx5Ho24en79PIqQOiz4tUsZDZVpJbHF70OcFJOaQG3+r6S+Y6WD0ZhMlyKTE1akRPzoUoNE3cdAdbtSxHNqoWrvmeYNNF2XgzV9NzijtLKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SfqjXxQpdhI54bYcsVehrffgRpsmJkdH24XOh8HXbE=;
 b=CIsf+s6OSh3WDIpJ58VemHiWovDuoMJNSNn3EAo+7hQZq/cTzKCsE9OdJeKOspewsPCH/vC+guUlNycsRIfEg/z+sG9aEneQKtdN6fmL3/L8PGTokZfq8cg0c/TfTmjoHZDIhWvcM10ZUee1nI6a9ksS0WXlPxCv5+3fQbWcXvhzP2bL0f1ukRM+bK/QF8We3C6woVJmQfrSABNmTngZtskDLKfKbxSUeNYxH0SrPjLvZr/X+7jRLwewB7SW2S1+N4/fTmFw+Xv/hVg76tO0edU9cLCyOxdRCcW1qu9MXZ4w0Z9MqhYV/IcQ2T1BvSoWJ7dc9aOSzb1aqSZpMX67/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SfqjXxQpdhI54bYcsVehrffgRpsmJkdH24XOh8HXbE=;
 b=Bz4nji9Wi7Yc7PeBDEEaEqTi/a6QMf1MvyLbPwYasqJ4Y9Ho987crA9lDQmwa7N+2JpkKQQ193o+E51p6jWQf9L7fk0iA2fLyTUCK25HJz/o3kGrJvvFdPvZSBO+AlawOwKwZH7siLaWKqscc02uo7A2+Z0CZpzryKCtmHBsFw0=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3936.eurprd05.prod.outlook.com (52.134.8.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Wed, 31 Jul 2019 11:37:20 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 11:37:20 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH 15/22] ARM: dts: apalis-imx6: Add some optional I2C devices
Thread-Topic: [PATCH 15/22] ARM: dts: apalis-imx6: Add some optional I2C
 devices
Thread-Index: AQHVRucnuBRCUCGh6EKOWselFl0rqKbjoQAAgAD50IA=
Date: Wed, 31 Jul 2019 11:37:20 +0000
Message-ID: <6d92bc62f62d2f16db91ae9f2ae633d70b0e2123.camel@toradex.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-16-dev@pschenker.ch>
 <CAOMZO5BqbUzBi5nR33TOpgnR4CFAwxF34m+oKtRZ6rtMaMVu9g@mail.gmail.com>
In-Reply-To: <CAOMZO5BqbUzBi5nR33TOpgnR4CFAwxF34m+oKtRZ6rtMaMVu9g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 938390d5-c529-4cd5-42f9-08d715ab72c1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3936; 
x-ms-traffictypediagnostic: VI1PR0502MB3936:
x-microsoft-antispam-prvs: <VI1PR0502MB39363359F46B6D6CD7B602D2F4DF0@VI1PR0502MB3936.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(376002)(346002)(136003)(396003)(366004)(189003)(199004)(66066001)(76116006)(66556008)(64756008)(66446008)(66476007)(71190400001)(66946007)(91956017)(2906002)(478600001)(316002)(44832011)(6916009)(446003)(2616005)(71200400001)(11346002)(6486002)(476003)(6246003)(7416002)(1411001)(486006)(229853002)(25786009)(14454004)(4744005)(118296001)(4326008)(2351001)(8676002)(36756003)(86362001)(81156014)(3846002)(305945005)(6512007)(76176011)(6436002)(256004)(102836004)(53546011)(6506007)(1730700003)(6116002)(99286004)(7736002)(5640700003)(5660300002)(54906003)(8936002)(2501003)(53936002)(68736007)(81166006)(26005)(1361003)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3936;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g1+mCfQt8h15CMwc7y5LoAuzoYHWzjriEUXu9gDcfpH9cMowaxwGILMh7vMLG6Oh05oN5j90ok1CnNgcZAN7QG7NNV15X5SepCLsyIAQyRtpfFWykcvFaicNNVix/dit2g57OXR2Bx6vDQV791SlTymLvlHKqeNN1ZnxFludmd2p5BtwdgM0Rl5oak3inMwf9Xw+4bmWI238dY8L5oDSV7pplbO5pnLwhrkaF9As7B+PxLHSoV+FzZytCpJowNHUMg+UUAfmfKTZlh39U/k/EcOjvr2BozBsnR/ODokM839zdlpXzvtrpS6CiFPiVGC8K1IcQg6mqlCgOh8C4d64DnmHXjuLmzXhRDKIhZIqQjJoxPYw2uwv2CDCCJxG+tLCyaOoZkUJD+kdeKdP+Jkpr5GeSV+GAr8/I8YcI/ghpjY=
Content-ID: <65E97F1DD74C7F4A9F9A63F145915ECC@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938390d5-c529-4cd5-42f9-08d715ab72c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 11:37:20.3134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043723_696392_5D5AF953 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, 2019-07-30 at 17:43 -0300, Fabio Estevam wrote:
> Hi Philippe,
> 
> On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > +&mipi_csi {
> > +       ipu_id = <0>;
> > +       csi_id = <1>;
> > +       v_channel = <0>;
> > +       lanes = <2>;
> 
> None of these properties are valid upstream.

Will drop that one too.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

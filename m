Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774507C51F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpeEgL1D0yEAzviDGV3L03q7lKTX9XXlshG40BjLwEc=; b=b6XKqkJGNxO50W
	I4I3BpIINglk5yekGf4nTcK6hhkKw6rY7cNZ7Z8vevlp5TnvTe49CNjoMty53ICjIc5IkNgpqqTi8
	0veANEsJHRrpbNRZ1VE5v99owS/ar/lr3mIS69I5yvjAG9METWi1zz08UU+/IHYogvNEMezP68NDu
	wX6Wfpv6O90cY+CYSGIejk5hS+cV9TLpbSUYzeqHOKmo/Iz/Hn4s2iJ0LWMDcZmlYYmwbxZhHf196
	J9koQt8ak2TVG62EYBxa3YMrXnH1DdnZYVEsCkJ80NNfxAtOqD6GxnDZJ2jHWfEEGWS990aCf4C52
	WWhgxaMghMvkNWK0tWSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsplM-00059X-0d; Wed, 31 Jul 2019 14:39:32 +0000
Received: from mail-eopbgr10109.outbound.protection.outlook.com
 ([40.107.1.109] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsplE-00058q-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:39:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVpjd/i/eVx0lI8YxZDvRiBAKcOIRrw4DkFkImm15MiRzlscZTd0ZxovgxKGCjL79BS+tewI2VvkkIarKWqfqkF3Fc5VMIBkE7l2kgBUof6mn9ksaPFif9Bd5JD7YsnkOLlXAm4hZnMDgOOasPO3Snk/55q9KBj93xejE1sGeZ+fQI2bl0gQS0bR5FMG+3VUNXMH34CgoMON89dKELUHZNlwiL4ykIOrAPLajsKcu8LZzan29OvjGky/R65U20gE1JrVJlOuUNxhxJS/ymx9bRRRY9AUxCNe1uB+FnZ8qDCbHZqrQFhCztmSzrSrzmLM059+xJ4J32kEvZHurUl5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+XH4gmHLneMT/tW5/acb2ISNC7xH+b3TxM52Z3XVpw=;
 b=LFVc+XRI2frywTEpxntvMyTeEMHpevQbwuW1QWdTCgZPDCE9I8Ndcnfx2L8tI6ClaUSwqt2rK0jeJZ729hyN+rjBEBRaedaEg/Ono4KGNUj9odrigwf5RQBAbJQoeXmbYy7zvx1sDMIv6o/EybyHSiFxva1B4m+IJdXHgO+QtH9UPvvwFXuK/WQSFtICfw2Tpraozab03Y8s339oG1ngtfYwsH5wmLqD5XcY0NhGnpTbbXZGDfkN5sSV8rgSCuNzWwZSKWMB4YoUk9xXjjx/fuGRovVUCWJg8d3+UaBYWcCvq0NVMojev0kCH9+cYu2tcevsvrtTqPMcILHufpxHAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+XH4gmHLneMT/tW5/acb2ISNC7xH+b3TxM52Z3XVpw=;
 b=LZt8N0gxwTpNG3OjfwHbRma1VyZMEQGRsBYrXBSRBITjaivfejD3QkgpNDLdn9XxeTXkflTCfgHHUmy/fcvB73IIVr/F0DFBA6m6/bXBRZlxDlTTnGn5/VPwPQbLkzxeGurLMZjfxLQB3z5eSp1VORMT/UNpHOrqfEDIt3poInA=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB4095.eurprd05.prod.outlook.com (52.134.19.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 14:39:19 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 14:39:19 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v2 08/20] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v2 08/20] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVR5zSfqDLO7YI3kGn89/J0dQlQqbkq6cAgAAglgA=
Date: Wed, 31 Jul 2019 14:39:19 +0000
Message-ID: <8ba2c50bbe5a4a02bd676371a24e2d6f2b05f102.camel@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-9-philippe.schenker@toradex.com>
 <CAOMZO5B3BcpjbnsXuE5abX8YsuLDrkkHU=RBt6w_SpwuRkTvXA@mail.gmail.com>
In-Reply-To: <CAOMZO5B3BcpjbnsXuE5abX8YsuLDrkkHU=RBt6w_SpwuRkTvXA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76ca7865-608a-455d-fd29-08d715c4decf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4095; 
x-ms-traffictypediagnostic: VI1PR0502MB4095:
x-microsoft-antispam-prvs: <VI1PR0502MB4095FB7F3B7AA8D98597F7A1F4DF0@VI1PR0502MB4095.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:136;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(136003)(39850400004)(396003)(366004)(189003)(199004)(256004)(5660300002)(54906003)(99286004)(558084003)(53546011)(6506007)(1730700003)(66066001)(44832011)(118296001)(8676002)(186003)(1411001)(2501003)(8936002)(36756003)(14454004)(102836004)(316002)(25786009)(3846002)(26005)(7736002)(446003)(64756008)(81166006)(1361003)(86362001)(229853002)(81156014)(53936002)(6116002)(478600001)(11346002)(66446008)(2906002)(6486002)(76176011)(2616005)(486006)(476003)(68736007)(66946007)(6246003)(4326008)(66476007)(66556008)(6916009)(6512007)(305945005)(71190400001)(71200400001)(6436002)(91956017)(2351001)(7416002)(5640700003)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4095;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Gh7Tqsb/QjzPU6lVNzYptZ1+gSg7B8clNQB0P4HebHmV5ki1QTe/oTlVFzsbZ3VdbXKDUiUKtY7ILnW1NXBFoz68QX4udRpmMMAbjEf3w50AlWW4Upv9AIw6C+3MUaCGHbTYUOMfTgc7fDi5cPJkZMfS+0HYX/6mkqCaLktODbQYvMdVuMxzaw/UxF9Rbb7e9c/cV3uTZWn066FEz2hmLMJViM5vAUN4tTsY9SOck31vEfjS6OUsMmt5YGAdsnr1Mr6zFTpyE4OT7uRjH7smm4/HOVkq0CqzbL3mSpzjb3+C8FB8CkYRHYrTH+NnUbkwPTtW/W49q54jE9jGLxW4k5nYhaBH3mRQA8N/C+vIuPQQnWF+TcEC3J8HMcuazmrnaFh2nkwslt4HKkEqJ67FQ5R1Eub9ABrjLDhJQw17CTI=
Content-ID: <ADF45B12F529474F828A569027DB3A3C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76ca7865-608a-455d-fd29-08d715c4decf
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 14:39:19.0721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073924_558332_07C6BAAD 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.109 listed in list.dnswl.org]
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
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
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

On Wed, 2019-07-31 at 09:42 -0300, Fabio Estevam wrote:
> On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
> <philippe.schenker@toradex.com> wrote:
> > Add atmel mxt multitouch controller and TouchRevolution multitouch
> 
> You missed to updated the commit log ;-)

Ah, shoot! :-) Thanks.

I will send a v3 then, next week.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

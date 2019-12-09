Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ECF11717D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tOLYN/zG4LJWBzoQksPytRqdevAOK99C5JjFS4hSuYw=; b=BXVlOJD9VAK2AN
	HlTqKcI7aA/PlNKbUQYLfzEQsh7CM7TT5Kr2GAZaLDPoOuy1chcmbM1JobPxIKXXPclh8aKuiJ/27
	e3y7NVgMi6Uy1h/squgjiFGasJMEYAsQa3v2ybZ0mqRfiiYrhaNACwrd2q9Akl4XKSOWjBaSEs8Zr
	hmzT0g5m7l7unkZqySSseLo2ty9Wh8AHFpEvQy9aYpYQ5mZcq46wulycFQNONX1U+VOFCQuIrREgr
	KRQrofCGF9RZtfTp3vwqU57iJAV1GNmIdzVfkhp1gy3cZSrUCJqD9viwPCVvj8RWEoYq3ViKMaQ6K
	sowFKe/DE03EVVHSnFvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLpH-00038G-M8; Mon, 09 Dec 2019 16:23:59 +0000
Received: from mail-eopbgr20055.outbound.protection.outlook.com ([40.107.2.55]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLp8-00037t-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:23:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjgzkqI21y6+YMtqta7/qsyX1kRLS8wWOt6P3DkuGiSx7ZF/UOnqlo2mU5nxl6UqmNiZuqc8p0x8/LIPTL5fr9fhJHIiEqWw4ZkJ3NPTFQOr0rUo+cQqX/8ovX2FPwwnQ1SZsqe0dGwJFCulAN2cCe9rIkHHvR2RKyjNNXQV2qO4oXp523wf8RDQqUPiKiqxHTfB7idiOsV722uhxyCf1TSQ/QN+Agr0dvIYsMOgvtXqOxLkYyvXYPNamf8d42uCOMq6nfojckIMONa3XBU7SOD9u2HIq/hNmjXr+VflW+Op0nrbNFeqLJ831pPHI1Nejx6plAboEpMhKAJ8LimR1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARkJL02bUXCsuU3ALtKlXcZrlZw2MlKqgqxzAK+beJM=;
 b=LqtNB2WGAiNBwRTNk5zeK+X8utNZbGNboYXQ+XiwWp9SlNeUxfx95FBLToKq+LpEF4i//yOpRkyNysDKUC83hT6NJMCamZ+SuFaKdQYR+zP1hakHnBngwWSQF6MHsQqDa6ATQ6NwSUTE4iPtdOxKfZZZVvaLLwG/NVA82V5FmQ5C9w2Gbiw1gXGHgHtCH7eR3JeP07w5ycG37Kuv2q10qHicJi7Rz+bk7GKlhsNgjhicXpqJ/fPr5vSmR7YcdrmccC/5V9vHkai7oAXS/vqpETbVwIAjMkM6aT5wzr+zKuOHBnfQKGzrU3j41jn02MECvnaQ9uMNj9+tyFR5eaxoIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARkJL02bUXCsuU3ALtKlXcZrlZw2MlKqgqxzAK+beJM=;
 b=SuSZ1JmGjmBJVw5YbEHKyZ+HVtTka1HtbyfpjpKEWuFITqWeGEBnRPoHxkvMNGsnRn+sKyDtcyolQakhj1xPRftXEzzY3FytoRhHBqsvSTma1d6cH1R+y6iE7/ukxMCeLE79Qzcx5VqWsbLU2nvKDF/sR07kFO1Nr/ojUKJowVI=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 DB7SPR01MB0012.eurprd04.prod.outlook.com (52.135.141.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Mon, 9 Dec 2019 16:23:45 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4%6]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 16:23:45 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-crypto@vger.kernel.org"
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Index: AQHVp9DMEHInO4wSqU+tSt6Rx6I4SQ==
Date: Mon, 9 Dec 2019 16:23:45 +0000
Message-ID: <VI1PR0402MB348586BEDA9BE13CEB10C75698580@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191130225153.30111-1-aford173@gmail.com>
 <20191130225153.30111-2-aford173@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6346c512-2a42-49ca-46eb-08d77cc429be
x-ms-traffictypediagnostic: DB7SPR01MB0012:|DB7SPR01MB0012:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7SPR01MB00128994075675E07E14ACC898580@DB7SPR01MB0012.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(189003)(199004)(9686003)(7416002)(55016002)(52536014)(71190400001)(64756008)(54906003)(110136005)(66556008)(71200400001)(229853002)(66446008)(305945005)(33656002)(76116006)(91956017)(66946007)(66476007)(478600001)(316002)(5660300002)(6506007)(7696005)(86362001)(8936002)(44832011)(186003)(4326008)(4744005)(26005)(8676002)(53546011)(2906002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7SPR01MB0012;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3v7Mg2eBxrwqFCr8SLr6v+kro3ylsTGTgAYquN58+Up88RowdPvyCQWCRlHaeWO1FXtCay78bpvUOfPn2dBF/12vr1y1aIhp5HkAA+8BmQKJ0Ylizy8QxafbxPsDbr7lkK1UnO6uBNacdAVMR0qUH6nJArRZRYcjGI0i9YbJ1JzscomZf56u2AorRuLiYYeg3FqAo+cmKJeRtszmkXSlj7IoFjt70+JgJiMhrgKer2n/kPwo3UKWsEutniYMqcW/jMBqqRkOMmfXGokrKfeVezfizK3OVRyn4vENE+dpeuWcgWYAE2EaZYCiASr7GrayPgx6zoB447s9BVXT0KVSuIsg3C6auXG2XXJ5vbYULOEOxurIENCU8GeZ8ja+p6VzADmOVukDR6OlRYyuR8JNMK7q/MySiMBvzApGnRzxTEnJD/zwjmsQ6TMqDF147pndnoTETaKN+8PUHUsmK2hTltp6qGiRh75Bc4dFunTTY5I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6346c512-2a42-49ca-46eb-08d77cc429be
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 16:23:45.0475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +XW79rgrmm0mt1k7JDXpoBMn5wE9bz37Vp7XmRv7vRBV44UXnXANL+BZPeyPskOmbm0d4H67w6okZ8Y7WzKK/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7SPR01MB0012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_082350_433425_F3978614 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S.
 Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/1/2019 12:52 AM, Adam Ford wrote:
> The i.MX8M Mini supports the same crypto engine as what is in
> the i.MX8MQ, but it is not currently present in the device tree,
> because it may be resricted by security features.
> 
What exactly are you referring to?

> This patch places in into the device tree and marks it as disabled,
> but anyone not restricting the CAAM with secure mode functions
> can mark it as enabled.
> 
Even if - due to export control regulations - CAAM is "trimmed down",
it loses only the encryption capabilities (hashing etc. still working).

Again, please clarify what you mean by "secure mode functions",
"security features" etc.

Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

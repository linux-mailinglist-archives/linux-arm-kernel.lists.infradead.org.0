Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CB5FB08D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vsvk4PjPYn8T1F/Rr/P4UYcuZIkX8OpKezwd4hWn+iM=; b=QnROy/M57RXNRe
	pcINksLcnxOekrRBgRRM+i6ipKVrusqth/F522TYhs7RdfNZFqwTP8Hwbssx3jXku3iSrUokOnSXg
	Pm7+I2WJ1/1WP1VyGmKYyKZ3G4fnQ2sepKUomQ8I4wfUUFh51oM47EATJRY5C7O52Y/dxL8axD09c
	SyGZMAESs0reCKVYe2aaUsN4XNiT9TrfN0QDPZRV6aql99542IbrAUzpJpX9PLq2Xuxwzdm27hp5f
	/6XRTGvNIcsvMFF0SBksL3glAv5hXioTo95M+8Ilmnrsxbh2+O0YUXCtAG4fZ8JO+QlDB4G9i8X00
	Og3AZVpmzeOjdeZuSL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrsY-0008D3-En; Wed, 13 Nov 2019 12:36:10 +0000
Received: from mail-eopbgr130080.outbound.protection.outlook.com
 ([40.107.13.80] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrsP-0008BN-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:36:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NDbZeR8hbtdRkKql6oMwiwgqWXvDd8xkoh5f9gHqYOJJmgrdUBKbpEmCqEGgod/bpFmA18teYkwIVtc8s+SBTVxUuYddy5ulvBkFOhC2YzWk1URQ7SpphU3u6hnRz1Ww90fKCRmPA/LJEvkmf0zlckBp9bK0nRRi/Td1Xa61TYXbbxETzeX/V2lw66bwd2Pu5j2/uO3EGXHmoRA9L2tmZqOJL1IauqLCtH2YBatVB2qtqTCT5dAbow7g3f/JOkB9vbUV2anBp/81xCeHmTX+Aga6RfiUKJJ7UOmats4DOcyNs4fhvxas+2HCNaTnXTRlTOodES4BkunS6+TSKDQc4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzyCOArGt4A0Ph0m6l4ceE7jupZQRscXXOAjKBbgJ+U=;
 b=HMSzjm7ZCcpo3HG6ul1INqwJ9+onv/ZEGVHFGY9TCTR36bOT1TffgED0XR7iaLGmXMGz83McQpiKsXogi+cZeGV1LApgPPBg+NdGkf+CXx9U5F1G1hnFPIPTK+Hrudpwj7JillpWo7vjA5+RztG2CBk4I5UX1jGp2edDw5L/PumjI8ybVwC1Uy3viZuX3aYBAz8gboBCKFHCflQxI+SIXBfeybbjExADqoNhnLarnOdU+Js2zXMSSWm7El6Ij3uOK44xHyuqdLzEB1+tpw/9FuTrepj7xQlSgrDMNtajtOpwo8itViR2I7/a1M2OAEKBabAVsLpKlr3v2w/t+OBKzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzyCOArGt4A0Ph0m6l4ceE7jupZQRscXXOAjKBbgJ+U=;
 b=eP8L/6sjmKOxXT6i4lxJfBaUn6AUu6NF7e5hRW7QjPTEXVFBwADqciKapNemKmmiWMn2EpRXd5/LsaoiwH7N8z2XX8GiwbTamghjMmRjwU9W0SDLDAliuJxTut/iaTJcan54hBhElQ5NdgNmKQG2bixz0zDhtnkTiyQYQ0N7jV0=
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) by
 DB3PR0402MB3769.eurprd04.prod.outlook.com (52.134.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 12:35:58 +0000
Received: from DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8]) by DB3PR0402MB3835.eurprd04.prod.outlook.com
 ([fe80::3846:d70b:d3ae:8e8%4]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 12:35:57 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Topic: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Index: AQHVmfNueqAnKxSTgEmcfZ1/aON4uqeI8eAAgAASX4CAAAWlgA==
Date: Wed, 13 Nov 2019 12:35:57 +0000
Message-ID: <e4fb1c1506c5a5566ed20b564970a97eb6b6c94d.camel@nxp.com>
References: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
 <1573629763-18389-2-git-send-email-peng.fan@nxp.com>
 <83bed3382379b465494af6b55881e8d05e21c634.camel@nxp.com>
 <AM0PR04MB44817EBFF8CF1BB6E2CE369D88760@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44817EBFF8CF1BB6E2CE369D88760@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 78ba2a28-ada9-4957-e76f-08d7683608b1
x-ms-traffictypediagnostic: DB3PR0402MB3769:|DB3PR0402MB3769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37692A93F52E79174D920BB9F9760@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(189003)(199004)(66066001)(44832011)(486006)(2501003)(102836004)(99286004)(11346002)(7736002)(26005)(76176011)(446003)(3846002)(71200400001)(2616005)(476003)(2201001)(25786009)(36756003)(4326008)(2906002)(4001150100001)(305945005)(86362001)(6436002)(6116002)(66476007)(66556008)(64756008)(6506007)(71190400001)(229853002)(66446008)(186003)(478600001)(8936002)(8676002)(316002)(118296001)(6246003)(14454004)(256004)(81156014)(5660300002)(66946007)(6486002)(91956017)(76116006)(110136005)(6512007)(50226002)(54906003)(4744005)(14444005)(81166006)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3769;
 H:DB3PR0402MB3835.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xaqmwdu+LAmJPkGTSLuQIhyTYoOteaWOCwEYKrlaWRYdxGXzD3Ed73mxw6wNNqq36Vv65Z7Ekui14tXawumaZ6GlH1mZaLNqBgTtiKiHW81JESs/RDsAvZFiId04yriHVP25zVvecUj9cQ5cV9+4+QMBn5aONAIdjFLzcWmZXXLopwJX4y/Pp39zBZB3LffXQFU8KWaZSMl0bMb0d/QcYA/HFUhljYI7q0toaLGgaQeqbttSl9gW16r7RNFaJKJ2vO2WOhx6nvEGbxVXxTxwTQVt+Hw+cqzXvQzEtf3huoTPZ4rDQitvA+ubjOHz4Stpei2smwCW0FdM8XRQEUarbStdiDVyb+/UmQFRl6dW7DqqRKSGIx64bLeXzUftKRuEHh9VjSlXVRUERx96q2sLI6LUtzq9HLFDWw4OTgg7VaDc95pwp7hwNwwxK+vM1DGS
Content-ID: <FEF3A002E7DE124AB9ED3C0AF6B3C38B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ba2a28-ada9-4957-e76f-08d7683608b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:35:57.8534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRczFzCVCPrvEPrgW766ENOlHdYB2NE7ARjxYlJr6jy0gq4RMPsgwoavODNgQ5oiYQRpvo1S9Xem3e+vU+FTzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_043601_200825_2BE8895D 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-13 at 12:15 +0000, Peng Fan wrote:
> Hi Daniel,
> 
> > Subject: Re: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
> > 
> > 
> > On Wed, 2019-11-13 at 07:24 +0000, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > > 
> > > It not make sense to use writel, use relaxed variant.
> > > 
> > 
> > Hi Peng,
> > 
> > Please explain why this change is needed.
> 
> writel has a barrier, however that barrier is not needed,
> because device memory access is in order and clk driver
> has spin_lock or other lock to make sure write finished.
> 

Make sure you add this in the commit message for v2 :).
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

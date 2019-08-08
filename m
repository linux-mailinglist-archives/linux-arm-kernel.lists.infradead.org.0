Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4EA863C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG9mpHNeEmr3e/Ll4vYd2mq0soRS+NpbyCVSMpkdvhQ=; b=mATdSYPHRiD2A6
	RXOPRKT1j7Nr/G+MdNifC2QKnWtBwzXLCeteYk4kOcY/xLky5O9lffev67n+P5vYkr0+rlZ4NM6xm
	v1528OHnLtFYhwSJMU6O6sMeWBGxxrTuvfzhV0Fc+Ec4DMiArsiKx3Gr15kLKnKu2dNULyemUl/cV
	b06Kap9wxrSj8zheg5e2aIwLVUaYa58z15zuIOA6qJZIMfmtI7xa0tEawIXF+sP+gpus6J6ceTuRE
	CMXGqzzNUbR3GomCRs8q0GLF/flV4jSqzDoUHuCgUSxkpcDgu1jMO+BO2TBM3TrGbIiS+GZxK6jvY
	gLG7rWMVBkSvEB7R1WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviuC-0002K6-Fe; Thu, 08 Aug 2019 13:56:36 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviu0-0002JP-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:56:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fL0egpTj4bHJp6F8rArk5xvtRZpESJEvrLOrhOMrZXlPczihQkMHHcQCE/GCaHmCb9FJ6CShKa4bafbsWfdeTXB8Kjlvd0CSOIy0DP8C3/dNIqRWQuonP0A7YYpfUd9FSxiyFgxz2g+4KP7jXXRzOp5Vhvk0tf8e/woz7TD86kGJ5DYssTPwZuczVri91oay9Xny17iJ9wbcMv2xICEz2ldxXqimkuVCYBC65g9wLb/Sf+uRZJWd/epRrXpYqP7k4MPlxp4f8OHPTevI0v5G6kEik4GIWI+2CGHyla9q/CFJ9qAuS2T7fHAdGFXe9vmjE7VV4IiFeevh6P5GsF+j0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kq4efAqgMXFJ8RWtgsuq5vFA9xuKsvBTjnxwTVRRrxY=;
 b=XpSCfcubJPoN3dzV6GlQ5Zfwo9BBEGgqUHMPWjXOdUNTkrz4LN+d0oHk8JqaTDDrOn3760Jj2uI5Fd9ngoCeq8nxgW3LeqVL9ssBmm62J66MpaU96sPvZYRVlGDq0Zui3ydCJyNaydTF7yQQ0R5wa/TA5+OHr7GiZ/Wm1Xu2oeYglStlVDSqRW2u08V8A5rfWjXkANOUKxSwVIbOLCnX2k3zhEDVk9PG+f0MFBCOqU9ejvbGdNqOdpDqLA7F1Bm91pdRFqZJYn8zIErySWsAiyhz4FZhZQO+Hx6tef7weq6XbSd0/1EMmOu/onQOHUgabEROKr0k7VlD/cM9SCSw3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kq4efAqgMXFJ8RWtgsuq5vFA9xuKsvBTjnxwTVRRrxY=;
 b=kAuraH0esOwEZw+ApJkj6mZ9AYwg71uCsgrmaeM8/w+uc/0MLaFbgWfXMuGhYh8s3QNZ155PwHGQs5Di4M33xu3TpdQJPFT0DQ170QahBch5/6XxASiQdZ43NA4yVZxP1B6s++04RApdMqs40esljwR1NLRk+y0DbI48RF3vj90=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6271.eurprd04.prod.outlook.com (20.179.26.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 13:56:19 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::64a3:e4eb:ef50:9d8a]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::64a3:e4eb:ef50:9d8a%4]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 13:56:19 +0000
From: Frank Li <frank.li@nxp.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "robin.murphy@arm.com"
 <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Topic: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Index: AQHVTbTc2dpn1miwlUae+nfBRVHxV6bxRokQ
Date: Thu, 8 Aug 2019 13:56:19 +0000
Message-ID: <VI1PR04MB4910CE0F28AFD6E278EE106088D70@VI1PR04MB4910.eurprd04.prod.outlook.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2cbfc62-5e27-4362-b445-08d71c08305a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6271; 
x-ms-traffictypediagnostic: VI1PR04MB6271:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6271B6F73D84C6236FB73DFE88D70@VI1PR04MB6271.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(136003)(396003)(199004)(189003)(13464003)(53936002)(7736002)(102836004)(66476007)(66556008)(55016002)(305945005)(2201001)(66946007)(8936002)(76116006)(66446008)(9686003)(256004)(33656002)(64756008)(81166006)(81156014)(8676002)(53546011)(6506007)(86362001)(6246003)(478600001)(11346002)(316002)(4744005)(476003)(446003)(14454004)(66066001)(6436002)(3846002)(486006)(44832011)(2501003)(5660300002)(25786009)(52536014)(186003)(229853002)(71200400001)(71190400001)(7696005)(76176011)(26005)(99286004)(74316002)(54906003)(4326008)(110136005)(2906002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6271;
 H:VI1PR04MB4910.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sIJNvRTCvqJG7B8d0Et9+G81nTDbn/A68pMHc0MoCxvQ2hV4QS2AeAM9AvH7X8RVsND77ClqfZheL4z7MsA3j5g/b0IFH+E0hlvD/ggXNap0dkgy9BtPl8hyfMEzP5VbNTyG3juZmVsa0Vvste3rbWHW0OxIjRERW+zz/2lTXa9ax5pkHnsnXqHsK7jSBP2P+in2QLJhKuSLc/UpRAcf+JPbRjT1OLOj27/E9pQ9db27s1ZPLeheRkyqvY1SFGD3pQn2ZiZIEYSEs4rTJnkXWBiA7ATIT6xOkWidn6RuZ9AA0slqW7uqfNHwiosX+AbwWbSjF8oy6N8JgU8UGsqSSrLV37ILHag6mPfXDsFM+aoU6Si1m81epCqMUcqM1YMDTtoDPVripXu9kzqfjpkmG4da8L4i8K2Y6v2AN4T5d5E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2cbfc62-5e27-4362-b445-08d71c08305a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 13:56:19.2271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFB13qahWSQKhmYr246mP137O3qC2CYP6hWC5NDzUwxT2wKdazMUBtmcCs4Y2OrLA+DBmfSueC56Je6A3XNjrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_065625_045752_0F1A00D9 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Joakim Zhang
> Sent: Thursday, August 8, 2019 1:45 AM
> To: robin.murphy@arm.com; will@kernel.org; mark.rutland@arm.com
> Cc: Frank Li <frank.li@nxp.com>; linux-arm-kernel@lists.infradead.org; dl-linux-
> imx <linux-imx@nxp.com>; Joakim Zhang <qiangqing.zhang@nxp.com>
> Subject: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
> 
> Add AXI ID filter for imx8m ddr perf.
> 
> Joakim Zhang (3):
>   perf: imx8_ddr_perf: add AXI ID filter support
>   Documentation: admin-guide: perf: add i.MX8 ddr pmu user doc
>   MAINTAINERS: add imx8 ddr perf admin-guide maintainer information
> 
>  Documentation/admin-guide/perf/imx-ddr.rst | 30 +++++++++++
>  MAINTAINERS                                |  1 +
>  drivers/perf/fsl_imx8_ddr_perf.c           | 63 +++++++++++++++++++++-
>  3 files changed, 92 insertions(+), 2 deletions(-)  create mode 100644
> Documentation/admin-guide/perf/imx-ddr.rst
> 
Acked-by: Frank Li <Frank.li@nxp.com>

> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

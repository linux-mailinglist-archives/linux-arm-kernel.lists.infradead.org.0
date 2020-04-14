Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBD11A8EE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 01:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhxdgHFyGqevNfkNSa9kqRL8EKyg6DgQ3z7bKBEEQrk=; b=K5FcFVHJAWn07L
	rM7nEHFkDz5g9nsJpJCFi8F82SY8dQUsR4DEa+59j2/EKpW+bZQJyPSoHFNm3AgdgddVd/wJDjuTy
	PeU0QSD6HKqStU80OOmRyA4XL7G+T4ONBkRSfAJwJxiMBdVdJ/3y/CiKNzfnVq3HXsbb0tPCzQ9F7
	JnIpXICI7jJGel2zX5g0wwZASIxxCHD/D/LKiW5+Ibbc9oAiMeG1WVNsSGW/oX/XWD3ytfDMhSnb7
	m4DksD0WQljTBGYYY368yIzNS034BAYnWvXkoAI0g82oNCaM4dl568AL2NbkcVUwyiT00GewlUPaD
	/zYOK+rQTvHYXpre7EcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOUbx-0004te-Cw; Tue, 14 Apr 2020 23:04:57 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOUbp-0004tB-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 23:04:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PeHux+xRrktFx3EmRm/IHrrE4m5fUCHWgFnarV3JyleAgXOEcgTPi+XnLEnC9Axuox2VOo2IKfhYdQLs6FmQIPk+3jTkf7Xq02NCoheuTIKdQUsruBLtxLu2DH2PSbplAfc0Sxut5RzHEv9J+mCCf/lbPQdYEqD7vMQ4/2XOSHgN01FN1Fknx1K2fz6iKc9LZWcLTeTWNbdV5T10lNsVxXSFFGxHiBGcCpjwOBOCEonOPVl8USSUx4HtzYC3v9SHQy4VCgW+s7rKe3x46BXOUTULnB82LFWBYxrlfQf6SjRDye85yLArQDr5HsjphyraYFgAg8t/Ct57imJIuZlbSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk3eyvmEu0cGdo9crw47iVwBRhWCgTqTQ57qHpPk2Ho=;
 b=URF2RfftT8aX1X0T7nI9rRdgJzI5OhjXigmHOsufGLVuQaaHJ6s3o4aE38HV8HJUjy/jY10ck5XGm5QGFV2g+UwvnUao4vZ9PnaMUXDG7F033vJe0xNyjqcS82HdseJHc6OERPux2GF7l4olodOQe6yfuL5F0u+ngBEkGwQXX+5NXO9ptB1ZjTmMtFRYo4e4g3KUHsAzle3yt7276dfjiwzhQwI9qLVX253SiF8Ke/vWeqHVKJSsr5xLbnypmON5HcDf63IeEBz7Ud/OKHwPQQtKOQFIf1uZiMeTuvmpqpoc2DdsF6Ni4ewERmgoBJM7trZyBqnzNqDTkZEyb8GJQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk3eyvmEu0cGdo9crw47iVwBRhWCgTqTQ57qHpPk2Ho=;
 b=qkQKYtZSSpljO7VVk1AzheuyTuTLtSZdgEgADGD2J+FqKgYWbx2+jhvqOKTavLZ3BqIBw3BzRCUl9bp2Tz8aER2uibuhGgo0w8w63/e0/rxB4PzbnaO/SZIHSNm/2AJECaENP9sjR0edd4cvCMN4yqrxxMKafKWMvmIzIrJgG5k=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2920.eurprd04.prod.outlook.com (2603:10a6:4:9d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Tue, 14 Apr
 2020 23:04:42 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 23:04:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 0/4] ARM: imx7ulp: support HSRUN mode
Thread-Topic: [PATCH V2 0/4] ARM: imx7ulp: support HSRUN mode
Thread-Index: AQHWEWDF3qNLhxLm4UOCh+3sub5JH6h4otcAgACcRgA=
Date: Tue, 14 Apr 2020 23:04:41 +0000
Message-ID: <DB6PR0402MB2760232F4EDEB9D9BE42F71988DA0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
 <20200414134419.GE30676@dragon>
In-Reply-To: <20200414134419.GE30676@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b40e0e1d-2a15-441e-b8e9-08d7e0c83729
x-ms-traffictypediagnostic: DB6PR0402MB2920:|DB6PR0402MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB292037454EEC66F6F387388A88DA0@DB6PR0402MB2920.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(83080400001)(52536014)(66946007)(33656002)(55016002)(76116006)(9686003)(2906002)(54906003)(966005)(7696005)(6506007)(64756008)(66476007)(316002)(66556008)(45080400002)(26005)(66446008)(186003)(44832011)(478600001)(5660300002)(8936002)(86362001)(71200400001)(81156014)(6916009)(4326008)(8676002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tiZqzEPKuU1A8JPLsRtL3bhNeZtw+Pz/YDGXcJFj2cYHMaYGWybMtcwDY9Q3ovZuZq3jMVdW1N7dh5SFfm2E5VoMzbrH1SitlG6IKBrqK8pxxRlhJ75T+YkTluXlxqcQEnF2gcUFnYLaU27rWIk1X2Z5tcaWSPKoYSDbAN/2wy0kia3ZURadXilSMXj5vKtFW7v9Wrz5QZ21RohuitSBlBXBSzuEXqgl8cFyWtdaXS6a30mWbDSrbDzwRhdLa8Lbus3a96OMbmFDbBBBOgU2G9n0ZrHfLYT8xuUUjFRE/fIBV+FUPTX8/EwMUYhNRCJ55yvSuoQqgSJ500psTeju2KzA7AezyRTlqX/qA03w9k/ljSRKX1WSknlDvLzU166Y6pPkmSm8eqmkYddHzS0UHz7upvRF5A8uR3lYW6vTIpVOUThkCatJRuFy9rfaiTFhSBPdY2WcSxRW41goEshtDaLD7rGh0odICLfNJ5H68i4HXoXyRb8GsQAXbt0UKBow
x-ms-exchange-antispam-messagedata: 2t2oMZsLzcqr2vAj4WOo65XKb91AQ4T9cxu95LT+HBAplE8HGKM6bZN987SdtEmnQSVCzTiyoe0wXCckhq0OzG8DWGyYkBYMQ9r1YvwvZ8R8edyTkH0xeoe0DlbFPQoai5c876z0S6plnwQ/HqLvog==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b40e0e1d-2a15-441e-b8e9-08d7e0c83729
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 23:04:41.8977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOQvS1JgNaJ0jyQX4ebDOgltPYk26EUvkkPKwyyzBWGoc9Pm7+ksRDtGR5Gz6i99cUepH+SkTlRp87lAqf7LoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_160449_826597_C3447143 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 0/4] ARM: imx7ulp: support HSRUN mode
> 
> On Mon, Apr 13, 2020 at 02:49:04PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > V2:
> >  Fix dt_bindings check
> 
> Confusing.  The series posted on Mar. 16 was already numbered v3.  Now,
> it goes back to v2.  You should at least have a note to explain how they are
> related.

Sorry, this should be v4. I format patch with wrong subject prefix.
Will post this patchset again with v4.

Thanks,
Peng.

> 
> Shawn
> 
> >
> > This is a splited part from V2:
> > ARM: imx7ulp: add cpufreq using cpufreq-dt
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11390589%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C5d5665f577bc4175d56108d7e079f573%7C686ea1d3bc2b4c6fa92
> cd99c5c
> >
> 301635%7C0%7C1%7C637224686727427611&amp;sdata=LP0xeyGrCzZcR7U
> ruDnPqAFT
> > qzFgdj68hs41%2F5eiWrc%3D&amp;reserved=0
> > Nothing changed
> >
> >
> > The original V2 patchset is to support i.MX7ULP cpufreq, still waiting
> > the virtual clk being accepted. so to decouple, this patchset only
> > takes the run mode part.
> >
> > Peng Fan (4):
> >   dt-bindings: fsl: add i.MX7ULP PMC binding doc
> >   ARM: dts: imx7ulp: add pmc node
> >   ARM: imx: imx7ulp: support HSRUN mode
> >   ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
> >
> >  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32
> ++++++++++++++++++++++
> >  arch/arm/boot/dts/imx7ulp.dtsi                     | 10 +++++++
> >  arch/arm/mach-imx/common.h                         |  1 +
> >  arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14
> ++++++++--
> >  arch/arm/mach-imx/pm-imx7ulp.c                     | 25
> +++++++++++++++++
> >  5 files changed, 79 insertions(+), 3 deletions(-)  create mode 100644
> > Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> >
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

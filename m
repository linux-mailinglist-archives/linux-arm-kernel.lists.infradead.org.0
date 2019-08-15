Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EBE8EDDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 16:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1MxRLcnVe8eGPMivbJY4K+0bVDSX8EasIlOnk0ffT9w=; b=NX63TKCTkFzMaV
	NZae3PtlffhSVd4mZt2jqE/6b/0Qn727rGMIzNRYnXags/gNZvss8GTZ89l/Dbr9hO8tSUa1xg4Xi
	rGjRg+Ms6hk/TEWlJUDZ7YXt4aifnZ4tHABurljMVrExEtDhmY0AA4ezFsG+v44gHbws5v7YZXvhe
	njrT2L/9vlYjFokWAh7oPsu6FGrpOXPsr3EIfHxVSX1BxM5jPUqAaXWTkdLBOf9qhDrXlkw5mgEvw
	C3KbW+gm2ol+Ofk5QkgoBpq16QlGVFyXieMH1JrA5/FNdjSp3KyFukIVPvSfKg3uBdwDbtBalohEr
	FCkSYAFMFfxk8smsf88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGUn-0006Zj-5l; Thu, 15 Aug 2019 14:12:53 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGUa-0006Yq-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 14:12:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZhwmsFkSN0vxkCkGyqI607hih1Jyt8qkHv6Lx3p3TDBJouPNtHE5LV8yXPNz0GpbNf2LdNkmT8LG5P0qHH93hwo9RQa+DpCiDBfkEU1hyLPBRMDiRK6WLc4xxxYymQWUuYMVoUQjHL/jDpV069isQSAghCVZQ+d9hLZ8EseCfGHHzyUgCz21f0oYa2OsRSSuzdQiUzXvQqxEMPcettQ8zrpz3eNuTwtpHahjCKcOaVb4GBlTnPZywPdPUGYDkErxLtoo7vnQI1pmP3NR8IELMOOiKP3AMJG9FPXKiA2/Y1IyMk89l8AaHfEMp+E0gOHUntPY4yt0zUfXR6urezhT2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SP/CUayqcLST3C/mXm3bCN0femHBOR7Q7RcvxuyHWQA=;
 b=dNSFv7qoQcDOtHW2XRizcbPz6HAI7PVajKTSr7ejumvfcrzl2O/LGh+EBT9XjT2ehVzQAZywErTfWwVlz7BGOAvzLZ0ClFujRIPaT+drRfVrpfp8qhBT+OxP6mJA5wnXnWTciA3xYM1gd1vNeqrRcZPn+2zalNiMSHYwQYvvfBQiv4fuSXmY0E1TABWYwX9Rm9u0SYZx2ctIwul4lL9M+LVMvMbNFAr61bpTIs4Cibc8PHMq5MnD27i3NNFyLUFkzsNkBl6zITDR46qJ7n5CW06AVa79PXo88tM3FBIN7cWA2ApOlHORvIbPDEPih6ZnFp3IGPr9076PP3lqU+KHCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SP/CUayqcLST3C/mXm3bCN0femHBOR7Q7RcvxuyHWQA=;
 b=DLZFnnwuODjxoiNL/HdadTqonmhgqQDfXJOGVAO7N++12Bi1KuntpC9dm1SRGfnNjHBDXZOTR6+eFvh4NKnKN163LOu+Ac2MbNL6ILaWsXMafRk2Vq5nQkD7Ydu4esDP58FvQZTBGnl+guO8qD2aGAhrTL4hNQ+GFB0e8OwBYZw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4526.eurprd04.prod.outlook.com (20.177.54.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Thu, 15 Aug 2019 14:12:32 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2178.016; Thu, 15 Aug 2019
 14:12:32 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/6] arm64: dts: imx8mn-ddr4-evk: Add i2c1 support
Thread-Topic: [PATCH 1/6] arm64: dts: imx8mn-ddr4-evk: Add i2c1 support
Thread-Index: AQHVU1si38e0meSW8UGiSZzBVGty8A==
Date: Thu, 15 Aug 2019 14:12:32 +0000
Message-ID: <VI1PR04MB702358167ACAFDEA83F64D17EEAC0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7916f76-f8aa-44eb-b21d-08d7218a9d6e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4526; 
x-ms-traffictypediagnostic: VI1PR04MB4526:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB452603589CE2C1FC641E96E8EEAC0@VI1PR04MB4526.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:403;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(189003)(199004)(2906002)(76176011)(9686003)(476003)(8676002)(6116002)(8936002)(81166006)(14454004)(478600001)(44832011)(6246003)(55016002)(86362001)(102836004)(3846002)(7416002)(81156014)(2201001)(25786009)(6436002)(229853002)(74316002)(5660300002)(558084003)(446003)(99286004)(91956017)(4326008)(186003)(66066001)(33656002)(66556008)(52536014)(316002)(256004)(64756008)(66476007)(76116006)(7736002)(66446008)(53936002)(305945005)(2501003)(54906003)(486006)(26005)(53546011)(66946007)(71200400001)(71190400001)(110136005)(7696005)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4526;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Uuv5oxjN2qJ2F8TSDPy3dSBhczsEfBrfrz7O4MXAXDL75sz8BDEUp1d/RSuZuUxf/5QrWiCiZPKKYA0H+l+CcZZVGng+XeKQBewcsg6xwMVeTnEOalGPHZ+0F+3EFPUFQ3IzyBbHhsCqRl2avRYkDoM885WZXtVbmPq9MQSk6Q9KTmD8YGlBJ4hvWPalk5mHfAp/GNwzWrFsfZGhZR944GX1oWJF5Df54j71kvztpuwlMr6UTDEul+bHVkdUF+j3Pi+jbsm+833uOGATBuvwip2vellzCR4gmnsqFn70uT6ODH+gEP67QSbcC5Vy4f4A7PEFUdguZKfm6+KLj6pb7gxwSwEu2gZg6DEdR6GZt7/Q3YIKb6lGtOns0LtanMKSK0XBaAz7l9xUqSmwKn8EvjV3nc8UN2W8zkxPncIwPZQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7916f76-f8aa-44eb-b21d-08d7218a9d6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 14:12:32.5474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NSJOnmTR+DV04tLdy//BWGaUXctWLvkfDCHBx84mOd2JFCGR8h1QWc9x3LEm/XqsgCbpo1EfXnlb2Umde2SjfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_071240_634685_ABDA0836 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.08.2019 14:18, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Enable i2c1 on i.MX8MN DDR4 EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Didn't see a cover letter but all 6 patches look good:

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

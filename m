Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4425FB03B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK/lR1U2HDQElV6mSp0v5MS1ip++NjH3Nzyo1LsKnf4=; b=n91+6zsXkxe2l9
	zOO1F9eRCVztzNqDMAFtDzBqUaSqmbZAg6x1Oj74rgTrhUb8BIZDewFjHaB6pdtvJX7wu5IkFxaPN
	DAEG7h5RARujQjbkA8xcNiP2s3YvQ8z8MO1njPDOVE50SJ9moUqBpygwnLq8ahbLGAoo2M4IFYgQO
	vI93k5eZDI5CejxSHWtVDAizCEmBXrL9taCi4Q4slvP5+kU4nHYI5KaI/d6dnUTq8qCRuGKd/eG1u
	j4e03MNA5aiLt2N9YI6NyAmT08AB+81SpOPdUTuaB81lcye2mWIgo+nACbz7bQylCm6pw6KmDLKYZ
	sC0+XShiGfqb/B7Zw/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrZ1-0007KD-3q; Wed, 13 Nov 2019 12:15:59 +0000
Received: from mail-eopbgr50079.outbound.protection.outlook.com ([40.107.5.79]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrYr-0007Je-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:15:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yd171bM4riR8OIGgDY/yNaxl2VLeypbJuirQSPq3mjSlxqj2hKGej8X1vqSeICCcQ2jJswwl4xdlJfp2zI8RPxcj0vt2vRaCQ6bN3aQ0Zw9XP6GzdwgNNjGKMRx00K/+damaX1Bx/NDh33IJC0P53+2sQ0tjnrXT/Vws6qSrnM4mtqvFq6nEPE5lQW3AHO8XDJw3aq4VCNtQpkjko6BkPVNgbAYNn560YrBT4f6PGUheCV53F+Mi85+IgN8Q/UeVsZwoUukz9mGjAGsmGaRJFtDSFr2YOMwC3CA4SP0ePq9qD65YyegI1n6aqX2UO/WYZ3hLLeyZ7ws8P1uwIBks5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=riEDNXnMuo8hNvzflIh6uV2CaAM4u53S4rfwKMOi6rs=;
 b=dPQH41NPz4mfngIUBHDeFnXpeHI1nYc+yGA4UPN4hsyCm8Cfhb6fWmXCkq0FOiZZdUWgMINnkj/xPYp2PGovgSc/S4Qq/uYlMGaa8MuFKY8cv/Da6dZfwdL8cjZnunwHbdhvliksU9qpANueJUuSv2OkpNKgjKU6I3OpjbsOX5oDABAmV52uFXK6jrkrJFrYPA9smTWAIZL/d+YNKH0/lBLO7soLbQGMM68BH/mcb3vXroSC75YQvPZ0SmGd6ckwL1l24N5jGZgyQYqER4L8Gr8FWabBTfv7RYvcrNdxf/Plee6eq9gGpnH4uvDipVlsVsYR5Pmw4hc9gpj/PP4WiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=riEDNXnMuo8hNvzflIh6uV2CaAM4u53S4rfwKMOi6rs=;
 b=Z4DISI/QYree0Yfeq9qDbJvNFT+zSOMdFfarYczZi/+li5W8eQwg0RjH7xVUcnGziw1ZXZp0iwMrhOywne+JIcwKDOjuZkhRJhfNBpP04V3QGMQrMHdL37E8bu5SLx3Oxa1uBh8VCqNnKd0mz0yQ2oKZV3j6oaJaqYZ3abU+zqc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6340.eurprd04.prod.outlook.com (10.255.182.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 12:15:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 12:15:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Topic: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Index: AQHVmfNuHTJgCIWBG0W9BBzI6iT6UqeI8eAAgAARuqA=
Date: Wed, 13 Nov 2019 12:15:45 +0000
Message-ID: <AM0PR04MB44817EBFF8CF1BB6E2CE369D88760@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
 <1573629763-18389-2-git-send-email-peng.fan@nxp.com>
 <83bed3382379b465494af6b55881e8d05e21c634.camel@nxp.com>
In-Reply-To: <83bed3382379b465494af6b55881e8d05e21c634.camel@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [49.72.5.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: df422caf-e2ce-4a4b-129c-08d76833361f
x-ms-traffictypediagnostic: AM0PR04MB6340:|AM0PR04MB6340:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB63408881CB0F62B844EAC63088760@AM0PR04MB6340.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(366004)(39860400002)(189003)(199004)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(66066001)(86362001)(5660300002)(2201001)(52536014)(316002)(9686003)(55016002)(4001150100001)(8936002)(81156014)(8676002)(2501003)(81166006)(54906003)(110136005)(4744005)(229853002)(6246003)(99286004)(6116002)(3846002)(2906002)(74316002)(7736002)(305945005)(33656002)(478600001)(14454004)(102836004)(14444005)(256004)(6506007)(26005)(186003)(7696005)(76176011)(44832011)(476003)(486006)(446003)(11346002)(76116006)(71190400001)(71200400001)(25786009)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6340;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VPZEn4Q3DOgi9ZqJ+8epzL2RmSH4bHvR13k+Twe6Uz+Jgt6pbXpBoyx6R78jH2k0jPkhmMdOqShN6JyqXs/HDhZnfGWI8T9RzyQ6Hfu3h8fNMm5EMyiwUuCkf2+CkKRHEWt1xmXbwPN96311ID0HIHBVmtGka4FDLBHOQ8Syab6lMhXvYuu92rkwavvX1w7viRzsK6ajcPIpCqdAVrKilOrFuLTFy5rvg7jRlDp5Im7W7EoZfRJRtro9uYvxY0Cfjmp9mXQIzFcUHko849f8fD+bISt9n/ZabRcKz9FQiKxXfyrL7l3hFnfIDCVrUKOvWwmvCpombXaGPJSgDQrgLZ/hf+IH4IrromMyQhF0PFq+I+X8Q+yxPqadkKpPWxUDVGqdTOBzV+t1uP4RX3ijiEV57prk8kFXDgzlI1kG9PsUV2ZyTx9sTqNzfVWBtJdQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df422caf-e2ce-4a4b-129c-08d76833361f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:15:45.5102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCx5Quhli4z8JhsmeTNngR2j+88b+f4lMPHGDJcSUwoEuD/m/AEwkrl5B+k9jF2eFO0bbIsMx49ArW6XyTGfIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_041549_995652_E5AC6980 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.79 listed in list.dnswl.org]
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

Hi Daniel,

> Subject: Re: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
> 
> 
> On Wed, 2019-11-13 at 07:24 +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > It not make sense to use writel, use relaxed variant.
> >
> 
> Hi Peng,
> 
> Please explain why this change is needed.

writel has a barrier, however that barrier is not needed,
because device memory access is in order and clk driver
has spin_lock or other lock to make sure write finished.

I would hear more comments before I post V2 about
the change and other similar patches to switch to
use relaxed API.

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

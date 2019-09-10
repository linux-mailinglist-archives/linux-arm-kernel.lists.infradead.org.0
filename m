Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24E2AE26E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 04:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQ7190evOnz7hSxIkpmG8X6jLQG0To7NT6QjTl7sI6w=; b=qdRCAmH7hsPjb9
	FJTOasHrWfVfoNjjqOMGks9XDnvAxsy6+xC9SlV2kyqrqWWrcYv+UE7za11YBrDjjbg2qBOCgPcqg
	qBrZPGwA9+rSiEefNIUErhgo4mfIl7QMoTqAjGHZT454mSQP1vaNxbsEZOE2+HT2fiKt2QZtiHRWi
	iE4koVebrIfgVycIFEdiVCBtRDd81oBy6y6Wr8as30XhYtqD4kVG36Vp0Q4JlhvwRrISjdXAyhJ1A
	OXjiUMJU/jrfMaoD61PbZNaqHMkhe+G3vWKi60voCUJnEiWrWkmX0kR+2dQp/ca0oaNvDiMrD4JaL
	m07g3NiP4BUTVwaNwfyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7WCb-0005c1-AQ; Tue, 10 Sep 2019 02:48:21 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7WCM-0005bF-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 02:48:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXqQpO26SoHspM4ugLIzXrWTZnCCCCLAxN7rYwLMbRKQ1SgxbMuf2ikDivsRR05T915qhkihHNpXagUqSumrvM/I5rvzkiDEjnJUzsDAEXSFaH2ynQ82nsqckITXpYX5SDHAtBs1XzOfmaZ/A+JzYI/eczyC3zJjyZ8dve0enr4aP7AUioWHyHk8qSXhMbPIXM2pM1W9OU/MjJ4zZF0d8Pib9MiblaLAuAR3cASRyS1mF2QXQP4rFi9kvA8Zz3gyE/nUHazS1OkDfJWsJDJ6x9ppaFVJ5zs672aAtTupXDgaVOCySSE/qoVXXonvsBFL16pYP5Gd0YJ0KebqMZvMkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93C4EF6p9yjCol0Pwl/5OV6PN6Rv53cVVcsuP2uFuMs=;
 b=lBr3kDcULnr9slFee0ebW6jjN2OWE3GsD7z5Y9425AH+x1cSjgpHXPQeRYsaUhHscVKLv3RL01SjUu0H9gvFir/L+Kp96PoN3a43+3II4A4sDZyD461REUpV2SWz9Z78g/tF74ao6y6vr2Uc5M29I0lerTMdCF9XVCrppTk7E8zcun/P2BtXTxBPxon95cCd30QhKkJaWJ/R6UVMsUW+P2wfb/AxEnBTecvDTqNbNqmBpgTXODgs/udj39aGy0pMSHz7MkgEx2TZnvo8ZKNHYjwLXoXjfAchAWlIipw93EyBbSKwFt0ssbzdCxpanaTbR6pWqNX2+PwIUt55Q/zU8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93C4EF6p9yjCol0Pwl/5OV6PN6Rv53cVVcsuP2uFuMs=;
 b=Gvjb6lxgxN9gOoU/MnX/MzTPRdUB0AW1mZiYe7SsMHXackXoi+J7ANVXWk+AabpA3yzKZIvozUxOI1P71W1j6f+tXGRu1Y6LgxwZM/4ChTwtAIkOFPtSb/7rQ70HWd6lKqWwkpW17YuoyeYG+hTizxzowNxgsjT53DHvIU7I+mA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3931.eurprd04.prod.outlook.com (52.134.65.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Tue, 10 Sep 2019 02:47:59 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 02:47:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Dong Aisheng <dongas86@gmail.com>, Stephen Boyd <sboyd@kernel.org>, Peng
 Fan <peng.fan@nxp.com>
Subject: RE: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
Thread-Topic: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
Thread-Index: AQHVXK/qRNohGClvt0yC94cqOwkPUKce9XOAgARa7gCAAPmTYA==
Date: Tue, 10 Sep 2019 02:47:59 +0000
Message-ID: <DB3PR0402MB3916906683B58843B459ABE1F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
 <20190906172044.B99FB20838@mail.kernel.org>
 <CAA+hA=To9B0H1z6Hh1eSZN9_rcextT_Oe-CTMmz9fC9CDNUBTQ@mail.gmail.com>
In-Reply-To: <CAA+hA=To9B0H1z6Hh1eSZN9_rcextT_Oe-CTMmz9fC9CDNUBTQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40c0b3e7-865a-4a8b-2aee-08d735994ae8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3931; 
x-ms-traffictypediagnostic: DB3PR0402MB3931:|DB3PR0402MB3931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39319FF4AACD2A5837BC05A0F5B60@DB3PR0402MB3931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(199004)(189003)(64756008)(7696005)(11346002)(446003)(71190400001)(71200400001)(110136005)(74316002)(7736002)(478600001)(305945005)(52536014)(14454004)(3846002)(5660300002)(33656002)(6116002)(66066001)(9686003)(66946007)(76116006)(66446008)(6636002)(54906003)(256004)(316002)(6246003)(102836004)(6506007)(53546011)(8676002)(6436002)(86362001)(76176011)(26005)(8936002)(486006)(99286004)(44832011)(66476007)(4326008)(55016002)(186003)(81156014)(81166006)(2906002)(66556008)(229853002)(476003)(53936002)(7416002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3931;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QcwUnDESFfBUDm4toHS5RvQyN8BgiaZyYFpK+bSdQq7m2E5uiTa8R0twqcnuOlnsfXmboiOvyH4cOUo49ds4HtmKtLPeAwiK8ebdeLMHaq5VId9jYKuED8Jdt+Dx0+/gj2MFtVbEfKHc/MEOegLAYdvlXOyXK7f/9o9OK2h2A7zIZ7zNtgbEraUNGNsYeTA8IvR1trgboH9K9FKh9XWWEzDpRJ3yH02CdpF5uTJEv+OiYayF2AEtur4Olchbprl6hraM2p+BxManG+jMlr/ejgSFpkRHsVyGZo0nh8pgGayrHyJDxPb1eUzYrHv2CWHeEEJW4TSsG18v7Z2Slhvv+VLbUlR9Yl8ujbsRw5Euu5POZR/imBVc5pok6rZzCe7HSXeC4L2SGoe855hHCw1E5whOXJQEyPnBBZ/udO+XpEQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40c0b3e7-865a-4a8b-2aee-08d735994ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 02:47:59.8092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41aLjU+y76hCUEVKAXE6UlLWtLqGtWcHdu6frcEWAm2sFMhYfjUil/yq3CCXNZrGcZRyJLa0T3Dz4/ty6aAZIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_194806_740106_3747C486 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Sat, Sep 7, 2019 at 9:47 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Peng Fan (2019-08-27 01:17:50)
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > There is hardware issue that:
> > > The output clock the LPCG cell will not turn back on as expected,
> > > even though a read of the IPG registers in the LPCG indicates that
> > > the clock should be enabled.
> > >
> > > The software workaround is to write twice to enable the LPCG clock
> > > output.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >
> > Does this need a Fixes tag?
> 
> Not sure as it's not code logic issue but a hardware bug.
> And 4.19 LTS still have not this driver support.

Looks like there is an errata for this issue, and Ranjani just sent a patch for review internally,

Back-to-back LPCG writes can be ignored by the LPCG register due to a 
HW bug. The writes need to be separated by atleast 4 cycles of the gated clock.
The workaround is implemented as follows:
1. For clocks running greater than 50MHz no delay is required as the 
delay in accessing the LPCG register is sufficient.
2. For clocks running greater than 23MHz, a read followed by the write 
will provide the sufficient delay.
3. For clocks running below 23MHz, LPCG is not used.

Need double check?

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

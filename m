Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7330CBC281
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nk/m7rcBAePAhSmjRb/D9Slvjz+/h2AZkbEt0UsApm0=; b=uQuIsA/84W+PXk
	ouOYzjhQia8rnRjQ4jaNCP5DLYWPk6fme1zta9t/x3xBQWHceaHxv7HWj/pEmtGWzvbONDAnBbRka
	ObVtbHqsa7Neq0TdjqYtsmZ43RCL8+fjf5Q1lUTRqW7StvPJ7qx8ct+E1exYuAlnXI4Z7RP+Tz7LQ
	UOtSHNPpeCTtt9npEaxRUPvlPfGEbU2Myj/Lhnc0xzEzhPrDDqOTMJIgepaJMHBffGvbUq+PROrS8
	gK8HwDQ5fw1lT89oqy/Xa1mqb8SAQ6JWqRaKgshXICck4lt90KPMdcWK7xWnEQgaX+xVqcgra4Ena
	DF7rzCoKJOQrIqMi7xRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfCk-0003CG-Bl; Tue, 24 Sep 2019 07:25:46 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfC7-0002HQ-Iv
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:25:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfpWthGz9LHJVxpLQFJBxWzcjrEetGhoCi6Bshp6jm54Xgg8Vh4UFmFiubSuAVrnYGYe6JTZPLaroANePiQftSjzmOiVXHO53QElmELhi+C2SJc/pw2G2QjyBKOD3bmwgWk5Ygg51rMTd50S5S+SnIqmVyR2LgDgkMNegWI9M+l0J3X66pQDZZrwoHikpdDveoMYwu3zsH2R8JgzS5Q4Ada+nXP7BO5grT+vwT0q8VbKgs0tX2/tL8yFp1iA1LWnJcKRBfDM2mvE+6zJ6x6XZ5Akqt6oVXRUPJhLjP5zJp9U45tGh6ILabmI0lXyFUpaBlBunJ3vl7R2IzWvJ8pafQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XaxqetdDA1u8gAxKT+vQr0+1C8ZdfLqHJ+tQ8kP8M0=;
 b=Wj+Lz6PUZ14yZHwUzX0lqMftv0p/pDylKGLET4ZX4alDEAiVHWAt34/J9vWiBymTbWCbyKmAbwdDxLFrcr4Uudp0sQMTJOQJDLqj7IkqyN/n0HdxCkGEsNnfw4KmQYzL+lm+vii/NeIJoTXBIlYuMPSYaJKBlTxezazG09wCJyB9W143RGVwhoHQXd5WDE8IhLejcK8XNI8YaHcwfIbSvXjMky1vlIYvxU1djbc9EXc8mZqMVLYbX14ug+6/g987LPsOtvpL9w6WXniXaoX8nf7hahJSOqHWJ6XZcKUEfRcNvetMslnboBSfGTamH3nc3THbwafYRnWvebovFAEDrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XaxqetdDA1u8gAxKT+vQr0+1C8ZdfLqHJ+tQ8kP8M0=;
 b=M28sCG1E/xx2GZYPPv13FueypTygATkySXD2dBFJaZLQ/ttsomdnwxPf3qb7lJj+xY+pp/UBXN7cqylwXk/Z49QbgbjlWJO2HHs8B/a0aIe4H9c151uJ+kHBAl1GFL/J5oPjXId8jT01LMcOYn0E3anIuEEepSXWNuPnE1LigDA=
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com (20.179.24.74) by
 VI1PR04MB5646.eurprd04.prod.outlook.com (20.178.125.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Tue, 24 Sep 2019 07:25:03 +0000
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::c887:7d43:1e17:9485]) by VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::c887:7d43:1e17:9485%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:25:03 +0000
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
Thread-Topic: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
Thread-Index: AQHVcqkuc39bD9SAI06v4H3kwoWIqQ==
Date: Tue, 24 Sep 2019 07:25:03 +0000
Message-ID: <20190924072502.GA25260@fsr-ub1664-121>
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
 <20190923165443.D1B1C20882@mail.kernel.org>
In-Reply-To: <20190923165443.D1B1C20882@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 822ece76-1c0a-49e0-bdcc-08d740c05136
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5646; 
x-ms-traffictypediagnostic: VI1PR04MB5646:|VI1PR04MB5646:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5646EC52DCB07DD55048F36DFF840@VI1PR04MB5646.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(39860400002)(396003)(136003)(366004)(346002)(376002)(199004)(189003)(71200400001)(71190400001)(76176011)(486006)(7416002)(5660300002)(6436002)(6486002)(229853002)(7736002)(6506007)(14454004)(476003)(81156014)(81166006)(8676002)(66556008)(66476007)(446003)(26005)(102836004)(186003)(478600001)(76116006)(91956017)(8936002)(66446008)(66946007)(64756008)(99286004)(11346002)(3846002)(6116002)(1076003)(316002)(33716001)(54906003)(44832011)(2906002)(6916009)(6246003)(14444005)(256004)(33656002)(86362001)(4326008)(66066001)(305945005)(9686003)(6512007)(25786009)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5646;
 H:VI1PR04MB6237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +EQaK+HjhSDfoA2Yg2TIqfJXglMloBbPVFfaNAB7WosrknJ7mK7XCYmyhWmYytogcesgMYcDd8iEH8vOi/dbPkIVYWq1VUaPSHWUIjSxXn3GrtZy6C9mrZ8CYjFTJwX3XCc3sJUYXX20wJCMWSvn9VFIFrtQbuQQW3kcnoKrf+ZPqIcrPDXdtC5XER4+KzilJ2lOPy89qs7SRZFVtBdc5Eax0HUwVEoi50MMH1r6Q/yUcsDU2c8zt2UCXmEtRaxXdCNYONMqMtYTEnyPnm0MPYAEhgB50kACg2CVTbdSOvvHAts7SjH2o3n2xSePUH9GTbiy9IQGOGiQ2P75duAP3aT6KqF660xxbvCBy5XQxA9jbR2PV5Vg4cJAlvmkcMro8oEqTktFiNGRKuYuLExfdKQbKYCkElujrCzufqHn07g=
Content-ID: <7AB49DD3028DE1488B72B757DD762F4E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 822ece76-1c0a-49e0-bdcc-08d740c05136
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:25:03.5325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YOnZya90RIO3YzUmPkTFbvnN5gPClkiJvht6/TYsXk8fhBr6dDCOfz6yj+O7XJ8x5gwMRe37AGTMl1VgoJ43Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002508_199766_E638B911 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 09:54:42AM -0700, Stephen Boyd wrote:
> Quoting Laurentiu Palcu (2019-09-23 07:13:19)
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 52aae34..d4aa778 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -871,6 +871,31 @@
> >                                 interrupt-controller;
> >                                 #interrupt-cells = <1>;
> >                         };
> > +
> > +                       dcss: dcss@0x32e00000 {
> 
> Drop the 0x prefix on node names.

Thanks, will do.
laurentiu

> 
> > +                               #address-cells = <1>;
> > +                               #size-cells = <0>;
> > +                               compatible = "nxp,imx8mq-dcss";
> > +                               reg = <0x32e00000 0x2D000>, <0x32e2f000 0x1000>;
> > +                               interrupts = <6>, <8>, <9>;
> > +                               interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
> > +                               interrupt-parent = <&irqsteer>;
> > +                               clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
> > +                                        <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
> > +                                        <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
> > +                                        <&clk IMX8MQ_VIDEO2_PLL_OUT>,
> > +                                        <&clk IMX8MQ_CLK_DISP_DTRC>;
> > +                               clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
> > +                               assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
> > +                                                 <&clk IMX8MQ_CLK_DISP_RTRM>,
> > +                                                 <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
> > +                               assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
> > +                                                        <&clk IMX8MQ_SYS1_PLL_800M>,
> > +                                                        <&clk IMX8MQ_CLK_27M>;
> > +                               assigned-clock-rates = <800000000>,
> > +                                                          <400000000>;
> > +                               status = "disabled";
> > +                       };
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

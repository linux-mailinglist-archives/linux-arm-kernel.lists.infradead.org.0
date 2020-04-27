Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B531B9A8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkEkf+VMUvlkwZBFt3IB6vBTh1E4yWdd9vHC5YDcBmM=; b=dUs6claJ0KBCMr
	Nr/MIDx9rKktjqhWfbvW/8haGTQpZVJprw8lq/A4/MRGRHeHtaaUHB0jWywz8jQ80TYD4sTqfmLyd
	JoAzi1FexDIHUpr6xfrj44/q7oV77Pbggbemb/bzDmWDE3Q+0b5FD8j9KaEgsa1oXkI+xudhb2S2c
	NUoD1oEvft9L9bggvCAv4625Gjnyyf5Hd6U66xWcLZWPSEf7XCvJeILtgAAbhxGqspjuqAn40tTW7
	HTxv6/dJJGtIrrXgME5B06RP3RVfvOZ2VQ9TdEwOht7hcD7Dxc2Kjq+dE5NQpEIt8cp6CkN2rVmEX
	S7PdKhboFXxtpNW5VuWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzMg-0002uu-VP; Mon, 27 Apr 2020 08:43:46 +0000
Received: from mail-eopbgr50067.outbound.protection.outlook.com ([40.107.5.67]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzMX-0002t2-Nf
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:43:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WimqhGdjSO3lLkvhE2nk6LZgRVdel8qXQF6Kc5funzQgmSI7MexVoAPA62ATya4dV2rLqjBZACrOp3U0Am2s+5op1CrIEsyLg+7DlXpRgxY3oK4W56S2J97ypP7srRe5hPv1GUpj7L0Lt/QwU85RUdRak5dL1OJd7EgxtT1dWyA9SpFUeSQncOHdpXmree5CRe8sTABvhB9BF0RRaaqLKroxhiLJrGY/wYZilPVA0jxff9sdb0NxBy86+2jcpsNN5HwDFPolMuhnuBHItcnKfRCLEjQGQlrBjL0xqtfns7vn5Jx6vnUsa4r6btb4wcbf2GNiL8otamWPLVVFw4a6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JyN0pFqVc/UgEdHtIgLBMIDwsw6pgcJpTULwrTdSXNY=;
 b=E9sI7nN2NMRnBNP23EHHCw8LNUnmKx5GbGrm8SDwiIzdGXfTvWVKDi1oao9Drg9PCHtEMbdrNyuhp1RJltSh1O1kW9IdFWz8xnCZcA8E/iu+6BN93z6MKU68kauUG8+ETMzKe32pCkFF1PkmIHHg/D5aY50Yr0DmJ2SHq3/Sf43NK6W9zkP1DrlqeH99DIXZPnd29zFQ3TeAWLeBtnnXyvJvLcCmGYRee3EyBtqN2VbR1/iFGhAZgG+uWGkcSuNoU+wt91EMp93EmQG9MfCqViQ3Ap2ZVNIiQHv4UJJlYkyjZB99FUmnqnamb8agfjJvlRTyEDmqMQ4G/kFsC6mP+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JyN0pFqVc/UgEdHtIgLBMIDwsw6pgcJpTULwrTdSXNY=;
 b=mEtnmnXt9w8HUcf2z1ZP60xWeNu11AsvsqkzWDt/LeVcdagcQgl5mrKb65Y8Et9X1t6QMgWPAQVg+yqGvJ2+yidYgjrHIGYyJfq6WfTe42qQ9+in91uP5DXTrR/fAXre0ZeAMTVQfSePJDszhosmjJnn3RZNLbElUS7/6at2dRM=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2935.eurprd04.prod.outlook.com (2603:10a6:4:9d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 08:43:32 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 08:43:31 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz1S3ryZr4eI06QzGNLele1k6iGhU2AgAACxjCAADVJgIAAt/hggAAQDACABSdo4A==
Date: Mon, 27 Apr 2020 08:43:31 +0000
Message-ID: <DB6PR0402MB27609BE35A7D7C93789DA4DF88AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276068E21E36BFCCA91728D088D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB49665A599A06623160EB592980D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49665A599A06623160EB592980D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7060ce00-0fa8-4d58-2e80-08d7ea8710d1
x-ms-traffictypediagnostic: DB6PR0402MB2935:|DB6PR0402MB2935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2935B5F439239880B41B263E88AF0@DB6PR0402MB2935.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(366004)(396003)(346002)(39860400002)(5660300002)(478600001)(110136005)(26005)(966005)(7696005)(186003)(55016002)(86362001)(53546011)(6506007)(54906003)(33656002)(316002)(2906002)(8676002)(4326008)(76116006)(81156014)(44832011)(52536014)(8936002)(66556008)(66946007)(9686003)(64756008)(66446008)(66476007)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GVIxZchFaqHuxb5zY8ixIwwhdCSdaPR2aJEVYt8GPN0DuTJXVFssBNTiScJFURioGSANYN1nZuN8Z4N94O1r0m23RrhZmOC3KoMbPUQNOix5/m6nPTX+oaLL8zCkvNHYydL+DfGhobVOGNeYe0ZmPaPK/grhLRXtGd/Z83NjcqUMsS8lEsuGo0HNIo4GnZvVGTDejCondrS74Vwtpl80v2XIur5EwR2n6sd/4hxvkRnWM9+0Aun6UAa+2oW8LLqMZNJUk1q6UhIkyp7w7cCf6JfgTmNSB7ugNcdSHOAbC8AB/PR16Tanm9UviGaF9vGwWn1yYm96lnYuRlruZV/3a42JDLhvctd2mZIvRoOa7P7scIGPA3R8ja7Ejz6bfxg4UKWY4Dwc2NpRyBjdIExOiAA4Z2doXIA35mrZyndpTrUGO9jL6mvRNrq/si1QuRXo/Fu3XCkJecH4y8X2ZqPCF1oFx2nsnp5uFhAi/ZkIGjMrHU7Y7PBojW3Djsb+toNGPeJz2OTgLuBQt1EyMNIPZA==
x-ms-exchange-antispam-messagedata: Emno0vYRMHnKD9UdAY7wCR9YStTN56GrEzBCotoOVK1gmnBSxnp1nP+GWKgLVy1gU/4cRQN+LwZF9J6U1iGOMK6hbwZxXOVg8bfpTyvvBBdZvCaV89GFjmUF70P4w4joXzMJSuG0Swbw1vIvGbelZT5aHLfh27kEtCF7hcIuelgu+3t94hE23igAlvS93OGszpSlG16IOgYL1am/d5MuATRfyGh2KNmsFEkUhmRgs9Z8Jj10lTC6o1eZOka7esYhVet1qyvrtz2FuAHz1LMXeIMNY7+3YO+E/JpP9nrBE8yBDxbU8ZeukdBrC6z2ekd1Xhf3lsDuCkO7i+BKTBN3xZTHZS7sQRnr56vW8dUm0isUEPZ8UAQJocvR3pKnjLwkVJB6H/N6LRvbWMyhBKScjhMvfMTALbF5ROdQsGZU3/7GOIRH8jJNpAb7hd92Qu/VnlTpRTyWnV8hSTCKD6s7y52cTb2C1ChenTZ1zjG2KuEP0ji2LMoqBc+7uL2g4Y6yVsL/PHCHFQzrjiE1FOvq4/vib7z/GtEqaHzbCdX2qBBX6WL26CzPCX21Vn3Zx5kn34bV99P/R0eM+bwxUeS4MwXHUbHVidXxMRNMMutXrC5ACwow0DaZqvkN3Sw8CSNNDwMV1Vx3lVzEYyovrBT5hre60JAA1lnNZiDlDMDxwsmWlyV/G9JKYx0i4J3nHKtCIHck4EVPAE7lewN0i6s9fJW9ZWcJXuPgw3OJhe2ewBkU8MXlRLb0JqrE+GqR8ctPu3uBtd4FMk4pFoZTJAkwT6fRPJku7V9fsPhcOdgZcDw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7060ce00-0fa8-4d58-2e80-08d7ea8710d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 08:43:31.8234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1hGuQlUdXrr0atztqJWcBUNx48z7Z8Send+VidqU/tdcOA5lLOZFJqpkOW3ppgVjRrJs71RvyfLRBwkPt3yGmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_014337_779978_1F92FBD6 
X-CRM114-Status: GOOD (  30.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Friday, April 24, 2020 9:08 AM
> >
> > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > > Sent: Thursday, April 23, 2020 6:54 PM
> > > >
> > > > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > > > >
> > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > Sent: Thursday, April 23, 2020 2:52 PM
> > > > > >
> > > > > > To i.MX8M SoC, there is an case is when running dual OSes with
> > > > > > hypervisor, the clk of the hardware that passthrough to the
> > > > > > 2nd OS needs to be setup by 1st Linux OS.
> > > > > > So detect clock-critical from ccm node and enable the clocks
> > > > > > to let the 2nd OS could use the hardware without touch CCM
> module.
> > > > > >
> > > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > > ---
> > > > > >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++
> > > > > > drivers/clk/imx/clk.h
> > > > > > |  1
> > > > > > +
> > > > > >  2 files changed, 20 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
> > > > > > index
> > > > > > 87ab8db3d282..ec7d422540c1 100644
> > > > > > --- a/drivers/clk/imx/clk.c
> > > > > > +++ b/drivers/clk/imx/clk.c
> > > > > > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  late_initcall_sync(imx_clk_disable_uart);
> > > > > > +
> > > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw
> > > > > > +* const
> > > > > > +hws[]) {
> > > > > > +	struct property *prop;
> > > > > > +	const __be32 *cur;
> > > > > > +	u32 idx;
> > > > > > +	int ret;
> > > > > > +
> > > > > > +	if (!np || !hws)
> > > > > > +		return -EINVAL;
> > > > > > +
> > > > > > +	of_property_for_each_u32(np, "clock-critical", prop, cur,
> > > > > > +idx) {
> > > > >
> > > > > Is there a binding for it already?
> > > >
> > > > I think clock-critical is a common bindings? See of_clk_detect_critical.
> > > > Please review whether this approach is acceptable, if do need
> > > > bindings, I could add that in v2.
> > > >
> > >
> > > I'm ok if it's a common binding already supported by current clk
> framework.
> > > But it seems to be more like a common clk feature rather than
> > > platform feature.
> >
> > Here is to use it for dual Linux case running on i.MX plaforms.
> > It is to replace the init-on-array property in downstream kernel.
> >
> > The recommended critical clock is using CLK_IS_CRITICAL flag in clk
> > driver, not use clock-critical property.
> >
> 
> Clock-critical property seems DT usage of CLK_IS_CRITICAL flag and pure
> platform independent.
> So I wonder if this feature could be added into of_clk_add_hw_provider.

After check, of_clk_add_hw_provider takes node pointer and a function pointer
as parameter, however clock-critical needs clk index and the clk_hw array
pointer. It needs more changes to common code that I would not like
to do.

Thanks,
Peng.

> 
> > But here, we could not use CLK_IS_CRITICAL, because when support dual
> > OSes, it is not flexible, and it will affect non hypervisor case.
> >
> 
> A bit confuing because you said the critical-clock property will only be used by
> Hypervisor dts, then how to affect non hypervisor cases?
> 
> > > Also a bit strange that why I did not find the binding doc in latest kernel.
> > > Maybe Stephen could comment more.
> >
> > It is used here.
> > https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/clk/clk.c#L48
> > 91
> 
> Yes, I also saw it, but didn't find binding doc.
> 
> Regards
> Aisheng
> 
> >
> > >
> > > BTW, if using this for dual OSes case, will those critical clocks
> > > affect the normal users that not booting the second OS?
> >
> > No. dual os using x-root.dts, not x.dts. critical-clock will be push in
> x-root.dts.
> >
> > Thanks,
> > Peng.
> >
> > >
> > > Regards
> > > Aisheng
> > >
> > > > Thanks,
> > > > Peng.
> > > >
> > > > >
> > > > > Regards
> > > > > Aisheng
> > > > >
> > > > > > +		ret = clk_prepare_enable(hws[idx]->clk);
> > > > > > +		if (ret)
> > > > > > +			return ret;
> > > > > > +	}
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > > > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> > > > > > index d4ea1609bcb7..701d7440f98c 100644
> > > > > > --- a/drivers/clk/imx/clk.h
> > > > > > +++ b/drivers/clk/imx/clk.h
> > > > > > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> > > > > >
> > > > > >  void imx_check_clocks(struct clk *clks[], unsigned int
> > > > > > count); void imx_check_clk_hws(struct clk_hw *clks[], unsigned
> > > > > > int count);
> > > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw
> > > > > > +* const hws[]);
> > > > > >  void imx_register_uart_clocks(struct clk ** const clks[]);
> > > > > > void imx_mmdc_mask_handshake(void __iomem *ccm_base,
> unsigned
> > > > > > int
> > > chn);
> > > > > > void imx_unregister_clocks(struct clk *clks[], unsigned int
> > > > > > count);
> > > > > > --
> > > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

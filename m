Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2732D11C581
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F409Qx6xJNJ3biJweLF9qshA7NVhxy+EZWoBQuF7Ggc=; b=QcYd0WQH56V1i9
	8pPMDq6CV73X7ibAnVjWLwuHXu8GaYzk6ur1NEVDJw3nzYCo0JpD4hSApIMopfFy8sGx1ftm1UpU6
	FzXk4413bE0F7MAY2TUB8IlI9R67Bavnn6QvmXPUSJ/5WhpPeBGFZqekyl/eUvXzy8L+2gavNUK8e
	/y2fldg/BjA1mXtgyJqzvJwVmymOiSYeeYLTgizDmtuYdEdAOYfl43xnXymYTRhj3sZUXXrTzE5HY
	gr6rOwz991pEPjqsWu0r+jBw4/ckOMYc3sd+2GPdd1HnkWQD3rjio07UEGqKMX6Y6WAbbX+c+Jl8N
	Kj6ekCnpCOVKVJMR4dng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifH96-0003CX-Pl; Thu, 12 Dec 2019 05:36:16 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifH8x-0003Bb-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 05:36:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=br+nu2HVVvkUh7FWlAh2nK/l4j9X/XTVPh3u1QMaQHEZ0eRT+l9NpFDXb+fliooskTmbCl4UwGRrwUdnOizMkdtItdWkaeG2aSIVXPCRiSrgBW4ZsDc9Me2hbGo2WHOv6R6PDLNQ6z/mHoWUIrx/FC6slf1bo6Scrz0RdHw5vIuKLf64CyfehUaAdtyp9BG/JInjKifoLAyw5j8w8OyZfXrVOE91fJ/nCnssR+6o/A7qBejo8IksIea+xnGAjdip2M84Ru3Jfk3P1A+/6tbkTW+YIuVMx0UhVBkdET2oFgigAg6ph68DgkNPmJSGM9sWDECoSJ8MDYyUqRJdWZlDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KrOP2xl/OOHMnMUw7f8pvAFkUwV6MITF9fBcrWYWdJE=;
 b=MjAq7Ecihl6LpjkglkOyQGnSpvqebwqRLE0AaPh4SrWrnxwi7/GmN3hq+9bpmPB24Gx+vyjAz2wW9hnXPNCuU51J+uF3hHB966e5/VHZTxoDIM/+Vnxd3ljKZCoakPRU0SDo9hD5fnP0dKsmrApEAZQxPcY6HZhyJZI2bXBXpdlmXJV+Pd9vMs/EJRtoMd+8BlnuCq8Do+Vpjgyx7IC3Zl7hQkw+8Qqq9L1+f2YbvjvEpswUQpQpgDgN/38dRCffAlnjeHxVNvjfcFw9hn1AjGWeL30oZHW/uPKbkMWsQ07pWj0ObVUmEsN9K4x+8Wpt94yEDFodEu75794WVcC8jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KrOP2xl/OOHMnMUw7f8pvAFkUwV6MITF9fBcrWYWdJE=;
 b=UgSFsoguWXYNNHDtVggMghLF8YT4ixTW7Hj05zI2Nn/Hn7MjK5I98r29hhhjZ2VBLyl64Gu2amj4shuvdyuiXcvogoumV2p0anPDub5p3ttVp7llH1/a0cYmWzZ9cJkdou73g60jUhK5D7EGkslT84xG4+OKdLeMZR5+iMu7BnM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6580.eurprd04.prod.outlook.com (20.179.254.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14; Thu, 12 Dec 2019 05:36:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 05:36:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 0/4] clk: imx: pll14/sccg use relaxed API
Thread-Topic: [PATCH V2 0/4] clk: imx: pll14/sccg use relaxed API
Thread-Index: AQHVmpztVPwy+EJUrkWokuVEwk9sYqe2Jr0A
Date: Thu, 12 Dec 2019 05:36:00 +0000
Message-ID: <AM0PR04MB4481542A5D1DE3B2144712AE88550@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b1f417fd-64bc-4e2c-2760-08d77ec52ba7
x-ms-traffictypediagnostic: AM0PR04MB6580:|AM0PR04MB6580:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB65800415725C61B4D83ECB2F88550@AM0PR04MB6580.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:357;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(199004)(189003)(9686003)(71200400001)(7696005)(44832011)(52536014)(8936002)(478600001)(8676002)(81166006)(81156014)(4744005)(2906002)(33656002)(76116006)(5660300002)(66446008)(64756008)(54906003)(26005)(6636002)(55016002)(4326008)(110136005)(316002)(6506007)(66556008)(66476007)(966005)(186003)(86362001)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6580;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XD2yRd1O1lAjnGEH8YCHCtP4ZjkqRtNjssgso4iLg1RgqiqbylSprw6vNmd26ODo3uXJPDQaHO7WEr4o9RFvO14vNVfyO2cArmzjneygqVrvEjFXs9+3uNvcq5wYGRBBdWJfm4OXnq0/9IAetyFUOKz1p2KVsQfH92YEgZu7tgkAS2zGWaIq9AzBH30m6IqRwV/pGUA5NwXQBrrdmZEaiR6jEsV0SxjDDhADn7wBbfPJnhdHxQ7b+Lem++LL+gzTbT7KYIG+bpxjExC4pzpO+HwgIv74pafKZ+6Wc8c89Sp2JwGQZvz8iyLtXGz0JKPctOI0MfbmjlGYMF28oGwDDWg28HXJHbj3FozElRSC0UpebCzLsbh5Cs52z+deXGnW+Yjl4mT60TE3BvriTGH7NwpnTzZQ3H4LrKBPRC0QozIdFIeI1O5xD7pqPIvzBxiQePMgcXPJVTFSBddk4Rvy2hMr9BVZ68DEKCpXK6Wlv+A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f417fd-64bc-4e2c-2760-08d77ec52ba7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 05:36:00.1257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uwl+cN25AvnJcPJcGlA73JMORufG9dh5DUx4s583ZLlwLOr5QL7qAl5TxCAQMvRpO/3msakS/0DCFWShL4VxOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_213607_557366_375078C3 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.87 listed in list.dnswl.org]
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

> Subject: [PATCH V2 0/4] clk: imx: pll14/sccg use relaxed API

Any comments?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V2:
>  update commit message to reflect the change  Merged sccg/composite-8m
> into one patchset
> 
> This patchset is insipred from Will Deacon's slide/video:
> https://elinux.org/images/a/a8/Uh-oh-Its-IO-Ordering-Will-Deacon-Arm.pdf
> https://www.youtube.com/watch?v=i6DayghhA8Q
> 
> Peng Fan (4):
>   clk: imx: pll14xx: use writel_relaxed
>   clk: imx: pll14xx: use readl to force write completed
>   clk: imx: sccg: use relaxed io api
>   clk: imx: composite-8m: use relaxed io api
> 
>  drivers/clk/imx/clk-composite-8m.c |  8 ++++----
>  drivers/clk/imx/clk-pll14xx.c      |  8 +++++++-
>  drivers/clk/imx/clk-sccg-pll.c     | 17 +++++++++--------
>  3 files changed, 20 insertions(+), 13 deletions(-)
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

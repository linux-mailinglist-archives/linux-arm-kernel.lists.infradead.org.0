Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9C6B8B94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRaClpS5+6ND8C8a5wdt5CSDgKh4t4HJmmBOSdKYpLQ=; b=MWwnmRx0pHAZ2V
	nCEgtNvNlvVHumikaYaWx+CL2X5hJG46MflFf9eKrBXsxqNIFPVQzGAuDmYdTaHPxDjzGXidUz+CH
	Oqw6D6eFTXhJGv4/+G4TLKaSR13v9/t1TYcMiqC3JfvNGB3champk/I7WQbLMeNGNCaLS4clOQNcS
	4JSXPw1GCMRwG7NhIEEycRfzTqqTh0mhaGiWu7KISgZZi55tpuNr/ak034WndhM1oUrtEYxI7VoET
	xc6UZM+m/7KWK+NRn46zoCWAFnCLsAVCsfoVitGaLGW6Ic4kqf/mtk1wwIAVR/6Nz2UTyKW+QmsSL
	VMwM7aFBxyvyux/nXaxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDQT-0000jU-4O; Fri, 20 Sep 2019 07:33:57 +0000
Received: from mail-he1eur04on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::615]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDQH-0000YB-II
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:33:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TilosVcDss59N/v9c7Qr31JH85W5GUmJovMhZXmkcYYoX+cNwkX6frzC/s1MkOeAl3Pw59CMerFiP/LnyUscyc8v86j8Hf3oOIJqGF93IDtslmp0uXD5o2yFbsINXtI8t941zEURjXvQ0kPXH9M92XK1tgB2GptCByfB9MpvAZV1Cxn0TYr7Gpd0s79FVMjzNRH2Om9I1AWf8mcIJT4LCI6R7fPWt4LudsHUQdwUQVdoHxUHsoIBO5+NK43lwDc1yrHfgp42+6Z+w+AA1EVZ+2fBzJK2oK4vSmFm+chf4CqtrKpPzWr/xnvj2kqFb2uwSxDfOkloc/lW/5XSWkizAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZQJlfOWHBy0WuOpDNNJhcoqZwasyhHBZ9xppbiYJSA=;
 b=RsNjA5QsB00Sgk4xcHhDtWPhKRMgwtOQWpJbUi37NQVW1GTzLZy2ZZyGqWuKEL1/42AtTUNlcNi9tBxg8bp01k+tRlOrpvZJyHNK7gB52yDd/Ir9HN07Q8kNzZgfF87wi2Bwyv4il+rvPhvQZztsFHPGa6dPnc3jFLDe4pG00MMixvR9ylrDHqgVNYrUVKctFRaLp9z+8dtZZIiVlqXaW3bUczF/3DCcZ0Pls9dkn6Fsi14hKTOzUaXmeIJVXQJQ/2d2FWD9nyhHok8zi3YXJuy/ZxaEO5IwGcYR4HPILd0iflaGwgI6qrQKtvJkdHgiMzoyLxRLB/zmxe2EYz88Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZQJlfOWHBy0WuOpDNNJhcoqZwasyhHBZ9xppbiYJSA=;
 b=pwiKCA9sTSVvV/BCixucZTR625/MhatoQ/qdtEiOeAHtPSVeAn0N9tmAeRyFQ/G36rXLVXiGQyvK2DVlHiL13PVIiUSpCOZ5/DiqqIkfjKcZDBtbX0Yt2fvumEdYHwGV+/Vnevpep6EeAtvCHqP91VGbKXjUhvB31+v42mDVVbw=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2895.eurprd04.prod.outlook.com (10.175.24.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Fri, 20 Sep 2019 07:33:36 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a%6]) with mapi id 15.20.2284.009; Fri, 20 Sep 2019
 07:33:36 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Topic: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Index: AQHVbvmzoURW9oife0iGKep4oJxlpacz42bggABCYYCAAAcrgA==
Date: Fri, 20 Sep 2019 07:33:36 +0000
Message-ID: <VI1PR0402MB3600A07887B73FA9EB310524FF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190919145114.13006-1-philipp.puschmann@emlix.com>
 <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <ac67f010-1b2c-6996-f542-ab955ca86489@emlix.com>
In-Reply-To: <ac67f010-1b2c-6996-f542-ab955ca86489@emlix.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e36e0c04-9a04-40e3-079a-08d73d9cd92f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2895; 
x-ms-traffictypediagnostic: VI1PR0402MB2895:|VI1PR0402MB2895:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB28952E8C81ABD4870E5B41F1FF880@VI1PR0402MB2895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(54534003)(199004)(51914003)(189003)(6116002)(478600001)(8676002)(476003)(66066001)(3846002)(256004)(316002)(186003)(7416002)(102836004)(14444005)(71200400001)(52536014)(486006)(6506007)(8936002)(81166006)(71190400001)(81156014)(110136005)(229853002)(33656002)(86362001)(6246003)(55016002)(14454004)(66446008)(64756008)(66946007)(25786009)(66476007)(54906003)(76116006)(74316002)(66556008)(4326008)(99286004)(9686003)(2906002)(5660300002)(6436002)(305945005)(11346002)(7736002)(7696005)(26005)(2501003)(446003)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2895;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nnkm5HRgJZfrHqNyZVMj2I4tm8r5L6IBJttz4v81GDTM7KlJx0F+YaTlXw9ZQv97Ovl7PvFnfbcAbBVoqjBIScnozeADLgCOi+IlyQo99dtvdIqfqIZCncBxNXXLIewLDie+5P9+6KGNhZWrENT3B8x4T55gLO7JZYhJnjr815by+F5L28jOMg0TC6ssEXksrtT14pmXUH8BvVPQ9cm5XHGShNpfF0pQWFr5u+Yqmm3+0Za5x/WEJfAd88IYllAsRiswJ27VbTPftAILbh1TCQLy0BA3Ynfei/zlIn6h00b3T0fV1LKAsIAid5LI74yeEBcQS8u5+79m9HNFKvdwUORnIqSjaayuJ1FcMNeBF5P5Qeg/Syhewh5cWEKrjUff5kr6xPk/DbT7y17cKlyW+QHGnGiNc3lLjVGM+rf0X9Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e36e0c04-9a04-40e3-079a-08d73d9cd92f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 07:33:36.2046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3GoqBWKAdevF/hxIYpylXNk3NQQfbRrVlk/y499yV2qgaw4iAljcKc4AD75ybfEwq8fQVZULB6fVNC2dnnLMwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_003345_683275_8B5A6AFD 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:615 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>, Robin Gong <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Friday, September 20, 2019 3:06 PM
> Am 20.09.19 um 05:42 schrieb Andy Duan:
> > From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Thursday,
> > September 19, 2019 10:51 PM
> >> Using only 4 DMA periods for UART RX is very few if we have a high
> >> frequency of small transfers - like in our case using Bluetooth with
> >> many small packets via UART - causing many dma transfers but in each
> >> only filling a fraction of a single buffer. Such a case may lead to
> >> the situation that DMA RX transfer is triggered but no free buffer is
> >> available. When this happens dma channel ist stopped - with the patch
> >> "dmaengine: imx-sdma: fix dma freezes" temporarily only - with the
> >> possible consequences that:
> >> with disabled hw flow control:
> >>   If enough data is incoming on UART port the RX FIFO runs over and
> >>   characters will be lost. What then happens depends on upper layer.
> >>
> >> with enabled hw flow control:
> >>   If enough data is incoming on UART port the RX FIFO reaches a level
> >>   where CTS is deasserted and remote device sending the data stops.
> >>   If it fails to stop timely the i.MX' RX FIFO may run over and data
> >>   get lost. Otherwise it's internal TX buffer may getting filled to
> >>   a point where it runs over and data is again lost. It depends on
> >>   the remote device how this case is handled and if it is recoverable.
> >>
> >> Obviously we want to avoid having no free buffers available. So we
> >> decrease the size of the buffers and increase their number and the total
> buffer size.
> >>
> >> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> >> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> >> ---
> >>
> >> Changelog v3:
> >>  - enhance description
> >>
> >> Changelog v2:
> >>  - split this patch from series "Fix UART DMA freezes for iMX6"
> >>  - add Reviewed-by tag
> >>
> >>  drivers/tty/serial/imx.c | 5 ++---
> >>  1 file changed, 2 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> >> index 87c58f9f6390..51dc19833eab 100644
> >> --- a/drivers/tty/serial/imx.c
> >> +++ b/drivers/tty/serial/imx.c
> >> @@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct timer_list
> *t)
> >>         }
> >>  }
> >>
> >> -#define RX_BUF_SIZE    (PAGE_SIZE)
> >> -
> >>  /*
> >>   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
> >>   *   [1] the RX DMA buffer is full.
> >> @@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void
> >> *data)  }
> >>
> >>  /* RX DMA buffer periods */
> >> -#define RX_DMA_PERIODS 4
> >> +#define RX_DMA_PERIODS 16
> >> +#define RX_BUF_SIZE    (PAGE_SIZE / 4)
> >>
> > Why to decrease the DMA RX buffer size here ?
> >
> > The current DMA implementation support DMA cyclic mode, one SDMA BD
> > receive one Bluetooth frame can bring better performance.
> > As you know, for L2CAP, a maximum transmission unit (MTU) associated
> > with the largest Baseband payload is 341 bytes for DH5 packets.
> >
> > So I suggest to increase RX_BUF_SIZE along with RX_DMA_PERIODS to
> feasible value.
> 
> I debugged and developed this patches on a system with a 4.15 kernel. When
> prepared for upstream i have adapted some details and missed a important
> thing here. It should say:
> 
> +#define RX_BUF_SIZE    (RX_DMA_PERIODS * PAGE_SIZE / 4)
> 
> Yes, i wanted to increase the total buffer size too, even wrote it in the
> description.
> I will prepare a version 4, thanks for the hint.

Okay, thank you for submit the SDMA/uart patch set.

> 
> Just for info: A single RX DMA period aka buffer can be filled with mutliple
> packets in regard of the upper layer, here BT.

Yes, that depends on system loading. 

> 
> 
> Regards,
> Philipp
> >
> > Andy
> >
> >>  static int imx_uart_start_rx_dma(struct imx_port *sport)  {
> >> --
> >> 2.23.0
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71900B89C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 05:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtSIy9YYcI6Lx9v/W9X35ubaQnLa5QByGDS49EKABTI=; b=tyO2eHwS2j5Wko
	RV9FkL4p4HAkEFWU7i8NpBR+7Lu+xTRsVDMtiZWSv2Jds4+MkpUTRIU6DSamNEZ4VXDMKS6NLLKiJ
	a80YVbTcGjvUuM6FC7GVQ07cxx06Z8M9KgAH670qDGC7SbLr9pDOjQxmAiC5CqpzQZhjHmSQ2S8b5
	u1DyvkVXL7R9ZmcgCf6WY8fNc2Sn/VDFjcPdvAzyNVIErVv4O7NPK2GcCUAw28P+SY9EbpnWZGmzD
	qkI4JUnT2566mDXvTvzN195oMgY3ZNxPMTTi1S+Rq4HyGs0y8ihrernUYx5mwQlBukz6rpsjyMGei
	O38vwRz4NXciedRt3y8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB9pA-0001fm-PL; Fri, 20 Sep 2019 03:43:12 +0000
Received: from mail-ve1eur02on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::611]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB9oz-0001fR-Ck
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 03:43:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGiNSfxfU+wOUd4Rn473Qg+arjHI03bflNiD7gmHEp279Q2/XHX8EjY+Rs36nBN07YvumoBcL+gxVeleD66y00jYReM4Ks4rV15C5CZA5NY6Rka/D3l9fq7yDMMf8n8ft7+qr14mwsxYAFynkE19SYH9vs3ZWNEWlk2Yrb87L6C2OBzhsAR/QakT/fzQPGxBuK3Lr2QYBPXxaK6lByG+aEs/MxEw8qjPn4v1H+ExcS+rxRf+zDQj5wZnvyLa5mvi85OQPAnIQYpmzuttOzawq8SYu/+fEdarskRhAIBK3b/PfVMk94ESTykiT15MsaTmaPBdhTW7Ep5jvFVfjbOYtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NTKtOxZwLGgRy2Vq2+o/CsJYcRu0n9V+GGGCgvXd74=;
 b=MyMZX6swhpA5GDpbscfoqBG0U11gTXMpb/zyxWarmWm7QgU9Gvp0abXJvfbLqYRkpIBtQZ5DyX/+SZfcU2FCF43mkojTaH9daJL95ty5lryEZiPey44kcfKrglfqYH33jovgLXTDClCiUup4gaZEanIQ87swvdOv3U34s0hHiD1KXnW1wlsf+YWdltB3cOrGtEsR8RrFWSWU1oycucs6UmYzZ/cIHNdcrwgS7ONVOtQ2QaxeC4Sm1SD+QRGan91HkJgWecS6YFR3W8zXkjlTz69KwgwNQTrzzeWIzeqkrjP9SK4G/RSLbVvk3xWZzzemJoD4Nqth9pqEnVd3i02+Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NTKtOxZwLGgRy2Vq2+o/CsJYcRu0n9V+GGGCgvXd74=;
 b=MEtubqVgQ8uGTjGPVdIeeoOLskk/BpwN8KhisIJicNVlJTD6ghaR2uP+eVpLwtfFcqfvhwPjj7MF5M4H0/ew2cMzvMjZ2eZ0EDfhMiMer4KzreR9VvLGCiLPQA7MasyAkFBHDcnn7IcntzLf9dYwLgSd/nXewpYHcLD0C7ykxHU=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3376.eurprd04.prod.outlook.com (52.134.1.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 20 Sep 2019 03:42:58 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a%6]) with mapi id 15.20.2284.009; Fri, 20 Sep 2019
 03:42:58 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Topic: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Index: AQHVbvmzoURW9oife0iGKep4oJxlpacz42bg
Date: Fri, 20 Sep 2019 03:42:57 +0000
Message-ID: <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190919145114.13006-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190919145114.13006-1-philipp.puschmann@emlix.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e25efc45-fd56-452d-c054-08d73d7ca0dd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3376; 
x-ms-traffictypediagnostic: VI1PR0402MB3376:|VI1PR0402MB3376:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33764E00A8A96B8462167FCAFF880@VI1PR0402MB3376.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(199004)(189003)(54534003)(7696005)(66476007)(66556008)(5660300002)(66946007)(6246003)(66446008)(64756008)(99286004)(2906002)(76176011)(102836004)(6506007)(4326008)(52536014)(25786009)(229853002)(55016002)(9686003)(7736002)(7416002)(305945005)(6436002)(74316002)(316002)(76116006)(54906003)(3846002)(110136005)(81156014)(8936002)(81166006)(6116002)(8676002)(71190400001)(14444005)(71200400001)(256004)(14454004)(476003)(446003)(11346002)(66066001)(86362001)(486006)(26005)(2501003)(478600001)(186003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3376;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NyqFIHVPRJq0WkJj1eMKBBLqkAqSE5gKzVToOIpfvFXyZGq12FiZ+F+PEOfntiHcc0LFG/1HODQmcqhOgb0ElWpVYFG/cElUe8sKD1lFMN6vf1vlG8OOoGQyLgY0oLAffhDB3Udo3VplBySzQcUoFux16xCTn7Je3AsIf8qbyCAK30SIs+sCxjNeEazPuBKj+GpjytOSpF/+A3nBUff4+x2GT2x0tfDUOWmToBePYxrhOgdZDXTdkv6bns6b+H3JQ7afgovyV0Y2Kd1c8CwdrOL/fuyW13JoLzxqiC+21XOuGJ3OzeLHxQM1r4WVaKdz1EAI6hLnEF5OeiunctbiTMHCWzvTCvWym6ft7ulXMlgR7s1wIe0PvyC8qOPSa6ecBwoLunEIGXUr0lwYpBiPbXB4QvfNVIQNDahYUbYLCVo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e25efc45-fd56-452d-c054-08d73d7ca0dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 03:42:57.9501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BmY5dXgVuWXDsl4yRLB/dazZDvTpuERCF+TZAwMfz8Yo7urt24WYFgIp3bLNz9K2IPyd48u45oKk3PJWGlrglQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_204301_441454_67BF62DB 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:611 listed in]
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

From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Thursday, September 19, 2019 10:51 PM
> Using only 4 DMA periods for UART RX is very few if we have a high frequency
> of small transfers - like in our case using Bluetooth with many small packets
> via UART - causing many dma transfers but in each only filling a fraction of a
> single buffer. Such a case may lead to the situation that DMA RX transfer is
> triggered but no free buffer is available. When this happens dma channel ist
> stopped - with the patch
> "dmaengine: imx-sdma: fix dma freezes" temporarily only - with the possible
> consequences that:
> with disabled hw flow control:
>   If enough data is incoming on UART port the RX FIFO runs over and
>   characters will be lost. What then happens depends on upper layer.
> 
> with enabled hw flow control:
>   If enough data is incoming on UART port the RX FIFO reaches a level
>   where CTS is deasserted and remote device sending the data stops.
>   If it fails to stop timely the i.MX' RX FIFO may run over and data
>   get lost. Otherwise it's internal TX buffer may getting filled to
>   a point where it runs over and data is again lost. It depends on
>   the remote device how this case is handled and if it is recoverable.
> 
> Obviously we want to avoid having no free buffers available. So we decrease
> the size of the buffers and increase their number and the total buffer size.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> 
> Changelog v3:
>  - enhance description
> 
> Changelog v2:
>  - split this patch from series "Fix UART DMA freezes for iMX6"
>  - add Reviewed-by tag
> 
>  drivers/tty/serial/imx.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
> 87c58f9f6390..51dc19833eab 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct timer_list *t)
>         }
>  }
> 
> -#define RX_BUF_SIZE    (PAGE_SIZE)
> -
>  /*
>   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
>   *   [1] the RX DMA buffer is full.
> @@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void
> *data)  }
> 
>  /* RX DMA buffer periods */
> -#define RX_DMA_PERIODS 4
> +#define RX_DMA_PERIODS 16
> +#define RX_BUF_SIZE    (PAGE_SIZE / 4)
> 
Why to decrease the DMA RX buffer size here ?

The current DMA implementation support DMA cyclic mode, one SDMA BD receive one Bluetooth frame can
bring better performance.
As you know, for L2CAP, a maximum transmission unit (MTU) associated with the largest Baseband payload
is 341 bytes for DH5 packets.

So I suggest to increase RX_BUF_SIZE along with RX_DMA_PERIODS to feasible value.

Andy

>  static int imx_uart_start_rx_dma(struct imx_port *sport)  {
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01FBBFC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hk2kZcsIs34geci4wYDm4K/pGuJtQg206x1gEuiLOj8=; b=ejsDTXPORxxGwr
	gVRySqbGCUc5FSMxyfRokRBb2irU8EhD1X+dJI9BTZhWldX1Mm3radZze7/sVH37oGSV7d0u1vwfv
	yYWxyS+M6IufPVRp2bwXge+gk/WxgYDZv9WEasYAzk4lON1FlYZwdOIuUh/MzYLSy7kaM13CSojZj
	Qctmfso42o6DSP5DRaqTpaL7mW9OuDJpewUzXS02ULg8WLQZHHRa3Tc3bEEz2FHgKIl1q8Lpj3iPZ
	8HdkRGW4vgtGp8xxt2UGfC3wDHA7RLG2zqieWlYX9juAhEnNzhg/famtfqt2YFOgp1qGkx2dnjwJr
	pP9xrCosSPd8WzWEInlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZnF-0003IS-0y; Tue, 24 Sep 2019 01:39:05 +0000
Received: from mail-he1eur02on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::602]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZn5-0003Hw-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:38:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAPveNLFgHkKg0TnuMrVYFysQRnB8C1Ld1HcEEMPWRqt2OpB0H6frUePkaffrrpmGfGcA2yERhCEI40jCiaKO8pGnExjV/6W9eY6j/7lSzHhqfzv15raFSJeMFoBnS3XPVu295Cd7ZT8HHAXo0iR3/1CQzQIFp7lxHXinjJ36GLg5LHYBKzEe9s9tnthCHbIJJj7jtrArIVQLcCaj9uSt4QHDITbm+vOmx4a4VyYUaES4HEwAmW4mjNChZhfnIwD5PSWJX5oWZDAudwnBY99fQkYon1jcLbOoOrPJMOMxKrZpuSRWFeXzRh0qXFvCDdEUkcSNWy9nXHSnN7FtdAHkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YnIRD6or0+5xL1WvTSxYAdQ6kcMLorgwl0F7Avgbquc=;
 b=KC1pbbNj7jLb32BD/3pg/Lv4AXT/3OgYRSKPFczh8bqz9bePK+caujnvkxHqY0oBA8BrlvTlzduLc1TAyuJk72BJG0TBjs0Kl2ro/pQZQAcBddAqhUjSJ+idmGzCRJd/QoTKL/pGvQi37abAQCTFrsqz6MuE7s8OFdIZe1nIjZaBc518yogiYZJaeQ811zIj3Lyvxx48jl+uvdqPR02rj96qR3LPHkS72OJkLm9qhksjDmLchIL0wnpEcl92T+Oj9NwpIHx+c1ku9+7h82/4RseYwiVehHK+lR5mPyMJtApUTN+4kfyGcDilQrQEU0NV/yahITY/FX0VBrjp7sBynA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YnIRD6or0+5xL1WvTSxYAdQ6kcMLorgwl0F7Avgbquc=;
 b=aonNFhheYhPtkvoN68UcAlvGR/KyaAPFcBI8y3upkLE3LdfG/qFYJl8EyqW0ywAW4xayEZCizYb++FgZ8IuUunZ+dqkeE4/NWfqtd1AiV5/HDHc2PvxiK3AbkdBzNFE4NtOj9BKNjTxGX0MD6JCOLGxhsjpHkKY+9w/HxxH3xqU=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6511.eurprd04.prod.outlook.com (20.179.233.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 01:38:50 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 01:38:50 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
Thread-Topic: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
Thread-Index: AQHVbvaw7dXFB7AvOUuEjPPnVNzhIKc6C1wA
Date: Tue, 24 Sep 2019 01:38:50 +0000
Message-ID: <VE1PR04MB66383C69998D640F66A8D1DC89840@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
 <20190919142942.12469-3-philipp.puschmann@emlix.com>
In-Reply-To: <20190919142942.12469-3-philipp.puschmann@emlix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b706b8f7-867d-4cf2-45de-08d7408ff34d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6511; 
x-ms-traffictypediagnostic: VE1PR04MB6511:|VE1PR04MB6511:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6511825891C91BFD8A405ED789840@VE1PR04MB6511.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(54534003)(199004)(189003)(52536014)(102836004)(5660300002)(11346002)(66446008)(76116006)(86362001)(81166006)(81156014)(478600001)(8676002)(305945005)(7736002)(25786009)(26005)(9686003)(6246003)(186003)(316002)(8936002)(14454004)(486006)(6506007)(33656002)(66476007)(7696005)(66556008)(74316002)(3846002)(66946007)(6116002)(55016002)(7416002)(71190400001)(4326008)(4001150100001)(64756008)(54906003)(66066001)(2906002)(76176011)(476003)(99286004)(256004)(229853002)(6436002)(2501003)(71200400001)(110136005)(14444005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6511;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d4PhIgDP3xSAym6ielLfsL+JGcpZuIw4y+Obo32w4jX71+d90ijTs0d0PI1sWSzaBon0R0JhBEeMYHZlaLdxNpdNsiDIAbqw3BNNlSflZlfQjgSskRvURErubELSJprs97w/Evg3UtOXNErrZJho7U7Zp7ldoBTlqhgzWyj/LRshOZ33iU/tyUSsQo4q1Wc3+e2DkadWwz202XmGVnplCPvc8R7+mhozj3gDovlV5yYR8iNVUfA6XL/V/mYeg64g9oIzWuBglCu97/eLcXdPqiupUVaR4pclTwWGY3G6xsc6+W7BxcYAXqq54aRKXC5iHrxG2eLvdiiwQUUkcvIzl718wR0g5zV68RSZNA11e6ez78SOi1kmVwPasM8fK0l95PBe/lgUAhMli4cjMroXzmdNPzRqeaoRc2uWq5f7UDo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b706b8f7-867d-4cf2-45de-08d7408ff34d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 01:38:50.0734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ovwGFaxgfyN7uByQkGRxUPOlP+dQSUXA5egx4VjtvrzMq1o61p5PEwIzXVDYFmTfyQJ0nFMTkDSmpwBzIbZHTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_183855_593295_5937C4A0 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:602 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Duan <fugang.duan@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dmaengine@vger.kernel.or" <dmaengine@vger.kernel.or>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019-9-19 22:30 Philipp Puschmann <philipp.puschmann@emlix.com> wrote 
> For some years and since many kernel versions there are reports that the RX
> UART SDMA channel stops working at some point. The workaround was to
> disable DMA for RX. This commit tries to fix the problem itself.
> 
> Due to its license i wasn't able to debug the sdma script itself but it somehow
> leads to blocking the scheduling of the channel script when a running sdma
> script does not find any free descriptor in the ring to put its data into.
> 
> If we detect such a potential case we manually restart the channel.
> 
> As sdmac->desc is constant we can move desc out of the loop.
> 
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
In fact, it's a refine patch rather than bug fix, just restore cyclic transfer
back in the corner case. There are two causes for such 'corner case':
1. improper number of BD or length of BD setting for cyclic, so that BD could
be consumed very quickly, worst case is uart Aging timer which one byte
may consume one BD. So for such case, enlarge more BDs is the right way as
your UART patch.
2. High cpu loading so that SDMA interrupt handler can't run in time to set 
BD_DONE flag back again, at last all BDs consumed. In such case, this patch
may blind other coding issues such as long time window of disable irq(spin_lock_irq)
. So I think this patch is much like a refine/restore patch, and it's better to add
a clear print information to hint user channel is restoring and unexpected high cpu
loading is coming...

> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> 
> Changelog v4:
>  - fixed the fixes tag
> 
> Changelog v3:
>  - use correct dma_wmb() instead of dma_wb()
>  - add fixes tag
> 
> Changelog v2:
>  - clarify comment and commit description
> 
>  drivers/dma/imx-sdma.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> e029a2443cfc..a32b5962630e 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -775,21 +775,23 @@ static void sdma_start_desc(struct sdma_channel
> *sdmac)  static void sdma_update_channel_loop(struct sdma_channel
> *sdmac)  {
>  	struct sdma_buffer_descriptor *bd;
> -	int error = 0;
> -	enum dma_status	old_status = sdmac->status;
> +	struct sdma_desc *desc = sdmac->desc;
> +	int error = 0, cnt = 0;
> +	enum dma_status old_status = sdmac->status;
> 
>  	/*
>  	 * loop mode. Iterate over descriptors, re-setup them and
>  	 * call callback function.
>  	 */
> -	while (sdmac->desc) {
> -		struct sdma_desc *desc = sdmac->desc;
> +	while (desc) {
> 
>  		bd = &desc->bd[desc->buf_tail];
> 
>  		if (bd->mode.status & BD_DONE)
>  			break;
> 
> +		cnt++;
> +
>  		if (bd->mode.status & BD_RROR) {
>  			bd->mode.status &= ~BD_RROR;
>  			sdmac->status = DMA_ERROR;
> @@ -822,6 +824,17 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		if (error)
>  			sdmac->status = old_status;
>  	}
> +
> +	/* In some situations it may happen that the sdma does not found any
> +	 * usable descriptor in the ring to put data into. The channel is
> +	 * stopped then. While there is no specific error condition we can
> +	 * check for, a necessary condition is that all available buffers for
> +	 * the current channel have been written to by the sdma script. In
> +	 * this case and after we have made the buffers available again,
> +	 * we restart the channel.
> +	 */
> +	if (cnt >= desc->num_bd)
> +		sdma_enable_channel(sdmac->sdma, sdmac->channel);
>  }
> 
>  static void mxc_sdma_handle_channel_normal(struct sdma_channel *data)
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

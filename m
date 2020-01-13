Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4702138B7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:55:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHWcQ7WnarLMHDMG2NpQtXsSdlXf/o9YU8Cc4qryNlg=; b=Jk/AreCXZNZdiw
	epjdxsOoi/EMaTuOOGTHDh6xJaXrY01vwxtIiQoumH7BOu/k+fx2/fjMss/bwGocMV28ssyCYzhK3
	b73DnhcG9laNFr/q4kMavBo6MxPkv1eKlg8b0PKI68q9N+uSlCCWX2Vm0e6GUUx2Uad0eiMaKKmfI
	+YUW2tG2bRAH+y6v/ymHVpzEKxfD2i537pjIN1e9rnVfkOUh5fGKZy/25DiCslBCf6AM/ByNrFgSv
	u0N50bU0SFBAdxuck4WOwe/H/6wBt2n5GJ4CPRvvibGZyxkE8Y1QwdGeXqX3CV5aXEWN2xDHT6A1+
	CXwUypDKhJzFAgogEPIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsgk-0002G7-Dd; Mon, 13 Jan 2020 05:54:58 +0000
Received: from mail-bn8nam11on20630.outbound.protection.outlook.com
 ([2a01:111:f400:7eae::630]
 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsgc-0002El-06
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:54:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikMVegvcLHwN54d/lRcB3OQsdXHb9W+tcijSHPOs2x6NYXuVOuk9ua3gz3+KSr304x7Jn4VUFg89SKBOsMLZVrCJwevswYsnIvSmOBpTGS85lXT2fWF9+IJhBl6JCq//mGidMWmXjsa+uMM0yhgVixRCdm9NfB4RrhNrGlRJbdtc9RVx1FzcTsTXPkZ7V6abOzTsrYzKMq1OSiY4AieN6ZayhE5JBVbqgwmtwy4vm+7mJiCYpWB3QgpHXeR+5R2Q4EY07RKOMJvXG1uD1T3tUQ3qYvTawV7BIjiOAKXvzboVWfjlJ2mg8m1eCR2cLfdMy0t9/y1L8HXRx3Ozvz3YcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbExrjRHLYrj+ysdWFSVdoVhEaI2OqdjqEaFOz/pK8Q=;
 b=MUzzxhj9fkgm6PTYtMXDzpKrzdPm5NyHmrZm4eDPQE8rjWn6KViAcwPAT94pewEyWqGPr291eNY/2Tj+oxFyysgUSQjriwm27/BTK4EkaxuTAZjWb5iE0LMEX01T5oC/hXVBdvVFWTQJkO8Uudgn96rZC/AzENeI5jZMnMR8X4luKgWKR1VI3C7nGVlT+WeAgHS+SKTRb7Pv/5IBQNlvFxaxBhupB7l4R06JM3TJ+/kfGpp8eXCjHndHTSc4Ezg/R6zsoGdCasce2l1J6MuO1RBAsoN9/5fVgD2YFumr4br4OKPW154uz75lZgZFromixRE0hXodVO4V6fgMAr1srA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbExrjRHLYrj+ysdWFSVdoVhEaI2OqdjqEaFOz/pK8Q=;
 b=cZsy6o/7WaH1RmGmF5zAJoYLOxEyoDxsc6lG6HNayUdufQRNOcZ96Md2ZN85paMkK7DAZ8UXhEHFWNqhd1tGm2Q+F8c0wuLZhTSxUnz7PwUv2POCSfKVTqAQOECl9PMgAkST3VQm3DW5iJ+tfRB3DqMQmhh2S9F6iieNBJcSBjY=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6597.namprd02.prod.outlook.com (20.180.17.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 05:54:43 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 05:54:42 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, "David S . Miller"
 <davem@davemloft.net>
Subject: RE: [PATCH 06/14] net: axienet: Check for DMA mapping errors
Thread-Topic: [PATCH 06/14] net: axienet: Check for DMA mapping errors
Thread-Index: AQHVx6y50lT2nOuC90+8UAg/2dRde6foFwfg
Date: Mon, 13 Jan 2020 05:54:42 +0000
Message-ID: <CH2PR02MB70001247E6EE3EF6968CCC04C7350@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-7-andre.przywara@arm.com>
In-Reply-To: <20200110115415.75683-7-andre.przywara@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1fd32a2e-8a84-402f-5cbd-08d797ed1617
x-ms-traffictypediagnostic: CH2PR02MB6597:|CH2PR02MB6597:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB659796EEE90F5D97A53DE734C7350@CH2PR02MB6597.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(189003)(199004)(54906003)(86362001)(5660300002)(316002)(110136005)(52536014)(4326008)(478600001)(33656002)(9686003)(55016002)(26005)(2906002)(186003)(6506007)(53546011)(66446008)(7696005)(81166006)(81156014)(66556008)(8676002)(8936002)(66946007)(76116006)(66476007)(64756008)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6597;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3m6BupiJdki17xPVJOnQsUvwUmq813lNwnyMD+vYaJDfE21xxXpx2PJZsz6Lc2Unv6TAD0kPi8FRLgehG3I7vI9iYoXqm9gujfQAqWPFqH27YCWeB4baXhFpLRudnfd7YpQP5XDLHRz24Xj3CkffVpSt+/iaJLDlGdwoDGT0VNQYHTpd6b/2LPHjQkcisoo1oMB9SyqIC6kZdOtEOe07D3kFPUv0bhMBcmvEu9FUG91zIN7VVNv7DLG/gjatmCWzrLguImoV780KE58fmHTWDHmo8c4TfwWWphZF8ziyVr57bcmlokUGLf/dV+5oKxpP+NZ9PqPeskvjpt8XTVgMBvOFvrx5xgZUW3gOp+iOjvHjlaXluMThDX0+ccXHatw35PVFomSLsaa9EUPWox7UjGRe5TT28lrNOYhXD8BFrVVXkvtrf/ismVVCf03eVDK7
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fd32a2e-8a84-402f-5cbd-08d797ed1617
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 05:54:42.7577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdAnmZKsw/byrfoKC6WXpMlgjBvGQn9/tv//M8fFPcSKQjc/81OVayry4IOZYkTzQhJdM0gLHTgHs61jW45N5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_215450_042792_2F4AC44A 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Robert Hancock <hancock@sedsystems.ca>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Friday, January 10, 2020 5:24 PM
> To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> <radheys@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: [PATCH 06/14] net: axienet: Check for DMA mapping errors
> 
> Especially with the default 32-bit DMA mask, DMA buffers are a limited
> resource, so their allocation can fail.
> So as the DMA API documentation requires, add error checking code after
> dma_map_single() calls to catch the case where we run out of "low" memory.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 82abe2b0f16a..8d2b67cbecf9 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -248,6 +248,11 @@ static int axienet_dma_bd_init(struct net_device
> *ndev)
>  						     skb->data,
>  						     lp->max_frm_size,
>  						     DMA_FROM_DEVICE);
> +		if (dma_mapping_error(ndev->dev.parent, lp->rx_bd_v[i].phys))

Prefer using unlikely compiler hint for dma_mapping_error. 
Also, we need to add error print to report this condition to the user,
in case it isn't there in dma_mapping_error implementation.

> {
> +			dev_kfree_skb(skb);

free of skb is already handled in _release. We can reuse that?
> +			goto out;
> +		}
> +
>  		lp->rx_bd_v[i].cntrl = lp->max_frm_size;
>  	}
> 
> @@ -668,6 +673,7 @@ axienet_start_xmit(struct sk_buff *skb, struct
> net_device *ndev)
>  	dma_addr_t tail_p;
>  	struct axienet_local *lp = netdev_priv(ndev);
>  	struct axidma_bd *cur_p;
> +	u32 orig_tail_ptr = lp->tx_bd_tail;
> 
>  	num_frag = skb_shinfo(skb)->nr_frags;
>  	cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
> @@ -703,9 +709,11 @@ axienet_start_xmit(struct sk_buff *skb, struct
> net_device *ndev)
>  		cur_p->app0 |= 2; /* Tx Full Checksum Offload Enabled */
>  	}
> 
> -	cur_p->cntrl = skb_headlen(skb) | XAXIDMA_BD_CTRL_TXSOF_MASK;
>  	cur_p->phys = dma_map_single(ndev->dev.parent, skb->data,
>  				     skb_headlen(skb), DMA_TO_DEVICE);
> +	if (dma_mapping_error(ndev->dev.parent, cur_p->phys))
> +		return NETDEV_TX_BUSY;

This is not ideally tx busy and related to available mem mapping in the system. 
I just looked at other eth drivers and it seems they return TX_OK with drop
count stats incremented.

> +	cur_p->cntrl = skb_headlen(skb) | XAXIDMA_BD_CTRL_TXSOF_MASK;
> 
>  	for (ii = 0; ii < num_frag; ii++) {
>  		if (++lp->tx_bd_tail >= lp->tx_bd_num) @@ -716,6 +724,13 @@
> axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
>  					     skb_frag_address(frag),
>  					     skb_frag_size(frag),
>  					     DMA_TO_DEVICE);
> +		if (dma_mapping_error(ndev->dev.parent, cur_p->phys)) {
> +			axienet_free_tx_chain(ndev, orig_tail_ptr, ii + 1,
> +					      NULL);
> +			lp->tx_bd_tail = orig_tail_ptr;
> +
> +			return NETDEV_TX_BUSY;
> +		}
>  		cur_p->cntrl = skb_frag_size(frag);
>  	}
> 
> @@ -796,6 +811,11 @@ static void axienet_recv(struct net_device *ndev)
>  		cur_p->phys = dma_map_single(ndev->dev.parent, new_skb-
> >data,
>  					     lp->max_frm_size,
>  					     DMA_FROM_DEVICE);
> +		if (dma_mapping_error(ndev->dev.parent, cur_p->phys)) {
> +			dev_kfree_skb(new_skb);
> +			return;
> +		}
> +
>  		cur_p->cntrl = lp->max_frm_size;
>  		cur_p->status = 0;
>  		cur_p->skb = new_skb;
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

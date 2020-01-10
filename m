Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588B1375CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS6Qzq3AljY961wqgSw5XU3LS6z3DVgaDBzEFyWVF8Q=; b=QZyuDNMQzpgf+K
	WbF1cdt6xnsH8bU5JO9pk2xKh31JDURdAXpGHBV48ixCVkRgPYmRvRbVW1BQpvliMCUGWo9OISZh/
	JpFZVWGpEi9tjktfW3xM22YBSl8MMUrVaJ7LOEVZ9dyQbvyYoCJDZLSIqDE4UyPrzUoXQcjeaJeqr
	QZea4Wefq+V2UFyrCglBfMmIcKVFX13qRmucROQUH0CuxrUqHHlWCR4pVAY+b96PEiPTSTwO0D/5f
	gdSSwz3ZymyLIG/s+rd9w/caR7zj9knlcXGNcm+klUUtlkhM2Z2+ZtxFgwdBslVFspM04wWR4vKbJ
	soFWHYPFmTvOfCux9zYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyeo-0006Zz-AO; Fri, 10 Jan 2020 18:05:14 +0000
Received: from mail-eopbgr700051.outbound.protection.outlook.com
 ([40.107.70.51] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyea-0006Kl-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:05:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsnpDjrUkxAqlYyYsOz1BoqTfgNOc9V2OsVpuTqcEhcBaK+syAmErDBesOe7pfsi5Zz1L6q6ADuve/yhdeoBmfKPxaI7p6Umcq9lIXuI/IGoctKvOnzyhU6eLFdDaTPhhBw2oz+WHJAkHOgR+Y5g8Az3Z5UEJbmMk4vEDsVNyuOAma6SgkM7Bebi+8aWKaoZgq3Kth1fEPQl0hGs9cgIxM/ViBs4HcpBZ7InyFWTS7jM7Q3RWkSDSFqMJyxdC/jvPF6nL0WhgAD2pdnbVCn8zY4eBwGCaR9OexhWAWx8u1mWV1M6z+FYO5tgHWnbuZp4sLbCdBofRyR8b8Sm9Bv3Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yPPa3JLLa4I/H4Qu9wp7czG/Kk1JExm4W1OpBFiIxE=;
 b=Z2QOyfMJb4LwdtPDjDhRZtTyQKDTLLTJ/F+uYnDG3xkE3Io4uG/87PMXGl6vecs6xGFhgLMF4xOlx7WJqeWAGk5c8hdaws+yf7oJ2fImWNSAFpzUaqy+6T3qmL9S0rldpMjSS8DUzwSrsVv94Ze8nxAv2UnS+RmqzBBBHF2ayomfKIc23DZujp/Rqkbacm3BiBJNs1JqI+3sh6KqCVt9cwajd3+UGiYn9QHC5lg+ychyEgkS+PZRRPi7Z0tpyrTrgSnvxuQgKmkMoWHbEOggotjQKAtFOF7gc3pS2ORff2iNraB4n0Ylao3F7MlxPwNwODDHG2D0STn9lr/pGw3TqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yPPa3JLLa4I/H4Qu9wp7czG/Kk1JExm4W1OpBFiIxE=;
 b=UFCJfzYrVHKXX1yvYlHRqVh3ccVYk9HrCmhMGYIHHPCaG/hFZPFnkxNUOkUj+DEQD8OKvVW3wIzYWZa4IhHY3ELmnn3UIKQnAiO0vVii43eynTwjyxsBpkWaaO9T04mcth7CB5qweJlZ0fV/ah7T7kmw5ecsgxjImTG34HkEJMk=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6760.namprd02.prod.outlook.com (10.141.156.73) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 18:04:57 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 18:04:57 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, "David S . Miller"
 <davem@davemloft.net>
Subject: RE: [PATCH 05/14] net: axienet: Factor out TX descriptor chain cleanup
Thread-Topic: [PATCH 05/14] net: axienet: Factor out TX descriptor chain
 cleanup
Thread-Index: AQHVx6y4/M+QpndI/06Wqu2OHMXL/6fkL3TQ
Date: Fri, 10 Jan 2020 18:04:57 +0000
Message-ID: <CH2PR02MB70003A0D500B9A78697FC311C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-6-andre.przywara@arm.com>
In-Reply-To: <20200110115415.75683-6-andre.przywara@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.136.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c607d19e-82b1-44ec-d02f-08d795f79a35
x-ms-traffictypediagnostic: CH2PR02MB6760:|CH2PR02MB6760:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6760AED6AC77B252D5C2A215C7380@CH2PR02MB6760.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(199004)(189003)(13464003)(54906003)(110136005)(26005)(8676002)(86362001)(81166006)(81156014)(186003)(66446008)(478600001)(7696005)(6506007)(2906002)(316002)(8936002)(53546011)(71200400001)(64756008)(66556008)(4326008)(52536014)(33656002)(55016002)(66476007)(5660300002)(76116006)(66946007)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6760;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t2enkk7V2Z05goohCRPryr2KrDs/VydFR8BmlxXpEKXVpVQp5qz8cxB+nKJTnd78KUIWGgIY8xyZfgvZKp/xG7kKA4r6GjIw+QvlkJ3vC4utNlhtr2WJ5QXePdYYLfGSGMgqSygYWPeYduqf/6DGJ+5Aq4LGWm1T7v2eoVzoJLSlhMC/ymwkCXGgRrgnRFqGZ1Y1JsWZNyJME95Zu3yPbH0QU/5rJvSnn+JxPlL7rjKTp2K66HpyzNjyMMO1uG2WuJFnF/tflYxjW3/VMBu7Jf5i0B1P5fWo7lexnBf9EctySbdbHj/6Ygl6peVzT2HfrdRaQ5TLPWawdA4oZDWSRWSB8fdpj6IiM9R0EJMLBCUB4Sk+SMDnWri1uU6i3+Wx3VKs4AqmaaZZTRcwcLEhn2whbnOVHRynAxRjW1FY3lGqLp/yK82EnxjfvjKivk1BZz13N+JeZnGZ7FvxC227fM8Zd7a6iUR85JFkINtjeQpr5JI4sOi3nqMnCJ46o7hm
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c607d19e-82b1-44ec-d02f-08d795f79a35
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 18:04:57.2056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bYjkePUNeHIOFPlPuefjyac8pU+MWZcuPsz2hZHd7TA6JLH0ufwjpiLtOHcroi1XkEvnRvTjYoGnQwItyV6qCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6760
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_100500_918972_8040A548 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Subject: [PATCH 05/14] net: axienet: Factor out TX descriptor chain cleanup
> 
> Factor out the code that cleans up a number of connected TX descriptors,
> as we will need it to properly roll back a failed _xmit() call.
> There are subtle differences between cleaning up a successfully sent
> chain (unknown number of involved descriptors, total data size needed)
> and a chain that was about to set up (number of descriptors known), so
> cater for those variations with some extra parameters.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 75 ++++++++++++-------
>  1 file changed, 50 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index ec5d01adc1d5..82abe2b0f16a 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -543,33 +543,37 @@ static int axienet_device_reset(struct net_device
> *ndev)
>  	return 0;
>  }
> 
> -/**
> - * axienet_start_xmit_done - Invoked once a transmit is completed by the
> - * Axi DMA Tx channel.
> - * @ndev:	Pointer to the net_device structure
> - *
> - * This function is invoked from the Axi DMA Tx isr to notify the completion
> - * of transmit operation. It clears fields in the corresponding Tx BDs and
> - * unmaps the corresponding buffer so that CPU can regain ownership of
> the
> - * buffer. It finally invokes "netif_wake_queue" to restart transmission if
> - * required.
> +/* Clean up a series of linked TX descriptors. Would either be called
> + * after a successful transmit operation, or after there was an error
> + * when setting up the chain.
> + * Returns the number of descriptors handled.
>   */
> -static void axienet_start_xmit_done(struct net_device *ndev)

To be consistent we can add the doxygen function description.
The rest looks good. Feel free to add:
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>

> +static int axienet_free_tx_chain(struct net_device *ndev, u32 first_bd,
> +				 int nr_bds, u32 *sizep)
>  {
> -	u32 size = 0;
> -	u32 packets = 0;
>  	struct axienet_local *lp = netdev_priv(ndev);
> +	int max_bds = (nr_bds != -1) ? nr_bds : lp->tx_bd_num;
>  	struct axidma_bd *cur_p;
> -	unsigned int status = 0;
> +	unsigned int status;
> +	int i;
> +
> +	for (i = 0; i < max_bds; i++) {
> +		cur_p = &lp->tx_bd_v[(first_bd + i) % lp->tx_bd_num];
> +		status = cur_p->status;
> +
> +		/* If no number is given, clean up *all* descriptors that have
> +		 * been completed by the MAC.
> +		 */
> +		if (nr_bds == -1 && !(status &
> XAXIDMA_BD_STS_COMPLETE_MASK))
> +			break;
> 
> -	cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
> -	status = cur_p->status;
> -	while (status & XAXIDMA_BD_STS_COMPLETE_MASK) {
>  		dma_unmap_single(ndev->dev.parent, cur_p->phys,
>  				(cur_p->cntrl &
> XAXIDMA_BD_CTRL_LENGTH_MASK),
>  				DMA_TO_DEVICE);
> -		if (cur_p->skb)
> +
> +		if (cur_p->skb && (status &
> XAXIDMA_BD_STS_COMPLETE_MASK))
>  			dev_consume_skb_irq(cur_p->skb);
> +
>  		cur_p->cntrl = 0;
>  		cur_p->app0 = 0;
>  		cur_p->app1 = 0;
> @@ -578,15 +582,36 @@ static void axienet_start_xmit_done(struct
> net_device *ndev)
>  		cur_p->status = 0;
>  		cur_p->skb = NULL;
> 
> -		size += status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
> -		packets++;
> -
> -		if (++lp->tx_bd_ci >= lp->tx_bd_num)
> -			lp->tx_bd_ci = 0;
> -		cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
> -		status = cur_p->status;
> +		if (sizep)
> +			*sizep += status &
> XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
>  	}
> 
> +	return i;
> +}
> +
> +/**
> + * axienet_start_xmit_done - Invoked once a transmit is completed by the
> + * Axi DMA Tx channel.
> + * @ndev:	Pointer to the net_device structure
> + *
> + * This function is invoked from the Axi DMA Tx isr to notify the completion
> + * of transmit operation. It clears fields in the corresponding Tx BDs and
> + * unmaps the corresponding buffer so that CPU can regain ownership of
> the
> + * buffer. It finally invokes "netif_wake_queue" to restart transmission if
> + * required.
> + */
> +static void axienet_start_xmit_done(struct net_device *ndev)
> +{
> +	u32 size = 0;
> +	u32 packets = 0;
> +	struct axienet_local *lp = netdev_priv(ndev);
> +
> +	packets = axienet_free_tx_chain(ndev, lp->tx_bd_ci, -1, &size);
> +
> +	lp->tx_bd_ci += packets;
> +	if (lp->tx_bd_ci >= lp->tx_bd_num)
> +		lp->tx_bd_ci -= lp->tx_bd_num;
> +
>  	ndev->stats.tx_packets += packets;
>  	ndev->stats.tx_bytes += size;
> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

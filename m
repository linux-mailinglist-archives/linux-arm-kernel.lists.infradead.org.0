Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56735E239
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pJF6ycXxd8iVpq9m1uoiu6skEidCsfxIOtWi3L8www=; b=t81g/EsdscxqcA
	3yo27B4Ec3jjgtgq3UStzig3fOntg0vLMIsJoOSbuWOIRazwun2pfMFWrx7JrKqzan8f6Zx+XO9OR
	mV7T4P4ae/gPgXjOADZI69Z1Kxe7hJ61tPH5MsdoKi3RJdksPePwEfW/YmQA3hpPCSo+fmSUCNN92
	eRlDQRj6G6iZhJZK7GLxvcl/Mf8uqiFM5Hf/NrzANvC0EGQUNC8KwZNZ4U8vsAJarxw5P+qCTHfuA
	Rdf0gMX6jKJm0Hju258AeYvgimwKdBZPl+sMDZBlmXhsZOthSUcYZrJFdRcrbNuKL38EVAj3tcF5/
	m62WMLVWV0icuYCMa5Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hichL-0004JP-RN; Wed, 03 Jul 2019 10:41:12 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hich7-0004IR-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:40:59 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B1365C2642;
 Wed,  3 Jul 2019 10:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562150457; bh=ag31epEmt2/cRFTExd76MY8z+Xycn+seHeYB502Jung=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=WGbYBhnFqoC5jTkICx43OW92MQcZEJ4cyx7Erf8DJJ1GU7AMfj6zA0DQzAWRvgEOT
 WG65xOr8S339K4vyDbhqHG7byD25mW3LCDb+EOwD+QF0oqRdTxDd5P/jTVUdK3kxyL
 EqkpRABm3Yi1PKMOkTTEMZ/nqYt6gnFFDT/G+vCNUOgQQAoznK77MoHhfXayCrtgvZ
 g8MWOIDPe2u/i9G7CwqdUch/3wZuzefT6XyIjOtk71FYpQQRxjeF+XN12FIJ4S0p5J
 49KD1IaPmdOkc7DRiO6Nw7+KQSUHYEa5pOVqAJThPeDQC4DUy1BZF6l7yNO9H1RlO2
 hV3pxDLdk4iLQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 16CC0A00B0;
 Wed,  3 Jul 2019 10:40:53 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 3 Jul 2019 03:40:53 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 3 Jul 2019 03:40:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SzoSEfVb13gVACz4b0+njDW8iP3PNhdr85dq9g/adso=;
 b=TXiDygB//8T+e3cKXpuytZIPSh//D5ATS9WH1i8ZqEJ4HOaCt5p0MPjDj8VvOzjQ8U/GkytN0TK1YoQAiSAJSO4sAuhBm+69MAUP4jAJ+VYAImo2FWxYSZU0yrrFsPta92Qpy1QxxyZR6G0hVv/KOWvFmUvkfxD8cZcv9otOU+E=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3457.namprd12.prod.outlook.com (20.178.212.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 10:40:51 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 10:40:51 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 Jesper Dangaard Brouer <brouer@redhat.com>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/aa4s/HQ
Date: Wed, 3 Jul 2019 10:40:51 +0000
Message-ID: <BN8PR12MB3266FD95A74A46F692B7FFBED3FB0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
In-Reply-To: <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b48b251b-5782-45a4-7619-08d6ffa2eb3a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3457; 
x-ms-traffictypediagnostic: BN8PR12MB3457:
x-microsoft-antispam-prvs: <BN8PR12MB3457EE12F2412218466ED1E6D3FB0@BN8PR12MB3457.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(376002)(346002)(366004)(136003)(199004)(189003)(86362001)(26005)(76176011)(81166006)(6506007)(71190400001)(71200400001)(8936002)(7696005)(102836004)(6436002)(11346002)(256004)(74316002)(7416002)(110136005)(229853002)(305945005)(76116006)(2501003)(99286004)(33656002)(73956011)(64756008)(66446008)(54906003)(66556008)(66066001)(14444005)(66946007)(81156014)(446003)(30864003)(8676002)(476003)(186003)(52536014)(53936002)(5660300002)(486006)(316002)(66476007)(7736002)(55016002)(4326008)(14454004)(68736007)(25786009)(6246003)(2201001)(2906002)(3846002)(6116002)(478600001)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3457;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C4OxJBV91g7ZknrFrZUs2fJ/z3HPXvwmrmO0DJQHBaAun8AQK+uri2VAVVLdyfga6plGarGIV9MoMRnldRUYO56Uptn8w+sbbnrgXh18xhe4N6QQeTtynZjV7CbDcW+qiZymSt8/cF557IyUCprNGBFuSf5dzxeWcsjV4xCvF/sIObncMHhZmRrwUdAdhkTlXKDVVN0GbkUj4QouPw5P521Zq0w08WZ7wctLAP4R1P3R9kAfVQf4Dyr7MtZ0L8I8Yin7RkKX/7W2EGEzvY5dQkP3V1UkdWDDE/jbg2UO5aMCZCoTbUUDZd9b12y08j2LIBrnTrTKJn9fQZWuDxH0T4uhMXW36yVH9By855SB/CpfFG6JTfSSqjlk87sj7g1k4hX3gDxE/8iOONZQ9dZd32STZ3AkXNqArWZgmy1Pdpk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b48b251b-5782-45a4-7619-08d6ffa2eb3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 10:40:51.4306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3457
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_034057_412709_6FA1CAEE 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

++ Jesper: Who is most active committer of page pool API (?) ... Can you 
please help review this ?

From: Jose Abreu <joabreu@synopsys.com>

> Mapping and unmapping DMA region is an high bottleneck in stmmac driver,
> specially in the RX path.
> 
> This commit introduces support for Page Pool API and uses it in all RX
> queues. With this change, we get more stable troughput and some increase
> of banwidth with iperf:
> 	- MAC1000 - 950 Mbps
> 	- XGMAC: 9.22 Gbps
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> Cc: Joao Pinto <jpinto@synopsys.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/net/ethernet/stmicro/stmmac/Kconfig       |   1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  10 +-
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 196 ++++++----------------
>  3 files changed, 63 insertions(+), 144 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
> index 943189dcccb1..2325b40dff6e 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
> +++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
> @@ -3,6 +3,7 @@ config STMMAC_ETH
>  	tristate "STMicroelectronics Multi-Gigabit Ethernet driver"
>  	depends on HAS_IOMEM && HAS_DMA
>  	select MII
> +	select PAGE_POOL
>  	select PHYLINK
>  	select CRC32
>  	imply PTP_1588_CLOCK
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> index 513f4e2df5f6..5cd966c154f3 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> @@ -20,6 +20,7 @@
>  #include <linux/ptp_clock_kernel.h>
>  #include <linux/net_tstamp.h>
>  #include <linux/reset.h>
> +#include <net/page_pool.h>
>  
>  struct stmmac_resources {
>  	void __iomem *addr;
> @@ -54,14 +55,19 @@ struct stmmac_tx_queue {
>  	u32 mss;
>  };
>  
> +struct stmmac_rx_buffer {
> +	struct page *page;
> +	dma_addr_t addr;
> +};
> +
>  struct stmmac_rx_queue {
>  	u32 rx_count_frames;
>  	u32 queue_index;
> +	struct page_pool *page_pool;
> +	struct stmmac_rx_buffer *buf_pool;
>  	struct stmmac_priv *priv_data;
>  	struct dma_extended_desc *dma_erx;
>  	struct dma_desc *dma_rx ____cacheline_aligned_in_smp;
> -	struct sk_buff **rx_skbuff;
> -	dma_addr_t *rx_skbuff_dma;
>  	unsigned int cur_rx;
>  	unsigned int dirty_rx;
>  	u32 rx_zeroc_thresh;
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index c8fe85ef9a7e..9f44e8193208 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1197,26 +1197,14 @@ static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
>  				  int i, gfp_t flags, u32 queue)
>  {
>  	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
> -	struct sk_buff *skb;
> +	struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];
>  
> -	skb = __netdev_alloc_skb_ip_align(priv->dev, priv->dma_buf_sz, flags);
> -	if (!skb) {
> -		netdev_err(priv->dev,
> -			   "%s: Rx init fails; skb is NULL\n", __func__);
> +	buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
> +	if (!buf->page)
>  		return -ENOMEM;
> -	}
> -	rx_q->rx_skbuff[i] = skb;
> -	rx_q->rx_skbuff_dma[i] = dma_map_single(priv->device, skb->data,
> -						priv->dma_buf_sz,
> -						DMA_FROM_DEVICE);
> -	if (dma_mapping_error(priv->device, rx_q->rx_skbuff_dma[i])) {
> -		netdev_err(priv->dev, "%s: DMA mapping error\n", __func__);
> -		dev_kfree_skb_any(skb);
> -		return -EINVAL;
> -	}
> -
> -	stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[i]);
>  
> +	buf->addr = buf->page->dma_addr;
> +	stmmac_set_desc_addr(priv, p, buf->addr);
>  	if (priv->dma_buf_sz == BUF_SIZE_16KiB)
>  		stmmac_init_desc3(priv, p);
>  
> @@ -1232,13 +1220,10 @@ static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
>  static void stmmac_free_rx_buffer(struct stmmac_priv *priv, u32 queue, int i)
>  {
>  	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
> +	struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];
>  
> -	if (rx_q->rx_skbuff[i]) {
> -		dma_unmap_single(priv->device, rx_q->rx_skbuff_dma[i],
> -				 priv->dma_buf_sz, DMA_FROM_DEVICE);
> -		dev_kfree_skb_any(rx_q->rx_skbuff[i]);
> -	}
> -	rx_q->rx_skbuff[i] = NULL;
> +	page_pool_put_page(rx_q->page_pool, buf->page, false);
> +	buf->page = NULL;
>  }
>  
>  /**
> @@ -1321,10 +1306,6 @@ static int init_dma_rx_desc_rings(struct net_device *dev, gfp_t flags)
>  						     queue);
>  			if (ret)
>  				goto err_init_rx_buffers;
> -
> -			netif_dbg(priv, probe, priv->dev, "[%p]\t[%p]\t[%x]\n",
> -				  rx_q->rx_skbuff[i], rx_q->rx_skbuff[i]->data,
> -				  (unsigned int)rx_q->rx_skbuff_dma[i]);
>  		}
>  
>  		rx_q->cur_rx = 0;
> @@ -1498,8 +1479,9 @@ static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
>  					  sizeof(struct dma_extended_desc),
>  					  rx_q->dma_erx, rx_q->dma_rx_phy);
>  
> -		kfree(rx_q->rx_skbuff_dma);
> -		kfree(rx_q->rx_skbuff);
> +		kfree(rx_q->buf_pool);
> +		if (rx_q->page_pool)
> +			page_pool_request_shutdown(rx_q->page_pool);
>  	}
>  }
>  
> @@ -1551,20 +1533,28 @@ static int alloc_dma_rx_desc_resources(struct stmmac_priv *priv)
>  	/* RX queues buffers and DMA */
>  	for (queue = 0; queue < rx_count; queue++) {
>  		struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
> +		struct page_pool_params pp_params = { 0 };
>  
>  		rx_q->queue_index = queue;
>  		rx_q->priv_data = priv;
>  
> -		rx_q->rx_skbuff_dma = kmalloc_array(DMA_RX_SIZE,
> -						    sizeof(dma_addr_t),
> -						    GFP_KERNEL);
> -		if (!rx_q->rx_skbuff_dma)
> +		pp_params.flags = PP_FLAG_DMA_MAP;
> +		pp_params.order = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE);
> +		pp_params.nid = dev_to_node(priv->device);
> +		pp_params.dev = priv->device;
> +		pp_params.dma_dir = DMA_FROM_DEVICE;
> +
> +		rx_q->page_pool = page_pool_create(&pp_params);
> +		if (IS_ERR(rx_q->page_pool)) {
> +			ret = PTR_ERR(rx_q->page_pool);
> +			rx_q->page_pool = NULL;
>  			goto err_dma;
> +		}
>  
> -		rx_q->rx_skbuff = kmalloc_array(DMA_RX_SIZE,
> -						sizeof(struct sk_buff *),
> -						GFP_KERNEL);
> -		if (!rx_q->rx_skbuff)
> +		rx_q->buf_pool = kmalloc_array(DMA_RX_SIZE,
> +					       sizeof(*rx_q->buf_pool),
> +					       GFP_KERNEL);
> +		if (!rx_q->buf_pool)
>  			goto err_dma;
>  
>  		if (priv->extend_desc) {
> @@ -3295,9 +3285,8 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
>  	int dirty = stmmac_rx_dirty(priv, queue);
>  	unsigned int entry = rx_q->dirty_rx;
>  
> -	int bfsize = priv->dma_buf_sz;
> -
>  	while (dirty-- > 0) {
> +		struct stmmac_rx_buffer *buf = &rx_q->buf_pool[entry];
>  		struct dma_desc *p;
>  		bool use_rx_wd;
>  
> @@ -3306,49 +3295,22 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
>  		else
>  			p = rx_q->dma_rx + entry;
>  
> -		if (likely(!rx_q->rx_skbuff[entry])) {
> -			struct sk_buff *skb;
> -
> -			skb = netdev_alloc_skb_ip_align(priv->dev, bfsize);
> -			if (unlikely(!skb)) {
> -				/* so for a while no zero-copy! */
> -				rx_q->rx_zeroc_thresh = STMMAC_RX_THRESH;
> -				if (unlikely(net_ratelimit()))
> -					dev_err(priv->device,
> -						"fail to alloc skb entry %d\n",
> -						entry);
> -				break;
> -			}
> -
> -			rx_q->rx_skbuff[entry] = skb;
> -			rx_q->rx_skbuff_dma[entry] =
> -			    dma_map_single(priv->device, skb->data, bfsize,
> -					   DMA_FROM_DEVICE);
> -			if (dma_mapping_error(priv->device,
> -					      rx_q->rx_skbuff_dma[entry])) {
> -				netdev_err(priv->dev, "Rx DMA map failed\n");
> -				dev_kfree_skb(skb);
> +		if (!buf->page) {
> +			buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
> +			if (!buf->page)
>  				break;
> -			}
> -
> -			stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[entry]);
> -			stmmac_refill_desc3(priv, rx_q, p);
> -
> -			if (rx_q->rx_zeroc_thresh > 0)
> -				rx_q->rx_zeroc_thresh--;
> -
> -			netif_dbg(priv, rx_status, priv->dev,
> -				  "refill entry #%d\n", entry);
>  		}
> -		dma_wmb();
> +
> +		buf->addr = buf->page->dma_addr;
> +		stmmac_set_desc_addr(priv, p, buf->addr);
> +		stmmac_refill_desc3(priv, rx_q, p);
>  
>  		rx_q->rx_count_frames++;
>  		rx_q->rx_count_frames %= priv->rx_coal_frames;
>  		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
>  
> -		stmmac_set_rx_owner(priv, p, use_rx_wd);
> -
>  		dma_wmb();
> +		stmmac_set_rx_owner(priv, p, use_rx_wd);
>  
>  		entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
>  	}
> @@ -3373,9 +3335,6 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  	unsigned int next_entry = rx_q->cur_rx;
>  	int coe = priv->hw->rx_csum;
>  	unsigned int count = 0;
> -	bool xmac;
> -
> -	xmac = priv->plat->has_gmac4 || priv->plat->has_xgmac;
>  
>  	if (netif_msg_rx_status(priv)) {
>  		void *rx_head;
> @@ -3389,11 +3348,12 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  		stmmac_display_ring(priv, rx_head, DMA_RX_SIZE, true);
>  	}
>  	while (count < limit) {
> +		struct stmmac_rx_buffer *buf;
> +		struct dma_desc *np, *p;
>  		int entry, status;
> -		struct dma_desc *p;
> -		struct dma_desc *np;
>  
>  		entry = next_entry;
> +		buf = &rx_q->buf_pool[entry];
>  
>  		if (priv->extend_desc)
>  			p = (struct dma_desc *)(rx_q->dma_erx + entry);
> @@ -3423,20 +3383,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  			stmmac_rx_extended_status(priv, &priv->dev->stats,
>  					&priv->xstats, rx_q->dma_erx + entry);
>  		if (unlikely(status == discard_frame)) {
> +			page_pool_recycle_direct(rx_q->page_pool, buf->page);
>  			priv->dev->stats.rx_errors++;
> -			if (priv->hwts_rx_en && !priv->extend_desc) {
> -				/* DESC2 & DESC3 will be overwritten by device
> -				 * with timestamp value, hence reinitialize
> -				 * them in stmmac_rx_refill() function so that
> -				 * device can reuse it.
> -				 */
> -				dev_kfree_skb_any(rx_q->rx_skbuff[entry]);
> -				rx_q->rx_skbuff[entry] = NULL;
> -				dma_unmap_single(priv->device,
> -						 rx_q->rx_skbuff_dma[entry],
> -						 priv->dma_buf_sz,
> -						 DMA_FROM_DEVICE);
> -			}
> +			buf->page = NULL;
>  		} else {
>  			struct sk_buff *skb;
>  			int frame_len;
> @@ -3476,58 +3425,18 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  					   frame_len, status);
>  			}
>  
> -			/* The zero-copy is always used for all the sizes
> -			 * in case of GMAC4 because it needs
> -			 * to refill the used descriptors, always.
> -			 */
> -			if (unlikely(!xmac &&
> -				     ((frame_len < priv->rx_copybreak) ||
> -				     stmmac_rx_threshold_count(rx_q)))) {
> -				skb = netdev_alloc_skb_ip_align(priv->dev,
> -								frame_len);
> -				if (unlikely(!skb)) {
> -					if (net_ratelimit())
> -						dev_warn(priv->device,
> -							 "packet dropped\n");
> -					priv->dev->stats.rx_dropped++;
> -					continue;
> -				}
> -
> -				dma_sync_single_for_cpu(priv->device,
> -							rx_q->rx_skbuff_dma
> -							[entry], frame_len,
> -							DMA_FROM_DEVICE);
> -				skb_copy_to_linear_data(skb,
> -							rx_q->
> -							rx_skbuff[entry]->data,
> -							frame_len);
> -
> -				skb_put(skb, frame_len);
> -				dma_sync_single_for_device(priv->device,
> -							   rx_q->rx_skbuff_dma
> -							   [entry], frame_len,
> -							   DMA_FROM_DEVICE);
> -			} else {
> -				skb = rx_q->rx_skbuff[entry];
> -				if (unlikely(!skb)) {
> -					if (net_ratelimit())
> -						netdev_err(priv->dev,
> -							   "%s: Inconsistent Rx chain\n",
> -							   priv->dev->name);
> -					priv->dev->stats.rx_dropped++;
> -					continue;
> -				}
> -				prefetch(skb->data - NET_IP_ALIGN);
> -				rx_q->rx_skbuff[entry] = NULL;
> -				rx_q->rx_zeroc_thresh++;
> -
> -				skb_put(skb, frame_len);
> -				dma_unmap_single(priv->device,
> -						 rx_q->rx_skbuff_dma[entry],
> -						 priv->dma_buf_sz,
> -						 DMA_FROM_DEVICE);
> +			skb = netdev_alloc_skb_ip_align(priv->dev, frame_len);
> +			if (unlikely(!skb)) {
> +				priv->dev->stats.rx_dropped++;
> +				continue;
>  			}
>  
> +			dma_sync_single_for_cpu(priv->device, buf->addr,
> +						frame_len, DMA_FROM_DEVICE);
> +			skb_copy_to_linear_data(skb, page_address(buf->page),
> +						frame_len);
> +			skb_put(skb, frame_len);
> +
>  			if (netif_msg_pktdata(priv)) {
>  				netdev_dbg(priv->dev, "frame received (%dbytes)",
>  					   frame_len);
> @@ -3547,6 +3456,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  
>  			napi_gro_receive(&ch->rx_napi, skb);
>  
> +			page_pool_recycle_direct(rx_q->page_pool, buf->page);
> +			buf->page = NULL;
> +
>  			priv->dev->stats.rx_packets++;
>  			priv->dev->stats.rx_bytes += frame_len;
>  		}
> -- 
> 2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

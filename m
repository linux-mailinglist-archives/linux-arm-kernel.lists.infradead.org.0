Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B29874F56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rt2C76Q/C87uKikGQK2zmn5etATSIrLEMQNlCF5yZg=; b=mMk4jWgLaD8+m5
	SbBbFNQbfBFZsAqXed7THv/p7+nVnKZsMqY7A8fqi36Tg4bOzv4Qpo8PlXuIVNlGeVVDb6lx9vUrD
	GfhvdF4oO4roNmfdyGVlS2xQRRp5kQY6UbMuGskq9DWjgdy+MqwqRuQGmsl4BYlwNkYLGiErG8JHl
	gIung60Fk0oOO4vrApWQoN3KWoiuFE5MbUgDQ/npQ3Nh0GK8InhSdiJfUHuP4v3biAtA+47NlEpcT
	VNWZf+1np8ANQK7vrouRwpIohoQmeb6X7fduJrlL7RdElOVp8q466wMO+oS61ing/cDqcN0pwo3SF
	xt4bp7dXmjulGOhaixvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdlp-0002sL-QA; Thu, 25 Jul 2019 13:26:58 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdlZ-0002rQ-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:26:43 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2302EC0B70;
 Thu, 25 Jul 2019 13:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564061199; bh=2v8UMjZNBjQwo1ohwCpbtpmw+7KSGJkDmzosqySdh28=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=NSAqiJFd/9sxdAAoDPjAeIQRN1U3lPsppORj4BJ5G3c2kYpzcitXgYsXDVTqC3jeA
 0xisl6Alz8rm4njIq/CFMNOeGMeBS0SKzV4yHtfo+SwK5cCrCT4jUDQ4ZKGZm39NKF
 chGIwMoLl8PoaH04LN8foWaALiBG4M0a1ctB1vWlC4g0RSrMn6lDjbloa9jJ7V03tY
 B0cfv8I53cPEUCD191MPv/uFFgtj2ek3Zg/B4JxHzBpsh30jKIgW5mvX7J4OqZbfiB
 8gcqQ7oA1LeFBFvOmms/Vn0LB9Phvykno+4tnFRn9sWNDMtsgHKWyZ5dNEltSOXALy
 ic1PAafG4tnsg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4887FA0067;
 Thu, 25 Jul 2019 13:26:36 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 25 Jul 2019 06:26:26 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 25 Jul 2019 06:26:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zj3Dl+cZyZRcONkGdfOXaHNDTKEiSmPfJx135vADhoJFJPS/9nL6ZIFvGK2IMw13mYGUGirGPrpj82Y5ZxIkbHsT51Jm4aVs549y8f9S2LymWp7EBNScRp4wrlyzJ6No/47gCmayQ5df0q9LG6O8NUE+iFqAokQQnPXHAgYZbkWtIdfSIDvrKxIwDm1oejTi1cc609wL//4qdr5N1wo0vNeu7vkGfu78+FHIk65U/mon1G1My07PX8sMZSGcLP5IsbdQ6Hkt7PGdeI6O2kE62Nva/rO1EnV1gycH9smIN1TiJboNdAbxNRde05pk9cebiuF4363o9aMHfmugMNcGaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2v8UMjZNBjQwo1ohwCpbtpmw+7KSGJkDmzosqySdh28=;
 b=Uub0uPk5nEc7CxEcNallPonZGVrzm91gI4AxnjFpRPi9KhrVxkPUKGLuJs/tknNwtWchtpRJnz26Jw3r0tlPyUFnLhDL/YsEnN7WZloJFzK+SU6fq+DDZnr25iRblAQ1GKfcznVIlRRsml2KO2dIhncgjlejEbnEUS/7vQYEovEeo/sOZUN/XehtdAtqzJOkebjrhZWy/R2y4JG0vwt2dqEDlhQRdUJk/lvkgodfaK3RS2WS72aFeeJPgwNk5NZKFXY3XJB5/P78/textIMQEY2jBYBY9KgkC7+5k9usJ1o7XQqtS1hvxmBTWIH8ymNxPgFSrk9enl+rGP9NMgKf1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2v8UMjZNBjQwo1ohwCpbtpmw+7KSGJkDmzosqySdh28=;
 b=Ps3KPk4YbBeG1A+l2lDsFVahTvSRrroCbH+ATLvGIcKZkDqK9udzREynxXzbrYcIPbog1Bx/+imXHcKKRD0TAixd0UaJ6IjbnMu98/EeNV6D0hAUoxAG9RXjJVnuyjZnyLqQLWqN/yL6ksxk/w81bNkhkZhBE2p3SjXO3lLwUZY=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB2936.namprd12.prod.outlook.com (20.179.91.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 13:26:24 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 13:26:24 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abbdEOAgAAAgcA=
Date: Thu, 25 Jul 2019 13:26:24 +0000
Message-ID: <BYAPR12MB3269927AB1F67D46E150ED6BD3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
In-Reply-To: <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00140198-2dd0-4fa1-6f60-08d71103b0ec
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2936; 
x-ms-traffictypediagnostic: BYAPR12MB2936:
x-microsoft-antispam-prvs: <BYAPR12MB29361ACF4C972D711333859DD3C10@BYAPR12MB2936.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(376002)(396003)(39860400002)(52314003)(189003)(199004)(5660300002)(53546011)(2201001)(7696005)(33656002)(66066001)(7416002)(81166006)(9686003)(99286004)(26005)(81156014)(6246003)(55016002)(6436002)(110136005)(14454004)(478600001)(486006)(53936002)(3846002)(68736007)(102836004)(11346002)(8936002)(476003)(74316002)(6506007)(8676002)(6116002)(76176011)(14444005)(66556008)(66446008)(186003)(66946007)(64756008)(71200400001)(52536014)(86362001)(71190400001)(229853002)(446003)(25786009)(2906002)(7736002)(4326008)(54906003)(316002)(2501003)(76116006)(305945005)(66476007)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2936;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lmLf0UpJIKZ4l6CfCSehIoCkwwu4hkNT0PwTGnuK5/xDXIJipDYt+7xHRquZsLVbNS3ZQ3Go1Uz+ZIEDrb5Do88MQozcQwXK8R9M5la5n9+XkJHPVuR+9Xlrx4Es+99Z6jF+zFqS9jR8kDPCHZNNgG0POz+Lib2W6o3Pc6qehcW8fQOKiXCGouaZ4alRdlLxGuJmGzjZjai9vpzlwDLVk988h/fHT8p9sRazTr5Ez0cJZWY6BDtDXuqxWtwZ0rwmGiDeltW1ky4O7ZxIJMrjOqGhUDC7hehai6v1SjbfurFVeI4bowFuO9uzknNSYIEjQ6y7X5bQVltujaGySxUlF86wUA80HT3+pjnIYIqrsfM6luaIRCQIJl9iMw06+wCRCRHcMX5tA94e1WUn0fdcO2v218QnN5uoe2seiiQWAQs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 00140198-2dd0-4fa1-6f60-08d71103b0ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 13:26:24.4974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2936
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_062641_615133_17B08DAC 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, "wens@csie.org" <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/25/2019, 14:20:07 (UTC+00:00)

> 
> On 03/07/2019 11:37, Jose Abreu wrote:
> > Mapping and unmapping DMA region is an high bottleneck in stmmac driver,
> > specially in the RX path.
> > 
> > This commit introduces support for Page Pool API and uses it in all RX
> > queues. With this change, we get more stable troughput and some increase
> > of banwidth with iperf:
> > 	- MAC1000 - 950 Mbps
> > 	- XGMAC: 9.22 Gbps
> > 
> > Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> > Cc: Joao Pinto <jpinto@synopsys.com>
> > Cc: David S. Miller <davem@davemloft.net>
> > Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> > Cc: Alexandre Torgue <alexandre.torgue@st.com>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> > Cc: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  drivers/net/ethernet/stmicro/stmmac/Kconfig       |   1 +
> >  drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  10 +-
> >  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 196 ++++++----------------
> >  3 files changed, 63 insertions(+), 144 deletions(-)
> 
> ...
> 
> > @@ -3306,49 +3295,22 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
> >  		else
> >  			p = rx_q->dma_rx + entry;
> >  
> > -		if (likely(!rx_q->rx_skbuff[entry])) {
> > -			struct sk_buff *skb;
> > -
> > -			skb = netdev_alloc_skb_ip_align(priv->dev, bfsize);
> > -			if (unlikely(!skb)) {
> > -				/* so for a while no zero-copy! */
> > -				rx_q->rx_zeroc_thresh = STMMAC_RX_THRESH;
> > -				if (unlikely(net_ratelimit()))
> > -					dev_err(priv->device,
> > -						"fail to alloc skb entry %d\n",
> > -						entry);
> > -				break;
> > -			}
> > -
> > -			rx_q->rx_skbuff[entry] = skb;
> > -			rx_q->rx_skbuff_dma[entry] =
> > -			    dma_map_single(priv->device, skb->data, bfsize,
> > -					   DMA_FROM_DEVICE);
> > -			if (dma_mapping_error(priv->device,
> > -					      rx_q->rx_skbuff_dma[entry])) {
> > -				netdev_err(priv->dev, "Rx DMA map failed\n");
> > -				dev_kfree_skb(skb);
> > +		if (!buf->page) {
> > +			buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
> > +			if (!buf->page)
> >  				break;
> > -			}
> > -
> > -			stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[entry]);
> > -			stmmac_refill_desc3(priv, rx_q, p);
> > -
> > -			if (rx_q->rx_zeroc_thresh > 0)
> > -				rx_q->rx_zeroc_thresh--;
> > -
> > -			netif_dbg(priv, rx_status, priv->dev,
> > -				  "refill entry #%d\n", entry);
> >  		}
> > -		dma_wmb();
> > +
> > +		buf->addr = buf->page->dma_addr;
> > +		stmmac_set_desc_addr(priv, p, buf->addr);
> > +		stmmac_refill_desc3(priv, rx_q, p);
> >  
> >  		rx_q->rx_count_frames++;
> >  		rx_q->rx_count_frames %= priv->rx_coal_frames;
> >  		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
> >  
> > -		stmmac_set_rx_owner(priv, p, use_rx_wd);
> > -
> >  		dma_wmb();
> > +		stmmac_set_rx_owner(priv, p, use_rx_wd);
> >  
> >  		entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
> >  	}
> 
> I was looking at this change in a bit closer detail and one thing that
> stuck out to me was the above where the barrier had been moved from
> after the stmmac_set_rx_owner() call to before. 
> 
> So I moved this back and I no longer saw the crash. However, then I
> recalled I had the patch to enable the debug prints for the buffer
> address applied but after reverting that, the crash occurred again. 
> 
> In other words, what works for me is moving the above barrier and adding
> the debug print, which appears to suggest that there is some
> timing/coherency issue here. Anyway, maybe this is clue to what is going
> on?
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index a7486c2f3221..2f016397231b 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3303,8 +3303,8 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
>                 rx_q->rx_count_frames %= priv->rx_coal_frames;
>                 use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;
>  
> -               dma_wmb();
>                 stmmac_set_rx_owner(priv, p, use_rx_wd);
> +               dma_wmb();
>  
>                 entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
>         }
> @@ -3438,6 +3438,10 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>                         dma_sync_single_for_device(priv->device, buf->addr,
>                                                    frame_len, DMA_FROM_DEVICE);
>  
> +                       pr_info("%s: paddr=0x%llx, vaddr=0x%llx, len=%d", __func__,
> +                                       buf->addr, page_address(buf->page),
> +                                       frame_len);
> +
>                         if (netif_msg_pktdata(priv)) {
>                                 netdev_dbg(priv->dev, "frame received (%dbytes)",
>                                            frame_len);
> 
> Cheers
> Jon
> 
> -- 
> nvpublic

Well, I wasn't expecting that :/

Per documentation of barriers I think we should set descriptor fields 
and then barrier and finally ownership to HW so that remaining fields 
are coherent before owner is set.

Anyway, can you also add a dma_rmb() after the call to 
stmmac_rx_status() ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

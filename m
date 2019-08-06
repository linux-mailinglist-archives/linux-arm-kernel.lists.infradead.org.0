Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB4C82A81
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 06:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR6GyS5paGI6jT3X4b6vMphxqX4j+2Ldha65ilgmmuA=; b=EqA9v9heOYtm4y
	ijdeK74JQHIW0pB63sEMSdPqfY12x5eneYBgw5hlJNNQYswZg2DQ0DkjVR4ie1uhd+PsTyYiK+bYl
	gao451SDpb2p2CSLzFjHnfyUYM2SFsQKUFxINYYsOK+vF/ug8+k/H1tVDt6wFsz5fL4SHjEZHqazQ
	0gRe30KaSVzb+Q6gmPL//BX6Xzk+wfYTwHbSKaU1ILV+jMAvlcP3UU6WwajASXggpsRMDTOrb+WPl
	1BXRff/t/7iJnNmZQaD0SXfREjCUVi1PyeZd6vtnJkmZe5qa7HZwPgFV3KdzGyDuqofAopmbVlq8Q
	J2TExuJQ+nsQRrxGb1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurN1-0007Ul-6G; Tue, 06 Aug 2019 04:46:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurMt-0007US-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 04:46:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so36799088pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 21:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=2j7+zajW8YHjJb6vtd6GGK8PfR2IXlyooiMNjhgqda4=;
 b=0WEACkB6+tkSwapaLx3mUtGXDP8tMN+Mw0CtY4oq4TY6eb6BPbFQ03Rq2JZAoM20/u
 FY8yhlRyoAUr2kF8VcVVR4h1UEAzDuwkzsU7nYIJ1qyZPWUMp23JmIfyrAGr3kvvZPrF
 Sdjlj4dm+VQbaqllPiRCeTV7Da9fWHPMaV77IFgzqVJwYBuAK/0TvHPhNfqAJveP7gSq
 6umgH6JcdQoRVJeg1LsHHvrANHxAgrbqwGK/adiCXx9KDqVtIjQOy89BCabkWAd+YMco
 nwsihxmqdAzfW6NyggGtIhUVCR96fStCxpW/zabYpJcYfwuyq0TJWULFKJYpIURYyfDn
 dv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=2j7+zajW8YHjJb6vtd6GGK8PfR2IXlyooiMNjhgqda4=;
 b=CyjVv/cN6iqQFsOwgzPfvC4xTwU1KznxzGvpgJK/s7R4C1HQs+MIMWFSVLLjwMSxXF
 AwCiC6DuEDztrEKnPriqPYPemoE4mU7Qkh67LkQXOrGYu3ZnvmcJf6IE6AlJDiKraj1M
 KPLm2uYuT5v84lX8kFryMvOBqH5y+dXlP0q5MSAPTf1gBS5E1uXlnkVQ205SUzC0kYUJ
 mth9CB4xNcleLG67hfPLFupRbtahUckH8MispI/judpXd/H2Sv7INwENa71UMtqAF+y4
 2IduGMYeBMuN/1UehlbKiCf8ZpHEPMtFISpH+WG1EMpUhJ5Q/Pr0Z1T4oghi8G/TU7Hf
 YtaQ==
X-Gm-Message-State: APjAAAWqRv/rAcpFAtjevfHNVtC6Q1TWzEVPTC7Q9wvjcTG3+q39nVLw
 SxfnQoG7/j3UCkBwwkljM94Nj51na7c=
X-Google-Smtp-Source: APXvYqxJ1GU+jM362HNbpRUZRKuHn12ZYsRHo95Oyr4gTePUavWdw/B4lZOUiOayXIOV5B07X0OeVQ==
X-Received: by 2002:a17:90a:a489:: with SMTP id
 z9mr1170396pjp.24.1565066798435; 
 Mon, 05 Aug 2019 21:46:38 -0700 (PDT)
Received: from cakuba.netronome.com (c-71-204-185-212.hsd1.ca.comcast.net.
 [71.204.185.212])
 by smtp.gmail.com with ESMTPSA id v18sm85291165pgl.87.2019.08.05.21.46.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 21:46:38 -0700 (PDT)
Date: Mon, 5 Aug 2019 21:46:14 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 06/10] net: stmmac: Implement RSS and enable it
 in XGMAC core
Message-ID: <20190805214600.4c84ccd7@cakuba.netronome.com>
In-Reply-To: <e70981c111ac857a0bac77750bd69a3383d99ee0.1565027782.git.joabreu@synopsys.com>
References: <cover.1565027782.git.joabreu@synopsys.com>
 <e70981c111ac857a0bac77750bd69a3383d99ee0.1565027782.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_214639_580013_A8E7F7F3 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  5 Aug 2019 20:01:19 +0200, Jose Abreu wrote:
> Implement the RSS functionality and add the corresponding callbacks in
> XGMAC core.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
> index c4c45402b8f8..9ff9d9ac1a50 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c
> @@ -254,6 +254,34 @@ static void dwxgmac2_clear(struct dma_desc *p)
>  	p->des3 = 0;
>  }
>  
> +static int dwxgmac2_get_rx_hash(struct dma_desc *p, u32 *hash,
> +				enum pkt_hash_types *type)
> +{
> +	unsigned int rdes3 = le32_to_cpu(p->des3);
> +	u32 ptype;
> +
> +	if (rdes3 & XGMAC_RDES3_RSV) {
> +		ptype = (rdes3 & XGMAC_RDES3_L34T) >> XGMAC_RDES3_L34T_SHIFT;
> +
> +		switch (ptype) {
> +		case 0x1:
> +		case 0x2:
> +		case 0x9:
> +		case 0xA:

nit: it'd be nice to have defines for these constants

> +			*type = PKT_HASH_TYPE_L4;
> +			break;
> +		default:
> +			*type = PKT_HASH_TYPE_L3;
> +			break;
> +		}
> +
> +		*hash = le32_to_cpu(p->des1);
> +		return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  const struct stmmac_desc_ops dwxgmac210_desc_ops = {
>  	.tx_status = dwxgmac2_get_tx_status,
>  	.rx_status = dwxgmac2_get_rx_status,

> @@ -4182,7 +4208,7 @@ int stmmac_dvr_probe(struct device *device,
>  	struct net_device *ndev = NULL;
>  	struct stmmac_priv *priv;
>  	u32 queue, maxq;
> -	int ret = 0;
> +	int i, ret = 0;
>  
>  	ndev = devm_alloc_etherdev_mqs(device, sizeof(struct stmmac_priv),
>  				       MTL_MAX_TX_QUEUES, MTL_MAX_RX_QUEUES);
> @@ -4290,6 +4316,14 @@ int stmmac_dvr_probe(struct device *device,
>  #endif
>  	priv->msg_enable = netif_msg_init(debug, default_msg_level);
>  
> +	/* Initialize RSS */
> +	netdev_rss_key_fill(priv->rss.key, sizeof(priv->rss.key));
> +	for (i = 0; i < ARRAY_SIZE(priv->rss.table); i++)
> +		priv->rss.table[i] = i % priv->plat->rx_queues_to_use;

ethtool_rxfh_indir_default() ?

> +	if (priv->dma_cap.rssen && priv->plat->rss_en)
> +		ndev->features |= NETIF_F_RXHASH;
> +
>  	/* MTU range: 46 - hw-specific max */
>  	ndev->min_mtu = ETH_ZLEN - ETH_HLEN;
>  	if ((priv->plat->enh_desc) || (priv->synopsys_id >= DWMAC_CORE_4_00))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

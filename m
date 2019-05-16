Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DF7209CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAXJuoRxz4/M3C4ChnjhqCLv+rhtU8162P0abFVRtvc=; b=lBHCYqpwKv1Mre
	qXYEveXCQVDe6PEsULSS/9+I6QrM8LktSSVBtiPk2LZA8sTzOPz5LGA/DnUBGZWyZzaj5o+s3U5N5
	hMuC16cczjzgnKeS7BN8lKXECgmbSEldBnd3EcwXeI22uUg46m56tb9buj/CgFF7yOibrgS+bzivH
	jQ8KTIY6ySJm7xDh1Zef4XJfRzwidnUFrECawdtpuPul9u/520jY5TaF6dIKpFc0MMx3m7JkcOpXi
	aFfzKQp0ZFgSCKY5tG2WAVp/WH6WGd7EFvn4kHT//U1tijCPMROtV0ECF45wSXjSAZVUSNsPD/r7k
	Q5TcVAYgn7opq+V75akg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHRP-0003uP-Jq; Thu, 16 May 2019 14:33:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHRH-0003td-T6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:32:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id g3so1953340pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XzcXovfk6M1ai4anrssUPYvlW9XMFBcxcOHWl/n19fA=;
 b=mpBn4/QyUX+VBAJzrHdoOr4Ad0i8Vtss/xr/1aGBYMSMYRM38x690fr4c49BWISrCR
 x1C0XvYrLp94EcjPAL7UdrifA5iGEK/8z5Eo6ILMmgHz+G7RDSRW9kST0+80tOPLXPHM
 RHfp7btATaGqhESrp6jpJ+6hJZQcwFnKuQAMmdez4LKsMZbRAE+iZXkKJ0NfBhXrlNGc
 6g+4jAgAMDbSrfFFVemOgSzaWWW7D7jwW+J9PUqk1gYzVTJg2+0PZzYPQEQ8Te7+hZ0I
 7VjNkNrJZ7kOKxSSo4JBD5d2Uw//x5evUgme/5HUUsgKd/xxuZtDnGiTqgmC5+t733dE
 7DZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XzcXovfk6M1ai4anrssUPYvlW9XMFBcxcOHWl/n19fA=;
 b=Ud9Exh+6sK85CxrvaN3dLR5h9VmklpWfypfqFt1HLkCy+ctQjHNo255SHBdmcD6DVM
 +YCpP6k09Qh178sCWdzwMn4Uh/OYuGgmkYvkxW8mHM3EePcKXz0yBvEjvoIvvafYcMA6
 zv9DaWzctrvFjoVNeHXydiRw9DMxrVTMZ7yDuAQhgoHgC7oKX2hWrPJXvCVA4ZKJnSag
 mltSocgTp36EP1tVlKIP2ftiFXs4D+N1HZHKeykcjg0wln2FYAns6BGcNcaIFyaBSDe2
 4lv31Dzqgh8sETtGqoHQ22nwfZx2ELkSKVrzlK+OrvMhnTWAGLXEr3oXVhwCq7fvaUaI
 BRSQ==
X-Gm-Message-State: APjAAAVCQvv1MAxlOCExwwtoE4uarwELQS5aUvlnUAd1DPuhNaP/vIQT
 fv93m3XefXboO5SM+QluhRo=
X-Google-Smtp-Source: APXvYqzCXMn1ygqP4NyyZ/WRS34wxQXP4/PQuk+YoCmahtN9410BzLInVWqebP+iI0+rdPUeeWVPVw==
X-Received: by 2002:aa7:87c3:: with SMTP id i3mr53019103pfo.85.1558017175090; 
 Thu, 16 May 2019 07:32:55 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id s198sm8312079pfs.34.2019.05.16.07.32.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 07:32:54 -0700 (PDT)
Date: Thu, 16 May 2019 07:32:51 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [PATCH 1/3] enetc: add hardware timestamping support
Message-ID: <20190516143251.akbt3ns6ue2jrhl5@localhost>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
 <20190516100028.48256-2-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516100028.48256-2-yangbo.lu@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073255_943837_CEB45726 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 09:59:08AM +0000, Y.b. Lu wrote:

> +config FSL_ENETC_HW_TIMESTAMPING
> +	bool "ENETC hardware timestamping support"
> +	depends on FSL_ENETC || FSL_ENETC_VF
> +	help
> +	  Enable hardware timestamping support on the Ethernet packets
> +	  using the SO_TIMESTAMPING API. Because the RX BD ring dynamic
> +	  allocation hasn't been supported and it's too expensive to use

s/it's/it is/

> +	  extended RX BDs if timestamping isn't used, the option was used
> +	  to control hardware timestamping/extended RX BDs to be enabled
> +	  or not.

..., this option enables extended RX BDs in order to support hardware
timestamping.

>  static bool enetc_clean_tx_ring(struct enetc_bdr *tx_ring, int napi_budget)
>  {
>  	struct net_device *ndev = tx_ring->ndev;
> +	struct enetc_ndev_priv *priv = netdev_priv(ndev);
>  	int tx_frm_cnt = 0, tx_byte_cnt = 0;
>  	struct enetc_tx_swbd *tx_swbd;
> +	union enetc_tx_bd *txbd;
> +	bool do_tstamp;
>  	int i, bds_to_clean;
> +	u64 tstamp = 0;

Please keep in reverse Christmas tree order as much as possible:

	union enetc_tx_bd *txbd;
	int i, bds_to_clean;
	bool do_tstamp;
	u64 tstamp = 0;
  
>  	i = tx_ring->next_to_clean;
>  	tx_swbd = &tx_ring->tx_swbd[i];
>  	bds_to_clean = enetc_bd_ready_count(tx_ring, i);
>  
> +	do_tstamp = false;
> +
>  	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
>  		bool is_eof = !!tx_swbd->skb;
>  
> +		if (unlikely(tx_swbd->check_wb)) {
> +			txbd = ENETC_TXBD(*tx_ring, i);
> +
> +			if (!(txbd->flags & ENETC_TXBD_FLAGS_W))
> +				goto no_wb;
> +
> +			if (tx_swbd->do_tstamp) {
> +				enetc_get_tx_tstamp(&priv->si->hw, txbd,
> +						    &tstamp);
> +				do_tstamp = true;
> +			}
> +		}
> +no_wb:

This goto seems strange and unnecessary.  How about this instead?

			if (txbd->flags & ENETC_TXBD_FLAGS_W &&
			    tx_swbd->do_tstamp) {
				enetc_get_tx_tstamp(&priv->si->hw, txbd, &tstamp);
				do_tstamp = true;
			}

>  		enetc_unmap_tx_buff(tx_ring, tx_swbd);
>  		if (is_eof) {
> +			if (unlikely(do_tstamp)) {
> +				enetc_tstamp_tx(tx_swbd->skb, tstamp);
> +				do_tstamp = false;
> +			}
>  			napi_consume_skb(tx_swbd->skb, napi_budget);
>  			tx_swbd->skb = NULL;
>  		}
> @@ -167,6 +169,11 @@ struct enetc_cls_rule {
>  
>  #define ENETC_MAX_BDR_INT	2 /* fixed to max # of available cpus */
>  
> +enum enetc_hw_features {

This is a poor choice of name.  It sounds like it describes HW
capabilities, but you use it to track whether a feature is requested
at run time.

> +	ENETC_F_RX_TSTAMP	= BIT(0),
> +	ENETC_F_TX_TSTAMP	= BIT(1),
> +};
> +
>  struct enetc_ndev_priv {
>  	struct net_device *ndev;
>  	struct device *dev; /* dma-mapping device */
> @@ -178,6 +185,7 @@ struct enetc_ndev_priv {
>  	u16 rx_bd_count, tx_bd_count;
>  
>  	u16 msg_enable;
> +	int hw_features;

This is also poorly named.  How about "tstamp_request" instead?

>  
>  	struct enetc_bdr *tx_ring[16];
>  	struct enetc_bdr *rx_ring[16];

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

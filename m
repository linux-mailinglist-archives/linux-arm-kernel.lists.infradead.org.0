Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA00B5B63E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ome6cNTbm2NBkLFT4jKbr8pRotjFBmFx4aVvJjjCy+A=; b=ZnNqn3ayRYgn2i
	YftXk7QBnGKA6cosYpaOPTMcFCsD2VhlLmkqiE5alNy0df0bt7y5QXbvqVIbURLz/1ReM3aLaodJo
	UcNtBlik1DoATtZlaQNMJBx3niItwI11SqwTs5E1m0DTPOLvQwMIbEOGLQqzs0GG7KbydXn2zjtyT
	YrAo18mWtNJ7qXbGnwyzza3ob3NEL4BCcMN/uGyDkmluRRn81xnjH2/mM6PzDbl6Toyh0rq+1DOD8
	sKhOTgi4ttUzzeV8mSPRj/D+13gd1jU2RfE7UIKaa//sVw3EWrPJdYeLGMQzIMnwdLm/tsLnkHpEQ
	EOtYRgYuKkhuLKMsspZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrGe-0006Jh-U5; Mon, 01 Jul 2019 08:02:29 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrGR-0006Ik-Hs
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:02:18 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,438,1557212400"; d="scan'208";a="41012022"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2019 01:02:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Jul 2019 01:02:10 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 1 Jul 2019 01:02:09 -0700
Date: Mon, 1 Jul 2019 10:00:51 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Raag Jadav <raagjadav@gmail.com>
Subject: Re: [PATCH] dmaengine: at_xdmac: check for non-empty xfers_list
 before invoking callback
Message-ID: <20190701080050.np5krtatlifnvtq5@M43218.corp.atmel.com>
Mail-Followup-To: Raag Jadav <raagjadav@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1561796448-3321-1-git-send-email-raagjadav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561796448-3321-1-git-send-email-raagjadav@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_010215_748398_DE247236 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 29, 2019 at 01:50:48PM +0530, Raag Jadav wrote:
> 
> tx descriptor retrieved from an empty xfers_list may not have valid
> pointers to the callback functions.
> Avoid calling dmaengine_desc_get_callback_invoke if xfers_list is empty.
> 
> Signed-off-by: Raag Jadav <raagjadav@gmail.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
>  drivers/dma/at_xdmac.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/at_xdmac.c b/drivers/dma/at_xdmac.c
> index 627ef3e..b58ac72 100644
> --- a/drivers/dma/at_xdmac.c
> +++ b/drivers/dma/at_xdmac.c
> @@ -1568,11 +1568,14 @@ static void at_xdmac_handle_cyclic(struct at_xdmac_chan *atchan)
>  	struct at_xdmac_desc		*desc;
>  	struct dma_async_tx_descriptor	*txd;
>  
> -	desc = list_first_entry(&atchan->xfers_list, struct at_xdmac_desc, xfer_node);
> -	txd = &desc->tx_dma_desc;
> +	if (!list_empty(&atchan->xfers_list)) {
> +		desc = list_first_entry(&atchan->xfers_list,
> +					struct at_xdmac_desc, xfer_node);
> +		txd = &desc->tx_dma_desc;
>  
> -	if (txd->flags & DMA_PREP_INTERRUPT)
> -		dmaengine_desc_get_callback_invoke(txd, NULL);
> +		if (txd->flags & DMA_PREP_INTERRUPT)
> +			dmaengine_desc_get_callback_invoke(txd, NULL);
> +	}
>  }
>  
>  static void at_xdmac_handle_error(struct at_xdmac_chan *atchan)
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E3B2F981
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wb5XxX0ZTEuQy1yWAI7pdmUi/yzBiSDf1pkO1PVbMM=; b=s6XG3mj0TSXEjD
	Xi9ZMoJ6Mheqy51EPVRJBSwsHo45u/hzEFB97j7cnjxb2iXwh1Mv7VyrXbtnbJVRMEDblez/lt7MN
	MQJZl+gFXpk6DAWDOABUwW8c8338gcSMHxttfGzxQcBYZKd9M5nRWOjZQ4OfamOVMZ2ZbKS1D768v
	IgjIgE2Ylv7CCgWoTMfomZOH2sZZX8qb17egFcFGYDtnc0k7tNnujaV587KN8nfYx4Gh/XuvfOV8T
	mBWF1G8WTRTWY1UqrX6hSqPe6WDqlpQ/Yy7RS/lLHewybRuKuZ54wxRCuMuxhbQ1ryIGc9CLPoSEN
	JEVHgnwT3atQP+LUxDug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHSM-0004Cr-Tn; Thu, 30 May 2019 09:34:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHSF-0004CG-Gc; Thu, 30 May 2019 09:34:37 +0000
X-UUID: 25c3d1e88afc46968404f0524f29b104-20190530
X-UUID: 25c3d1e88afc46968404f0524f29b104-20190530
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <long.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 494420038; Thu, 30 May 2019 01:34:28 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 02:34:27 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs08n2.mediatek.inc
 (172.21.101.56) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 30 May 2019 17:34:17 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 17:34:16 +0800
Message-ID: <1559208856.14150.35.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] serial: 8250-mtk: modify uart DMA rx
From: Long Cheng <long.cheng@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 30 May 2019 17:34:16 +0800
In-Reply-To: <1558596909-14084-3-git-send-email-long.cheng@mediatek.com>
References: <1558596909-14084-1-git-send-email-long.cheng@mediatek.com>
 <1558596909-14084-3-git-send-email-long.cheng@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B27139AB2F1BB9957CAE9332638E0C210155CD5265085DED026FD2DB4FE943502000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_023435_783817_7E77D342 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sean Wang <sean.wang@kernel.org>,
 Zhenbao Liu <zhenbao.liu@mediatek.com>, Nicolas
 Boichat <drinkcat@chromium.org>, Long Cheng <Long.cheng@mediatek.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 YT Shen <yt.shen@mediatek.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 devicetree@vger.kernel.org, Changqi
 Hu <changqi.hu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Ryder
 Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-05-23 at 15:35 +0800, Long Cheng wrote:


Hi Greg,

Just a gentle ping!

thanks.

> Modify uart rx and complete for DMA
> 
> Signed-off-by: Long Cheng <long.cheng@mediatek.com>
> ---
>  drivers/tty/serial/8250/8250_mtk.c |   49 +++++++++++++++---------------------
>  1 file changed, 20 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> index 417c7c8..f470ded 100644
> --- a/drivers/tty/serial/8250/8250_mtk.c
> +++ b/drivers/tty/serial/8250/8250_mtk.c
> @@ -47,7 +47,6 @@
>  #define MTK_UART_DMA_EN_RX	0x5
>  
>  #define MTK_UART_ESCAPE_CHAR	0x77	/* Escape char added under sw fc */
> -#define MTK_UART_TX_SIZE	UART_XMIT_SIZE
>  #define MTK_UART_RX_SIZE	0x8000
>  #define MTK_UART_TX_TRIGGER	1
>  #define MTK_UART_RX_TRIGGER	MTK_UART_RX_SIZE
> @@ -89,28 +88,30 @@ static void mtk8250_dma_rx_complete(void *param)
>  	struct mtk8250_data *data = up->port.private_data;
>  	struct tty_port *tty_port = &up->port.state->port;
>  	struct dma_tx_state state;
> +	int copied, total, cnt;
>  	unsigned char *ptr;
> -	int copied;
>  
> -	dma_sync_single_for_cpu(dma->rxchan->device->dev, dma->rx_addr,
> -				dma->rx_size, DMA_FROM_DEVICE);
> +	if (data->rx_status == DMA_RX_SHUTDOWN)
> +		return;
>  
>  	dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> +	total = dma->rx_size - state.residue;
> +	cnt = total;
>  
> -	if (data->rx_status == DMA_RX_SHUTDOWN)
> -		return;
> +	if ((data->rx_pos + cnt) > dma->rx_size)
> +		cnt = dma->rx_size - data->rx_pos;
>  
> -	if ((data->rx_pos + state.residue) <= dma->rx_size) {
> -		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -		copied = tty_insert_flip_string(tty_port, ptr, state.residue);
> -	} else {
> -		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -		copied = tty_insert_flip_string(tty_port, ptr,
> -						dma->rx_size - data->rx_pos);
> +	ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> +	copied = tty_insert_flip_string(tty_port, ptr, cnt);
> +	data->rx_pos += cnt;
> +
> +	if (total > cnt) {
>  		ptr = (unsigned char *)(dma->rx_buf);
> -		copied += tty_insert_flip_string(tty_port, ptr,
> -				data->rx_pos + state.residue - dma->rx_size);
> +		cnt = total - cnt;
> +		copied += tty_insert_flip_string(tty_port, ptr, cnt);
> +		data->rx_pos = cnt;
>  	}
> +
>  	up->port.icount.rx += copied;
>  
>  	tty_flip_buffer_push(tty_port);
> @@ -121,9 +122,7 @@ static void mtk8250_dma_rx_complete(void *param)
>  static void mtk8250_rx_dma(struct uart_8250_port *up)
>  {
>  	struct uart_8250_dma *dma = up->dma;
> -	struct mtk8250_data *data = up->port.private_data;
>  	struct dma_async_tx_descriptor	*desc;
> -	struct dma_tx_state	 state;
>  
>  	desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
>  					   dma->rx_size, DMA_DEV_TO_MEM,
> @@ -138,12 +137,6 @@ static void mtk8250_rx_dma(struct uart_8250_port *up)
>  
>  	dma->rx_cookie = dmaengine_submit(desc);
>  
> -	dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> -	data->rx_pos = state.residue;
> -
> -	dma_sync_single_for_device(dma->rxchan->device->dev, dma->rx_addr,
> -				   dma->rx_size, DMA_FROM_DEVICE);
> -
>  	dma_async_issue_pending(dma->rxchan);
>  }
>  
> @@ -156,13 +149,11 @@ static void mtk8250_dma_enable(struct uart_8250_port *up)
>  	if (data->rx_status != DMA_RX_START)
>  		return;
>  
> -	dma->rxconf.direction		= DMA_DEV_TO_MEM;
> -	dma->rxconf.src_addr_width	= dma->rx_size / 1024;
> -	dma->rxconf.src_addr		= dma->rx_addr;
> +	dma->rxconf.src_port_window_size	= dma->rx_size;
> +	dma->rxconf.src_addr				= dma->rx_addr;
>  
> -	dma->txconf.direction		= DMA_MEM_TO_DEV;
> -	dma->txconf.dst_addr_width	= MTK_UART_TX_SIZE / 1024;
> -	dma->txconf.dst_addr		= dma->tx_addr;
> +	dma->txconf.dst_port_window_size	= UART_XMIT_SIZE;
> +	dma->txconf.dst_addr				= dma->tx_addr;
>  
>  	serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
>  		UART_FCR_CLEAR_XMIT);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36E925145
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YubS2WXHJf29gRag9MBY5WrVIIEZI9OLKE6z2aV4yw=; b=bVI7JNjm07EoHM
	13IZzOBKaFqxX80IDqY6U+DitWN9wmBKw2dPeD8QdQN9Ffkag4Dhprr4sHsMMwqOpfgX/6PWqom4K
	t0bQdyNoxXm6VfZ+W7CR9FYvIF/mHUJ4NnprNsxGNDxZp1/klK0hPjyF6rycBEYFOd376B4swbrwU
	tnNt0ocTnjqHHv/Txr4pHd7TX+U1NCRnJQ2iF54PQEA4Oio9Qr0xOyQNvvPxPWcT7VeTaKqPvWWsP
	gZmyxzmm12i4KmrmoOXA3TdUgmodXMe98xNObGAKNSnjpr/zGungVZV/9bgtc9p+XEn03PkGOvM2B
	s8Kv6bp75g3BHGwnlF2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5Gs-0000c6-Pb; Tue, 21 May 2019 13:57:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5Gk-0000bE-Ik; Tue, 21 May 2019 13:57:32 +0000
Received: from localhost (unknown [106.51.105.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04AC621479;
 Tue, 21 May 2019 13:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558447050;
 bh=p5zj6aoLLNC0yMiNnBSt2O1dX8e+LCMuZRJxjILAIfw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bgXxUEe1venUsogc/J7JRiQZeehTDpwIWNaoFUysa+vgHozkfEzxPdBnv6w452wux
 0H8q2NuqSq+LleLgJhAoKYAypYZz7jMPws06tLgOW0oLo6LXekJc7fEvT6w7aERLGW
 vZS4BQBBoiOHcuGYUC16SQ5k2QBs9SkKj+R0VaS8=
Date: Tue, 21 May 2019 19:27:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Long Cheng <long.cheng@mediatek.com>
Subject: Re: [PATCH 4/4] serial: 8250-mtk: modify uart DMA rx
Message-ID: <20190521135725.GN15118@vkoul-mobl>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-5-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556336193-15198-5-git-send-email-long.cheng@mediatek.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_065730_648374_5B19CC9D 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Zhenbao Liu <zhenbao.liu@mediatek.com>, linux-serial@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>,
 YT Shen <yt.shen@mediatek.com>, dmaengine@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Wang <sean.wang@mediatek.com>, Jiri Slaby <jslaby@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-04-19, 11:36, Long Cheng wrote:
> Modify uart rx and complete for DMA.
> 
> Signed-off-by: Long Cheng <long.cheng@mediatek.com>
> ---
>  drivers/tty/serial/8250/8250_mtk.c |   53 ++++++++++++++++--------------------
>  1 file changed, 23 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> index c1fdbc0..04081a6 100644
> --- a/drivers/tty/serial/8250/8250_mtk.c
> +++ b/drivers/tty/serial/8250/8250_mtk.c
> @@ -30,7 +30,6 @@
>  #define MTK_UART_DMA_EN_TX	0x2
>  #define MTK_UART_DMA_EN_RX	0x5
>  
> -#define MTK_UART_TX_SIZE	UART_XMIT_SIZE
>  #define MTK_UART_RX_SIZE	0x8000
>  #define MTK_UART_TX_TRIGGER	1
>  #define MTK_UART_RX_TRIGGER	MTK_UART_RX_SIZE
> @@ -64,28 +63,30 @@ static void mtk8250_dma_rx_complete(void *param)
>  	struct mtk8250_data *data = up->port.private_data;
>  	struct tty_port *tty_port = &up->port.state->port;
>  	struct dma_tx_state state;
> +	int copied, cnt, tmp;
>  	unsigned char *ptr;
> -	int copied;
>  
> -	dma_sync_single_for_cpu(dma->rxchan->device->dev, dma->rx_addr,
> -				dma->rx_size, DMA_FROM_DEVICE);
> +	if (data->rx_status == DMA_RX_SHUTDOWN)
> +		return;
>  
>  	dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> +	cnt = dma->rx_size - state.residue;
> +	tmp = cnt;
>  
> -	if (data->rx_status == DMA_RX_SHUTDOWN)
> -		return;
> +	if ((data->rx_pos + cnt) > dma->rx_size)
> +		tmp = dma->rx_size - data->rx_pos;
>  
> -	if ((data->rx_pos + state.residue) <= dma->rx_size) {
> -		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -		copied = tty_insert_flip_string(tty_port, ptr, state.residue);
> -	} else {
> -		ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -		copied = tty_insert_flip_string(tty_port, ptr,
> -						dma->rx_size - data->rx_pos);
> +	ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> +	copied = tty_insert_flip_string(tty_port, ptr, tmp);
> +	data->rx_pos += tmp;
> +
> +	if (cnt > tmp) {
>  		ptr = (unsigned char *)(dma->rx_buf);
> -		copied += tty_insert_flip_string(tty_port, ptr,
> -				data->rx_pos + state.residue - dma->rx_size);
> +		tmp = cnt - tmp;
> +		copied += tty_insert_flip_string(tty_port, ptr, tmp);
> +		data->rx_pos = tmp;
>  	}
> +
>  	up->port.icount.rx += copied;
>  
>  	tty_flip_buffer_push(tty_port);
> @@ -96,9 +97,7 @@ static void mtk8250_dma_rx_complete(void *param)
>  static void mtk8250_rx_dma(struct uart_8250_port *up)
>  {
>  	struct uart_8250_dma *dma = up->dma;
> -	struct mtk8250_data *data = up->port.private_data;
>  	struct dma_async_tx_descriptor	*desc;
> -	struct dma_tx_state	 state;
>  
>  	desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
>  					   dma->rx_size, DMA_DEV_TO_MEM,
> @@ -113,12 +112,6 @@ static void mtk8250_rx_dma(struct uart_8250_port *up)
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
> @@ -131,13 +124,13 @@ static void mtk8250_dma_enable(struct uart_8250_port *up)
>  	if (data->rx_status != DMA_RX_START)
>  		return;
>  
> -	dma->rxconf.direction		= DMA_DEV_TO_MEM;
> -	dma->rxconf.src_addr_width	= dma->rx_size / 1024;
> -	dma->rxconf.src_addr		= dma->rx_addr;
> +	dma->rxconf.direction				= DMA_DEV_TO_MEM;

Direction field is deprecated, please do not use this anymore...

> +	dma->rxconf.src_port_window_size	= dma->rx_size;
> +	dma->rxconf.src_addr				= dma->rx_addr;
>  
> -	dma->txconf.direction		= DMA_MEM_TO_DEV;
> -	dma->txconf.dst_addr_width	= MTK_UART_TX_SIZE / 1024;
> -	dma->txconf.dst_addr		= dma->tx_addr;
> +	dma->txconf.direction				= DMA_MEM_TO_DEV;
> +	dma->txconf.dst_port_window_size	= UART_XMIT_SIZE;
> +	dma->txconf.dst_addr				= dma->tx_addr;
>  
>  	serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
>  		UART_FCR_CLEAR_XMIT);
> @@ -217,7 +210,7 @@ static void mtk8250_shutdown(struct uart_port *port)
>  	 * Mediatek UARTs use an extra highspeed register (UART_MTK_HIGHS)
>  	 *
>  	 * We need to recalcualte the quot register, as the claculation depends
> -	 * on the vaule in the highspeed register.
> +	 * on the value in the highspeed register.
>  	 *
>  	 * Some baudrates are not supported by the chip, so we use the next
>  	 * lower rate supported and update termios c_flag.
> -- 
> 1.7.9.5

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

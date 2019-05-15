Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CDC1F5EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyfo6PmuDGwuzXuYUi++yNZOaoi3YnvVk13s73Hra7A=; b=Tf7buUSrFOQBrr
	RPjgcheDyze4CB1+AYSkP7uHJfOPvXFqNHsMsxqaWPIA7dYwnHIMVxUVvi8zBXNCeXLy6T6M5t3tG
	2IBfM/S+oyfTG5RzK6BlWohKcrrp4TNHOqZlmQA3/GQ0zoabfURf2WNcKopADQi2BCUqeL52NTNrB
	iz9Hq6By1zUjGvmCQ24apgEMVgYPll1lF1YX+wcf2y1yxoYkvvKSXMs8hushzDTT3vo0WLuyhgVfw
	ueFKm+sf+0V6HtSXiDB3DmsnLsLhKV7CgT7+JDvcbsT5y/3s9svFRJiaIVqfJB7v47CcXxjKhOi/N
	MsTbsYDdonGGc765TkOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuHU-0008Md-Qd; Wed, 15 May 2019 13:49:16 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuHK-0008Jx-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:49:09 +0000
Received: by mail-qk1-x741.google.com with SMTP id c14so763qke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 06:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0bU82F+gt2zE3PINH+I2iOdx7/P2Z54mTmX7HD0f23g=;
 b=Rz/eTH+AhP/E1BbGJwPsapzQcGBCN6AsXcTjNCMhLwf/Y4ROLeWXnzuXXCGskE4ial
 C6vT5lbVMECErTsbOqncFmph2Tp1d0H7MkmabSVn4yEYTkDH28DQUEmZW/+6q04J8i/T
 CJuQRVnjMj4PSEctgFELgkj3rPlU7ctawx7IU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0bU82F+gt2zE3PINH+I2iOdx7/P2Z54mTmX7HD0f23g=;
 b=QFjJCu3KA+8g8wkZK0aQK12GmiOsqQtm4rVBd7zfgJuThWcWYEji0vu3Mtr/Vl2utL
 yaP0X0xXrSmGdbxCHQ84In6P6apATURrNKwhCxRQeJzNLz2lJPJAMFaYZk/140nzOJQa
 Ytli04ESsssGFCHR9OxAgf6H7T6q8YMXV7rmIIerlRihrFgnaMHYCV0tenKpVcbpHoge
 g34vwKa/4sxW9RIrLrfCnOYCjcbV/DmQb8orBBbpr1Gbm786aLUv/8xL6mn/2BAWFxuw
 +erxHs2SUb38+pXeC747cuVACb96/CePQUTP0XSg/Cb9KoClz2b64i3kb8dOWhQMN6f5
 BbMQ==
X-Gm-Message-State: APjAAAXgcYX8omQ/Zj/ZIlSEcXkZX6VXICHkR1It67mfszrPSTh9KwNO
 Bc4bLV7ttzaqmGaXAgIZlKu5AP8rSloRqTYerkLbTRpj4y8=
X-Google-Smtp-Source: APXvYqwlUOhQfWVG0cDXJfSD77I136CNQYmnycgW7CY0DPgH6v1ONynTfzyo3enPqgR8mXrkE9bC5wWl+/AN2lmlbhE=
X-Received: by 2002:ae9:f818:: with SMTP id x24mr32636878qkh.329.1557928145116; 
 Wed, 15 May 2019 06:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-5-git-send-email-long.cheng@mediatek.com>
In-Reply-To: <1556336193-15198-5-git-send-email-long.cheng@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 15 May 2019 21:48:52 +0800
Message-ID: <CANMq1KDTyu48joV6uMksGBMz9EmjFH9SEpGAm93YCZ40jxgBpQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] serial: 8250-mtk: modify uart DMA rx
To: Long Cheng <long.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_064906_461849_138F654F 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ryder Lee <ryder.lee@mediatek.com>, Zhenbao Liu <zhenbao.liu@mediatek.com>,
 linux-serial@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>, YT Shen <yt.shen@mediatek.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Slaby <jslaby@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:36 AM Long Cheng <long.cheng@mediatek.com> wrote:
>
> Modify uart rx and complete for DMA.

I don't know much about the DMA framework, but can you please explain
why you are making the changes in this CL? I see that you are dropping
dma_sync_single_for_device calls, for example, why?

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
>  #define MTK_UART_DMA_EN_TX     0x2
>  #define MTK_UART_DMA_EN_RX     0x5
>
> -#define MTK_UART_TX_SIZE       UART_XMIT_SIZE
>  #define MTK_UART_RX_SIZE       0x8000
>  #define MTK_UART_TX_TRIGGER    1
>  #define MTK_UART_RX_TRIGGER    MTK_UART_RX_SIZE
> @@ -64,28 +63,30 @@ static void mtk8250_dma_rx_complete(void *param)
>         struct mtk8250_data *data = up->port.private_data;
>         struct tty_port *tty_port = &up->port.state->port;
>         struct dma_tx_state state;
> +       int copied, cnt, tmp;
>         unsigned char *ptr;
> -       int copied;
>
> -       dma_sync_single_for_cpu(dma->rxchan->device->dev, dma->rx_addr,
> -                               dma->rx_size, DMA_FROM_DEVICE);
> +       if (data->rx_status == DMA_RX_SHUTDOWN)
> +               return;
>
>         dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> +       cnt = dma->rx_size - state.residue;
> +       tmp = cnt;

I ponder, maybe we should rename cnt to left? (like, how many bytes
are left to transfer, in total) Or maybe "total"
Then maybe rename tmp to cnt.

>
> -       if (data->rx_status == DMA_RX_SHUTDOWN)
> -               return;
> +       if ((data->rx_pos + cnt) > dma->rx_size)
> +               tmp = dma->rx_size - data->rx_pos;

Maybe replace this and the line above:
tmp = max_t(int, cnt, dma->rx_size - data->rx_pos);

>
> -       if ((data->rx_pos + state.residue) <= dma->rx_size) {
> -               ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -               copied = tty_insert_flip_string(tty_port, ptr, state.residue);
> -       } else {
> -               ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> -               copied = tty_insert_flip_string(tty_port, ptr,
> -                                               dma->rx_size - data->rx_pos);
> +       ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> +       copied = tty_insert_flip_string(tty_port, ptr, tmp);
> +       data->rx_pos += tmp;
> +
> +       if (cnt > tmp) {
>                 ptr = (unsigned char *)(dma->rx_buf);
> -               copied += tty_insert_flip_string(tty_port, ptr,
> -                               data->rx_pos + state.residue - dma->rx_size);
> +               tmp = cnt - tmp;
> +               copied += tty_insert_flip_string(tty_port, ptr, tmp);
> +               data->rx_pos = tmp;
>         }
> +
>         up->port.icount.rx += copied;
>
>         tty_flip_buffer_push(tty_port);
> @@ -96,9 +97,7 @@ static void mtk8250_dma_rx_complete(void *param)
>  static void mtk8250_rx_dma(struct uart_8250_port *up)
>  {
>         struct uart_8250_dma *dma = up->dma;
> -       struct mtk8250_data *data = up->port.private_data;
>         struct dma_async_tx_descriptor  *desc;
> -       struct dma_tx_state      state;
>
>         desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
>                                            dma->rx_size, DMA_DEV_TO_MEM,
> @@ -113,12 +112,6 @@ static void mtk8250_rx_dma(struct uart_8250_port *up)
>
>         dma->rx_cookie = dmaengine_submit(desc);
>
> -       dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> -       data->rx_pos = state.residue;
> -
> -       dma_sync_single_for_device(dma->rxchan->device->dev, dma->rx_addr,
> -                                  dma->rx_size, DMA_FROM_DEVICE);
> -
>         dma_async_issue_pending(dma->rxchan);
>  }
>
> @@ -131,13 +124,13 @@ static void mtk8250_dma_enable(struct uart_8250_port *up)
>         if (data->rx_status != DMA_RX_START)
>                 return;
>
> -       dma->rxconf.direction           = DMA_DEV_TO_MEM;
> -       dma->rxconf.src_addr_width      = dma->rx_size / 1024;
> -       dma->rxconf.src_addr            = dma->rx_addr;
> +       dma->rxconf.direction                           = DMA_DEV_TO_MEM;
> +       dma->rxconf.src_port_window_size        = dma->rx_size;
> +       dma->rxconf.src_addr                            = dma->rx_addr;
>
> -       dma->txconf.direction           = DMA_MEM_TO_DEV;
> -       dma->txconf.dst_addr_width      = MTK_UART_TX_SIZE / 1024;
> -       dma->txconf.dst_addr            = dma->tx_addr;
> +       dma->txconf.direction                           = DMA_MEM_TO_DEV;
> +       dma->txconf.dst_port_window_size        = UART_XMIT_SIZE;
> +       dma->txconf.dst_addr                            = dma->tx_addr;
>
>         serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
>                 UART_FCR_CLEAR_XMIT);
> @@ -217,7 +210,7 @@ static void mtk8250_shutdown(struct uart_port *port)
>          * Mediatek UARTs use an extra highspeed register (UART_MTK_HIGHS)
>          *
>          * We need to recalcualte the quot register, as the claculation depends
> -        * on the vaule in the highspeed register.
> +        * on the value in the highspeed register.

Since you're doing some cosmetic changes here, you might as well fix
recalcualte => recalculate and claculation => calculation on the line
above.

But technically, this should belong in another patch...

>          *
>          * Some baudrates are not supported by the chip, so we use the next
>          * lower rate supported and update termios c_flag.
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

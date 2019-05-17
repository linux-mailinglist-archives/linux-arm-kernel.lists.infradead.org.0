Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2979321492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqG76dtfpbswfQXUO/HCCEBd1hHCUG+B3qVqUc9MdqE=; b=LQUlEMBMSthk1R
	tTiryX7brSoTnso5ABwy1ENDyNNoXcBaTTtEKT+AsC9rg2Ow7kQAH4BjW/9b4Mz6a42KxTX18FYky
	svLYRbYWqNuWxeL7bVGvi+I3DFBwbf3GOCkKVQgeKkQNjuqPlB2VGABJBcJsWZYnLIQxBdP6fQBx2
	uz2sqIWGEdDa29rAsEIBH2YeSmU/Q3KdjkW/FxPqefTeFkbYDCpWnBo3AtoJ0lLb7hjS/hU1IkHvJ
	yT9I0ZtVSBCGPrzBonFi8H1D2PH9/yQ1WQwQsg18IcC9ozXcRJ6oqhEl3hFF52nyg+N8LXFK6kzWD
	cHWL/esI++7zakQa/vOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXQd-0003JE-3M; Fri, 17 May 2019 07:37:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXQL-00036T-D8; Fri, 17 May 2019 07:37:03 +0000
X-UUID: e5ced39b58f346c4828cc3da6dddcf93-20190516
X-UUID: e5ced39b58f346c4828cc3da6dddcf93-20190516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <long.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 659267913; Thu, 16 May 2019 23:36:46 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 May 2019 00:36:45 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs03n1.mediatek.inc
 (172.21.101.181) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 17 May 2019 15:36:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 17 May 2019 15:36:42 +0800
Message-ID: <1558078602.14150.27.camel@mhfsdcap03>
Subject: Re: [PATCH 4/4] serial: 8250-mtk: modify uart DMA rx
From: Long Cheng <long.cheng@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 17 May 2019 15:36:42 +0800
In-Reply-To: <CANMq1KDTyu48joV6uMksGBMz9EmjFH9SEpGAm93YCZ40jxgBpQ@mail.gmail.com>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-5-git-send-email-long.cheng@mediatek.com>
 <CANMq1KDTyu48joV6uMksGBMz9EmjFH9SEpGAm93YCZ40jxgBpQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_003701_449228_CDB582C1 
X-CRM114-Status: GOOD (  24.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, Zhenbao Liu <zhenbao.liu@mediatek.com>,
 linux-serial@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>, YT Shen <yt.shen@mediatek.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Slaby <jslaby@suse.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm Mailing
 List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-15 at 21:48 +0800, Nicolas Boichat wrote:
> On Sat, Apr 27, 2019 at 11:36 AM Long Cheng <long.cheng@mediatek.com> wrote:
> >
> > Modify uart rx and complete for DMA.
> 
> I don't know much about the DMA framework, but can you please explain
> why you are making the changes in this CL? I see that you are dropping
> dma_sync_single_for_device calls, for example, why?
> 

the rx buffer is create by 'dma_alloc_coherent'. in the function, the
buffer is uncache. We don't need to sync between CPU and DMA. So I
remove it.

> >
> > Signed-off-by: Long Cheng <long.cheng@mediatek.com>
> > ---
> >  drivers/tty/serial/8250/8250_mtk.c |   53 ++++++++++++++++--------------------
> >  1 file changed, 23 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> > index c1fdbc0..04081a6 100644
> > --- a/drivers/tty/serial/8250/8250_mtk.c
> > +++ b/drivers/tty/serial/8250/8250_mtk.c
> > @@ -30,7 +30,6 @@
> >  #define MTK_UART_DMA_EN_TX     0x2
> >  #define MTK_UART_DMA_EN_RX     0x5
> >
> > -#define MTK_UART_TX_SIZE       UART_XMIT_SIZE
> >  #define MTK_UART_RX_SIZE       0x8000
> >  #define MTK_UART_TX_TRIGGER    1
> >  #define MTK_UART_RX_TRIGGER    MTK_UART_RX_SIZE
> > @@ -64,28 +63,30 @@ static void mtk8250_dma_rx_complete(void *param)
> >         struct mtk8250_data *data = up->port.private_data;
> >         struct tty_port *tty_port = &up->port.state->port;
> >         struct dma_tx_state state;
> > +       int copied, cnt, tmp;
> >         unsigned char *ptr;
> > -       int copied;
> >
> > -       dma_sync_single_for_cpu(dma->rxchan->device->dev, dma->rx_addr,
> > -                               dma->rx_size, DMA_FROM_DEVICE);
> > +       if (data->rx_status == DMA_RX_SHUTDOWN)
> > +               return;
> >
> >         dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> > +       cnt = dma->rx_size - state.residue;
> > +       tmp = cnt;
> 
> I ponder, maybe we should rename cnt to left? (like, how many bytes
> are left to transfer, in total) Or maybe "total"
> Then maybe rename tmp to cnt.
> 
like better.

> >
> > -       if (data->rx_status == DMA_RX_SHUTDOWN)
> > -               return;
> > +       if ((data->rx_pos + cnt) > dma->rx_size)
> > +               tmp = dma->rx_size - data->rx_pos;
> 
> Maybe replace this and the line above:
> tmp = max_t(int, cnt, dma->rx_size - data->rx_pos);
> 
Yes. It's better.

> >
> > -       if ((data->rx_pos + state.residue) <= dma->rx_size) {
> > -               ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> > -               copied = tty_insert_flip_string(tty_port, ptr, state.residue);
> > -       } else {
> > -               ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> > -               copied = tty_insert_flip_string(tty_port, ptr,
> > -                                               dma->rx_size - data->rx_pos);
> > +       ptr = (unsigned char *)(data->rx_pos + dma->rx_buf);
> > +       copied = tty_insert_flip_string(tty_port, ptr, tmp);
> > +       data->rx_pos += tmp;
> > +
> > +       if (cnt > tmp) {
> >                 ptr = (unsigned char *)(dma->rx_buf);
> > -               copied += tty_insert_flip_string(tty_port, ptr,
> > -                               data->rx_pos + state.residue - dma->rx_size);
> > +               tmp = cnt - tmp;
> > +               copied += tty_insert_flip_string(tty_port, ptr, tmp);
> > +               data->rx_pos = tmp;
> >         }
> > +
> >         up->port.icount.rx += copied;
> >
> >         tty_flip_buffer_push(tty_port);
> > @@ -96,9 +97,7 @@ static void mtk8250_dma_rx_complete(void *param)
> >  static void mtk8250_rx_dma(struct uart_8250_port *up)
> >  {
> >         struct uart_8250_dma *dma = up->dma;
> > -       struct mtk8250_data *data = up->port.private_data;
> >         struct dma_async_tx_descriptor  *desc;
> > -       struct dma_tx_state      state;
> >
> >         desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
> >                                            dma->rx_size, DMA_DEV_TO_MEM,
> > @@ -113,12 +112,6 @@ static void mtk8250_rx_dma(struct uart_8250_port *up)
> >
> >         dma->rx_cookie = dmaengine_submit(desc);
> >
> > -       dmaengine_tx_status(dma->rxchan, dma->rx_cookie, &state);
> > -       data->rx_pos = state.residue;
> > -
> > -       dma_sync_single_for_device(dma->rxchan->device->dev, dma->rx_addr,
> > -                                  dma->rx_size, DMA_FROM_DEVICE);
> > -
> >         dma_async_issue_pending(dma->rxchan);
> >  }
> >
> > @@ -131,13 +124,13 @@ static void mtk8250_dma_enable(struct uart_8250_port *up)
> >         if (data->rx_status != DMA_RX_START)
> >                 return;
> >
> > -       dma->rxconf.direction           = DMA_DEV_TO_MEM;
> > -       dma->rxconf.src_addr_width      = dma->rx_size / 1024;
> > -       dma->rxconf.src_addr            = dma->rx_addr;
> > +       dma->rxconf.direction                           = DMA_DEV_TO_MEM;
> > +       dma->rxconf.src_port_window_size        = dma->rx_size;
> > +       dma->rxconf.src_addr                            = dma->rx_addr;
> >
> > -       dma->txconf.direction           = DMA_MEM_TO_DEV;
> > -       dma->txconf.dst_addr_width      = MTK_UART_TX_SIZE / 1024;
> > -       dma->txconf.dst_addr            = dma->tx_addr;
> > +       dma->txconf.direction                           = DMA_MEM_TO_DEV;
> > +       dma->txconf.dst_port_window_size        = UART_XMIT_SIZE;
> > +       dma->txconf.dst_addr                            = dma->tx_addr;
> >
> >         serial_out(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR |
> >                 UART_FCR_CLEAR_XMIT);
> > @@ -217,7 +210,7 @@ static void mtk8250_shutdown(struct uart_port *port)
> >          * Mediatek UARTs use an extra highspeed register (UART_MTK_HIGHS)
> >          *
> >          * We need to recalcualte the quot register, as the claculation depends
> > -        * on the vaule in the highspeed register.
> > +        * on the value in the highspeed register.
> 
> Since you're doing some cosmetic changes here, you might as well fix
> recalcualte => recalculate and claculation => calculation on the line
> above.
> 

I see.

> But technically, this should belong in another patch...
> 
> >          *
> >          * Some baudrates are not supported by the chip, so we use the next
> >          * lower rate supported and update termios c_flag.
> > --
> > 1.7.9.5
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

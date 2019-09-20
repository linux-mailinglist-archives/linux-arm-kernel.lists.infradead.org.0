Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2798EB8B65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uUyNqfU976EPfZNFmKcuhFVHsLDIs/SlbK4mE6YkPs=; b=j6BSCKwSF5jeL7
	8IKg7vRspkdjBb40rOzochX1GtQ31JiupqLI8cIiw3XTb6xxCpw65E3fBwNsaPoAGxi5UECg3LhjV
	GixMlOPshSjdr9OUr4igZWp1siPBKwmRPl1FwmMTXd8jxMzLVfNJrXdXWiw/DjunEklKHIeGgiUVx
	uzUj8lH65iau8YT9btwS0GgZ1gP7mkG5NZ29LJAYBwfbHJcc7+3Ed1fsP4xeJeva6v1UE5RmEldog
	vZ4kZHvWWsYMVhjj/YEbiSdmf/LpzcTdcKEIIJZ/FKS22/8ccA5NKAb77V8gHNywnV7Jg3C3kKtvx
	qgEOSn7rLJEgk/NEDqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCzl-00071o-9S; Fri, 20 Sep 2019 07:06:21 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCzX-000717-PO
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:06:09 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id A4BD55FB2E;
 Fri, 20 Sep 2019 09:06:03 +0200 (CEST)
Subject: Re: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
To: Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190919145114.13006-1-philipp.puschmann@emlix.com>
 <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <ac67f010-1b2c-6996-f542-ab955ca86489@emlix.com>
Date: Fri, 20 Sep 2019 09:06:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_000608_124767_4E596311 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>, Robin Gong <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Am 20.09.19 um 05:42 schrieb Andy Duan:
> From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Thursday, September 19, 2019 10:51 PM
>> Using only 4 DMA periods for UART RX is very few if we have a high frequency
>> of small transfers - like in our case using Bluetooth with many small packets
>> via UART - causing many dma transfers but in each only filling a fraction of a
>> single buffer. Such a case may lead to the situation that DMA RX transfer is
>> triggered but no free buffer is available. When this happens dma channel ist
>> stopped - with the patch
>> "dmaengine: imx-sdma: fix dma freezes" temporarily only - with the possible
>> consequences that:
>> with disabled hw flow control:
>>   If enough data is incoming on UART port the RX FIFO runs over and
>>   characters will be lost. What then happens depends on upper layer.
>>
>> with enabled hw flow control:
>>   If enough data is incoming on UART port the RX FIFO reaches a level
>>   where CTS is deasserted and remote device sending the data stops.
>>   If it fails to stop timely the i.MX' RX FIFO may run over and data
>>   get lost. Otherwise it's internal TX buffer may getting filled to
>>   a point where it runs over and data is again lost. It depends on
>>   the remote device how this case is handled and if it is recoverable.
>>
>> Obviously we want to avoid having no free buffers available. So we decrease
>> the size of the buffers and increase their number and the total buffer size.
>>
>> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
>> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
>> ---
>>
>> Changelog v3:
>>  - enhance description
>>
>> Changelog v2:
>>  - split this patch from series "Fix UART DMA freezes for iMX6"
>>  - add Reviewed-by tag
>>
>>  drivers/tty/serial/imx.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
>> 87c58f9f6390..51dc19833eab 100644
>> --- a/drivers/tty/serial/imx.c
>> +++ b/drivers/tty/serial/imx.c
>> @@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct timer_list *t)
>>         }
>>  }
>>
>> -#define RX_BUF_SIZE    (PAGE_SIZE)
>> -
>>  /*
>>   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
>>   *   [1] the RX DMA buffer is full.
>> @@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void
>> *data)  }
>>
>>  /* RX DMA buffer periods */
>> -#define RX_DMA_PERIODS 4
>> +#define RX_DMA_PERIODS 16
>> +#define RX_BUF_SIZE    (PAGE_SIZE / 4)
>>
> Why to decrease the DMA RX buffer size here ?
> 
> The current DMA implementation support DMA cyclic mode, one SDMA BD receive one Bluetooth frame can
> bring better performance.
> As you know, for L2CAP, a maximum transmission unit (MTU) associated with the largest Baseband payload
> is 341 bytes for DH5 packets.
> 
> So I suggest to increase RX_BUF_SIZE along with RX_DMA_PERIODS to feasible value.

I debugged and developed this patches on a system with a 4.15 kernel. When prepared for upstream i have adapted
some details and missed a important thing here. It should say:

+#define RX_BUF_SIZE    (RX_DMA_PERIODS * PAGE_SIZE / 4)

Yes, i wanted to increase the total buffer size too, even wrote it in the description.
I will prepare a version 4, thanks for the hint.

Just for info: A single RX DMA period aka buffer can be filled with mutliple packets in regard of the upper layer, here BT.


Regards,
Philipp
> 
> Andy
> 
>>  static int imx_uart_start_rx_dma(struct imx_port *sport)  {
>> --
>> 2.23.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

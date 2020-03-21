Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B07518DF58
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 11:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ID3aEAzqt4d75+JqvwDTwEezsZwcTqqfA/IZsPTwmfE=; b=QEq+rLMQMAA04vo7kcrGVyWC7
	qvLfmj79AYJfly+5lO2FeEP3gQyLny50Up+6qspe1jcnqLezX/t919TRubyLW8ObfHvYAp1/vQlyN
	rU6+/recfc1yq5euBiJle6JzJGxSwOu7ptkGyMY+JsItCvWv6fhhVrM5PI8TgeGW2T4QtAX8b6iKj
	11uU62w9BZwUsaUlf4ZdHfCZOpBCSJ4LGKrFDWUxUExsueLRxKu4lmRheFpYebmNa3X2pxWd5i8dx
	n9EkORrdwRqks5fZ+2Z5qYuHxL9o0CF52CIxHF/Yjw5/V+e9AQsxZ4SWwsY6P4aY4AA1eTSyZrTbv
	HjAlK2CnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFb2V-0002ZK-G3; Sat, 21 Mar 2020 10:07:35 +0000
Received: from fieber.vanmierlo.com ([84.243.197.177]
 helo=kerio9.vanmierlo.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFb2O-0002Yg-0N
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 10:07:29 +0000
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
 (authenticated user m.brock@vanmierlo.com)
 by kerio9.vanmierlo.com (Kerio Connect 9.2.11 beta 1) with ESMTPA;
 Sat, 21 Mar 2020 11:07:11 +0100
MIME-Version: 1.0
Date: Sat, 21 Mar 2020 11:07:10 +0100
From: Maarten Brock <m.brock@vanmierlo.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v4 2/2] serial: uartps: Add TACTIVE check in
 cdns_uart_tx_empty function
In-Reply-To: <e2514818af5973be291cc117d07739f068b71639.1584610774.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1584610774.git.shubhrajyoti.datta@xilinx.com>
 <e2514818af5973be291cc117d07739f068b71639.1584610774.git.shubhrajyoti.datta@xilinx.com>
Message-ID: <afd6fd6bc3413692ee91123fc3028583@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
User-Agent: Roundcube Webmail/1.3.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_030728_192178_48C7F009 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Raviteja Narayanam <raviteja.narayanam@xilinx.com>,
 linux-serial@vger.kernel.org, gregkh@linuxfoundation.org,
 michal.simek@xilinx.com, linux-serial-owner@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-19 10:44, Shubhrajyoti Datta wrote:
> From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
> 
> Make sure that all bytes are transmitted out of Uart by monitoring
> CDNS_UART_SR_TACTIVE bit as well.
> 
> Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  drivers/tty/serial/xilinx_uartps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/tty/serial/xilinx_uartps.c
> b/drivers/tty/serial/xilinx_uartps.c
> index 662b8ab..38cb76a9 100644
> --- a/drivers/tty/serial/xilinx_uartps.c
> +++ b/drivers/tty/serial/xilinx_uartps.c
> @@ -663,8 +663,8 @@ static unsigned int cdns_uart_tx_empty(struct
> uart_port *port)
>  	unsigned int status;
> 
>  	status = readl(port->membase + CDNS_UART_SR) &
> -				CDNS_UART_SR_TXEMPTY;
> -	return status ? TIOCSER_TEMT : 0;
> +		       (CDNS_UART_SR_TXEMPTY | CDNS_UART_SR_TACTIVE);
> +	return (status == CDNS_UART_SR_TXEMPTY) ? TIOCSER_TEMT : 0;
>  }
> 
>  /**

Acked-by: Maarten Brock <m.brock@vanmierlo.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

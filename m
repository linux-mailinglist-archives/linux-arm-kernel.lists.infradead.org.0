Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5877177E9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqhGbU4VvGAnG/Mi8WX8/lQJP2hUjQT5ChFnFWZrxrU=; b=JIODnNJCKwUIjX
	vlrcMn33+cveXvqqRoj/0WI8uTReXnw/LgOq5RZVbLDZ0Nt7LiGivVTJpotMDaTE726aZqs5qrt6x
	Sotm0O0oxjdVkUang/WmAEfsv22W22/gaXfE8unjz0wT9QPHFwRFhRqHAsDKqQ6mMYI8wMNIUKhNk
	iXaPGIyPTAK4L5wq79yIc8xwa2FCtbU5m53Ov83dyMJb+66tQp+rthwoUxOCFIlxlm0NjpDdOAvvC
	6rzf+dgFhHJquN6q+lw89vRMzfRlPojhNgwNMdAOtjnQpxDdxucV89hR//NEgkC6ztaO5Uq5N47Zv
	5JyMx0IRZ9PFoTLF4UnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ca2-0003f1-RZ; Tue, 03 Mar 2020 18:47:46 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9CZw-0003ec-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 18:47:41 +0000
Received: by mail-ot1-f66.google.com with SMTP id j14so4084950otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 10:47:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V16aal7zag3kMsr09Mn6Pwm+yaS63ymnYzw5shFWl8o=;
 b=aHCfsxJhtbMYheUlqq7sX4NMcCYYQX/dZ4X5N6CJa0WgiegdmBHPzz+pJhAsTDuMAj
 RgBcqBe0mnjWZ9jDasUEZPTqxOXl8B8iuggamkVhrVOTHZRLLPSlJGLjV2aPKP875WQx
 i4zydHzT/M2SNRkPlGQ6jro7ljRbFsN99gyR+1oQ6xE17oUBxkP2JIv5ttUR7ny9CFtn
 KQePQjag/6IZouhr1tQvKTyJ3eIjQeehPrjskQWmV4x3Bc697BY0ySXaeu4VSL+yZD90
 8Ay2ETi5gFDi8DJy42yiQsf8hPmKgEP/mBKS7s1awiqk0jAT5NI7OIyejJ3Nyou1uijO
 etyw==
X-Gm-Message-State: ANhLgQ2jhImivLBph2bufKNIvmS0XlCsUKrJPc1Gqrnu/jOKL26hjDAw
 YMomIWR2raNWjKAdhrHavA==
X-Google-Smtp-Source: ADFU+vtZ2kBjLYMbCupGtxnCYEydzNp//c2n2ytmjC5DrFRFmsm+XNsR1sLMnsSr9bp4FbQOOdzObw==
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr4317186otl.240.1583261259115; 
 Tue, 03 Mar 2020 10:47:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s2sm766013otp.35.2020.03.03.10.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 10:47:38 -0800 (PST)
Received: (nullmailer pid 20625 invoked by uid 1000);
 Tue, 03 Mar 2020 18:47:37 -0000
Date: Tue, 3 Mar 2020 12:47:37 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
Message-ID: <20200303184737.GD26191@bogus>
References: <20200303174306.6015-1-michael@walle.cc>
 <20200303174306.6015-4-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303174306.6015-4-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_104740_507420_121320CB 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Yuan Yao <yao.yuan@nxp.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 06:43:00PM +0100, Michael Walle wrote:
> The DMA channel might not be available at probe time. This is esp. the
> case if the DMA controller has an IOMMU mapping.

The subject should be updated as this doesn't involve deferred probe any 
more. 

> There is also another caveat. If there is no DMA controller at all,
> dma_request_chan() will also return -EPROBE_DEFER. Thus we cannot test
> for -EPROBE_DEFER in probe(). Otherwise the lpuart driver will fail to
> probe if, for example, the DMA driver is not enabled in the kernel
> configuration.
> 
> To workaround this, we request the DMA channel in _startup(). Other
> serial drivers do it the same way.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/tty/serial/fsl_lpuart.c | 84 +++++++++++++++++++++------------
>  1 file changed, 53 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
> index c31b8f3db6bf..0b8c477b32a3 100644
> --- a/drivers/tty/serial/fsl_lpuart.c
> +++ b/drivers/tty/serial/fsl_lpuart.c
> @@ -1493,36 +1493,63 @@ static void rx_dma_timer_init(struct lpuart_port *sport)
>  static void lpuart_tx_dma_startup(struct lpuart_port *sport)
>  {
>  	u32 uartbaud;
> +	int ret;
>  
> -	if (sport->dma_tx_chan && !lpuart_dma_tx_request(&sport->port)) {
> -		init_waitqueue_head(&sport->dma_wait);
> -		sport->lpuart_dma_tx_use = true;
> -		if (lpuart_is_32(sport)) {
> -			uartbaud = lpuart32_read(&sport->port, UARTBAUD);
> -			lpuart32_write(&sport->port,
> -				       uartbaud | UARTBAUD_TDMAE, UARTBAUD);
> -		} else {
> -			writeb(readb(sport->port.membase + UARTCR5) |
> -				UARTCR5_TDMAS, sport->port.membase + UARTCR5);
> -		}
> +	sport->dma_tx_chan = dma_request_slave_channel(sport->port.dev, "tx");
> +	if (!sport->dma_tx_chan) {
> +		dev_info_once(sport->port.dev,
> +			      "DMA tx channel request failed, operating without tx DMA\n");

Might be useful to print the errno too.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1102C1B26F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImJmQhnzWJThqbN10JwXTYGTol2IKtmPDA26/lqkpWU=; b=IeWs+Atgwmxiox
	wlMnKZK/QwdOM3dB3eB6fq8V7iCcAQt+AYZdUYUCwnGNW7n6G+cw3v3Bw1Qf/gjSPN90ex93NWOfL
	LR+KaPcosDlCP4YIZ9DbdvItt65FJwU4l/4y9e62UGim1LRYLjL42MMbIJsSCggD/XeVRQtlnphrf
	sIXqK908xBz+12Ld18lFyxgqe6SZ51Ri1aW8ReOPfN7UMwqzzUJGlbNsoaa2rW7mr+zA8ZXbZlKkf
	oQ+yQndFqiJlrQ+BOKjHB6EP7NUS3FCV9cATGbD2AbGIbaSyLNAHf8W90ig2d5xMI4yTzVIzUcArT
	fmHHoSsQrx34RMPolqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsUK-0005ch-7b; Tue, 21 Apr 2020 12:58:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsUA-0005as-PY
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:58:48 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03LCwL95026707; Tue, 21 Apr 2020 14:58:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=r+b9cQQQrzKV/Yu/DP7Ku0tDYpN9ESE+SznlYMlhwgw=;
 b=Fu+lvdF4U3XYsVidOxO3j2M8xLSzItNtcVvf9Al/9WJ326PFov+lXG33XJ285ATCBha0
 2EHUZ3E/hVtWXm8JyXq6q+Q9oS09FgYNXXB8Va9Pxa/XTpoOWF67wU086+GFGRGYM4C/
 IB3mQ40lYY6p8NNKpY0H8yt9rnV5ybsVqkCrM+WfFhC3sH5dw4unGYADPFeCf4vQEJl3
 BpaaaZNdlpHgKBx8Ol1iisn1JuMd6lABDeDdCjLTuy3K8XP0RsjNoE2lvzUu20gWh1cv
 8JK6RTN5Ohb4AAAPUjNiRDZSnWNL6N2U1QVM/sxniQoelqSMdZgCmswYDAabioQIonPL EQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregg2wx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Apr 2020 14:58:36 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31A3410002A;
 Tue, 21 Apr 2020 14:58:36 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1BAFA2B188F;
 Tue, 21 Apr 2020 14:58:36 +0200 (CEST)
Received: from [10.211.6.179] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 Apr
 2020 14:58:34 +0200
Subject: Re: [PATCH v3 2/2] tty: serial: Add modem control gpio support for
 STM32 UART
To: <mani@kernel.org>
References: <20200420170204.24541-1-mani@kernel.org>
 <20200420170204.24541-3-mani@kernel.org>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <035edfe7-1799-51c1-58aa-2498e5991aee@st.com>
Date: Tue, 21 Apr 2020 14:58:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200420170204.24541-3-mani@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-21_05:2020-04-20,
 2020-04-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_055847_182618_45497B12 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 andy.shevchenko@gmail.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-serial@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/20/20 7:02 PM, mani@kernel.org wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> STM32 UART controllers have the built in modem control support using
> dedicated gpios which can be enabled using 'st,hw-flow-ctrl' flag in DT.
> But there might be cases where the board design need to use different
> gpios for modem control.
> 
> For supporting such cases, this commit adds modem control gpio support
> to STM32 UART controller using mctrl_gpio driver.
> 
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  drivers/tty/serial/Kconfig       |  1 +
>  drivers/tty/serial/stm32-usart.c | 53 ++++++++++++++++++++++++++++++--
>  drivers/tty/serial/stm32-usart.h |  1 +
>  3 files changed, 53 insertions(+), 2 deletions(-)

Hi Mani,

You can add my:
Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice

> 
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 0aea76cd67ff..e7a6f2130684 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1462,6 +1462,7 @@ config SERIAL_STM32
>  	tristate "STMicroelectronics STM32 serial port support"
>  	select SERIAL_CORE
>  	depends on ARCH_STM32 || COMPILE_TEST
> +	select SERIAL_MCTRL_GPIO if GPIOLIB
>  	help
>  	  This driver is for the on-chip Serial Controller on
>  	  STMicroelectronics STM32 MCUs.
> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> index 5e93e8d40f59..17c2f3276888 100644
> --- a/drivers/tty/serial/stm32-usart.c
> +++ b/drivers/tty/serial/stm32-usart.c
> @@ -31,6 +31,7 @@
>  #include <linux/tty_flip.h>
>  #include <linux/tty.h>
>  
> +#include "serial_mctrl_gpio.h"
>  #include "stm32-usart.h"
>  
>  static void stm32_stop_tx(struct uart_port *port);
> @@ -510,12 +511,29 @@ static void stm32_set_mctrl(struct uart_port *port, unsigned int mctrl)
>  		stm32_set_bits(port, ofs->cr3, USART_CR3_RTSE);
>  	else
>  		stm32_clr_bits(port, ofs->cr3, USART_CR3_RTSE);
> +
> +	mctrl_gpio_set(stm32_port->gpios, mctrl);
>  }
>  
>  static unsigned int stm32_get_mctrl(struct uart_port *port)
>  {
> +	struct stm32_port *stm32_port = to_stm32_port(port);
> +	unsigned int ret;
> +
>  	/* This routine is used to get signals of: DCD, DSR, RI, and CTS */
> -	return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
> +	ret = TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
> +
> +	return mctrl_gpio_get(stm32_port->gpios, &ret);
> +}
> +
> +static void stm32_enable_ms(struct uart_port *port)
> +{
> +	mctrl_gpio_enable_ms(to_stm32_port(port)->gpios);
> +}
> +
> +static void stm32_disable_ms(struct uart_port *port)
> +{
> +	mctrl_gpio_disable_ms(to_stm32_port(port)->gpios);
>  }
>  
>  /* Transmit stop */
> @@ -626,6 +644,9 @@ static void stm32_shutdown(struct uart_port *port)
>  	u32 val, isr;
>  	int ret;
>  
> +	/* Disable modem control interrupts */
> +	stm32_disable_ms(port);
> +
>  	val = USART_CR1_TXEIE | USART_CR1_TE;
>  	val |= stm32_port->cr1_irq | USART_CR1_RE;
>  	val |= BIT(cfg->uart_enable_bit);
> @@ -764,6 +785,12 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
>  		cr3 |= USART_CR3_CTSE | USART_CR3_RTSE;
>  	}
>  
> +	/* Handle modem control interrupts */
> +	if (UART_ENABLE_MS(port, termios->c_cflag))
> +		stm32_enable_ms(port);
> +	else
> +		stm32_disable_ms(port);
> +
>  	usartdiv = DIV_ROUND_CLOSEST(port->uartclk, baud);
>  
>  	/*
> @@ -898,6 +925,7 @@ static const struct uart_ops stm32_uart_ops = {
>  	.throttle	= stm32_throttle,
>  	.unthrottle	= stm32_unthrottle,
>  	.stop_rx	= stm32_stop_rx,
> +	.enable_ms	= stm32_enable_ms,
>  	.break_ctl	= stm32_break_ctl,
>  	.startup	= stm32_startup,
>  	.shutdown	= stm32_shutdown,
> @@ -960,10 +988,31 @@ static int stm32_init_port(struct stm32_port *stm32port,
>  
>  	stm32port->port.uartclk = clk_get_rate(stm32port->clk);
>  	if (!stm32port->port.uartclk) {
> -		clk_disable_unprepare(stm32port->clk);
>  		ret = -EINVAL;
> +		goto err_clk;
> +	}
> +
> +	stm32port->gpios = mctrl_gpio_init(&stm32port->port, 0);
> +	if (IS_ERR(stm32port->gpios)) {
> +		ret = PTR_ERR(stm32port->gpios);
> +		goto err_clk;
>  	}
>  
> +	/* Both CTS/RTS gpios and "st,hw-flow-ctrl" should not be specified */
> +	if (stm32port->hw_flow_control) {
> +		if (mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_CTS) ||
> +		    mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_RTS)) {
> +			dev_err(&pdev->dev, "Conflicting RTS/CTS config\n");
> +			ret = -EINVAL;
> +			goto err_clk;
> +		}
> +	}
> +
> +	return ret;
> +
> +err_clk:
> +	clk_disable_unprepare(stm32port->clk);
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
> index db8bf0d4982d..d4c916e78d40 100644
> --- a/drivers/tty/serial/stm32-usart.h
> +++ b/drivers/tty/serial/stm32-usart.h
> @@ -274,6 +274,7 @@ struct stm32_port {
>  	bool fifoen;
>  	int wakeirq;
>  	int rdr_mask;		/* receive data register mask */
> +	struct mctrl_gpios *gpios; /* modem control gpios */
>  };
>  
>  static struct stm32_port stm32_ports[STM32_MAX_PORTS];
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

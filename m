Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4F1ADE15
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JOCD5vA74dTzBNp1iRbPx8nSp+eNV+wlOE6RNsKt6w=; b=LUqupxs46PiSKX
	H9+JszzcggtgfT1tcGwnlNqEHFd322cb8uO+Ojg5Y6Ev66BCBKK9QlouJDrrxKX1UMOEQUd2qWT9M
	ky8UcUvZ7HCOf1x1ZPsAuM7uITKLFuU/yCBYPt8oeen7uUPO5uDEb9iQlk3pJ+zi80P9OK917dHpf
	gVYzqCWwkLQQ306PFXOpf8GpiXgEvDkWcY9tPr+dICmZgNa0yh5z/MKBO5iTowmqBpmbpuFq33v4d
	8OT8h6cBYgkMcAZJU/Ti32Z2K3FfrtHC2hbDcC133pNIhuUj7gwzCxwteJPzK7XeblcPZAo1cHpu/
	YPuEX/TgeCtNcVwuKUvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQq7-0001Ub-Gx; Fri, 17 Apr 2020 13:15:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQpz-0001Tm-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 13:15:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HDDZKn010280; Fri, 17 Apr 2020 15:15:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=LQTNmQQkficK5yqvnaxkI6yYF7TPOu6ZEINYPN475ok=;
 b=IxkRz2/MIkkR2U/Xx9HdXgej7SvRAY+yb9wnOtqBKrdx9chlHLOCNQDALVXtKjcL4p8F
 WejkJ5x+xuQ163bBa3qa1LiRSHLRt5oVDqkwT2qW56JeD4xkCKFGSp1l1YZ9SWby7KRn
 yAWUx9MWupHYe8YltlwUmFbHFCBIPb7z2+f9JHs3EeMH/OM42Lnv2AYa6hNIrA+qQUO4
 SzN5utcxvhNFkxzQVo52R/MrA6RmWIJ4lRircrWvi6NAgrBkKa15M/o8cHkH4emTqcZp
 dQFnj/s914WjpodINPnuBlT4dDZPHffRJaZJ6UJ3jtHYGwsOfofZTbs2NAOquLDjldM8 VQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn8s9n7n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 15:15:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A56B810002A;
 Fri, 17 Apr 2020 15:15:09 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8E37E2B345E;
 Fri, 17 Apr 2020 15:15:09 +0200 (CEST)
Received: from [10.211.10.173] (10.75.127.47) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 17 Apr
 2020 15:15:08 +0200
Subject: Re: [PATCH v2 1/2] tty: serial: Add modem control gpio support for
 STM32 UART
To: <mani@kernel.org>, <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200416175729.5550-1-mani@kernel.org>
 <20200416175729.5550-2-mani@kernel.org>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <4d6d6568-aee0-be02-df88-14f4e364b598@st.com>
Date: Fri, 17 Apr 2020 15:15:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200416175729.5550-2-mani@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_061520_325823_8CB99C37 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 andy.shevchenko@gmail.com, Erwan LE RAY <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/16/20 7:57 PM, mani@kernel.org wrote:
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
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  drivers/tty/serial/Kconfig       |  1 +
>  drivers/tty/serial/stm32-usart.c | 43 +++++++++++++++++++++++++++++++-
>  drivers/tty/serial/stm32-usart.h |  1 +
>  3 files changed, 44 insertions(+), 1 deletion(-)
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
> index 5e93e8d40f59..026982259714 100644
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
> +	int ret;

Hi Mani,

Please find few minor remarks and a question from my side.

'ret' could be an unsigned int

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

Just a question here: purpose of your patch is to handle the gpio case.
So you may get modem control interrupts from gpios with this patch.

In other drivers, I can see the implementation checks gpio usage (like
in atmel_serial). When there's no gpio, the corresponding interrupt at
the serial controller level is enabled, e.g. :

	if (!mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_CTS))
		ier |= ...

Do you need modem control interrupts in your case ?

In case the Stinger96 board signals gets fixed in a future revision,
would it be needed to enable modem control interrupts in the USART
controller ?

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
> @@ -964,6 +992,19 @@ static int stm32_init_port(struct stm32_port *stm32port,
>  		ret = -EINVAL;

return -EINVAL;

>  	}
>  
> +	stm32port->gpios = mctrl_gpio_init(&stm32port->port, 0);
> +	if (IS_ERR(stm32port->gpios))

Please add error path: add a clk_disable_unprepare() here, before the
return.

> +		return PTR_ERR(stm32port->gpios);
> +
> +	/* Both CTS/RTS gpios and "st,hw-flow-ctrl" should not be specified */
> +	if (stm32port->hw_flow_control) {
> +		if (mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_CTS) ||
> +		    mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_RTS)) {
> +			dev_err(&pdev->dev, "Conflicting RTS/CTS config\n");

same here

Best Regards,
Thanks,
Fabrice

> +			return -EINVAL;
> +		}
> +	}
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

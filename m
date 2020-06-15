Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714891F9806
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xmio6sx4lke+Ev5NeZpUDMvUUkOt0pqFtQ5dIh5FjP8=; b=sRhSgENiaJcH55TYeDI0KhnXm
	zZS2XCTkUFddIVGvxUCKw9z5FUXYLbJnTfjoAA+JD7EWUCFCl9C8ig3WGR+AVgm8UCyHqaRs1iNU3
	eoSu/pAEenm+GOpwWyKmL38gwHLs0pvXJSKbxJ5hXDsN2jTsste31lOEmMXVv9LtWe7bWSLtIBsdW
	1302Mu+CGC0aa84l0SS24J0wKp2h2AaIvePmMtilaa2lTYiXKP/A5wsLZfkia0hZx2jto/Rnwqf8G
	OsfA84eHdXQGT6/Wue2fY143gq6mHYywUoax68wXHhWhWBllvB6MReIcX3fo4n23xu/OjSbY4D2E3
	KkHUZM+FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkovX-00086c-RI; Mon, 15 Jun 2020 13:13:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkovP-00085p-Rg
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:13:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 844A731B;
 Mon, 15 Jun 2020 06:13:17 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E73B93F6CF;
 Mon, 15 Jun 2020 06:13:15 -0700 (PDT)
Subject: Re: [RFC PATCH] serial: samsung: Re-factors UART IRQ resource for
 various Samsung SoC
To: Tamseel Shams <m.shams@samsung.com>, kgene@kernel.org, krzk@kernel.org,
 gregkh@linuxfoundation.org, jslaby@suse.com
References: <CGME20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43@epcas5p4.samsung.com>
 <20200615122609.71884-1-m.shams@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <027c0955-3246-8c1e-4d0d-053a2a177dc6@arm.com>
Date: Mon, 15 Jun 2020 14:13:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615122609.71884-1-m.shams@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_061319_991374_94CD47B7 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 13:26, Tamseel Shams wrote:
> In few older Samsung SoCs like s3c2410, s3c2412
> and s3c2440, UART IP is having 2 interrupt lines.
> However, in other SoCs like s3c6400, s5pv210,
> exynos5433, and exynos4210 UART is having only 1
> interrupt line. Due to this, "platform_get_irq(platdev, 1)"
> call in the driver gives the following warning:
> "IRQ index 1 not found" on recent platforms.
> 
> This patch re-factors the IRQ resources handling for
> each platform and hence fixing the above warnings seen
> on some platforms.
> 
> Signed-off-by: Tamseel Shams <m.shams@samsung.com>
> ---
>   drivers/tty/serial/samsung_tty.c | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 6ef614d8648c..078dcb3e316f 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -60,6 +60,7 @@ struct s3c24xx_uart_info {
>   	char			*name;
>   	unsigned int		type;
>   	unsigned int		fifosize;
> +	unsigned int		irq_cnt;
>   	unsigned long		rx_fifomask;
>   	unsigned long		rx_fifoshift;
>   	unsigned long		rx_fifofull;
> @@ -1908,12 +1909,17 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
>   	else {
>   		port->irq = ret;
>   		ourport->rx_irq = ret;
> -		ourport->tx_irq = ret + 1;
> +		if (ourport->info->irq_cnt == 1)
> +			ourport->tx_irq = ret;
> +		else
> +			ourport->tx_irq = ret + 1;
>   	}
>   
> -	ret = platform_get_irq(platdev, 1);
> -	if (ret > 0)
> -		ourport->tx_irq = ret;
> +	if (ourport->info->irq_cnt != 1) {
> +		ret = platform_get_irq(platdev, 1);
> +		if (ret > 0)
> +			ourport->tx_irq = ret;

FWIW, if you're not going to do anything in the error case then you may 
as well just call platform_get_irq_optional() unconditionally.

Robin.

> +	}
>   	/*
>   	 * DMA is currently supported only on DT platforms, if DMA properties
>   	 * are specified.
> @@ -2387,6 +2393,7 @@ static struct s3c24xx_serial_drv_data s3c2410_serial_drv_data = {
>   		.name		= "Samsung S3C2410 UART",
>   		.type		= PORT_S3C2410,
>   		.fifosize	= 16,
> +		.irq_cnt	= 2,
>   		.rx_fifomask	= S3C2410_UFSTAT_RXMASK,
>   		.rx_fifoshift	= S3C2410_UFSTAT_RXSHIFT,
>   		.rx_fifofull	= S3C2410_UFSTAT_RXFULL,
> @@ -2414,6 +2421,7 @@ static struct s3c24xx_serial_drv_data s3c2412_serial_drv_data = {
>   		.name		= "Samsung S3C2412 UART",
>   		.type		= PORT_S3C2412,
>   		.fifosize	= 64,
> +		.irq_cnt	= 2,
>   		.has_divslot	= 1,
>   		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
>   		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
> @@ -2443,6 +2451,7 @@ static struct s3c24xx_serial_drv_data s3c2440_serial_drv_data = {
>   		.name		= "Samsung S3C2440 UART",
>   		.type		= PORT_S3C2440,
>   		.fifosize	= 64,
> +		.irq_cnt	= 2,
>   		.has_divslot	= 1,
>   		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
>   		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
> @@ -2471,6 +2480,7 @@ static struct s3c24xx_serial_drv_data s3c6400_serial_drv_data = {
>   		.name		= "Samsung S3C6400 UART",
>   		.type		= PORT_S3C6400,
>   		.fifosize	= 64,
> +		.irq_cnt	= 1,
>   		.has_divslot	= 1,
>   		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
>   		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
> @@ -2498,6 +2508,7 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
>   	.info = &(struct s3c24xx_uart_info) {
>   		.name		= "Samsung S5PV210 UART",
>   		.type		= PORT_S3C6400,
> +		.irq_cnt	= 1,
>   		.has_divslot	= 1,
>   		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,
>   		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,
> @@ -2526,6 +2537,7 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
>   	.info = &(struct s3c24xx_uart_info) {			\
>   		.name		= "Samsung Exynos UART",	\
>   		.type		= PORT_S3C6400,			\
> +		.irq_cnt	= 1,				\
>   		.has_divslot	= 1,				\
>   		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,	\
>   		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,	\
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

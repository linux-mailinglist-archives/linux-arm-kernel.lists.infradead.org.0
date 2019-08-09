Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDF587805
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 12:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/E2X3hMRXC8cmKNV7rJraw1jJ4JEguA3YHw5ynNL0E=; b=g8lrcgQhdM30ag
	Bnzhm2cOiFVQ4IVciKjOkaV+fSZsNNuDAU/JIAlhAjtkmsNLt3CQRh+j+ecymYrbzSpJLvTZh8e3A
	G2Fwx5LScH/mnsZpu9ny1iSqgwbEN9xSz9K/fjqlZ/tX+M69ggfc/9Gw/YOX5FxDdDNxvybT2AKK3
	EZaZGjbcOYIf6QUstJzIiswkOD1eorjE6mbkzYqyotGZEuX1NpYT8/1aHAq44p/tzppd5vXMh+bXL
	JVTFr21hPBirpoO31mf8K1f6X7UEsBV/j56MXeg83g87yBDJZMpirgXJw4OadgoIw+l9c/Idu1MBg
	sw1RFpgPcWdj4ggOUdww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2Zc-0003Hp-58; Fri, 09 Aug 2019 10:56:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2ZM-0003HT-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 10:56:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15F3B1596;
 Fri,  9 Aug 2019 03:56:24 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 60D033F575; Fri,  9 Aug 2019 03:56:22 -0700 (PDT)
Subject: Re: [PATCH 06/19] irqchip/mmp: add missing chained_irq_{enter, exit}()
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-7-lkundrak@v3.sk>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <319ebbbc-2231-42c9-faec-731ad81eb485@kernel.org>
Date: Fri, 9 Aug 2019 11:56:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809093158.7969-7-lkundrak@v3.sk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_035624_731871_050F7CCF 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/08/2019 10:31, Lubomir Rintel wrote:
> The lack of chained_irq_exit() leaves the muxed interrupt masked on MMP3.
> For reasons unknown this is not a problem on MMP2.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  drivers/irqchip/irq-mmp.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
> index af9cba4a51c2e..cd8d2253f56d1 100644
> --- a/drivers/irqchip/irq-mmp.c
> +++ b/drivers/irqchip/irq-mmp.c
> @@ -13,6 +13,7 @@
>  #include <linux/init.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> +#include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/io.h>
>  #include <linux/ioport.h>
> @@ -132,11 +133,14 @@ struct irq_chip icu_irq_chip = {
>  static void icu_mux_irq_demux(struct irq_desc *desc)
>  {
>  	unsigned int irq = irq_desc_get_irq(desc);
> +	struct irq_chip *chip = irq_get_chip(irq);

Consider using irq_desc_get_chip() instead, which avoids going through
the irq->desc again.

>  	struct irq_domain *domain;
>  	struct icu_chip_data *data;
>  	int i;
>  	unsigned long mask, status, n;
>  
> +	chained_irq_enter(chip, desc);
> +
>  	for (i = 1; i < max_icu_nr; i++) {
>  		if (irq == icu_data[i].cascade_irq) {
>  			domain = icu_data[i].domain;
> @@ -146,7 +150,7 @@ static void icu_mux_irq_demux(struct irq_desc *desc)
>  	}
>  	if (i >= max_icu_nr) {
>  		pr_err("Spurious irq %d in MMP INTC\n", irq);
> -		return;
> +		goto out;
>  	}
>  
>  	mask = readl_relaxed(data->reg_mask);
> @@ -158,6 +162,9 @@ static void icu_mux_irq_demux(struct irq_desc *desc)
>  			generic_handle_irq(icu_data[i].virq_base + n);
>  		}
>  	}
> +
> +out:
> +	chained_irq_exit(chip, desc);
>  }
>  
>  static int mmp_irq_domain_map(struct irq_domain *d, unsigned int irq,
> 

Otherwise looks OK.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

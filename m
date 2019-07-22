Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDFB6FDB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TtPWWWoVB5XyX1d3IwJLNBAJ9YF/ykpJEggjhcmd0qc=; b=ED407oguFUPXRDvvwAcjDI1g+s
	5SvWhrjJqYQZc1I3PR8Gqbd0D2nfghQo/B7/w9oPHSbeirNBUIQIKiLyvFwqxjSK5J7Fq0MA7u1uM
	uyMuysSO/UntzRRRFgRFlNvBNZgyeV24Cnj3M5S3vEFuGkU99oN93GWC6HKtMer2hj7to/p/WqRHK
	v6TR9vFm4+vR1MU5X5DGc6ZnIqnesjLQXmOwSKrOjj2SauA4NsDt7QChDoNmyPcjLP7m4L22CV6zX
	zMSkUQ7GBKtOhrVahgPriulj31rl7+Rz/7DP2nWfAGfr+tc4HW9zsWBGjRrs07KBgspeI8H/vYb8c
	uuIQvtIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVX2-0007VP-2c; Mon, 22 Jul 2019 10:27:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVWK-0007GM-L3
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:26:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B0FD28;
 Mon, 22 Jul 2019 03:26:12 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D4AE3F71A;
 Mon, 22 Jul 2019 03:26:10 -0700 (PDT)
Subject: Re: [PATCH] rqchip/stm32: Remove unneeded call to kfree
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20190719184606.GA4701@hari-Inspiron-1545>
From: Steven Price <steven.price@arm.com>
Message-ID: <1d9aa4be-4da2-b532-4787-c98869c0bd9d@arm.com>
Date: Mon, 22 Jul 2019 11:26:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719184606.GA4701@hari-Inspiron-1545>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_032617_249278_57153146 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/07/2019 19:46, Hariprasad Kelam wrote:
> Memory allocated by devm_ alloc will be freed upon device detachment. So
> we may not require free memory.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/irqchip/irq-stm32-exti.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
> index e00f2fa..46ec0af 100644
> --- a/drivers/irqchip/irq-stm32-exti.c
> +++ b/drivers/irqchip/irq-stm32-exti.c
> @@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct stm32_exti_drv_data *drv_data,
>  	irq_domain_remove(domain);
>  out_unmap:
>  	iounmap(host_data->base);
> -	kfree(host_data->chips_data);
> -	kfree(host_data);

In the commit this is based on these variables are not allocated using a
devm_ alloc function:

$ git show e00f2fa | grep -A12 *stm32_exti_host_init
> stm32_exti_host_data *stm32_exti_host_init(const struct stm32_exti_drv_data *dd,
> 					   struct device_node *node)
> {
> 	struct stm32_exti_host_data *host_data;
> 
> 	host_data = kzalloc(sizeof(*host_data), GFP_KERNEL);
> 	if (!host_data)
> 		return NULL;
> 
> 	host_data->drv_data = dd;
> 	host_data->chips_data = kcalloc(dd->bank_nr,
> 					sizeof(struct stm32_exti_chip_data),
> 					GFP_KERNEL);
The function stm32_exti_probe *does* use devm_k?alloc, so perhaps you
were getting confused with that?

Steve

>  	return ret;
>  }
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

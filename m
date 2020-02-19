Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2C1164373
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PurhOGZIUE9132oKO5rgodSOtWO191d/vhfSiXs1Odo=; b=O3UMK5c//TbtTUlsLzFMy3IsT
	AQU+5aA9pFIEhLEKCVr5MmTYvOVu8SDmb69nNWUBOl2oOOWCw7c4By+FGjUrK5MedqdxcHarBklY6
	0baFb/BtqD3qtHoztST+3yBBMWQgI/KGS0nZvKbt7aOO+kCM9d42qYec7w5cs2B/vL+UXjDlODmIV
	0LNfQM0tBeJBxiP9L76BfcKxCh3MjJ8fVNrCfgJ89a22cShJf3AvUxVUos0C8QzUKpz3wYI7j856z
	4acpSrqU/vEgS1XPrPJiXrW0FH2TxNdenP/TEmXV/L60PdB/c020cSPmOgu5Qnu2i7OQRdKinku/B
	npKFh7PyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NcD-0004lf-E4; Wed, 19 Feb 2020 11:34:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Nc4-0004lI-TI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:33:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JBO4UN023951; Wed, 19 Feb 2020 12:33:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=7rGcCAIJ1owBgJnQqs9fghPribnH6MLQt7KvBtj4rlU=;
 b=beCCWjxbEgVdPTO/oTEiGoMJE2z1U7oqaAWze4ZQJ3BM6EXShjbWtD8h1a6ACcpNmJl9
 8hBbCDobb3eS8gKl2gD254uN1rDjiWOy7ZBh8V9vyzEXPlptxniqr1V3vAhJ6OP96y7B
 Yh3/trpblCtyDZiwcyxoo73F8pUv6YWIRPv7rN+hQYekkGgGJV7XYPxf8SpcQlr9C3Iy
 yHRue8YPJR1mS4nE2C7F+1htjGZhL4g6oJWVU5LcZhQAJSWYGCpLsoNi/T8mZqGPmavQ
 LaabaXCIyf+LJj+Othr1isoNkOiJxoG1grSgZ7qJGDvnoqyarPL1Yn4DZ8usjLAoOIAz PQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5jrch-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 12:33:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9B0E4100034;
 Wed, 19 Feb 2020 12:33:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 88A4D2B2DE2;
 Wed, 19 Feb 2020 12:33:32 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 12:33:31 +0100
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
Message-ID: <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
Date: Wed, 19 Feb 2020 12:33:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218131218.10789-2-alexandre.torgue@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_033357_233815_8CE9F334 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix Marc email address

On 2/18/20 2:12 PM, Alexandre Torgue wrote:
> This commit introduces retrigger support for stm32_ext_h chip.
> It consists to rise the GIC interrupt mapped to an EXTI line.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
> index e00f2fa27f00..c971d115edb4 100644
> --- a/drivers/irqchip/irq-stm32-exti.c
> +++ b/drivers/irqchip/irq-stm32-exti.c
> @@ -604,12 +604,24 @@ static void stm32_exti_h_syscore_deinit(void)
>   	unregister_syscore_ops(&stm32_exti_h_syscore_ops);
>   }
>   
> +static int stm32_exti_h_retrigger(struct irq_data *d)
> +{
> +	struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
> +	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
> +	void __iomem *base = chip_data->host_data->base;
> +	u32 mask = BIT(d->hwirq % IRQS_PER_BANK);
> +
> +	writel_relaxed(mask, base + stm32_bank->swier_ofst);
> +
> +	return irq_chip_retrigger_hierarchy(d);
> +}
> +
>   static struct irq_chip stm32_exti_h_chip = {
>   	.name			= "stm32-exti-h",
>   	.irq_eoi		= stm32_exti_h_eoi,
>   	.irq_mask		= stm32_exti_h_mask,
>   	.irq_unmask		= stm32_exti_h_unmask,
> -	.irq_retrigger		= irq_chip_retrigger_hierarchy,
> +	.irq_retrigger		= stm32_exti_h_retrigger,
>   	.irq_set_type		= stm32_exti_h_set_type,
>   	.irq_set_wake		= stm32_exti_h_set_wake,
>   	.flags			= IRQCHIP_MASK_ON_SUSPEND,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

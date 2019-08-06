Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E2882F96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Etqz1imElvLlvEADc98cJ7xwR7lDXxoJTCIhmMiDLVk=; b=kb5GHAXx/6CJed
	8AmnUnNStUkGMDWUg1C5LAzr7H2DbU2BD6orjkyBK2geVyr9wtjz9ppK6mg48Z3B6VDnUOkxW6bXG
	Cd/VzBOQNMD3At1cD3u+bKgfo+eF2xvQHbyCWFk3rODxGU38kRagyjgFApxlEDegUdVOBDvoahks9
	dlyeaIknkmlfi4jglCV3BpQeJsaBQiLwqbFEUvOiSZ4VsakkUKMWtkMfJDQiv43Qy56mwpN1fSrI9
	KjoV13FxZbo9f/IYAl89yUoiac2kDrUaturk6QGZqpB2DATTKghFalKuVeL3TJKTOVnmbp42xFa9F
	DIcVu6eFDvfoWAf2Cz8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwVX-0003gL-0Z; Tue, 06 Aug 2019 10:15:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwVK-0003fO-Nl
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:15:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F8A4337;
 Tue,  6 Aug 2019 03:15:40 -0700 (PDT)
Received: from [10.1.25.155] (summers-iphone.cambridge.arm.com [10.1.25.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 25B1B3F694; Tue,  6 Aug 2019 03:15:37 -0700 (PDT)
Subject: Re: [PATCH v2 10/12] irqchip/gic-v3: Warn about inconsistent
 implementations of extended ranges
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-11-maz@kernel.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <e5512fcc-e24e-c29a-8a57-011d194e3c41@arm.com>
Date: Tue, 6 Aug 2019 11:15:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-11-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_031542_832570_71A4C4F1 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 8/6/19 11:01 AM, Marc Zyngier wrote:
> As is it usual for the GIC, it isn't disallowed to put together a system
> that is majorly inconsistent, with a distributor supporting the
> extended ranges while some of the CPUs don't.
> 
> Kindly tell the user that things are sailing isn't going to be smooth.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3.c       | 5 +++++
>  include/linux/irqchip/arm-gic-v3.h | 1 +
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index f53e58d398ba..334a10d9dbfb 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -1014,6 +1014,11 @@ static void gic_cpu_init(void)
>  
>  	gic_enable_redist(true);
>  
> +	WARN((gic_data.ppi_nr > 16 || GIC_ESPI_NR != 0) &&
> +	     !(gic_read_ctlr() & ICC_CTLR_EL1_ExtRange),
> +	     "Distributor has extended ranges, but CPU%d doesn't\n",
> +	     smp_processor_id());
> +

Should such setup be tainted?

Cheers
Vladimir

>  	rbase = gic_data_rdist_sgi_base();
>  
>  	/* Configure SGIs/PPIs as non-secure Group-1 */
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index 9ec3349dee04..5cc10cf7cb3e 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -496,6 +496,7 @@
>  #define ICC_CTLR_EL1_A3V_SHIFT		15
>  #define ICC_CTLR_EL1_A3V_MASK		(0x1 << ICC_CTLR_EL1_A3V_SHIFT)
>  #define ICC_CTLR_EL1_RSS		(0x1 << 18)
> +#define ICC_CTLR_EL1_ExtRange		(0x1 << 19)
>  #define ICC_PMR_EL1_SHIFT		0
>  #define ICC_PMR_EL1_MASK		(0xff << ICC_PMR_EL1_SHIFT)
>  #define ICC_BPR0_EL1_SHIFT		0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E5B926B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xrhUvpaQ724QaxXC8ChRFBx+dW5Q77QpmugjIqws9MY=; b=pioq/NnJLHwlwyCCQb0KS5Io5
	QpV8hLiS575CMmXpHguZuP13Ms2OL076jIU0E8jVWRnhKwkB2wTZA5G4xSXhxttWRrx/hfflhyEek
	b3V3/B3LRiY9JWe3B28iwkbMs285WZbmXzEBF01hRNDRGLzmKEXxWKFXea3yK54dRM+SbgjA+/gsO
	rRB3/i0SZ0EKll+RcD1glCoil78AybV26aHi7JkWH/m6lG+WlrunUEcoduv1mXuMyfWHlyE9MwKZ5
	uu3yk8xlBPS0+cfzLlNTH8GUTb9VSmICj8vI7mpm1wUza2rtipIKhOarsI/jzZTwTnlm+R+NrHwJk
	0spneN8TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzieI-0000gg-I2; Mon, 19 Aug 2019 14:28:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzieA-0000eY-2q
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:28:35 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A941860674E86CE3D077;
 Mon, 19 Aug 2019 22:28:19 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 19 Aug 2019
 22:28:09 +0800
Subject: Re: [PATCH v2 04/12] irqchip/gic-v3: Add ESPI range support
To: Marc Zyngier <maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-5-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <9cbd6fc8-3fe9-39fc-10ca-724a1ec06e8d@huawei.com>
Date: Mon, 19 Aug 2019 22:25:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-5-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_072834_320800_ADA0E556 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, Shameerali
 Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/8/6 18:01, Marc Zyngier wrote:
> Add the required support for the ESPI range, which behave exactly like
> the SPIs of old, only with new funky INTIDs.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/irqchip/irq-gic-v3.c       | 85 ++++++++++++++++++++++++------
>   include/linux/irqchip/arm-gic-v3.h | 17 +++++-
>   2 files changed, 85 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index db3bdedd7241..1ca4dde32034 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -51,13 +51,16 @@ struct gic_chip_data {
>   	u32			nr_redist_regions;
>   	u64			flags;
>   	bool			has_rss;
> -	unsigned int		irq_nr;
>   	struct partition_desc	*ppi_descs[16];
>   };
>   
>   static struct gic_chip_data gic_data __read_mostly;
>   static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
>   
> +#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
> +#define GIC_LINE_NR	GICD_TYPER_SPIS(gic_data.rdists.gicd_typer)

This indicates the maximum SPI INTID that the GIC implementation
supports, should we restrict it to no more than 1020?

ITLinesNumber can be '11111', and I saw the following info on my host:
     "GICv3: 992 SPIs implemented"


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

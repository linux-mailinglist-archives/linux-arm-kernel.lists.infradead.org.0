Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D92048819
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNrhLREfxhkYDdsGwUsJ4nJRGTsFz1gxKTe/9u37WHQ=; b=eNGb8m9lTMKZuY
	eZZyZAfWIh3GGt6utBSql6BA+Ksz1tdwbZtwb45vP4K8q/9hzR+BSYvtPHbLOvXYPGKZxCG1nRS14
	2rKI+MmpSPe9cJEfGUqkw59LjHWiAbs2ngMRaZ2NaisDy/9n5kPbjjgDa9r4aDZCRqYvBSLHWCezU
	O7QChFbn+J2lSmnnXLJUeBHhmIi2Dr5JTKterdsju1s7e5WoEfw6d8Q2PyQ9YZtZ+iSZ8iwAosdDQ
	7KLWkiciW0FHVxw98CFKtK4dP1815QgzBBDybUng+9fMI//x7nOLyskLhHAwG8JwWxxI3XFYw5Xpg
	T7XN7QZm3H8n40utfapg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu1u-0001zC-UT; Mon, 17 Jun 2019 15:58:47 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu1f-0001yc-TQ; Mon, 17 Jun 2019 15:58:33 +0000
Received: by mail-ed1-x543.google.com with SMTP id d4so16853948edr.13;
 Mon, 17 Jun 2019 08:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7PvYqYDGYvltXsJIkRzOpoCvOvTLeRDMNyycLQQhHWs=;
 b=lXui0IAeUzOL294gTTNODFPhJP3uGB+pMMlpZ/pn6q7/OSBmeqfQOfv+/n+kffe42z
 sCo2pKtZat3sQPNsz/6U1/Y4P9ZMdwwa1Re8qRRv/R1BZRUyDCgpcyjIRpXnNCNJfMrA
 049Z8bLA3icI2ONV+GAvpH8SKqkt54+efT4dXR8e7APjeMvwKW2XT/AMWOesC33Z2ja6
 4GnIkehmoUu0ETh9IWqhGFnD/2D349i3KIFd5VSLgvURHaiyC6QjFPMpjKz01beeSimQ
 UKQs/igLkE4kFDEDJ5FT0rlTy2Gp7RsOShUIzq79IZA1Usj4rgd80tEU1kfUkVn0VNN3
 tbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=7PvYqYDGYvltXsJIkRzOpoCvOvTLeRDMNyycLQQhHWs=;
 b=VGcaUMtkM7zcagWX7v+ga/8dGdsi7ONgINzMKJea9gh5b8ve4KrHpYKMEwENfX51ub
 xKUNj8vdLqxNwEOajHNX+7w/vGtwNrIEn4be1o5m9ZYkf+1p3jPiGjqsvYqJAltqauoo
 u8L/+cZAqd1c7/9hlZHy76juTsxoWfDNY7XsEnyM/g+0Fv9lKi9Rj1oBzzQgRn79ql0z
 gDuIChwINgYH0kHG3rqx1WA4dly4VsjbMF4pCf7KSmu2tjt97nP2rCpsQ640bl//eGyO
 YKPTJpuiBFpWZ0XlvWjOAUB66qygUHL5SO3il2BB6ndztE505DNbsB5v/7GLlcPNi2vI
 bazg==
X-Gm-Message-State: APjAAAVGtvFcmisRvvb0KcReUaOPZZyiJWQOvErftihkNU6p5dEOkSMz
 G4c/RkB5cWZR0jL/Jw53MEw=
X-Google-Smtp-Source: APXvYqwvlhRQgHM9OvNwfsBtBCBlj4oGJA+m601fGHnLQpGjwYK+A8nb9ce8kuTZLX57ahhemzZIEA==
X-Received: by 2002:a50:996e:: with SMTP id l43mr95680852edb.187.1560787110515; 
 Mon, 17 Jun 2019 08:58:30 -0700 (PDT)
Received: from ziggy.stardust ([37.223.140.27])
 by smtp.gmail.com with ESMTPSA id b25sm3763368ede.34.2019.06.17.08.58.29
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 08:58:29 -0700 (PDT)
Subject: Re: [PATCH v7 14/21] iommu/mediatek: Add mmu1 support
To: Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <dbed27ec-381e-8feb-736b-508d9d6e40cf@gmail.com>
Date: Mon, 17 Jun 2019 17:58:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_085832_003906_34E263B4 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/06/2019 14:17, Yong Wu wrote:
> Normally the M4U HW connect EMI with smi. the diagram is like below:
>               EMI
>                |
>               M4U
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
> 
> Actually there are 2 mmu cells in the M4U HW, like this diagram:
> 
>               EMI
>            ---------
>             |     |
>            mmu0  mmu1     <- M4U
>             |     |
>            ---------
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
> 
> This patch add support for mmu1. In order to get better performance,
> we could adjust some larbs go to mmu1 while the others still go to
> mmu0. This is controlled by a SMI COMMON register SMI_BUS_SEL(0x220).
> 
> mt2712, mt8173 and mt8183 M4U HW all have 2 mmu cells. the default
> value of that register is 0 which means all the larbs go to mmu0
> defaultly.
> 
> This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>  drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++-----------------
>  1 file changed, 29 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 3a14301..ec4ce74 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -72,26 +72,32 @@
>  #define F_INT_CLR_BIT				BIT(12)
>  
>  #define REG_MMU_INT_MAIN_CONTROL		0x124
> -#define F_INT_TRANSLATION_FAULT			BIT(0)
> -#define F_INT_MAIN_MULTI_HIT_FAULT		BIT(1)
> -#define F_INT_INVALID_PA_FAULT			BIT(2)
> -#define F_INT_ENTRY_REPLACEMENT_FAULT		BIT(3)
> -#define F_INT_TLB_MISS_FAULT			BIT(4)
> -#define F_INT_MISS_TRANSACTION_FIFO_FAULT	BIT(5)
> -#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT	BIT(6)
> +						/* mmu0 | mmu1 */
> +#define F_INT_TRANSLATION_FAULT			(BIT(0) | BIT(7))
> +#define F_INT_MAIN_MULTI_HIT_FAULT		(BIT(1) | BIT(8))
> +#define F_INT_INVALID_PA_FAULT			(BIT(2) | BIT(9))
> +#define F_INT_ENTRY_REPLACEMENT_FAULT		(BIT(3) | BIT(10))
> +#define F_INT_TLB_MISS_FAULT			(BIT(4) | BIT(11))
> +#define F_INT_MISS_TRANSACTION_FIFO_FAULT	(BIT(5) | BIT(12))
> +#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT	(BIT(6) | BIT(13))
>  
>  #define REG_MMU_CPE_DONE			0x12C
>  
>  #define REG_MMU_FAULT_ST1			0x134
> +#define F_REG_MMU0_FAULT_MASK			GENMASK(6, 0)
> +#define F_REG_MMU1_FAULT_MASK			GENMASK(13, 7)
>  
> -#define REG_MMU_FAULT_VA			0x13c
> +#define REG_MMU0_FAULT_VA			0x13c
>  #define F_MMU_FAULT_VA_WRITE_BIT		BIT(1)
>  #define F_MMU_FAULT_VA_LAYER_BIT		BIT(0)
>  
> -#define REG_MMU_INVLD_PA			0x140
> -#define REG_MMU_INT_ID				0x150
> -#define F_MMU0_INT_ID_LARB_ID(a)		(((a) >> 7) & 0x7)
> -#define F_MMU0_INT_ID_PORT_ID(a)		(((a) >> 2) & 0x1f)
> +#define REG_MMU0_INVLD_PA			0x140
> +#define REG_MMU1_FAULT_VA			0x144
> +#define REG_MMU1_INVLD_PA			0x148
> +#define REG_MMU0_INT_ID				0x150
> +#define REG_MMU1_INT_ID				0x154
> +#define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
> +#define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
>  
>  #define MTK_PROTECT_PA_ALIGN			128
>  
> @@ -210,13 +216,19 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
>  
>  	/* Read error info from registers */
>  	int_state = readl_relaxed(data->base + REG_MMU_FAULT_ST1);
> -	fault_iova = readl_relaxed(data->base + REG_MMU_FAULT_VA);
> +	if (int_state & F_REG_MMU0_FAULT_MASK) {
> +		regval = readl_relaxed(data->base + REG_MMU0_INT_ID);
> +		fault_iova = readl_relaxed(data->base + REG_MMU0_FAULT_VA);
> +		fault_pa = readl_relaxed(data->base + REG_MMU0_INVLD_PA);
> +	} else {
> +		regval = readl_relaxed(data->base + REG_MMU1_INT_ID);
> +		fault_iova = readl_relaxed(data->base + REG_MMU1_FAULT_VA);
> +		fault_pa = readl_relaxed(data->base + REG_MMU1_INVLD_PA);
> +	}
>  	layer = fault_iova & F_MMU_FAULT_VA_LAYER_BIT;
>  	write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
> -	fault_pa = readl_relaxed(data->base + REG_MMU_INVLD_PA);
> -	regval = readl_relaxed(data->base + REG_MMU_INT_ID);
> -	fault_larb = F_MMU0_INT_ID_LARB_ID(regval);
> -	fault_port = F_MMU0_INT_ID_PORT_ID(regval);
> +	fault_larb = F_MMU_INT_ID_LARB_ID(regval);
> +	fault_port = F_MMU_INT_ID_PORT_ID(regval);
>  
>  	fault_larb = data->plat_data->larbid_remap[fault_larb];
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

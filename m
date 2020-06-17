Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A762F1FC9BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YI9FyEdwoXfaykiP9Su5WlbgtDydwtFqNs22t9hnHUA=; b=MVoP/JDW0xqqeM
	i+NgVJVJYVCuO5tdUAG1U63Dp69ybzBYUynkFYY4zWWpCX+WeVqy6NnIPzKOULVkUoDf7xtwrRTBf
	F3gw30v3ukZyc1zY+xYdh3XR3OeD76lrsk5DIOiniRtgNN8KaJIIxmeMVzjqDv2Pm7oiZVwxRgBml
	Eb2UJpNFp1griHrN41c+fgCLh68ZDyHeVFEYQrMeHDasDSsmo9+YlL/y29muapVtJehPiHVLKCNN2
	mF9XYPjdDmC5nnektYhGIbHD0fK+eMJxuAps2dDw2sRf2Wgoyv2mTS/oFbtXqXQ3cuWtmWSNsxdK4
	ULw1oe9IIJOPz0q/hq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUGz-0008RK-Ts; Wed, 17 Jun 2020 09:22:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUGq-0008PY-Sj; Wed, 17 Jun 2020 09:22:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id j10so1513375wrw.8;
 Wed, 17 Jun 2020 02:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kfxw4viOo9xHcbH5mH1U6ZbWhiZFjiMZk/B4L2E+I+4=;
 b=ZH9pAMruZkjS3bqCwZVGFb4lI611L7p3+XBgt3XRX1QkcD1U/G3/mEUHIizvNOaDF1
 qJZqFI6cW/z6mGcYcjrf7JAWMkdmCM3QmcdhPbOkf3CL7eOqxrOxVF3qYceNNLxxOPHz
 1YhwZDaFXaC/+cLA8P2g6MNaa5mRHNijJ01tq1T1gOVrTFuiGTAWq26l0smq91CZbRc6
 gLpoSsdEXV6JDhtB8euyPuoDNbpW/P+fK0V/sPd5ojAOa/YPlJtvRJPAnUVjbAEC/NhU
 cSoJU2gZuqdtD0IV4qh+ABcP5D8n94LhsHf9q/F/kbnK9xw8pwU8BVMQXVXKwAdL/lTY
 sbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=kfxw4viOo9xHcbH5mH1U6ZbWhiZFjiMZk/B4L2E+I+4=;
 b=fn0CaPcFnXSVV0RplpaBn2Kr/Ni389MqRBfI9F1hZnFR38kP5+6k0kUU6MrqqUsJlr
 VPz+oOrsbOoZuS3fIjn6vYE/rJX3i0YbxRDiiAne7imVNAr/CJGb6ngQzcT9MzQO9vSP
 8VJEMJwnwFrCVzj/iCFcb3ZZJrxnZOwD1Y716Ph5/uZCe9hPDbU7jPGjFCPFSJ/cTPM4
 E4AHaBfmRSVzrWNMF//SGItrFGqp2QouctMdOrAP2/GZFyFJw6B790pYADnp81Q/vaHe
 HcCcokH+5mwGfFSV0XEJLd80N1fbSv/rmz04+jPZ2nEspAXSJMZ9vjH5rxt79YRKWsLu
 3acw==
X-Gm-Message-State: AOAM530CXEvE1AqunBuNh9NY0zJyfYw5YDpiTLnnyp0e1OLqHQbJBzCF
 Ihrrk0yYRLsao5zYvN78z0Y=
X-Google-Smtp-Source: ABdhPJz2Tqeo193mN8K9jbYhFs9vYbqa96pruYG6C4KaOth/SdQa5A4FBQywKM6MICLxO4olebed8w==
X-Received: by 2002:a5d:5449:: with SMTP id w9mr7578571wrv.106.1592385731654; 
 Wed, 17 Jun 2020 02:22:11 -0700 (PDT)
Received: from ziggy.stardust ([213.195.114.138])
 by smtp.gmail.com with ESMTPSA id u13sm7374040wmm.6.2020.06.17.02.22.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 02:22:10 -0700 (PDT)
Subject: Re: [PATCH v4 6/7] iommu/mediatek: Add REG_MMU_WR_LEN definition
 preparing for mt6779
To: Chao Hao <chao.hao@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
 <20200617030029.4082-7-chao.hao@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9e2c52d6-a887-1977-8877-fbcd30cb4261@gmail.com>
Date: Wed, 17 Jun 2020 11:22:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617030029.4082-7-chao.hao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_022212_954004_F5E0B1A8 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/06/2020 05:00, Chao Hao wrote:
> Some platforms(ex: mt6779) have a new register called by REG_MMU_WR_LEN
> to improve performance.
> This patch add this register definition.

Please be more specific what this register is about.

> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 10 ++++++++++
>  drivers/iommu/mtk_iommu.h |  2 ++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index a687e8db0e51..c706bca6487e 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -46,6 +46,8 @@
>  #define F_MMU_STANDARD_AXI_MODE_BIT		(BIT(3) | BIT(19))
>  
>  #define REG_MMU_DCM_DIS				0x050
> +#define REG_MMU_WR_LEN				0x054
> +#define F_MMU_WR_THROT_DIS_BIT			(BIT(5) |  BIT(21))
>  
>  #define REG_MMU_CTRL_REG			0x110
>  #define F_MMU_TF_PROT_TO_PROGRAM_ADDR		(2 << 4)
> @@ -581,6 +583,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>  		writel_relaxed(regval, data->base + REG_MMU_VLD_PA_RNG);
>  	}
>  	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
> +	if (data->plat_data->has_wr_len) {
> +		/* write command throttling mode */
> +		regval = readl_relaxed(data->base + REG_MMU_WR_LEN);
> +		regval &= ~F_MMU_WR_THROT_DIS_BIT;
> +		writel_relaxed(regval, data->base + REG_MMU_WR_LEN);
> +	}
>  
>  	if (data->plat_data->reset_axi) {
>  		/* The register is called STANDARD_AXI_MODE in this case */
> @@ -737,6 +745,7 @@ static int __maybe_unused mtk_iommu_suspend(struct device *dev)
>  	struct mtk_iommu_suspend_reg *reg = &data->reg;
>  	void __iomem *base = data->base;
>  
> +	reg->wr_len = readl_relaxed(base + REG_MMU_WR_LEN);

Can we read/write the register without any side effect although hardware has not
implemented it (!has_wr_len)?


>  	reg->misc_ctrl = readl_relaxed(base + REG_MMU_MISC_CTRL);
>  	reg->dcm_dis = readl_relaxed(base + REG_MMU_DCM_DIS);
>  	reg->ctrl_reg = readl_relaxed(base + REG_MMU_CTRL_REG);
> @@ -761,6 +770,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
>  		dev_err(data->dev, "Failed to enable clk(%d) in resume\n", ret);
>  		return ret;
>  	}
> +	writel_relaxed(reg->wr_len, base + REG_MMU_WR_LEN);
>  	writel_relaxed(reg->misc_ctrl, base + REG_MMU_MISC_CTRL);
>  	writel_relaxed(reg->dcm_dis, base + REG_MMU_DCM_DIS);
>  	writel_relaxed(reg->ctrl_reg, base + REG_MMU_CTRL_REG);
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index d51ff99c2c71..9971cedd72ea 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -25,6 +25,7 @@ struct mtk_iommu_suspend_reg {
>  	u32				int_main_control;
>  	u32				ivrp_paddr;
>  	u32				vld_pa_rng;
> +	u32				wr_len;
>  };
>  
>  enum mtk_iommu_plat {
> @@ -43,6 +44,7 @@ struct mtk_iommu_plat_data {
>  	bool		    has_misc_ctrl;
>  	bool		    has_sub_comm;
>  	bool                has_vld_pa_rng;
> +	bool                has_wr_len;

Given the fact that we are adding more and more plat_data bool values, I think
it would make sense to use a u32 flags register and add the appropriate macro
definitions to set and check for a flag present.

Regards,
Matthias

>  	bool                reset_axi;
>  	u32                 inv_sel_reg;
>  	unsigned char       larbid_remap[8][4];
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

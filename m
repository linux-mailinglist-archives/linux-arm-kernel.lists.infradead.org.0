Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A6F11F519
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 00:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NxOTD0+ys5hzE9j3iReyTkl4QZmTRYXpCoGM659Iy0=; b=AjkjodYdRuoFPJ
	kXutRRboefmu9wolZQPVllotFgN2iIl/+lm5difPC/LKje3xH/jAv3ndFDFgilKkeQrxWnd8GxjDJ
	3WpmFmnWj5nzGqmgb583DRj3mSCjcO02BbQXKW2CRaMNuX0WpjeL4zaFsZYYKP7vta5GuO+1M3QOd
	HtMvvoeD73pCVEjdMxTusewFXJcIOD+yz636a2dHa+LO3PFf7wB+9/q9/kldQL5gCaClH7ckdvy3M
	TcrriL4kIhbzMIcFe1oPBNFXyr+tLTPGeMikvF7Zrx29lgTgxMxrRkplGbaC2pf8GPvnTRKCJL/fb
	kaG9DAUlqFely7b6Gclg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igH1x-0003Zh-MV; Sat, 14 Dec 2019 23:41:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igH1l-0003XG-Eu; Sat, 14 Dec 2019 23:40:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so2695604wmb.0;
 Sat, 14 Dec 2019 15:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HK4ZUk2RrQbJn9u/ZAGcwGNg99C7gN0OBa5d5+v6ey4=;
 b=r5hCX8z/38dPb5myme7epOIigAdO+zD5iP/de51ZhIKk/n0KMmwHEM9rtiFL9c0fII
 PSFGcAdJVH8PeUiWc9UjSC9Vmgp4CDCbjLYRjHtzURBgjwN2JTdhk2LtzEek5gajoJPI
 6/IyEkG3i2d+ScHxjOSWeB0/iHkFYhPgc2zLEQg/onuKyI0buFZ5mmzYjc0E940eWayE
 MkCxWFszc/b1PbhrYt4rNm2bhKTkQoycGKJWrlh+BQwpNyG6ZE2q8L1rXoVbVLotAFKb
 Sp2eWNwjy9krShe2fYFP63UyqqWCe4vrB3Znv6ebUsBIOVjnPT+RKgHJtMS1R9rnJjlu
 auNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HK4ZUk2RrQbJn9u/ZAGcwGNg99C7gN0OBa5d5+v6ey4=;
 b=jsqwKrDx8fysyNd545hdYhC4SbO6+2GcXE7Gp7AeCJIUBQtXNjeBKUCSZOmA7TIfrr
 2aFxlZylw6b6BVYkibUUVqnIivDxtrMwO0IQMZcFMm/mdTLF59abK1vhfVhigG7GAjbr
 UqYRpEivPiZ1PoiMxE6xncMvWS4Q99QaoFbbWvAwU5GLtTvWnHP8qQuYYqN4SzOBjJUN
 1SY7hg0S6YAQY1Mr4gXkYqgIbM394TzwsCVbh8Vt6cUIvPz9Vr0SeSfjuPnP61KtsT0K
 /FpJ7wuWBEF4Wm6DlPJ2T6CWTbQR2f1RUfhp8FJjvr3O3t4AIL4kItDClcM2l/6kNv1i
 2MFA==
X-Gm-Message-State: APjAAAWh/ewNrfp1fsl8t8jgt0QigNVnapt1Ztklv5a+Ft1RisuzavWi
 rLOU3Ku7PYt05J61UYcg8qY=
X-Google-Smtp-Source: APXvYqxoPqTJIx5C5j0+yQRP9NWOQKspY2Cnh9arhNt/uS4XxdfYvtt1/ywSyupEAX8C5roQzCYbvA==
X-Received: by 2002:a1c:f60f:: with SMTP id w15mr21165036wmc.132.1576366847786; 
 Sat, 14 Dec 2019 15:40:47 -0800 (PST)
Received: from ziggy.stardust ([95.169.225.199])
 by smtp.gmail.com with ESMTPSA id m7sm15443988wma.39.2019.12.14.15.40.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Dec 2019 15:40:47 -0800 (PST)
Subject: Re: [PATCH v6 6/8] soc: mediatek: add MT6765 scpsys and subdomain
 support
To: Macpaul Lin <macpaul.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
 Marc Zyngier <marc.zyngier@arm.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Stephen Boyd <sboyd@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
 <1562924653-10056-7-git-send-email-macpaul.lin@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <bdadcb15-7bbc-11a9-5780-edcb984b051a@gmail.com>
Date: Sun, 15 Dec 2019 00:40:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1562924653-10056-7-git-send-email-macpaul.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_154049_501408_1C49A394 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-serial@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/07/2019 11:43, Macpaul Lin wrote:
> From: Mars Cheng <mars.cheng@mediatek.com>
> 
> This adds scpsys support for MT6765
> Add subdomain support for MT6765:
> isp, mm, connsys, mfg, and cam.
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>

Applied to v5.5-next/soc

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 130 ++++++++++++++++++++++++++++++
>  1 file changed, 130 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index ea5a221a16e9..ff124c514e9c 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -16,6 +16,7 @@
>  
>  #include <dt-bindings/power/mt2701-power.h>
>  #include <dt-bindings/power/mt2712-power.h>
> +#include <dt-bindings/power/mt6765-power.h>
>  #include <dt-bindings/power/mt6797-power.h>
>  #include <dt-bindings/power/mt7622-power.h>
>  #include <dt-bindings/power/mt7623a-power.h>
> @@ -869,6 +870,120 @@ static const struct scp_subdomain scp_subdomain_mt2712[] = {
>  	{MT2712_POWER_DOMAIN_MFG_SC2, MT2712_POWER_DOMAIN_MFG_SC3},
>  };
>  
> +/*
> + * MT6765 power domain support
> + */
> +#define SPM_PWR_STATUS_MT6765			0x0180
> +#define SPM_PWR_STATUS_2ND_MT6765		0x0184
> +
> +static const struct scp_domain_data scp_domain_data_mt6765[] = {
> +	[MT6765_POWER_DOMAIN_VCODEC] = {
> +		.name = "vcodec",
> +		.sta_mask = BIT(26),
> +		.ctl_offs = 0x300,
> +		.sram_pdn_bits = GENMASK(8, 8),
> +		.sram_pdn_ack_bits = GENMASK(12, 12),
> +	},
> +	[MT6765_POWER_DOMAIN_ISP] = {
> +		.name = "isp",
> +		.sta_mask = BIT(5),
> +		.ctl_offs = 0x308,
> +		.sram_pdn_bits = GENMASK(8, 8),
> +		.sram_pdn_ack_bits = GENMASK(12, 12),
> +		.subsys_clk_prefix = "isp",
> +		.bp_table = {
> +			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
> +				BIT(20), BIT(20)),
> +			BUS_PROT(SMI_TYPE, 0x3C4, 0x3C8, 0, 0x3C0,
> +				BIT(2), BIT(2)),
> +		},
> +	},
> +	[MT6765_POWER_DOMAIN_MM] = {
> +		.name = "mm",
> +		.sta_mask = BIT(3),
> +		.ctl_offs = 0x30C,
> +		.sram_pdn_bits = GENMASK(8, 8),
> +		.sram_pdn_ack_bits = GENMASK(12, 12),
> +		.basic_clk_id = {"mm"},
> +		.subsys_clk_prefix = "mm",
> +		.bp_table = {
> +			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
> +				BIT(16) | BIT(17), BIT(16) | BIT(17)),
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(10) | BIT(11), BIT(10) | BIT(11)),
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(1) | BIT(2), BIT(1) | BIT(2)),
> +		},
> +	},
> +	[MT6765_POWER_DOMAIN_CONN] = {
> +		.name = "conn",
> +		.sta_mask = BIT(1),
> +		.ctl_offs = 0x32C,
> +		.sram_pdn_bits = 0,
> +		.sram_pdn_ack_bits = 0,
> +		.bp_table = {
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(13), BIT(13)),
> +			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
> +				BIT(18), BIT(18)),
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(14) | BIT(16), BIT(14) | BIT(16)),
> +		},
> +	},
> +	[MT6765_POWER_DOMAIN_MFG_ASYNC] = {
> +		.name = "mfg_async",
> +		.sta_mask = BIT(23),
> +		.ctl_offs = 0x334,
> +		.sram_pdn_bits = 0,
> +		.sram_pdn_ack_bits = 0,
> +		.basic_clk_id = {"mfg"},
> +	},
> +	[MT6765_POWER_DOMAIN_MFG] = {
> +		.name = "mfg",
> +		.sta_mask = BIT(4),
> +		.ctl_offs = 0x338,
> +		.sram_pdn_bits = GENMASK(8, 8),
> +		.sram_pdn_ack_bits = GENMASK(12, 12),
> +		.bp_table = {
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(25), BIT(25)),
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(21) | BIT(22), BIT(21) | BIT(22)),
> +		}
> +	},
> +	[MT6765_POWER_DOMAIN_CAM] = {
> +		.name = "cam",
> +		.sta_mask = BIT(25),
> +		.ctl_offs = 0x344,
> +		.sram_pdn_bits = GENMASK(8, 9),
> +		.sram_pdn_ack_bits = GENMASK(12, 13),
> +		.subsys_clk_prefix = "cam",
> +		.bp_table = {
> +			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
> +				BIT(19) | BIT(21), BIT(19) | BIT(21)),
> +			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
> +				BIT(20), BIT(20)),
> +			BUS_PROT(SMI_TYPE, 0x3C4, 0x3C8, 0, 0x3C0,
> +				BIT(3), BIT(3)),
> +		}
> +	},
> +	[MT6765_POWER_DOMAIN_MFG_CORE0] = {
> +		.name = "mfg_core0",
> +		.sta_mask = BIT(7),
> +		.ctl_offs = 0x34C,
> +		.sram_pdn_bits = GENMASK(8, 8),
> +		.sram_pdn_ack_bits = GENMASK(12, 12),
> +	},
> +};
> +
> +static const struct scp_subdomain scp_subdomain_mt6765[] = {
> +	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_CAM},
> +	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_ISP},
> +	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_VCODEC},
> +	{MT6765_POWER_DOMAIN_MFG_ASYNC, MT6765_POWER_DOMAIN_MFG},
> +	{MT6765_POWER_DOMAIN_MFG, MT6765_POWER_DOMAIN_MFG_CORE0},
> +};
> +
>  /*
>   * MT6797 power domain support
>   */
> @@ -1363,6 +1478,18 @@ static const struct scp_soc_data mt2712_data = {
>  	.bus_prot_reg_update = false,
>  };
>  
> +static const struct scp_soc_data mt6765_data = {
> +	.domains = scp_domain_data_mt6765,
> +	.num_domains = ARRAY_SIZE(scp_domain_data_mt6765),
> +	.subdomains = scp_subdomain_mt6765,
> +	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt6765),
> +	.regs = {
> +		.pwr_sta_offs = SPM_PWR_STATUS_MT6765,
> +		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6765,
> +	},
> +	.bus_prot_reg_update = true,
> +};
> +
>  static const struct scp_soc_data mt6797_data = {
>  	.domains = scp_domain_data_mt6797,
>  	.num_domains = ARRAY_SIZE(scp_domain_data_mt6797),
> @@ -1429,6 +1556,9 @@ static const struct of_device_id of_scpsys_match_tbl[] = {
>  	}, {
>  		.compatible = "mediatek,mt2712-scpsys",
>  		.data = &mt2712_data,
> +	}, {
> +		.compatible = "mediatek,mt6765-scpsys",
> +		.data = &mt6765_data,
>  	}, {
>  		.compatible = "mediatek,mt6797-scpsys",
>  		.data = &mt6797_data,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

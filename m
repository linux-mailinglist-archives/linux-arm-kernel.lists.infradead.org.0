Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D847CB24C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 01:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaoOykmG0tQ3BLzIDU4iQuK0wKvmdjDg/x1GQSZ1Qeg=; b=ZswJgsG9AnH2bu
	Prapy+1ZfEfdg3WpC6j7z8vOqBFW0dY7wB6Heb9Oxe2grjObKVlOv9IoXCwqVg5fsQpRfCdcZs2/8
	X9z4S1AvBF/C/puZeeARlc+yxS1l86UBgSCBxZYhgmBWeoAlC4WJ1niQqUnGPUfKYKrvto9z6MO+D
	I2zipTsNprcEGBZwwEJ46EYGbu1THHnk6A52Esai30gbDw940o2NQx7N52BIDHXg9C1tymUHK9gfS
	rGdyZtCA/e1vnmQfSzH0uyCVqxuk10j6to9kvbO9Y87BrMvRQNHwU1/JGguJ8EsVsFk4zeYnnxj9J
	RuFAEkX2f1JPGQCDZrZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGAUx-0004kj-Jn; Thu, 03 Oct 2019 23:27:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGAUp-0004je-D8; Thu, 03 Oct 2019 23:26:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id t3so4145455edw.13;
 Thu, 03 Oct 2019 16:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FTLgATmTWv/zNxABwlYyQkiKNanDCIqzxBnW1Vlpo/U=;
 b=gUbPbH4oExlhECCoT9/mDF/OmORNii20BEU2LUb0Dp8kN3PWI5+SSoMTuUIJVzYhhX
 SSBQ5NVbTTkmxzH56vwaQnkWn9c2l7FMiNEA2V30K4r325PSNhasok7G7SRCXrmsQAGe
 9r0CyJ71bQjSTHOyO+26tn+uOt3Vo+8PRE+BhBHeywwpfpqSHCLbvj7guGApaT5uq8xA
 lPeTDzSJacxsxpwNFhfFBvkbfg1YvPNhURXmT6gpf4tXwUKXzCe+TJ8z1YcOyFe0hOlb
 Y+1C1xdJ/B3rC57Gkt2bIz5Hl8Xkn3704SRG7HE3z/pCn1JFKkS+0avmjom0ZTM0kbhH
 1dRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FTLgATmTWv/zNxABwlYyQkiKNanDCIqzxBnW1Vlpo/U=;
 b=pETU7R7bzsgme/+YQg6r9YdOCPQ90Ca6GdNBi1w2Lp5n/CmTGASf/gRHJw69n+Guoc
 mUMt96/OIh6hdTg5RNIQgG4GiiFh2Yhv2p/7tEMi0SCiiYDEWRnZwSj0El05IaW4+luT
 MmK5BWDXLUeyJvllTd8vCeecqTnEGyVxkEXk6cHdKGwRd31DZ80XCVG7LfKaNOiJUvnB
 nTmf9Q6mNRatEIlfCDtf+T9iT0Rks2bKBmZOARtBt5OrNkUEnJYEKXdcy6AiZIx5DtVO
 bYd4YxJicOU+oSKWY2FS6swHUrOjrutFoWBFfBlNAMb3U62U2WtCDfS5h0BYNDyJ9B0H
 753g==
X-Gm-Message-State: APjAAAXiIvJ2uMm3nj4G1Krd871mnSqRnEEeg7x9pfiG93T7Dp+gZBgx
 VzRxm5m/E11iOfs37H09rUb+hkqIopA=
X-Google-Smtp-Source: APXvYqxBM7lB4qowA3OCwsBdqHqmyG9VTrVDpMQ+S8oPNPPQUCBNqzitL7DV0NGUa0fO7rCU8NZ4Vg==
X-Received: by 2002:a50:d718:: with SMTP id t24mr12190245edi.168.1570145211403; 
 Thu, 03 Oct 2019 16:26:51 -0700 (PDT)
Received: from ziggy.stardust ([95.169.226.6])
 by smtp.gmail.com with ESMTPSA id s9sm393971ejf.44.2019.10.03.16.26.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 16:26:50 -0700 (PDT)
Subject: Re: [PATCH 2/3] soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
To: Argus Lin <argus.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-3-git-send-email-argus.lin@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <b2f881e2-959e-eccf-e62e-54c510608aaa@gmail.com>
Date: Fri, 4 Oct 2019 01:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570088901-23211-3-git-send-email-argus.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_162655_473168_858B5150 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Chenglin Xu <chenglin.xu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-mediatek@lists.infradead.org, Chen Zhong <chen.zhong@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/10/2019 09:48, Argus Lin wrote:
> MT6779 is a highly integrated SoCs, it uses MT6359 for power
> management. This patch adds pwrap driver to access MT6359.
> Pwrap of MT6779 support dynamic priority meichanism, sequence

mechanism

> monitor and starvation mechanism to make transaction more
> reliable. WDT setting only need to init when it is zero,
> otherwise keep current value. When setting interrupt enable

that's mt6779 specific?

> flag at pwrap_probe, read current setting then do logical OR
> operation with wrp->master->int_en_all.

same here, only specific to mt6779?

> 
> Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-pmic-wrap.c | 85 ++++++++++++++++++++++++++++++++----
>  1 file changed, 77 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> index c725315..fa8daf2 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> @@ -497,6 +497,45 @@ enum pwrap_regs {
>  	[PWRAP_DCM_DBC_PRD] =		0x1E0,
>  };
> 
> +static int mt6779_regs[] = {
> +	[PWRAP_MUX_SEL] =		0x0,
> +	[PWRAP_WRAP_EN] =		0x4,
> +	[PWRAP_DIO_EN] =		0x8,
> +	[PWRAP_RDDMY] =			0x20,
> +	[PWRAP_CSHEXT_WRITE] =		0x24,
> +	[PWRAP_CSHEXT_READ] =		0x28,
> +	[PWRAP_CSLEXT_WRITE] =		0x2C,
> +	[PWRAP_CSLEXT_READ] =		0x30,
> +	[PWRAP_EXT_CK_WRITE] =		0x34,
> +	[PWRAP_STAUPD_CTRL] =		0x3C,
> +	[PWRAP_STAUPD_GRPEN] =		0x40,
> +	[PWRAP_EINT_STA0_ADR] =		0x44,
> +	[PWRAP_HARB_HPRIO] =		0x68,
> +	[PWRAP_HIPRIO_ARB_EN] =		0x6C,
> +	[PWRAP_MAN_EN] =		0x7C,
> +	[PWRAP_MAN_CMD] =		0x80,
> +	[PWRAP_WACS0_EN] =		0x8C,
> +	[PWRAP_WACS1_EN] =		0x94,
> +	[PWRAP_WACS2_EN] =		0x9C,
> +	[PWRAP_INIT_DONE0] =		0x90,
> +	[PWRAP_INIT_DONE1] =		0x98,
> +	[PWRAP_INIT_DONE2] =		0xA0,
> +	[PWRAP_INT_EN] =		0xBC,
> +	[PWRAP_INT_FLG_RAW] =		0xC0,
> +	[PWRAP_INT_FLG] =		0xC4,
> +	[PWRAP_INT_CLR] =		0xC8,
> +	[PWRAP_INT1_EN] =		0xCC,
> +	[PWRAP_INT1_FLG] =		0xD4,
> +	[PWRAP_INT1_CLR] =		0xD8,
> +	[PWRAP_TIMER_EN] =		0xF0,
> +	[PWRAP_WDT_UNIT] =		0xF8,
> +	[PWRAP_WDT_SRC_EN] =		0xFC,
> +	[PWRAP_WDT_SRC_EN_1] =		0x100,
> +	[PWRAP_WACS2_CMD] =		0xC20,
> +	[PWRAP_WACS2_RDATA] =		0xC24,
> +	[PWRAP_WACS2_VLDCLR] =		0xC28,
> +};
> +
>  static int mt6797_regs[] = {
>  	[PWRAP_MUX_SEL] =		0x0,
>  	[PWRAP_WRAP_EN] =		0x4,
> @@ -945,6 +984,7 @@ enum pmic_type {
>  enum pwrap_type {
>  	PWRAP_MT2701,
>  	PWRAP_MT6765,
> +	PWRAP_MT6779,
>  	PWRAP_MT6797,
>  	PWRAP_MT7622,
>  	PWRAP_MT8135,
> @@ -1377,6 +1417,7 @@ static int pwrap_init_cipher(struct pmic_wrapper *wrp)
>  		break;
>  	case PWRAP_MT2701:
>  	case PWRAP_MT6765:
> +	case PWRAP_MT6779:
>  	case PWRAP_MT6797:
>  	case PWRAP_MT8173:
>  	case PWRAP_MT8516:
> @@ -1468,8 +1509,10 @@ static int pwrap_init_security(struct pmic_wrapper *wrp)
>  	pwrap_writel(wrp, 0x0, PWRAP_SIG_MODE);
>  	pwrap_writel(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_VAL],
>  		     PWRAP_SIG_ADR);
> -	pwrap_writel(wrp,
> -		     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {

Did you make sure that this holds for all SoCs that are supported by the driver?
If so, why do we need this in mt6779 and didn't need that in the others?
Even more, mt6779 does not have the security capbaility, so why do you change
this code?

> +		pwrap_writel(wrp,
> +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> +	}

I just realize that we write PWRAP_HIPRIO_ARB_EN twice if the slave supports
security. Do we really need that?

> 
>  	return 0;
>  }
> @@ -1581,7 +1624,10 @@ static int pwrap_init(struct pmic_wrapper *wrp)
> 
>  	pwrap_writel(wrp, 1, PWRAP_WRAP_EN);
> 
> -	pwrap_writel(wrp, wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {
> +		pwrap_writel(wrp,
> +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> +	}
> 
>  	pwrap_writel(wrp, 1, PWRAP_WACS2_EN);
> 
> @@ -1783,6 +1829,19 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>  	.init_soc_specific = NULL,
>  };
> 
> +static const struct pmic_wrapper_type pwrap_mt6779 = {
> +	.regs = mt6779_regs,
> +	.type = PWRAP_MT6779,
> +	.arb_en_all = 0,
> +	.int_en_all = 0,
> +	.int1_en_all = 0,
> +	.spi_w = PWRAP_MAN_CMD_SPI_WRITE,
> +	.wdt_src = 0,
> +	.caps = 0,
> +	.init_reg_clock = pwrap_common_init_reg_clock,
> +	.init_soc_specific = NULL,
> +};
> +
>  static const struct pmic_wrapper_type pwrap_mt6797 = {
>  	.regs = mt6797_regs,
>  	.type = PWRAP_MT6797,
> @@ -1868,6 +1927,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>  		.compatible = "mediatek,mt6765-pwrap",
>  		.data = &pwrap_mt6765,
>  	}, {
> +		.compatible = "mediatek,mt6779-pwrap",
> +		.data = &pwrap_mt6779,
> +	}, {
>  		.compatible = "mediatek,mt6797-pwrap",
>  		.data = &pwrap_mt6797,
>  	}, {
> @@ -1898,6 +1960,7 @@ static int pwrap_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	const struct of_device_id *of_slave_id = NULL;
>  	struct resource *res;
> +	u32 int_en;
> 
>  	if (np->child)
>  		of_slave_id = of_match_node(of_slave_match_tbl, np->child);
> @@ -1995,23 +2058,29 @@ static int pwrap_probe(struct platform_device *pdev)
>  	}
> 
>  	/* Initialize watchdog, may not be done by the bootloader */
> -	pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
> +	if (pwrap_readl(wrp, PWRAP_WDT_UNIT) == 0)

Same here, why do we need it in mt6779 and did you test if it does not break any
older SoC?

> +		pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
>  	/*
>  	 * Since STAUPD was not used on mt8173 platform,
>  	 * so STAUPD of WDT_SRC which should be turned off
>  	 */
> -	pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
> +	if (pwrap_readl(wrp, PWRAP_WDT_SRC_EN) == 0)
> +		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
>  	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_WDT_SRC1))
>  		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN_1);
> 
>  	pwrap_writel(wrp, 0x1, PWRAP_TIMER_EN);
> -	pwrap_writel(wrp, wrp->master->int_en_all, PWRAP_INT_EN);
> +	int_en = pwrap_readl(wrp, PWRAP_INT_EN);
> +	pwrap_writel(wrp, (int_en) | (wrp->master->int_en_all), PWRAP_INT_EN);

Looks ok to me, is it a bug fix, or only needed for mt6779?

>  	/*
>  	 * We add INT1 interrupt to handle starvation and request exception
>  	 * If we support it, we should enable it here.
>  	 */
> -	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN))
> -		pwrap_writel(wrp, wrp->master->int1_en_all, PWRAP_INT1_EN);
> +	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN)) {
> +		int_en = pwrap_readl(wrp, PWRAP_INT1_EN);
> +		pwrap_writel(wrp, (int_en) | wrp->master->int1_en_all,
> +			     PWRAP_INT1_EN);
> +	}
> 
>  	irq = platform_get_irq(pdev, 0);
>  	ret = devm_request_irq(wrp->dev, irq, pwrap_interrupt,
> --
> 1.8.1.1.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

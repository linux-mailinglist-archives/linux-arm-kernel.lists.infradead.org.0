Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAD1F6AE7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 19:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4etlISIKv7/DlNa642mHMLLBGTKfnad3KztTNucUSOI=; b=S6wazuFdvr1ffp
	lXSiao1cUlmm5lmMiBbn/iGfhELBao0rhbO3lJyFozpn9xdmirtYCnpmAoxIGz5aXhxbZyZ16MbJC
	qhj8pgwlRK2Z/R4qrZPqasj5TYISYmkmY3cIS1SQu0BZg29ovjucQHCc1G7AdHxkKW6Xk3iCt938r
	NxZ0U9IYTUx3ABpGvMOKLUzaD51c4Qce21N9R5ew9SjEoyGBn/XVoHKgSLEtVZY0koy7I41/IlGDZ
	sr0p46AJiRp5cA20tNSFX5vjbVZLqly/551y3sE22aqrxJDF6p8+O0jaJ9tx154kJ3rhGunq56VT4
	JUa4kZ9IzFYnYa4iwvvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTsFY-00027O-Oo; Sun, 10 Nov 2019 18:47:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTsFK-00024p-NM; Sun, 10 Nov 2019 18:47:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so11073648wme.1;
 Sun, 10 Nov 2019 10:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gBMxX7bvC1MO8wNO3MhM7n7vRAgCv1NW8GyQ+Y9eEF4=;
 b=Tf7QdASrr9/RSpTHdTOeZvsaNIH4QzrdPFVM9hIpOMPRL7U9Qw6KoBvIxzsAjknygE
 06xBBQdoATmfW7+sIkULtXtmd/mt7E/R6VV5fAfdHcCAwHh4pg9y0PlCOz13CUwcvowT
 Of+lHEyfCqQStkyhT//lSVUr2UW1B2qqusCDI47CsPRxvlQDufjun0t0qwWZ3X5EK2US
 UDNdcsPyDVNpvciq2aR/6T1VmewRZlu5WTeoKKANvHvf5qaF8ee0UdS2iwx3D3f+nr3T
 A/NGkWCH3TaEPKBPGmdS81FJaFoDEB+wYWipr+0+iSFujYy3sMtV529wI7+d3PmVzZbw
 3JNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=gBMxX7bvC1MO8wNO3MhM7n7vRAgCv1NW8GyQ+Y9eEF4=;
 b=NfU8jyonFD0vEN0iypMicyo/E2PCaeMaGVqt/lZOJuAS2Ndj6UnD7voNCc+klvpzXX
 da1Sb0mSKlsuEivzRzbBQKfQgfyvODTieTVi0pgEdf08vmtOY7apww6wM+7jsUIAAaVY
 JFNaGfahlff0Xtjlg7uxNvIkA2Y5aKVOPMy+iYdhEC8QHBICUt8o9C/bn+e4bwVRRR93
 r85g+w2/twwIqxqeZjRFvoe9KyREpDVPyyHeLcavrAK60RUBfYZlLmAkUF0owVjmJaLn
 w0GnaHC1I2ReuXq6lnTV7MRxhiSySpzpPXyAJr2xbXkuivyFCP93bZUTErRkZ7sp3TrB
 y7rw==
X-Gm-Message-State: APjAAAX51mYYWyaRR2AvDFEqO/Ml+oaYEDYDyKMk5zoKYAzpzjn9oSG9
 DDUSvDd1WliC7qxftGzjNx9G8FSGvpI=
X-Google-Smtp-Source: APXvYqyqSOytsLUyXfOK4VzO/3X0ZnefmlSDFm/utIICKphWzgzWcYlkZAAjt/enFEfoloWFD1YUww==
X-Received: by 2002:a05:600c:20e:: with SMTP id
 14mr16490375wmi.107.1573411649579; 
 Sun, 10 Nov 2019 10:47:29 -0800 (PST)
Received: from ziggy.stardust ([95.169.226.39])
 by smtp.gmail.com with ESMTPSA id b17sm12834792wrr.37.2019.11.10.10.47.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Nov 2019 10:47:28 -0800 (PST)
Subject: Re: [PATCH 2/3] soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
To: Argus Lin <argus.lin@mediatek.com>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-3-git-send-email-argus.lin@mediatek.com>
 <b2f881e2-959e-eccf-e62e-54c510608aaa@gmail.com>
 <1571033065.19600.23.camel@mtkswgap22>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <daa0340e-57fd-d6be-8ba1-1618ecf3be5e@gmail.com>
Date: Sun, 10 Nov 2019 19:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1571033065.19600.23.camel@mtkswgap22>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_104734_792436_378D30CB 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, Chenglin Xu <chenglin.xu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-mediatek@lists.infradead.org, Chen Zhong <chen.zhong@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14/10/2019 08:04, Argus Lin wrote:
> On Fri, 2019-10-04 at 01:26 +0200, Matthias Brugger wrote:
>>
>> On 03/10/2019 09:48, Argus Lin wrote:
>>> MT6779 is a highly integrated SoCs, it uses MT6359 for power
>>> management. This patch adds pwrap driver to access MT6359.
>>> Pwrap of MT6779 support dynamic priority meichanism, sequence
>>
>> mechanism
> I will fix it.
>>
>>> monitor and starvation mechanism to make transaction more
>>> reliable. WDT setting only need to init when it is zero,
>>> otherwise keep current value. When setting interrupt enable
>>
>> that's mt6779 specific?
> It is common code. The PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN default value
> is zero. Different project can have different value, I think we can
> check if it has been initialized.
> 
> Two methods execute pwrap_init at different product line.
> 1. at bootloader(Smart phone/Tablet/Auto)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN has been initialized at bootloader,
> we don't need to initialize it at kernel again.
> 2. at kernel(Some specific Tablet)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN is zero, just initialize them at
> kernel.
> 

Well normally what we do at kernel level, we just initialize the devices with
the needed value, even if it already was initialized by the bootloader. Does
this break anything if we initialize the device a second time? The reason behind
this is, that it makes the driver easier to read and independent from any
bootloader changes.

>>
>>> flag at pwrap_probe, read current setting then do logical OR
>>> operation with wrp->master->int_en_all.
>>
>> same here, only specific to mt6779?
> same reason like why check WDT_UNIT == 0. What we do in the past is to
> overwrite pwrap_int_en use the same value at bootloader.
> If pwrap_int_en has been initialized, it is better to read current
> value, OR new value at kernel then write new one.
>>
>>>
>>> Signed-off-by: Argus Lin <argus.lin@mediatek.com>
>>> ---
>>>  drivers/soc/mediatek/mtk-pmic-wrap.c | 85 ++++++++++++++++++++++++++++++++----
>>>  1 file changed, 77 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
>>> index c725315..fa8daf2 100644
>>> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
>>> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
>>> @@ -497,6 +497,45 @@ enum pwrap_regs {
>>>  	[PWRAP_DCM_DBC_PRD] =		0x1E0,
>>>  };
>>>
>>> +static int mt6779_regs[] = {
>>> +	[PWRAP_MUX_SEL] =		0x0,
>>> +	[PWRAP_WRAP_EN] =		0x4,
>>> +	[PWRAP_DIO_EN] =		0x8,
>>> +	[PWRAP_RDDMY] =			0x20,
>>> +	[PWRAP_CSHEXT_WRITE] =		0x24,
>>> +	[PWRAP_CSHEXT_READ] =		0x28,
>>> +	[PWRAP_CSLEXT_WRITE] =		0x2C,
>>> +	[PWRAP_CSLEXT_READ] =		0x30,
>>> +	[PWRAP_EXT_CK_WRITE] =		0x34,
>>> +	[PWRAP_STAUPD_CTRL] =		0x3C,
>>> +	[PWRAP_STAUPD_GRPEN] =		0x40,
>>> +	[PWRAP_EINT_STA0_ADR] =		0x44,
>>> +	[PWRAP_HARB_HPRIO] =		0x68,
>>> +	[PWRAP_HIPRIO_ARB_EN] =		0x6C,
>>> +	[PWRAP_MAN_EN] =		0x7C,
>>> +	[PWRAP_MAN_CMD] =		0x80,
>>> +	[PWRAP_WACS0_EN] =		0x8C,
>>> +	[PWRAP_WACS1_EN] =		0x94,
>>> +	[PWRAP_WACS2_EN] =		0x9C,
>>> +	[PWRAP_INIT_DONE0] =		0x90,
>>> +	[PWRAP_INIT_DONE1] =		0x98,
>>> +	[PWRAP_INIT_DONE2] =		0xA0,
>>> +	[PWRAP_INT_EN] =		0xBC,
>>> +	[PWRAP_INT_FLG_RAW] =		0xC0,
>>> +	[PWRAP_INT_FLG] =		0xC4,
>>> +	[PWRAP_INT_CLR] =		0xC8,
>>> +	[PWRAP_INT1_EN] =		0xCC,
>>> +	[PWRAP_INT1_FLG] =		0xD4,
>>> +	[PWRAP_INT1_CLR] =		0xD8,
>>> +	[PWRAP_TIMER_EN] =		0xF0,
>>> +	[PWRAP_WDT_UNIT] =		0xF8,
>>> +	[PWRAP_WDT_SRC_EN] =		0xFC,
>>> +	[PWRAP_WDT_SRC_EN_1] =		0x100,
>>> +	[PWRAP_WACS2_CMD] =		0xC20,
>>> +	[PWRAP_WACS2_RDATA] =		0xC24,
>>> +	[PWRAP_WACS2_VLDCLR] =		0xC28,
>>> +};
>>> +
>>>  static int mt6797_regs[] = {
>>>  	[PWRAP_MUX_SEL] =		0x0,
>>>  	[PWRAP_WRAP_EN] =		0x4,
>>> @@ -945,6 +984,7 @@ enum pmic_type {
>>>  enum pwrap_type {
>>>  	PWRAP_MT2701,
>>>  	PWRAP_MT6765,
>>> +	PWRAP_MT6779,
>>>  	PWRAP_MT6797,
>>>  	PWRAP_MT7622,
>>>  	PWRAP_MT8135,
>>> @@ -1377,6 +1417,7 @@ static int pwrap_init_cipher(struct pmic_wrapper *wrp)
>>>  		break;
>>>  	case PWRAP_MT2701:
>>>  	case PWRAP_MT6765:
>>> +	case PWRAP_MT6779:
>>>  	case PWRAP_MT6797:
>>>  	case PWRAP_MT8173:
>>>  	case PWRAP_MT8516:
>>> @@ -1468,8 +1509,10 @@ static int pwrap_init_security(struct pmic_wrapper *wrp)
>>>  	pwrap_writel(wrp, 0x0, PWRAP_SIG_MODE);
>>>  	pwrap_writel(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_VAL],
>>>  		     PWRAP_SIG_ADR);
>>> -	pwrap_writel(wrp,
>>> -		     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
>>> +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {
>>
>> Did you make sure that this holds for all SoCs that are supported by the driver?
>> If so, why do we need this in mt6779 and didn't need that in the others?
>> Even more, mt6779 does not have the security capbaility, so why do you change
>> this code?
> revert it.
>>> +		pwrap_writel(wrp,
>>> +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
>>> +	}
>>
>> I just realize that we write PWRAP_HIPRIO_ARB_EN twice if the slave supports
>> security. Do we really need that?
>>
> revert it.
> pwrap_init_security and pwrap_init do not called at MT6779. I will
> revert this change.
>>>
>>>  	return 0;
>>>  }
>>> @@ -1581,7 +1624,10 @@ static int pwrap_init(struct pmic_wrapper *wrp)
>>>
>>>  	pwrap_writel(wrp, 1, PWRAP_WRAP_EN);
>>>
>>> -	pwrap_writel(wrp, wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
>>> +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {
>>> +		pwrap_writel(wrp,
>>> +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
>>> +	}
>>>
>>>  	pwrap_writel(wrp, 1, PWRAP_WACS2_EN);
>>>
>>> @@ -1783,6 +1829,19 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>>>  	.init_soc_specific = NULL,
>>>  };
>>>
>>> +static const struct pmic_wrapper_type pwrap_mt6779 = {
>>> +	.regs = mt6779_regs,
>>> +	.type = PWRAP_MT6779,
>>> +	.arb_en_all = 0,
>>> +	.int_en_all = 0,
>>> +	.int1_en_all = 0,
>>> +	.spi_w = PWRAP_MAN_CMD_SPI_WRITE,
>>> +	.wdt_src = 0,
>>> +	.caps = 0,
>>> +	.init_reg_clock = pwrap_common_init_reg_clock,
>>> +	.init_soc_specific = NULL,
>>> +};
>>> +
>>>  static const struct pmic_wrapper_type pwrap_mt6797 = {
>>>  	.regs = mt6797_regs,
>>>  	.type = PWRAP_MT6797,
>>> @@ -1868,6 +1927,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>>>  		.compatible = "mediatek,mt6765-pwrap",
>>>  		.data = &pwrap_mt6765,
>>>  	}, {
>>> +		.compatible = "mediatek,mt6779-pwrap",
>>> +		.data = &pwrap_mt6779,
>>> +	}, {
>>>  		.compatible = "mediatek,mt6797-pwrap",
>>>  		.data = &pwrap_mt6797,
>>>  	}, {
>>> @@ -1898,6 +1960,7 @@ static int pwrap_probe(struct platform_device *pdev)
>>>  	struct device_node *np = pdev->dev.of_node;
>>>  	const struct of_device_id *of_slave_id = NULL;
>>>  	struct resource *res;
>>> +	u32 int_en;
>>>
>>>  	if (np->child)
>>>  		of_slave_id = of_match_node(of_slave_match_tbl, np->child);
>>> @@ -1995,23 +2058,29 @@ static int pwrap_probe(struct platform_device *pdev)
>>>  	}
>>>
>>>  	/* Initialize watchdog, may not be done by the bootloader */
>>> -	pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
>>> +	if (pwrap_readl(wrp, PWRAP_WDT_UNIT) == 0)
>>
>> Same here, why do we need it in mt6779 and did you test if it does not break any
>> older SoC?
> It is common code. The PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN default value
> is zero. Different project can have different value, I think we can
> check if it has been initialized.
> 
> Two methods execute pwrap_init at different product line.
> 1. at bootloader(Smart phone/Tablet/Auto)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN has been initialized at bootloader,
> we don't need to initialize it at kernel again.

Same here, if it's just a "we don't need" and it does not break anything, then I
prefer to just initialize it again.

> 2. at kernel(Some specific Tablet)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN is zero, just initialize them at
> kernel.
>>
>>> +		pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
>>>  	/*
>>>  	 * Since STAUPD was not used on mt8173 platform,
>>>  	 * so STAUPD of WDT_SRC which should be turned off
>>>  	 */
>>> -	pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
>>> +	if (pwrap_readl(wrp, PWRAP_WDT_SRC_EN) == 0)
>>> +		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
>>>  	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_WDT_SRC1))
>>>  		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN_1);
>>>
>>>  	pwrap_writel(wrp, 0x1, PWRAP_TIMER_EN);
>>> -	pwrap_writel(wrp, wrp->master->int_en_all, PWRAP_INT_EN);
>>> +	int_en = pwrap_readl(wrp, PWRAP_INT_EN);
>>> +	pwrap_writel(wrp, (int_en) | (wrp->master->int_en_all), PWRAP_INT_EN);
>>
>> Looks ok to me, is it a bug fix, or only needed for mt6779?
> It is common code.

Ok, I understand that's not a bug fix, but it makes the code more robust. As it
is independent from mt6779, please provide it as a separate patch.

Regards,
Matthias

>>
>>>  	/*
>>>  	 * We add INT1 interrupt to handle starvation and request exception
>>>  	 * If we support it, we should enable it here.
>>>  	 */
>>> -	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN))
>>> -		pwrap_writel(wrp, wrp->master->int1_en_all, PWRAP_INT1_EN);
>>> +	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN)) {
>>> +		int_en = pwrap_readl(wrp, PWRAP_INT1_EN);
>>> +		pwrap_writel(wrp, (int_en) | wrp->master->int1_en_all,
>>> +			     PWRAP_INT1_EN);
>>> +	}
>>>
>>>  	irq = platform_get_irq(pdev, 0);
>>>  	ret = devm_request_irq(wrp->dev, irq, pwrap_interrupt,
>>> --
>>> 1.8.1.1.dirty
>>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

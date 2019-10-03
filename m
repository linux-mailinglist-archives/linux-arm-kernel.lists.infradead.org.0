Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1376ACB250
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 01:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NeAGeZ662kDJ7M2Laq4nkbbXXhdXsv77/qmJh77VMAc=; b=I131jpGCqI/biz
	No0lSPXZeJNHhGzIDmjA6/00w5gb47+j8BFqvEoI+7tuEE4p0rN5xSrF6NsnXxgoVQGrbyKRUgyQ7
	hMJfEXHiJd/KG6TS9Ccf94OJYT1+LHCS5aAKdfE0SCpBwNq5o0/b1dCsxxnSFY4bzP9fYtO/yHT9m
	ncCnMNfVu39Ty0E461UTDCqPPZEzEgONi2r69AKvUgghvT3Xj+D0pEBwQpKeQjlG/OUiMeue0iBLg
	2HKqmBuQ0eha6Cwyc1fEfJMYDYwBsaRaAyGmlIlkE3e99z+kiy+9VuK6uvXd4y7rQhmG5cShnrfiO
	X6UT+1hDG1PFFOs5o1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGAVf-000549-Un; Thu, 03 Oct 2019 23:27:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGAVX-00052x-5A; Thu, 03 Oct 2019 23:27:40 +0000
Received: by mail-ed1-x542.google.com with SMTP id r4so4200842edy.4;
 Thu, 03 Oct 2019 16:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+Kgg449Y8jIogo8iCWdqx15qSvHLyDy4Z/lZ/rRgLGM=;
 b=NKRkBkBuVc0xAqDlotCV9010Myi/tIX2Gy+/OX90ofOnylaGKsRehwAsH0yWRhCy1T
 dRzijPQBQe+OzuFAaCgKE/OIldoDJT57bojLYx9ksq8+PnxLq8eCPhpftXL77i0ke2gO
 d3YFV9lkhYcfGn1u1UdxTBJqHKHcLlZZI7J1IdDLWgso/07JrJ8qxvk84GkqFfEg5T1P
 BVEuF1TCL0eEXA2HmzFc9uUUBJRvwwuU8j0XOush9jP3eeiCY/ewGvPgc9/E3MHfpYaM
 aYE8lqlWCCQO76GxyHfS7EhSGPxQ4VTN+MH1mSDndwM4TDWD1IMX0Iw0B4+UEZa4QHWG
 GYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=+Kgg449Y8jIogo8iCWdqx15qSvHLyDy4Z/lZ/rRgLGM=;
 b=QJ0EdaS6gngsrGwDalS/unfbsRn/DmzkRKEv4AjvmfLqMMpfxpazxhjJ9z8CMxPurf
 4ZJYp3sTp1AOv3l1y5yZNJFyGsuqMIDaZy4R4Err9jXVG2oxtmvEnuswVJx4KKVZXiSX
 457PDZd9Vl7UquFWleyAZujwK8kfdsRM9vez0s0bWV0Ys2ltmWcN67lyElr97SRbtl0z
 ZfLi0BXONFHkhooV8ggDn6wAfRYCafSnXeAVEuRH/iagiZZzCDoePV2ZwvISytDiHVBw
 on7/QRudKlcCt5uushDEiPH60jSrLOrO3V+bMO1ZHmPa39i6daBsVPmwW2dRjglGCWkL
 tcWw==
X-Gm-Message-State: APjAAAW+SbpNla7oll+9Q1hAT9utBOIOHHuPmmjUCjQvaKfhW+aUn9wM
 +QTk6PeNx3HHqc/390lrTmgHPO9LDoU=
X-Google-Smtp-Source: APXvYqysL4VCg4BBPe157oSONgLoNJvSaSHaWFseHNXDUy7Gx6YQ1kz1n6tVnxTQ1HmaGvY31/ijfw==
X-Received: by 2002:a50:d2d4:: with SMTP id q20mr12490031edg.172.1570145257324; 
 Thu, 03 Oct 2019 16:27:37 -0700 (PDT)
Received: from ziggy.stardust ([95.169.226.6])
 by smtp.gmail.com with ESMTPSA id ba28sm735598edb.4.2019.10.03.16.27.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 16:27:36 -0700 (PDT)
Subject: Re: [PATCH 3/3] soc: mediatek: pwrap: add support for MT6359 PMIC
To: Argus Lin <argus.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-4-git-send-email-argus.lin@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <5ec86287-2a90-ca07-c9a6-262420a68fd3@gmail.com>
Date: Fri, 4 Oct 2019 01:27:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570088901-23211-4-git-send-email-argus.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_162739_200622_25ADFAC0 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
> MT6359 is a new power management IC and it is used for
> MT6779 SoCs. To define mt6359_regs for pmic register mapping
> and pmic_mt6359 for accessing register.
> 
> Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-pmic-wrap.c | 72 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> index fa8daf2..dd04318 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> @@ -111,6 +111,29 @@ enum dew_regs {
>  	PWRAP_RG_SPI_CON13,
>  	PWRAP_SPISLV_KEY,
> 
> +	/* MT6359 only regs */
> +	PWRAP_DEW_CRC_SWRST,
> +	PWRAP_DEW_RG_EN_RECORD,
> +	PWRAP_DEW_RECORD_CMD0,
> +	PWRAP_DEW_RECORD_CMD1,
> +	PWRAP_DEW_RECORD_CMD2,
> +	PWRAP_DEW_RECORD_CMD3,
> +	PWRAP_DEW_RECORD_CMD4,
> +	PWRAP_DEW_RECORD_CMD5,
> +	PWRAP_DEW_RECORD_WDATA0,
> +	PWRAP_DEW_RECORD_WDATA1,
> +	PWRAP_DEW_RECORD_WDATA2,
> +	PWRAP_DEW_RECORD_WDATA3,
> +	PWRAP_DEW_RECORD_WDATA4,
> +	PWRAP_DEW_RECORD_WDATA5,
> +	PWRAP_DEW_RG_ADDR_TARGET,
> +	PWRAP_DEW_RG_ADDR_MASK,
> +	PWRAP_DEW_RG_WDATA_TARGET,
> +	PWRAP_DEW_RG_WDATA_MASK,
> +	PWRAP_DEW_RG_SPI_RECORD_CLR,
> +	PWRAP_DEW_RG_CMD_ALERT_CLR,
> +	PWRAP_DEW_SPISLV_KEY,

That looks like PWRAP_SPISLV_KEY from MT6358.

Regards,
Matthias

> +
>  	/* MT6397 only regs */
>  	PWRAP_DEW_EVENT_OUT_EN,
>  	PWRAP_DEW_EVENT_SRC_EN,
> @@ -197,6 +220,42 @@ enum dew_regs {
>  	[PWRAP_SPISLV_KEY] =		0x044a,
>  };
> 
> +static const u32 mt6359_regs[] = {
> +	[PWRAP_DEW_RG_EN_RECORD] =	0x040a,
> +	[PWRAP_DEW_DIO_EN] =		0x040c,
> +	[PWRAP_DEW_READ_TEST] =		0x040e,
> +	[PWRAP_DEW_WRITE_TEST] =	0x0410,
> +	[PWRAP_DEW_CRC_SWRST] =		0x0412,
> +	[PWRAP_DEW_CRC_EN] =		0x0414,
> +	[PWRAP_DEW_CRC_VAL] =		0x0416,
> +	[PWRAP_DEW_CIPHER_KEY_SEL] =	0x0418,
> +	[PWRAP_DEW_CIPHER_IV_SEL] =	0x041a,
> +	[PWRAP_DEW_CIPHER_EN] =		0x041c,
> +	[PWRAP_DEW_CIPHER_RDY] =	0x041e,
> +	[PWRAP_DEW_CIPHER_MODE] =	0x0420,
> +	[PWRAP_DEW_CIPHER_SWRST] =	0x0422,
> +	[PWRAP_DEW_RDDMY_NO] =		0x0424,
> +	[PWRAP_DEW_RECORD_CMD0] =	0x0428,
> +	[PWRAP_DEW_RECORD_CMD1] =	0x042a,
> +	[PWRAP_DEW_RECORD_CMD2] =	0x042c,
> +	[PWRAP_DEW_RECORD_CMD3] =	0x042e,
> +	[PWRAP_DEW_RECORD_CMD4] =	0x0430,
> +	[PWRAP_DEW_RECORD_CMD5] =	0x0432,
> +	[PWRAP_DEW_RECORD_WDATA0] =	0x0434,
> +	[PWRAP_DEW_RECORD_WDATA1] =	0x0436,
> +	[PWRAP_DEW_RECORD_WDATA2] =	0x0438,
> +	[PWRAP_DEW_RECORD_WDATA3] =	0x043a,
> +	[PWRAP_DEW_RECORD_WDATA4] =	0x043c,
> +	[PWRAP_DEW_RECORD_WDATA5] =	0x043e,
> +	[PWRAP_DEW_RG_ADDR_TARGET] =	0x0440,
> +	[PWRAP_DEW_RG_ADDR_MASK] =	0x0442,
> +	[PWRAP_DEW_RG_WDATA_TARGET] =	0x0444,
> +	[PWRAP_DEW_RG_WDATA_MASK] =	0x0446,
> +	[PWRAP_DEW_RG_SPI_RECORD_CLR] =	0x0448,
> +	[PWRAP_DEW_RG_CMD_ALERT_CLR] =	0x0448,
> +	[PWRAP_DEW_SPISLV_KEY] =	0x044a,
> +};
> +
>  static const u32 mt6397_regs[] = {
>  	[PWRAP_DEW_BASE] =		0xbc00,
>  	[PWRAP_DEW_EVENT_OUT_EN] =	0xbc00,
> @@ -977,6 +1036,7 @@ enum pmic_type {
>  	PMIC_MT6351,
>  	PMIC_MT6357,
>  	PMIC_MT6358,
> +	PMIC_MT6359,
>  	PMIC_MT6380,
>  	PMIC_MT6397,
>  };
> @@ -1757,6 +1817,15 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>  	.pwrap_write = pwrap_write16,
>  };
> 
> +static const struct pwrap_slv_type pmic_mt6359 = {
> +	.dew_regs = mt6359_regs,
> +	.type = PMIC_MT6359,
> +	.regmap = &pwrap_regmap_config16,
> +	.caps = PWRAP_SLV_CAP_DUALIO,
> +	.pwrap_read = pwrap_read16,
> +	.pwrap_write = pwrap_write16,
> +};
> +
>  static const struct pwrap_slv_type pmic_mt6380 = {
>  	.dew_regs = NULL,
>  	.type = PMIC_MT6380,
> @@ -1790,6 +1859,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
>  		.compatible = "mediatek,mt6358",
>  		.data = &pmic_mt6358,
>  	}, {
> +		.compatible = "mediatek,mt6359",
> +		.data = &pmic_mt6359,
> +	}, {
>  		/* The MT6380 PMIC only implements a regulator, so we bind it
>  		 * directly instead of using a MFD.
>  		 */
> --
> 1.8.1.1.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

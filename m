Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176CBB45B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 21:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sufGnl22uMCQuiNhoM7jKvZUJGjiwSoxOvP1RbNJeB8=; b=X4InS3lIHJ/fAX
	V4B2TX3AyDSDGjuMKjk9N8RvJYlriBmRAgB7HWs+pqSQ7EG62eDCOs7hea80Fi3y8eBMgDsmZEHMX
	GnXsGHOzDo0+NyB46m4SE9xgMN+xqxkQjDYEYEWvSbSz+9vMZzKA26JCOPDAIYYNcmoGJNdkFuq/E
	JmzWOgbdtCjljPiSWmPEC4sV2N9QSlEQpWjiPNCHRowiJrMIsEmbVW9M9TRDLSayyCt3imo8Bd26I
	UdLxZfMaWwLuphTdH75TG3DMjuOdmJkRVd9QUeEJm9P4LRsYR23w2O5SajWcE8+9Cn/jllU8JWocv
	XGd46W42AWIMGrbNjTzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKSaX-0003yV-Ud; Sat, 27 Apr 2019 19:02:17 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSaQ-0003xK-0I
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 19:02:11 +0000
Received: by mail-lf1-x142.google.com with SMTP id j11so4956396lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Apr 2019 12:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AZgxJWhbIDvKlGzRsWxiCN2W+xAkX6lkUd7t0yIDidU=;
 b=WIyeq621iyHX/Df/naNbN++OglZ6+VJNZpSAlZCMMzGDen3MlM7ODEgIJQ1XQ2Tsqe
 KoJUHEW44tSNFSyj1vxGoq7osfTu8C31TTPKvFDACvT5BT8pCNdNSulm6+SNzryjG0jJ
 ZHJEhTrup0ZDDiurfGdqH+hNSl0x8iXtHBqp64Hxkwc2ccRvHB3cPcalLC9kC/ghLcRc
 35M5jbvnwnt3gTxeBiJwRtl/Nz9DCtpkHDDFc5i3HECb/37NvQFDD1RM9HKuhymhT1Lg
 2P3C0WmTAv6VIGddHgt9HGv2f178ruKcl3BbINX6FItiTouYD86sr7pKClUmtBG6Mg8y
 GyVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AZgxJWhbIDvKlGzRsWxiCN2W+xAkX6lkUd7t0yIDidU=;
 b=nxa6we+m7qv5VuDHMt0PPhHTFZEBztREKeMkDNv8MDJqdqdJFkGFqLOf/3ra+c7zv8
 yI75GQUClYGvMXT3QTXSL+dT18jl3OwrGnRf/WbfX+ztS/62N7xBsCfO58jal2u1fimQ
 9uiqBmNOY7XJWpQL0euBnb2IVJ4MgONDEK2N6TtsHWotm5iRpT6a8HB3tdxzHKqPQ5KD
 NFTu3PukA4NXnYhqNW6VmQQ61psq/gi5+Fj0W5ZSVFYBRc5Hj9lrSoF4ZhI6aqIGua8X
 aV7QNWU0YHnRQlcH0/pgFp+BLu1f26c+AHwiCGRjH66sAa9rG+EUOSpVnQET4nkvZYe2
 C+pw==
X-Gm-Message-State: APjAAAWNFTr2b8zwHbEz0RBArUAE930vF8q4O6qv3Y0qCsZ5c1EitS7i
 pae6IKvdcST9tvkKGTnW9XC8zA==
X-Google-Smtp-Source: APXvYqzzsRMRu10ni8xp9BNlmHXddNxg6m8pR41FcPmRC7oDP+jBy5UZJMOqZ/1dKJN8fNr7zihdcA==
X-Received: by 2002:a19:428c:: with SMTP id
 p134mr29296072lfa.108.1556391727674; 
 Sat, 27 Apr 2019 12:02:07 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.81.185])
 by smtp.gmail.com with ESMTPSA id x2sm1199162ljx.13.2019.04.27.12.02.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 12:02:07 -0700 (PDT)
Subject: Re: [PATCH v4 1/5] mtd: cfi_cmdset_0002: Add support for polling
 status register
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190423104814.5762-1-vigneshr@ti.com>
 <20190423104814.5762-2-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <093ef590-ae3d-2db2-09af-573a138a9416@cogentembedded.com>
Date: Sat, 27 Apr 2019 22:02:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190423104814.5762-2-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_120210_173625_101E10FF 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 04/23/2019 01:48 PM, Vignesh Raghavendra wrote:

> HyperFlash devices are compliant with CFI AMD/Fujitsu Extended Command
> Set(0x0002) for flash operations, therefore drivers/mtd/chips/cfi_cmdset_0002.c
> can be used as is. But these devices do not support DQ polling method of
> determining chip ready/good status. These flashes provide Status
> Register whose bits can be polled to know status of flash operation.
> 
> Cypress HyperFlash datasheet here[1], talks about CFI Amd/Fujitsu
> Extended Query version 1.5. Bit 0 of "Software Features supported" field
> of CFI Primary Vendor-Specific Extended Query table indicates
> presence/absence of status register and Bit 1 indicates whether or not
> DQ polling is supported. Using these bits, its possible to determine
> whether flash supports DQ polling or need to use Status Register.
> 
> Add support for polling Status Register to know device ready/status of
> erase/write operations when DQ polling is not supported.
> Print error messages on erase/program failure by looking at related
> Status Register bits.
> 
> [1] https://www.cypress.com/file/213346/download
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

   Sorry, only superficial review, I'm not an MTD expert. :-)

> ---
>  drivers/mtd/chips/cfi_cmdset_0002.c | 90 +++++++++++++++++++++++++++++
>  include/linux/mtd/cfi.h             |  5 ++
>  2 files changed, 95 insertions(+)
> 
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index 7b7286b4d81e..55c4d81098d5 100644
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -49,6 +49,16 @@
>  #define SST49LF008A		0x005a
>  #define AT49BV6416		0x00d6
>  
> +/*
> + * Status Register bit description. Used by flash devices that don't
> + * support DQ polling (Eg.: HyperFlash)

   It's "e.g. " :-)

[...]
> @@ -97,6 +107,48 @@ static struct mtd_chip_driver cfi_amdstd_chipdrv = {
>  	.module		= THIS_MODULE
>  };
>  
> +/*
> + * Use status register to poll for Erase/write completion when DQ is not
> + * supported. This is indicated by Bit[1:0] of SoftwareFeatures field in
> + * CFI Primary Vendor-Specific Extended Query table 1.5
> + */
> +static int cfi_use_status_reg(struct cfi_private *cfi)
> +{
> +	struct cfi_pri_amdstd *extp = cfi->cmdset_priv;
> +
> +	return (extp->MinorVersion >= '5') &&

   Parens not needed here, especially as the next operator isn't enclosed.

> +		(extp->SoftwareFeatures & 0x3) == 0x1;
> +}
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

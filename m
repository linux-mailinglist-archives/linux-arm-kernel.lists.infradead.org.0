Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F546C281
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUtG3TM1Zex2YW6MFFY5FbSWi1Y/c8EvwsHUIUbbIU0=; b=KuYvemOHoL7UEI
	bLvWmazb4Sl4mb+jR+tpxijFw3fLsgpiGd3HogYI3oQRj3Ihkhm0jf/hlBjDXTtZpOCKwfITO9t4g
	7koQqHq+McEjIcDs/UBcHgjORhOYHFw0qIfpQrAY4SbHiEfkB4/GNEH7bIWNPwUrt+0JKQbf393pi
	YQcSAIpCb1dShVImndT1dd47N8Q19oT7p9KhVoleFGGdAzhSqjQRYVHptz1MjE2gQB0GsQ0mJdS22
	Y31ZCYGhUTCEZzoYk0BjHh4UyeNM5TqAcm0hTNQGF6xOWFCai2/S3rc60qJ43fImpybUyM0RaUBLA
	p86tELs+dAcZAEmXHlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrNy-0003yT-7p; Wed, 17 Jul 2019 21:22:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrNk-0003y7-AX; Wed, 17 Jul 2019 21:22:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so11748715pgm.13;
 Wed, 17 Jul 2019 14:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4yUywu2WnKUMQb0jqcoCVv139ZtPaCDPI8rhh9pJHJ4=;
 b=W3WXhy4up0DIlzqtRSmW983qP+//a+ZuW0ARrcJBib8Bikrtl5LvV5QxqxvhcYckJn
 7rj3yPBUlwc02eiDl44p4ccjModgbSqomJXrQij/QvemVifHBlRRj+HedCVsFyjWz6SG
 kYZaOyyBZ1Z0U9MG354oe675q+T0lzK8+20N7EXxdgyfg+1QJLG63iW6BLWP+U/zfQM2
 hU7ifCiBDE2mDwcGhT269wDXxgF6zRjRaLR459bK1gtbVOTp7JVY42eNeB9SsXUjS/l1
 W8A5SwPt00uR7i3S+tvj1uDyBHUhUy3zp1Cjx7tyTrYKMA+Mqqd5DoGkP4e7KEzmdAdR
 mJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4yUywu2WnKUMQb0jqcoCVv139ZtPaCDPI8rhh9pJHJ4=;
 b=M5TPHCiiFGDNhRg+pYdjUjhkQd23k0Q8tRwKQew0nCP2Xa+plct5iL+NHkEn82OTDm
 cO/+NLXWXXCKZn9UxwSNXOIVe2g8+cBNMAwTFdjgraT350eMo89z/Ee8nz2tISPGwFTl
 C2WFAAX9cH2w15ZX1ekU1Wn4Di8YsoghDSBN3GtuYWFp+TXlGU0kNytAgmFD8G7Lxf/G
 zBsgaKj+COjJgLMHrzHwfnY1LARBzGleq2AX2oTXRqwDqdbl4EyyCkbYj23hW1aZrJGF
 V4zaJVm2nllERQXG473SLc8rTqVvYKABcTgiYAZiIKN+8jBK0NeLmGMge6Cm9qW5Lrh0
 5eIg==
X-Gm-Message-State: APjAAAU+uluHXqhx3PkWC7V71c6/L+tt2Z+D8e9RRlj79LwqrP8F3DQM
 DRBN8isxvQEQigLJh3sQMwlCtng1
X-Google-Smtp-Source: APXvYqxJTapxSxdWonFK0G05Tttcwd9GXdBeiI6cS0UbKzCw379ry9WYhyo/a4ZE3GuOxaQA5K4OLg==
X-Received: by 2002:a17:90a:bd8c:: with SMTP id
 z12mr46790877pjr.60.1563398554321; 
 Wed, 17 Jul 2019 14:22:34 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q7sm32530592pff.2.2019.07.17.14.22.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 14:22:32 -0700 (PDT)
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <57dea1a5-2a33-5644-05c5-174753307fc0@gmail.com>
Date: Wed, 17 Jul 2019 14:22:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_142236_393243_2FF3E875 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/17/2019 2:16 PM, Stefan Wahren wrote:
> This adds minimal support for the new Raspberry Pi 4 without the
> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is avail=
> able
> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to z=
> ero
> and let the bootloader take care of it.
> 
> Other differences to the Raspberry Pi 3:
> - additional GIC 400 Interrupt controller
> - new thermal IP and HWRNG
> - additional MMC interface (emmc2)
> - additional UART, I2C, SPI and PWM interfaces
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> =2D--

[snip]

> +		rng@7e104000 {
> +			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			/* RNG is incompatible to brcm,bcm2835-rng */
> +			status =3D "disabled";

It's an iproc-rng200, so you can either re-use the bcm7211-rng
compatible string that was just recently added or you can define a
bcm2838-rng if you prefer.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

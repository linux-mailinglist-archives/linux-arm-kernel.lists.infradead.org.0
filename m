Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7921028D80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 00:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfmlYDt1ugAr18ZLR7JG9/VcRPCKGvEvk0iQN/Kkw50=; b=XIICMl3qIJBe0q
	3fy8Jg6nj5jAZgPfBsyyotj5AxE9i5OSXUwo3BvTV7rfXeXn144BJ7qpWYFzbEev2f19CVu82JnJG
	YbIyPuQ+y6AF8zvYG+zQMAMJeFk8hhyZsoxv0h46a3pHDUupI2L95KKIfAZSGtRjTSnHgFAJ8a7VE
	lWKnZS+ny+DvJlgVtlJ4cG/cIOprLuieouCu4suIElgbq42gFfZK0GjiRwMrihLJNm7YFShlYmOYS
	SZ53KVt9i5jdRr/0N9nNoCYmNCsbQktz/dPxxVJOKZIkMVmwTu/Vbn4ocfV1Z1VLaUsU0g6wB6KTb
	QxxBnM4toI1HaSKZGEkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTwck-0002sY-EO; Thu, 23 May 2019 22:55:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTwcd-0002s6-MU; Thu, 23 May 2019 22:55:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so3338199plo.2;
 Thu, 23 May 2019 15:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=27oT/4g6iIria1a8VEGy3UQ4sbwIVeCLLiSd/9UWd04=;
 b=jCSgmtO/BeBcWImt8/iAItnN7kht6k+7osXxzhQ5D+QB3xNgbz/FUSfC2LqQsBvr/l
 f/m/mIk+7UiQYMVNV9DbXH7qBc/ob629H/7t2a8T9ntAdPOek5vvBGBDONPOUMDBLlns
 dh1+VzJQtPTTP1cQqvxlZ4WtacETA6cjUTNhVCOeVsRjgcE/WEESOjA9RP3AhK37dp/H
 F84INqJDbjsvX9PCQR4ZEoCKMzMbWz772ZGl7hYs20W71s/hD9fPnGKyCtmWO8G2Ke5v
 7EoJCL2YdufhAItIV0ORSdrLPYaHwE+gZV1Nkb9akjyDTUeySjI6RmGJB63xy9dfjdd2
 UnPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=27oT/4g6iIria1a8VEGy3UQ4sbwIVeCLLiSd/9UWd04=;
 b=jE6WyKdBaadjJF14xH6kC+BT+FdErQwKbGmF1w4iEAlfe73Vd+ClMgUZi2OkvU4Y5W
 PD51Z1Jmefkc9BomzA5nMlKEGZwGEBWhNbjmGd+pqVBVICuoT8bjZvPxJoGngMVXMG0A
 G9xX7bQrju90R3GTl/r8goukoaaguLUsltODesXSTUGTWbwgdnfoScwEjnp2wvjGEmHk
 psQHn2iVUXCL6Olx/cBm/zeTW/RkvYlk8BJ8a2gdOefkqf4A/1HGJpBP5BdaVJHd6Bsd
 AafRVv6N0L+C2Sp3k3B8TnFodU3RuHUTjCf8SBoenj2w40zJa9PvYFmzBoOUztGioQsN
 aM1g==
X-Gm-Message-State: APjAAAWjHXV73MVCbkMf3Sf3LPWw3e6FEdX1AIOErKAD8B5F8kd0MWZ0
 XBI6b2xEyOVesihRZAXO8sM=
X-Google-Smtp-Source: APXvYqzt75vj9/47EIZfhyd7iAELswjMnv1hgg/C1pxBoiot4mdCedfhyicycjbWVTlRBPtDNFgzpg==
X-Received: by 2002:a17:902:9343:: with SMTP id
 g3mr101257298plp.260.1558652138370; 
 Thu, 23 May 2019 15:55:38 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id u134sm504276pfc.61.2019.05.23.15.55.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 15:55:37 -0700 (PDT)
Date: Thu, 23 May 2019 15:55:36 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 2/2] input: keyboard: mtk-pmic-keys: add MT6392 support
Message-ID: <20190523225536.GE176265@dtor-ws>
References: <20190513142120.6527-1-fparent@baylibre.com>
 <20190513142120.6527-2-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513142120.6527-2-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_155539_736903_CC708380 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 04:21:20PM +0200, Fabien Parent wrote:
> Add support for MT6392 PMIC's keys.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>

Apparently this depends on not-yet merged MT6392 support in MFD, so
please merge through MFD tree with the rest of it.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

> ---
>  drivers/input/keyboard/mtk-pmic-keys.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
> index 8e6ebab05ab4..aaf68cbf7e5b 100644
> --- a/drivers/input/keyboard/mtk-pmic-keys.c
> +++ b/drivers/input/keyboard/mtk-pmic-keys.c
> @@ -18,6 +18,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/kernel.h>
>  #include <linux/mfd/mt6323/registers.h>
> +#include <linux/mfd/mt6392/registers.h>
>  #include <linux/mfd/mt6397/core.h>
>  #include <linux/mfd/mt6397/registers.h>
>  #include <linux/module.h>
> @@ -83,6 +84,16 @@ static const struct mtk_pmic_regs mt6323_regs = {
>  	.pmic_rst_reg = MT6323_TOP_RST_MISC,
>  };
>  
> +static const struct mtk_pmic_regs mt6392_regs = {
> +	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =
> +		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
> +		0x2, MT6392_INT_MISC_CON, 0x10),
> +	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =
> +		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS,
> +		0x4, MT6392_INT_MISC_CON, 0x8),
> +	.pmic_rst_reg = MT6392_TOP_RST_MISC,
> +};
> +
>  struct mtk_pmic_keys_info {
>  	struct mtk_pmic_keys *keys;
>  	const struct mtk_pmic_keys_regs *regs;
> @@ -238,6 +249,9 @@ static const struct of_device_id of_mtk_pmic_keys_match_tbl[] = {
>  	}, {
>  		.compatible = "mediatek,mt6323-keys",
>  		.data = &mt6323_regs,
> +	}, {
> +		.compatible = "mediatek,mt6392-keys",
> +		.data = &mt6392_regs,
>  	}, {
>  		/* sentinel */
>  	}
> -- 
> 2.20.1
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

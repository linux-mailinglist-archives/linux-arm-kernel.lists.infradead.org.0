Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD23075160
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKXzXHe7kIvZqCdlnSoa20e9oRPkUQ3dokq4N02oOFI=; b=mX1mVQVlfLLdo/
	A+ndrmXEqgsdmLjeZfvMe34jICLRH/UDeQGVkh55WI6UUj4yOkx9xcphiPJNJKfF7dTw1SeyYKjz0
	xpjowyYa4zGYPvMVX8kYRUPt4A9K9MkRhNlz0LQGInB2FVy2tUj3IHJBCmXWidlri0LxBd6Szlc05
	2DzUAa37XMj61M6VMulyZM7KU8MSD1cPjmTcprgLt0/L9Iypxm9lgteRH3VdZ0FBW9PdFVe7HBAwr
	aJOfzQ1ZXXTXTMUg22mTlNIan9CZ/wA36JXGFOENz/JbAi4b53vqLB4D+e22EiIDyRfa6J3+ocQ27
	VaMD0ztyOqZXbMWKhNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqetG-0001Ly-0G; Thu, 25 Jul 2019 14:38:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqet1-0001LG-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:38:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so45003103wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=xKhjaESpwvk6sR4/SITRYpcTnlFG6jIulb5Z7EfG/G8=;
 b=V1ADhv36o2+cFrscOoSHKnRjQaO9dDNPwd3Ahh6Kl9afPgC4H7hsakbzpEII9ZBu3/
 LtKUTgwGP2hJW4bT58gqaxPReeLUWvqMGCpXPUyrP2WYF1zGLO+3neKuDwwo+Y3FHCkE
 Wvtcz3x2U+4xnulIqZltKgwoIt38DxPDPPyDf0XK3AqxmKDqo2E7Y49/iUffPrC/TJsv
 NYdXwTKkWfoIiM8q8r1eJXEbaHZSwVM7s1gB2mHAPGnEbGDnwE8T9PNUTUikrXHii2T9
 wA0jAXz+9MA1wlhWFtP21oNGb7/Ahj3vr3lwVYFCVAXVtbenOm+Zdo596KtqjgZ91d61
 lprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=xKhjaESpwvk6sR4/SITRYpcTnlFG6jIulb5Z7EfG/G8=;
 b=Q0w93tLUbdwWKAChBWYn+W6tNr3dxV1bQrODjqBQtTUObz3lA8EBJ1K7LiX4lJu7T3
 l7mUTubSdosfOfRsp+qz09GWX61fuHfiF9iDfHeu46vN/oTVECQzsuMmDsIZOK24qUZo
 LHJ1bbfMOKkeKKrqI+Ws3ElHrjcRKM5VDMy0FSTb47mUJpQW+gxxNkhtLFlWrGCetKCW
 h7WG4ODQiqcUfLWV7qIWf+y5rLZb8tZwnbaCiMVPBvhiM+NBUaaSCjdd0ZXAZs2vttES
 UUD2pdknJ0LODJUFn6lh8Cyo/VFIA7RkDSEs6GPzWFT/L+gR7Ndv8DzJKBM5FU97inLg
 xxUg==
X-Gm-Message-State: APjAAAUTe6eglJEbI+QZANg5LZAdvUMIzAh/SGTzg9dTi8d9qoVThys3
 Mpb2C1DCAJXqZKPPmHebVCgt1w==
X-Google-Smtp-Source: APXvYqxUa4coqzdXQVeu4+Cob/EMTrXyHltG48aeyxm8e5yNgpQ4cUf2+pfTE9+Acv3S/pIJ6kzOxA==
X-Received: by 2002:a1c:9e4d:: with SMTP id h74mr84250838wme.9.1564065506038; 
 Thu, 25 Jul 2019 07:38:26 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z1sm51923870wrv.90.2019.07.25.07.38.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 07:38:25 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH] clk: meson: axg-audio: migrate to the new parent
 description method
In-Reply-To: <20190722094954.14040-1-amergnat@baylibre.com>
References: <20190722094954.14040-1-amergnat@baylibre.com>
Date: Thu, 25 Jul 2019 16:38:24 +0200
Message-ID: <1jd0hyxjq7.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_073827_699536_F24E88D9 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 22 Jul 2019 at 11:49, Alexandre Mergnat <amergnat@baylibre.com> wrote:

> diff --git a/drivers/clk/meson/axg-audio.c b/drivers/clk/meson/axg-audio.c
> index 8028ff6f6610..4253a466eae8 100644
> --- a/drivers/clk/meson/axg-audio.c
> +++ b/drivers/clk/meson/axg-audio.c
> @@ -15,7 +15,6 @@
>  #include <linux/slab.h>
>  
>  #include "axg-audio.h"
> -#include "clk-input.h"
>  #include "clk-regmap.h"
>  #include "clk-phase.h"
>  #include "sclk-div.h"
> @@ -24,7 +23,7 @@
>  #define AUD_SLV_SCLK_COUNT	10
>  #define AUD_SLV_LRCLK_COUNT	10
>  
> -#define AUD_GATE(_name, _reg, _bit, _pname, _iflags)			\
> +#define AUD_GATE(_name, _reg, _bit, _phws, _iflags)			\
>  struct clk_regmap aud_##_name = {					\
>  	.data = &(struct clk_regmap_gate_data){				\
>  		.offset = (_reg),					\
> @@ -33,13 +32,13 @@ struct clk_regmap aud_##_name = {					\
>  	.hw.init = &(struct clk_init_data) {				\
>  		.name = "aud_"#_name,					\
>  		.ops = &clk_regmap_gate_ops,				\
> -		.parent_names = (const char *[]){ _pname },		\
> +		.parent_hws = (const struct clk_hw *[]) { &_phws.hw }, \

Those '\' are aligned with tabs. please check, you have aligned a few
with spaces instead

>  		.num_parents = 1,					\

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

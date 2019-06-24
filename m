Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38FF51F10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qkfKlt/aPMq1er2lNJQn3QPm/3aBe+s1VnjED+pDCU=; b=SXc6x+KEt+57lU
	LZ27/wx0QZn7JjD+wqUXkQEjV2KuRi+3cc81Yra7upcIxWVbeeScDF44L1Q0arWBP8NZejHL05a+r
	XBWo00Qiri3hQgxwi6NSYzVbiiix3i5Pq5LazOtwUgweC15NORoKVEGBYz32tbjlqnsfeEHrhYUPh
	s+oEo1fTFF4slZobmRUka8Srj0y+7anyHdFw+vpZJna3YUMNXRZM6pZFpA99CCaC88Wrwa0HgSkap
	k1/Qnw3RDydWEUupwAn37HuC1RdPltfgoPzOqkGY3nDmq5IDfQOKyFON/ucnRkVT1wGhT7nbNQqQ1
	Y5ixZ07RbudKGEL1sSQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYGW-0006eO-Ge; Mon, 24 Jun 2019 23:20:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYGH-0006am-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:20:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so8349567pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 16:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CLMq9SkPZ0LrpMbu6uM6UrnywucO78/fC+4xJdWuUjU=;
 b=dLg/cSRkJPUZwFWpsP5zrU6X5hseY4oEeFd0LoCR7LGMnXqC0nzPoFAzqz9Y7u/41c
 PVqSleEbaPIgcPu0aCXcvA8ErwL0FqzRVDuGb0m2YwMJ9cLF7LbUaVxZP6q/2kesoXRK
 /jWxwhBmthWot8HMFhTMtiLMF/eWvtwCGW/6JkkiTuKr3iAewjAgK3i9kIFHThWf575k
 4wEOAr5iRNfUAvL3Xq4eB6rRA+mjQFjipz3E7czZd/g0cvHAaH3Btayr9Z60UV90p37m
 CkV51ozzeK7L+hUT1HzMKJCGHN2tVbrbHL8lyYsoK6oeRmrOC9eKXS9fiv1ZYUi9XD+Z
 9m5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CLMq9SkPZ0LrpMbu6uM6UrnywucO78/fC+4xJdWuUjU=;
 b=UKDI88jM8ifBlWA/ynXiRupjvc1CekrJo57zVTOoQrPeuwR7GKJb25NEqa/5bGJOQ8
 5gLrZpwZzmNr366xvvs3E1yvgNCe41458RblFMIN/dWxDAyQLGLNLBM/l0GmU5O/s48O
 4Wmbul+SI92GQRWP0GTa9maShwTIlWVfIBUem73HjmRN7jrN+iUwRtlj9/O4uq/3LokO
 0yJM/LLLUPAcRpFPsedhpiTwTzmlQI+qa16yWvzqX4aA9VkkmMWQYaZyQczZn/aOOQk3
 4mDuovVYDezU4mPT44XFQiRWcjXHVxQxetmXy7wMyLiAWSjdWj7Af5seiAx8IY/vTUKX
 8A7A==
X-Gm-Message-State: APjAAAVhp2gz01btqVUa4wcgG7miJUkaR+RSHH9Wgpv54sbD89ATplKW
 88VDZVPGTcj8B0CG1dySLs/vJw==
X-Google-Smtp-Source: APXvYqw0AZKgg6EjKTiDXtbpUIU8qcxoTXpR5EwI5qJzAJRAtq9DzupQa5ZaWWS4hAxfXE0scVi4uw==
X-Received: by 2002:a63:c60:: with SMTP id 32mr13363428pgm.42.1561418431055;
 Mon, 24 Jun 2019 16:20:31 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:559b:6f10:667f:4354])
 by smtp.googlemail.com with ESMTPSA id m19sm1137712pjn.3.2019.06.24.16.20.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 16:20:30 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: 86zhm782g5.fsf@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 8/9] drm: meson: add macro used to enable HDMI PLL
In-Reply-To: <86o92n82e1.fsf@baylibre.com>
References: <86zhm782g5.fsf@baylibre.com> <86o92n82e1.fsf@baylibre.com>
Date: Mon, 24 Jun 2019 16:20:29 -0700
Message-ID: <7hwohawoxu.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_162033_249021_4CF3C469 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Julien Masson <jmasson@baylibre.com> writes:

> This patch add new macro HHI_HDMI_PLL_CNTL_EN which is used to enable
> HDMI PLL.
>
> Signed-off-by: Julien Masson <jmasson@baylibre.com>
> ---
>  drivers/gpu/drm/meson/meson_vclk.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
> index e7c2b439d0f7..be6e152fc75a 100644
> --- a/drivers/gpu/drm/meson/meson_vclk.c
> +++ b/drivers/gpu/drm/meson/meson_vclk.c
> @@ -96,6 +96,7 @@
>  #define HHI_VDAC_CNTL1		0x2F8 /* 0xbe offset in data sheet */
>  
>  #define HHI_HDMI_PLL_CNTL	0x320 /* 0xc8 offset in data sheet */
> +#define HHI_HDMI_PLL_CNTL_EN	BIT(30)
>  #define HHI_HDMI_PLL_CNTL2	0x324 /* 0xc9 offset in data sheet */
>  #define HHI_HDMI_PLL_CNTL3	0x328 /* 0xca offset in data sheet */
>  #define HHI_HDMI_PLL_CNTL4	0x32C /* 0xcb offset in data sheet */
> @@ -468,7 +469,7 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
>  
>  		/* Enable and unreset */
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
> -				   0x7 << 28, 0x4 << 28);
> +				   0x7 << 28, HHI_HDMI_PLL_CNTL_EN);

still using a magic const for the mask.  Can use GENMASK() for this?

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

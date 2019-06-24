Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4989351F00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bu33dIDTdGs7jiD/VEa5+MqhixACIgZLI066mKd6JWA=; b=FAFc20XSuW/KgK
	SpXhgFWLR1hRQZSYaTYXKDxJk+2zqM1GAYHXrs1Ue6OuJUtsg4C4dcMqRBwcPIeVN27ATxXVDjv6h
	lPl28UW+o6AJoICTQiG83TQsXqVCwqxpyx1VAEftk3llLUToLktA67gmKthonl337HTXseEkEfadP
	fd+nDpz6LF6wUOhuC3DV9xWUwnqtW4I10i6Pa1UuGeYRi2wgUww8Z8URMcD3+D69D9tlshnGHVWr2
	bVJghjEcbC5MFkoLygzdyqY6x0GsZYVdWg1nX1uDAqmdFGGyW2X+s/OamRn3lEVj2oFFHyXTsUOzp
	3UmSHPmMeIDTviL8dpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYBa-0004ZM-Ua; Mon, 24 Jun 2019 23:15:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYBR-0004YM-PF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:15:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so7715200pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 16:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2IMAKyHpnPJ1yDvedXi3maHRvnqNVDYJ2coEjzpqvcg=;
 b=fNoiNIAlRLn2QPb90BjGH37+vFNKA/mLAyGEzncUaIUNKlz7FLzTUan3SXPxa1rNq8
 7saw0x1+SkHrlvHHaLtCzAuR7AUl5tVeWeM7dauo2/iU1K+AVzbwctFJ5zSEeVx94FuT
 7MMlmAJrW3AOOmVZ7ElmnT16ufcPs1Zow5dWLjMaqdWX+cWwAom1Wk+c0lBAehDJdbr2
 unMFbvikaH6zQO3eS25IrkX5zlnygUySo3Ybd8VG/p9wqDGJZ0CibWSLbx/Bn46+GRrn
 C9SbdikcTznE1mRjY+HDMes2guFt2BWypwoXZuPoBwsmUusAWHuddfXUtfS0d8dJlRFd
 Hhqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2IMAKyHpnPJ1yDvedXi3maHRvnqNVDYJ2coEjzpqvcg=;
 b=rWOSEnGwX3RgG12vxMaYjln2cW1tsl4DDYmJzytS9rveP5d+yATE1yhFtxDQIwnWrW
 sKAgXet2WhpszjVlgQ6NzlgkmNmxImy7L4Xc5wrJZk2t2LP9Ls+9mHn5mfqJZcCFaN7D
 3qaqzfoCOa9R8sgdtGcRR4YvLy+8/knvZGHCprzTjm6ri8v8xgO7RI6Ki1hrMHpT+Woj
 PFMQs1xlkORIMwEjYQkgD7EaU8HeBqFDFH7vgTGmruaOlyoiGj0HcWj3vniIs/OzviZ9
 crE32lIwtoi8vml3RuMVtR0AuQFvs/a1Dp7LhpNJC60FNh03umx9gHfz/sCxhqBFWq5u
 P7AA==
X-Gm-Message-State: APjAAAVKoNWpd0TE+LsYvZknZ0Jo+1zDqMQQCc65Gsj8NZpXmcmd9F8R
 rRDW+1lxydEYi3Wmy1xWIiFkhQ==
X-Google-Smtp-Source: APXvYqwROTeApbbRvj7XZr2xOey7lePNY05i1p2vtda9bu6wK0pvM2dbxuFwX8hcBJqIgVsFRVqElQ==
X-Received: by 2002:a17:902:42d:: with SMTP id
 42mr144122426ple.228.1561418132182; 
 Mon, 24 Jun 2019 16:15:32 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:559b:6f10:667f:4354])
 by smtp.googlemail.com with ESMTPSA id v9sm16566583pgj.69.2019.06.24.16.15.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 16:15:31 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: 86zhm782g5.fsf@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/9] drm: meson: vpp: use proper macros instead of magic
 constants
In-Reply-To: <86tvcf82eu.fsf@baylibre.com>
References: <86zhm782g5.fsf@baylibre.com> <86tvcf82eu.fsf@baylibre.com>
Date: Mon, 24 Jun 2019 16:15:28 -0700
Message-ID: <7h36jyy3qn.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_161533_915879_4C3C47D1 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> This patch add new macros which are used to set the following
> registers:
> - VPP_OSD_SCALE_COEF_IDX
> - VPP_DOLBY_CTRL
> - VPP_OFIFO_SIZE
> - VPP_HOLD_LINES
> - VPP_SC_MISC
> - VPP_VADJ_CTRL
>
> Signed-off-by: Julien Masson <jmasson@baylibre.com>

[...]

> @@ -97,20 +97,22 @@ void meson_vpp_init(struct meson_drm *priv)
>  	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu")) {
>  		writel_bits_relaxed(0xff << 16, 0xff << 16,
>  				    priv->io_base + _REG(VIU_MISC_CTRL1));
> -		writel_relaxed(0x20000, priv->io_base + _REG(VPP_DOLBY_CTRL));
> -		writel_relaxed(0x1020080,
> +		writel_relaxed(VPP_PPS_DUMMY_DATA_MODE,
> +			       priv->io_base + _REG(VPP_DOLBY_CTRL));
> +		writel_relaxed(0x108080,

nit: still a magic constant here, and it's not obvious why it's
different from the current one.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

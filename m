Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B25CA48E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 13:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zXgIW0nZhJv+qH2mSd8f3LBUaQe9W5WAZn9x90F9Ig=; b=YyoM8TStr41zy3
	tykY0nhDyF39rxs3OPjJnQmXjjgxRLdE+0272pMqBjSl8xqiJy5B2ZuzA6OPMf83LDWutyAI/B9S4
	e2E7Q5c3CKPzcsTh3mk7Gj3sa3PdlxXb2l+LGtvS/5Sl7bgCMuZW4b6w7+T8FKFir/vxPWIbwSJpz
	/Og3UJQLnMEB3sYXZupYuZaXreIQEVsrl+6WsYR2qQqF2NGUKRM5jwvMxyFmTRc7Vr6R70XWKOSLr
	iaZQgwGky/HS85/Tp9E6GUY9H6vCdqJHrg6QDN1x8TdKGbZwQ0X2ZtqU+qDbf7tF0ra6AosF7kMej
	PdBCN/PYdh2v9VQcfMfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4O2z-0000tL-Id; Sun, 01 Sep 2019 11:29:29 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4O2n-0000sx-0d; Sun, 01 Sep 2019 11:29:18 +0000
Received: by mail-oi1-x242.google.com with SMTP id 7so394839oip.5;
 Sun, 01 Sep 2019 04:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DjNYoP0TZjOYpbU4nYIgEpFHwbIKmPPLiFzVEjdvaZg=;
 b=bkdN6BO8eAl30cWYew33QHGFT9cJopCCWlD/vsFFjQaGz3Fc9EjQZ4W/ukbLppZV2P
 Zg9MvFarnFdjh9jp06N9mwJjvs7IKsXhhc7JTFb9AenAojzTgNiTBRGE0v7hXusB0Qg7
 b17iL8zwOQ2XgKagS1q4RHVeuaNhOjSajZH8WKsArRWkywx+0A69Fui74XQtKwzyvJpS
 uRM1U8i23COUJLo7/cQeuM3vRiEQrU3JytSkE/CjSid0Ol1HkKoH/pytDodkRbgFFBls
 qFgih7cva/RE8Tq6BCxXLe8jJjnrokgKTZk/Rh8NqVS8drzarN/QKLjHSPZzufu6rv1N
 RJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DjNYoP0TZjOYpbU4nYIgEpFHwbIKmPPLiFzVEjdvaZg=;
 b=J+se01alk5nTQS73e3y68KAlWgGOSrP5Z0CxKCCAJE0MM2nZ0Oe7DWmyleDA7BSZhH
 oaQgSNKMeRfsnfCo8B0Xw+aBUkGeFVv5GLOoaqIgmbY1bPWu9cpM9uYRZmgFLO9PkAxW
 I1ezN5X/FW4d3D0pU+McybHWeOXWEALCk6RPgmGD+AEbjOpOReYF4R+ZQcASE5IW/BY+
 5Z3dNgXlQjGbXzKh2cMHANdCAtHUoNWFHa5PTocQXO1/J+poO+21zyULVl7s+RjdeYZf
 BBNfVLhLuNeyO3Llh6mOP94A9hdCITac9u6TdMoxswhtZS6Fk8NKNjuElfdb6HhCSgM+
 DeUQ==
X-Gm-Message-State: APjAAAXLdvSVX/+BTZObvwiTUeOemJsMBE/QGPxmYAJRAAa2rSjBcDuu
 /bYvblX9RIjyR/zkk+IkH4ThUVeTYp3ab6JgGcs=
X-Google-Smtp-Source: APXvYqxxXKXRUZLMHQgk0XoewqNh98k6Y0rpItgSJzPuoeBuz1EBdkqcp55bFlX0B41vfDbAAe9Icj/tVYTN6vp7Ft8=
X-Received: by 2002:a05:6808:b14:: with SMTP id
 s20mr15778496oij.15.1567337355596; 
 Sun, 01 Sep 2019 04:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190901105410.23567-1-repk@triplefau.lt>
In-Reply-To: <20190901105410.23567-1-repk@triplefau.lt>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 1 Sep 2019 13:29:04 +0200
Message-ID: <CAFBinCD96nJBPnyNgWA6CgwE2kZrkXB3-cgbV9aQLB=JtbrN2w@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: meson_saradc: Fix memory allocation order
To: Remi Pommarel <repk@triplefau.lt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_042917_084800_E9A977D6 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Elie Roudninski <xademax@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 12:45 PM Remi Pommarel <repk@triplefau.lt> wrote:
>
> meson_saradc's irq handler uses priv->regmap so make sure that it is
> allocated before the irq get enabled.
>
> This also fixes crash when CONFIG_DEBUG_SHIRQ is enabled, as device
> managed resources are freed in the inverted order they had been
> allocated, priv->regmap was freed before the spurious fake irq that
> CONFIG_DEBUG_SHIRQ adds called the handler.
>

Fixes: 3af109131b7eb8 ("iio: adc: meson-saradc: switch from polling to
interrupt mode")
> Reported-by: Elie Roudninski <xademax@gmail.com>
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you for fixing this!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

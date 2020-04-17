Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8201AE6BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 22:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jslytir2WKUNlfprvuElKUzZUsOE75srHd9h6RrYXLs=; b=s9Xlp/dugoN9u2
	LBeuUbQ9RKHVe/YvRRDpR3873NbFTTgnClBzFtiex0gMqopsE0vqT+90rouJ5P0G0lkfbFpVdcpfk
	xYKO4Y8DmQ0IyYdOHWfBRhlgOt5PzATv4jwrqfpNbe3qiUYwcAUNCKEu8ebYI9NEl85B5hAArL1un
	yvk7XygKOFK6vgj2iNZO4ZuQ2O6z+Vt0DPt8GAIQcKmzZzARdOSlhyDyEh0/UYo6K+qF/6lz+MbOa
	wSPzBtICGrlII0oMnZkrlJiVgk1F8+WDTaEBlHJ86dY4Fk3vJ1huBVswmkrMS1u0hE7EIvnDiaoV9
	QwdwvjupPMDTEByVwxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPXWj-0000TZ-4T; Fri, 17 Apr 2020 20:23:53 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPXWW-0000Sn-Gz
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 20:23:41 +0000
Received: by mail-lf1-x144.google.com with SMTP id r17so2856681lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 13:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t7jDGAFTNBi+XjMSBhubcEwzn24cikxPJ+UJooGzTKo=;
 b=I6kWS6gjv4eTLRFLt+Q5HaMTN8cpgPrWfzLGfiKcjv10a/3iUwhTUGv/iC1g2+rIzn
 YIAxVvIpZWnW67zzjUz8V5s+vS/hrm4vQVPqTKUrHJ6dPrNT0V4B1W2DDd/niy/mcoV/
 ltnMemnRjiHuQlPvnGUzCZTO2FOTP/NQlbh94TcI0trkPJ6TUBSqLU9Rp5e5snxBEHiu
 /n5C9bZ2+3A/PlXU4ZAqSk6PFPJ8QrfUmxwbvhCCPIOq/Iz+jkOrB2GDUrG7q7JHD0Ym
 H2LSUBUM10gR+bvlNApQk9suHIEfKP3WuitwqA67D5eyfSAO51TDVgcoEvhW9358qpa3
 B03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t7jDGAFTNBi+XjMSBhubcEwzn24cikxPJ+UJooGzTKo=;
 b=U66X1eqoV8/0aCNZAyWk7O2pw0pru8xkStCyO4Tv8y5kuutDXuBeZe7nOeNl+r8UF+
 Q6TXSlzffUeUaVS1uMTPmdt6VjpEdj8hO1DWyms8NdI0uEHLG78qxgj9xVzOgE6GcfVR
 iQout14dYfUX73nhZBn2LljCa5iP7iSrlJtm5Ug/CMFJ2jgZpo2FambTfiKF20mN4A8y
 3BznwEuLcvw1agU0MsjKY3kNoTt9W9NZG7nlf2UcGJycN3+mt6/eP2MifpsD1WgC2i0x
 46625wM5BAB6+tOtnyx9OIfwlL3bntOghgi1ZpeEvsVKr+8XMEAgxCpBo4/7q1ztMFGG
 7nBA==
X-Gm-Message-State: AGi0PubikWYOzpp04KKt8JspZxywwMGaK+ZqAN1nzPL9N4dcVvWdI6jh
 y6x56C+iNmYV7zdmeET935x3T9FJ0LCdkPg6J0NGxA==
X-Google-Smtp-Source: APiQypIOpsBb9Nvks6MpXKBJzURwDYZ9iwlmGzKQ+jEn7+oaciaM+RlGdAfEFl6NaN3A9RPaqL6UVJp80f/QOhijaBw=
X-Received: by 2002:a05:6512:685:: with SMTP id
 t5mr3081701lfe.47.1587155016742; 
 Fri, 17 Apr 2020 13:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
 <20200409013947.12667-3-robh@kernel.org>
In-Reply-To: <20200409013947.12667-3-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Apr 2020 22:23:25 +0200
Message-ID: <CACRpkdZ8U_EbmdpT-BnXWtz_MksCnf+0W3bKD3CMxq=R2d5oXA@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm: pl111: Simplify vexpress init
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_132340_576146_11E68F29 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 3:39 AM Rob Herring <robh@kernel.org> wrote:

> The init VExpress variants currently instantiates a 'muxfpga' driver for
> the sole purpose of getting a regmap for it. There's no reason to
> instantiate a driver and doing so just complicates things. The muxfpga
> driver also isn't unregistered properly on module unload. Let's
> just simplify all this this by just calling
> devm_regmap_init_vexpress_config() directly.
>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Rob Herring <robh@kernel.org>

OK... looking at this.

> +       if (IS_ENABLED(CONFIG_VEXPRESS_CONFIG) && versatile_clcd_type == VEXPRESS_CLCD_V2M) {
>                 struct platform_device *pdev;
> -
> -               /* Registers a driver for the muxfpga */
> -               ret = vexpress_muxfpga_init();
> -               if (ret) {
> -                       dev_err(dev, "unable to initialize muxfpga driver\n");
> -                       of_node_put(np);
> -                       return ret;
> -               }
> -
>                 /* Call into deep Vexpress configuration API */
>                 pdev = of_find_device_by_node(np);

So this finds the platform device for compatible  "arm,vexpress-muxfpga",
ha!

> +               map = devm_regmap_init_vexpress_config(&pdev->dev);
> +               platform_device_put(pdev);

So then you can just do it like that.

Clever! Hats off for digging through my (unnecessary complex) code.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

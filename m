Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1A734341
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pfyDP1qGxNuw2UYG9w2Sxn/mv54Hlzy4iCIEKtTNFE=; b=eqL+cSXyOpYc4+
	29SIdEBZyxGFBivnBC/mNkiWwpBUmQ6hcaWCBKJAMTU3ELAxDVzzpYpidD9OkE75fLV2gHOhqPywj
	ioWSPRgi6XFWsqz1g9VJD9VD0M9g9pCsV01gdH0FIzt0zYx/W6cZr69lnH9Qw++epvPo9ae5ZLcim
	PzhjhQONLgryTl+VkdWU/4svaTgCv+Bru2UD87u4bQ5jVoH3AwIo0g2EYPT+shqdzs47tTWK9yJfU
	OlAU0m1pCx9mLdhYd6rVILs1Q8iRkxjrIS1Rvn7nXlM9usUK1MMheDlTXsk6sGw+WzQYXk4PqLbZd
	mIM7UFDb/LxIPID9LnjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5p0-000758-TJ; Tue, 04 Jun 2019 09:33:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5ot-00074E-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:33:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id s21so8350396lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 02:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wRCxsdtOibuHWniTvRjkJuYuUvyqKwna7YBc0m5IVcc=;
 b=UHwD7GKHxC3C5X5dgPpu/iqjCdsjNVRqtDVIZyaKoba6XS4suf7QIjYuluxqRmsabz
 /na8yIjIbRR2VvAEiYtFN4sFn2ubGUcjRtDDs6b44BFKKv89nR86UO2jGy52hnPvfx46
 4oVE59EdezY5g7xj2cuElXA0cXOdc0U1RSgws5SO6hKWeHFnhl4IlWzvnRokLndGSJ4k
 NWW+1Bn/BReSoBJcimTTt5B0bJ4a6DfEBAcMaJgJFwLOb8BnoUq+c0EJKkGLdxiCGm9y
 MkjmrHA1bXauhHh4cdgwY30/0XNzTZLLILPyPoGvN6NW67TjMLDAHmxJp9A0E7iZN4R+
 Hz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wRCxsdtOibuHWniTvRjkJuYuUvyqKwna7YBc0m5IVcc=;
 b=dFT7Tu5gzy6AuAJoz/UZf1NLWRDa7yE//AYX2029LrRg0paolfBjhu0hORN1VbRhah
 VBLAkbjchYOO4rUiMN3xgtTFNbPhoMM3c5EwKkjK0brpEOuhx1/ZvYNgLdemD+7fbZPQ
 yf2UTMwEeCaCtwkAxOJBDE2X40jOzqep+5VZXiElIfk13vqeaNvido7yp7xsjgd9z1O7
 lKnzta7PVyxxh7tR6r+ro1jkgGLDZR4/pJ4Q3KTAz/ioJt/izp7gUlZ5IEV083Row8hT
 tbc/MixnLUqPtX55EKfX37Hchlvwv9CJY7XEcmd3GDfR83FMciXyMmqx73IxIoWjJZhN
 V3ZA==
X-Gm-Message-State: APjAAAX+4pxZN4774CFshng/gRQReYKRUyi2lofUTy05h2mWgFnwHydX
 kIfGYiU0razVXsvHnUUlOCx+MXaJn0oht1Hhty6RAg==
X-Google-Smtp-Source: APXvYqyrP8pdeVtz07P1IH9BWhta46YZkJ5Sm9D06iqPl5VqTf3sKI7zXgP9mwg/IgoNozHT4gWj90zU9nhRoUdXHKI=
X-Received: by 2002:a2e:9255:: with SMTP id v21mr9392465ljg.178.1559640803528; 
 Tue, 04 Jun 2019 02:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-5-codekipper@gmail.com>
 <20190604074632.tby6r57vjehb4jne@flea>
In-Reply-To: <20190604074632.tby6r57vjehb4jne@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 4 Jun 2019 11:33:12 +0200
Message-ID: <CAEKpxBmP6UJkfzqP-AkW5sDzRcb6W9J6vM7C6DAqYVvpEKfxcQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/9] ASoC: sun4i-i2s: Reduce quirks for sun8i-h3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023327_605897_5A104881 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 09:46, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, Jun 03, 2019 at 07:47:30PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > We have a number of flags used to identify the functionality
> > of the IP block found on the sun8i-h3 and later devices. As it
> > is only neccessary to identify this new block then replace
> > these flags with just one.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
>
> This carries exactly the same meaning than the compatible, so this is
> entirely redundant.
>
> The more I think of it, the more I fell like we should have function
> pointers instead, and have hooks to deal with these kind of things.
>
> I've been working a lot on that driver recently, and there's some many
> parameters and regmap_fields that it becomes pretty hard to work on.
Hi Maxime,
let's sync with what you're doing as you're more lightly to see it
through to delivery!
I was trying to clean up the driver as some of this seemed a bit unnecessary,
hooks sounds like the way forward,
CK
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

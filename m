Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622931EF79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgRBUf2yXyvap97/MGk1PqjheiV7H6jxwhi2l6b1mM4=; b=lzpviqijMWE9wl
	Zf6YGzOqCqWQaiCteVrTwhoEmhyAa0CYT7vMk4hgkna4CuFpPvfgZ45TlM2xIKruVgs2NbCq4Xy2v
	Zn9Ge1f+yuVhZnvUm5Zau9sE0gtTzSg1mf8RfbRkqulXHBxYUa7zgyc/5efa5w3lpH0rgpMXadptm
	gqiJ5ihUD77LfFj0pUByq1K6qiuWiIRLpVYymjc0/oz+GtWqJekJq27Jw2qY1GQpdesnUOfgKBLN2
	NIrjaDtb7ATlbC8eIjhexgznbavsCYkx2k8hnC99waE2q/3aCKG4l2OEWUMs0mcmNzdAPdpcJQHei
	QXx4Duhvehfq3LXXKuuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsEi-00036F-OI; Wed, 15 May 2019 11:38:16 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsEZ-00034W-AU
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:38:08 +0000
Received: by mail-ua1-x941.google.com with SMTP id 94so340317uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 04:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qhei19leC0v0ZA7DjLdtqOfvCqcIJBYFgz9DlYcngkI=;
 b=oaroJl5NO9j75iHIVOTNAlnBr/aL4E1ohUkTQsEeea3XZJ4vkAJGhQEDeBrR6d9ESr
 zglYQaxjZnMOHQ3PUAzn9NB1Y1VnE6M/XP5FhlAis8HoPvrB2vebngrgqVa63OIQlFjj
 3QJBzbCLyw2i4gU1XWgA1ofiQgv26zC0eaoEgMsgG+D/RcTaw4TZ64Sk8h/VEN093i2D
 VBSUyrGXyWK7qYJQizQPcwPjf6UcDtZ0n8pIPGoRQfW3jieIYYVPlhywkXl3NSklXSgi
 blezqhaxahIUTuQ1COcVUiDME7s0xvpY2+3SXnOQNVSUFpIJH4Fs8c0pf+ZNxGB28k6K
 xqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qhei19leC0v0ZA7DjLdtqOfvCqcIJBYFgz9DlYcngkI=;
 b=cqbGmt7SpWSTiTi5DO8PkQ7wYfASTvLf9GZQL75wgqjbAjHwaLzufdhR0VQyzxnBDW
 g8RLE6fk8/p5bGXdYO1fII5Qbje0UFfvzhzcMkx+Ck7oAB1stY6Y+5ql90DivVS7M7/c
 Z1x5HzARnPFp4KQPH1OCLF2aS/eZippk9AUWbKJt+OPDlVP1GRSQW54uzDkC5jO8+UkT
 GmVd1Ak4PGRIqs5SNRZnDSVIJpqCsPn1T6qoRljdetqK4YZsOFM+b1ybcEwo3pweiQp2
 QsaHkaz6TgYw/dJGESWg5i8/UX6hLCUaTLHJAE8H9dJpLRwBTeQiSxbdMpZaBoSjoXbt
 CvnA==
X-Gm-Message-State: APjAAAU6fUKkkyedKA5U9I4apJeSF9nQ5UfB+PM1EwD2USeRDzOaLDv+
 K2TweLeXHtszJn9WkWlkb3OaS12xdqsMNRO/bpfCKA==
X-Google-Smtp-Source: APXvYqx2ho4ZoBSxolOdsewMdtUC+zzflgrlf7FvoPJG2+KVlkzz73geamFsVboy/g6Mx0Z2VtH6zsmbje4Xwvjdgv4=
X-Received: by 2002:ab0:2399:: with SMTP id b25mr300951uan.129.1557920285743; 
 Wed, 15 May 2019 04:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190513091548.16674-1-narmstrong@baylibre.com>
 <20190513091548.16674-2-narmstrong@baylibre.com>
In-Reply-To: <20190513091548.16674-2-narmstrong@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 May 2019 13:37:29 +0200
Message-ID: <CAPDyKFr9HVLNpqncs6YhGvqPdXCk6mtVSPVcWDvmnrKiNB+ACQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: meson-gx: add ddr-access-quirk
 property
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_043807_420036_D04F9703 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, baylibre-upstreaming@groups.io,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 at 11:16, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On the Amlogic G12A SoC family, (only) the SDIO controller has a bug which
> makes any DDR access from the MMC controller fail.
>
> Add the amlogic,ddr-access-quirk property so signal this particular
> controller has this bug and needs a quirk to work properly.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
> index 13e70409e8ac..f8914dab06c6 100644
> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
> @@ -22,6 +22,10 @@ Required properties:
>    clock rate requested by the MMC core.
>  - resets     : phandle of the internal reset line
>
> +Optional properties:
> +- amlogic,ddr-access-quirk: set when HW cannot access the DDR memory, like on
> +  the G12A SDIO controller.

As stated on the other patch, may I suggest to use DRAM instead of DDR.

Moreover, please mention that this is about the internal DMA support
of the controller.

> +
>  Example:
>
>         sd_emmc_a: mmc@70000 {
> --
> 2.21.0
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

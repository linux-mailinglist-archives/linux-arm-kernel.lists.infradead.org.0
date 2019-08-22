Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64E499584
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+fmjJ3zJf7fGH+VWZSw7JvyOiTYX6w2XDmkD69NOsc=; b=VinK5iTue+5dIo
	pZxl6GKroAsVugkZH8jfg56XeLktUeSni01XF1oHfeHtjYk/kKVJ2GWb+4iMx70wi+4WTqvVZet07
	n8H9dY78qovrZfbs3Jtz4JepFv9suV6sB8h1AGJgTDkXKwfTgkbIreHt7iPa1+82Tz08cSJCIfq4B
	ZG8+xvHhI4NRBUOLbhsqjpzFSsXtjs9ZV5ubKb3xQ5UeUl4y8v4XJ5XHNdqIynTR8NYxr9Lj8DyMG
	iuWIDMSfwxkhNy9J2oGCaPNyYCufp+De8ez21Ftm6GUVty+vZyNCxGf1DhOsq0UuexwYVFuD0L4SV
	+XVFU0LfMUBHXw4pLl9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nWd-0004vQ-DW; Thu, 22 Aug 2019 13:53:15 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nWP-0004uD-Gp
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 13:53:02 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 62so3879107vsl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 06:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tuGMouOtFOL6qd6oBESyF32JYfPiKh5leEjrSnKcwpo=;
 b=RIpf24nRH3NUjh7tR/MywKsXGcriypUW3Nw3anrRX3qatgw7KCnHTkXo3cU/OFH3X2
 NQeZCbxcPKcmtt7MbN/GPbEOg9oYcgPV2XCjK02rdsa0QPEezNRFzYcsNkaBHcH5Pe6y
 UqMYqZIINSZ39LZeTGVvj7L/jZXZFHzYNFSUmk7gxCW974AGFMP85ICYFbaLD2jmircr
 bHH603dKDy9u//yt275AVzVyqZ+GIXaLMYfSmSyxAUt/ZZqlHex64BJXlaG9J0iUkY1B
 SY++cLbJvsB6MHyhQotX+Y+tXTaF1SCJAFRyK71QAX/he5OHCp3ajltLGSNtA833uZNO
 esaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tuGMouOtFOL6qd6oBESyF32JYfPiKh5leEjrSnKcwpo=;
 b=fiOnauI2X+voDZHcKc+h8KzgebZSrbOh8vwPZI+VlhOskfpI40tiC31+1njrottQ93
 sHOcIjEsMT10errjf825XZy24OS4ipEriXxX5XHjJlfaP2OlZCTwNFC/W9s8phTzjMa9
 YadBGUPfJe1wY1eKTV7XFxf9IQKX1J7YnP5rn1lDLoHPvJzGN4d88rTjolg88/VMUR4w
 8pSRzemGuE3yq2xG+fMObK5tEoRebdr5pIGVLPcUbaw9KTfdPuCcPcZhsVXH+F6rdY1+
 3plSS4vP/ZFOg8FT3sZ3IKULPdETFAr5ISQgRffIPrkXahdAYM+QvaQV5m+hkKN7NllN
 uTlA==
X-Gm-Message-State: APjAAAV1a+Lhq5dr6ipNHQCeVY6hJ2J2iN98tGVnJDnio+N4OYUVsmQP
 f6Uu32fpLJMqXJX89ZsRhqOKS4BWqkEtqciQLACqbg==
X-Google-Smtp-Source: APXvYqwLUBPKQGwaCHNT/xqZtRG5kBo+RsrpLvjiu+PO1wXYnj3Lf88aoVFjhAhrpB2zEipWIW/7o+VlnllMarHDCvA=
X-Received: by 2002:a67:61c7:: with SMTP id
 v190mr24937528vsb.165.1566481980346; 
 Thu, 22 Aug 2019 06:53:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190708173330.13217-1-martin.blumenstingl@googlemail.com>
 <20190708173330.13217-3-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190708173330.13217-3-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 15:52:24 +0200
Message-ID: <CAPDyKFoFQ_QvHD-+Mg_VAR5rqs3CM_h7dw25p81JTzE1Yz7d1A@mail.gmail.com>
Subject: Re: [PATCH RFC v1 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_065301_569375_0EE9C341 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 jianxin.pan@amlogic.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 19:33, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> WiP - only partially working - see performance numbers.
>
> Odroid-C1 eMMC (HS-200):
> Amlogic's vendor driver @ Linux 3.10:
>   7781351936 bytes (7.8 GB) copied, 134.714 s, 57.8 MB/s
> This driver:
>   7781351936 bytes (7.8 GB, 7.2 GiB) copied, 189.02 s, 41.2 MB/s
>
> EC-100 eMMC (HS MMC):
> Amlogic's vendor driver @ Linux 3.10:
>   15762194432 bytes (16 GB) copied, 422.967 s, 37.3 MB/s
> This driver:
>   15762194432 bytes (16 GB, 15 GiB) copied, 9232.65 s, 1.7 MB/s
>
> 1) Amlogic's vendor driver does some magic with the divider:
>       clk_div = input_rate / clk_ios - !(input_rate%clk_ios);
>       if (!(clk_div & 0x01)) // if even number, turn it to an odd one
>          clk_div++;
>    It's not clear to me whether what the reason behind this is, what is
>    supposed to be achieved with this?
>
> 2) The hardcoded RX clock phases are taken from the vendor driver. It
>    seems that these are only valid when fclk_div3 is used as input
>    clock (however, there are four more inputs). It's not clear to me how
>    to calculate the RX clock phases in set_ios based on the input clock
>    and the ios rate.
>
> 3) The hardware supports a timeout IRQ but the max_busy_timeout is not
>    documented anywhere.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Martin, overall this looks good to me. Once you moved from RFC to a
formal patch I will check again, of course.

There are a couple of calls to readl_poll_timeout(), for different
reasons, that I have some questions about, but we can discuss those in
the next step.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

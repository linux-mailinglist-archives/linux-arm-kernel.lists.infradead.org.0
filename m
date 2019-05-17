Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813D221A21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 16:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMpFHofRZkZ0cUKOmxSvPc/qnkTaHlxIbUOrCCMgjqw=; b=Gy5iXfmAklPDwP
	iYd9yo3FA8jePgbfsys5Jvlw684I253nMbtuJqRdBrSroq3HJKLZJiL2j3MWEu2DJZlaFh1mEgCzv
	SQJda1yf3kR/ZY8P5y/yy1w+yDXu1kKKKurQhhDTvXh1sHBI7g6gJX646Q9ElL3G6wc72OL2IRQa+
	E5PXnqVEbbTZtq3CHXyRMizdbUYfnsioZVgOlO8YLBVJD39i6iGBVBA6LSQ46L0NubYbWyJpfZg+S
	RaIHdSGz+wQyDd+NOZlXh6+bIbFCItCiO8sz/8a8WOFJHWk+Jsr+AeNg/ApJWBfeQpf0tjP85sV0g
	VhpHeiX1NoH6WTNvieoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReIK-0001bf-BG; Fri, 17 May 2019 14:57:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReIC-0001az-S0
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 14:57:06 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEC232177B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 14:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558105023;
 bh=8NWJcx3ooQ/0x2P9XpShMBRYpatRIjFujdiQFRhPQ7U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sHH7dNPs+Ij7ABTDtmkNtRCnGfl0BepHRTE9Sn5RIxZJFk/tv8ReWxQDrvk2a+GVb
 FRjwzlmLUj7wL4bDDBAg5P6I5HxcJlzbG3MXlXrUCDa/4tk6Cgq/lX8tfujobgmGnU
 Ev1WX61YA+OHt85jrhg7kFVF7327X5DdrR2lUU2w=
Received: by mail-qt1-f170.google.com with SMTP id z19so8236464qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 07:57:03 -0700 (PDT)
X-Gm-Message-State: APjAAAXS0NPQpdWHq2LQf3dJ/by7neneP0q1nKnTBdn9dl5idLg8zESc
 1jPc9Iw8GX4HVAGFwr4UlX1RABYMBhJ06GbiOw==
X-Google-Smtp-Source: APXvYqwtNHRN41jK8D/vYX5vNqxH+cJahtZpPoZtyIj/f0gwgz5EytXbWp2ggnbV5aRbcJF2mVQdCua+GJxN8TOxzHA=
X-Received: by 2002:ac8:3884:: with SMTP id f4mr49917057qtc.300.1558105023022; 
 Fri, 17 May 2019 07:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <225e90a94e9558db9f72f64aca05b0951b88c7c5.1558017853.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <225e90a94e9558db9f72f64aca05b0951b88c7c5.1558017853.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 May 2019 09:56:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+X8uyA6rJFXJWSno8eHz1LAE=Ywvo9DZ4FZTdEEjU=9w@mail.gmail.com>
Message-ID: <CAL_Jsq+X8uyA6rJFXJWSno8eHz1LAE=Ywvo9DZ4FZTdEEjU=9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_075704_919225_1CAEEF4E 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:44 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The MMC controllers have a bunch of generic options that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>
>   - Added back the cd-inverted and wp-inverted note
>   - Removed the dependency of cd-inverted and wp-inverted on cd-gpios and
>     wp-gpios
>   - Fixed typo in the title
>   - Fixed default in the bus-width property
>   - Fixed typo in the wp-inverted property
>   - Removed redundant type on cd-debounce-delay-ms
>   - Switched the dsr maximum to hex instead of decimal notation
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 358 +++++++-
>  Documentation/devicetree/bindings/mmc/mmc.txt             | 177 +---
>  2 files changed, 358 insertions(+), 177 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/mmc.txt

BTW, in order to avoid updating every reference to mmc.txt, I think it
is better to leave it with a note 'This file has moved to
mmc-controller.yaml'. Then we just update the references when we
convert those bindings.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

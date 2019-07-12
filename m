Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AE366F9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHuTC4PIqm7+280B5X7rwyFcus/aBytYxo/IAujnN2I=; b=u1FbaJ7jFRnCAb
	JpNtGujZkbV1AmcJRn3CLH4ocFe1jvXHZ81zyEnIW/ji6KfhydPFzNCihmcW4OIoNy2egqwuzJtvc
	GYgcnpJ1ZCQKqgay8YFkNcAJy3PJWnvWaHA5vzFOpqBKd0YFSv3XS3PL3eqbIMi64glhnc83A/f+s
	5hMa1xq3qIL0cbgmS6YfpQcd8l7JQoKadRCm5Tp2kfPBFxvdHPZaevrb8iJ76jDZ903GxEa+1sWor
	ygHBhsjA1eESIQnpirW6x2zgN4o5A0e8S3B4+dlM1U4z2CdGjFj2KlMEwP8Zh87X+saMhKA5vrygb
	QUEEAd6hBVXM6cProJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvHF-0006IP-TR; Fri, 12 Jul 2019 13:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvH4-0006He-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:07:44 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89318216C4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562936862;
 bh=8J76JtIM5UW4BCsga1T8Xf5XDKop09AqspKP/Vk8ggU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XUPNPXY4lv03ZbwHL8wnKmXnCnfoDk2qK3bWro79xj67IUSK7OKAGvlhOqU7VYwjk
 mcTbX4Vq4+CDJx24I3iP7YIjLW0p3f24ZpXMTrs8ybfXqiQwUeHkKk3u2Ylm1hDBe9
 H0F94uby5Z1sx44dAWNzYkj6CdShtLLOP7DcciMM=
Received: by mail-qk1-f175.google.com with SMTP id g18so6316384qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:07:42 -0700 (PDT)
X-Gm-Message-State: APjAAAWPC7uQXohXzH3lllaL9ZxqRRl9dU4KfbwcRbOKc2Dn8PDxgjfv
 heMe9l4P7+LAA8zq6O/Bn76T5EIwLTQenhtfLg==
X-Google-Smtp-Source: APXvYqwPav7WNzk1nC8clhcOKZKa5N2Lh/bDVhexp0tydAW/XvWKuUtshKyZEaqfmvWDRKsvZut5biiZ/R7wYPtJ3pE=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr6365679qkl.254.1562936861782; 
 Fri, 12 Jul 2019 06:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190711092158.14678-1-maxime.ripard@bootlin.com>
 <20190711092158.14678-3-maxime.ripard@bootlin.com>
In-Reply-To: <20190711092158.14678-3-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 12 Jul 2019 07:07:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLrVRsWM5ORM9QwjgJyVuPUauCXcY24Qvevvo7wRWgvmw@mail.gmail.com>
Message-ID: <CAL_JsqLrVRsWM5ORM9QwjgJyVuPUauCXcY24Qvevvo7wRWgvmw@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: dma: Convert Allwinner A31 and A64 DMA
 to a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_060742_994173_13C46A12 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 3:36 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The newer Allwinner SoCs have a DMA controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../dma/allwinner,sun50i-a64-dma.yaml         | 88 +++++++++++++++++++
>  .../bindings/dma/allwinner,sun6i-a31-dma.yaml | 62 +++++++++++++
>  .../devicetree/bindings/dma/sun6i-dma.txt     | 81 -----------------
>  3 files changed, 150 insertions(+), 81 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/allwinner,sun6i-a31-dma.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/sun6i-dma.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6E07CE1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS9iuUGt5Lwb1rzZ37BYeYWYG8XXFAAtzWZ9FPORMRg=; b=l1zmcaojveoSbx
	5HIPl/s3jumcd0PJi+5kcOHG4ipkkXliQXDfrjnsg15oKcOwSJfpBjKcfB6kml7C1bqP6KOhX7i8T
	8Fy7ix7XlBP/mIwvEioWLXNHM4s+69hBxRzI9j35ke1np9yvyGlFr+5bLbqtvCGOsufaQRZnNF/WZ
	W27gMhoVpKl5SqPwsuh466vVf57kJKhwJS0fQMrWP0nwlIFWBDiz3C8QWRn70I6/R7RxWMZ5OCQ/Z
	ZlECFi0D0sIw0Ah36ePkTKate7tIVlFb3Sz4PXeeAxIXpQ8JKivMmH6xTiRJRloL5Rkpby0ko7oSl
	Ua9QtzENKHTAKZo0yYTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv6T-000648-1e; Wed, 31 Jul 2019 20:21:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv6L-00063e-Vk
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:21:35 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 247B1217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 20:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564604493;
 bh=uPV3P01fdDXwMC2cp3sSm5uScorHAgvNqHFvPCSEGX4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AEnAskS6xAAvTRE0lKbqhHqm56UPT/l0aF8ey/7glcr1N4YxT9JBi+CufNHLY6dDK
 gzD2JGkqICh5d4yd9yN7h5CuWmeyu/4es5cE9nipVVG28YHfKtkHayDfsuYW4Jc48e
 LXKJbg+r1reEDYBM7XGPCH1lAOlDkOcUNDLRhtYY=
Received: by mail-qk1-f178.google.com with SMTP id w190so50179827qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:21:33 -0700 (PDT)
X-Gm-Message-State: APjAAAWUOK0VeEGB/lGTp84SZGiRkKwtq9Bn9Z+YCBXP8ovGrjzcaGx4
 gOqGVKqwFGbPu6eprDJ9mNcF4dxkPwtOJw1TDw==
X-Google-Smtp-Source: APXvYqx/FUJ2et44J7TQ9mbGJUlcFyES8MnWGe+AQ/ZmcKGbi55yNvCflF0msvkyq6b1XqZwq80IkL9tQOi07uZbE2M=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr17417772qke.393.1564604492244; 
 Wed, 31 Jul 2019 13:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <5b4fae5978d309641fa8ba233a9efe2b48201cd6.1564603513.git.mchehab+samsung@kernel.org>
In-Reply-To: <5b4fae5978d309641fa8ba233a9efe2b48201cd6.1564603513.git.mchehab+samsung@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 31 Jul 2019 14:21:19 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+n9g5d7GkJRJJohfQywzuQNbOam=FbsDCaQu86Z+4zfg@mail.gmail.com>
Message-ID: <CAL_Jsq+n9g5d7GkJRJJohfQywzuQNbOam=FbsDCaQu86Z+4zfg@mail.gmail.com>
Subject: Re: [PATCH 1/6] docs: fix a couple of new broken references
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132134_040143_56DB656F 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, jfs-discussion@lists.sourceforge.net,
 devicetree@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 2:08 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Those are due to recent changes. Most of the issues
> can be automatically fixed with:
>
>         $ ./scripts/documentation-file-ref-check --fix
>
> The only exception was the sound binding with required
> manual work.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>  Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt | 2 +-

Acked-by: Rob Herring <robh@kernel.org>

>  MAINTAINERS                                                 | 4 ++--
>  drivers/hwtracing/coresight/Kconfig                         | 2 +-
>  fs/jfs/Kconfig                                              | 2 +-
>  fs/ufs/Kconfig                                              | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772CF21A3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pd47+f2rGDf2Re+TV2HyKToDO9VlJQzdGPOs1Q+QeQI=; b=mKh+fzlO6FZPmw
	UUdB4xCHRtO5SZ7dlqr/yRApo9e8jZAJZC9uO0j9oCeAHIjYjThfxLN/oQAPNjF+q0m/4VlCFYqxo
	Xy43PYlUiTTEiK2l46/PxG79UTJHvDRPAn23yL92mpzdrX7ZhBBaJzEeY/6mzqCcUZjtzW51pdeGq
	lVT33UReQIocesNd3IV2St6LQoU0COBC/0lG5bR306Nlp7emodBFWRe5baSRelB3wGwVAyx5XMTfx
	LzYhZniN3EtchTgv1EyXpmoMhJhoq4lIqWXb0hX2WyEEfAmsnJo4WzT749cOg2kYmJqZ5PjVyljSr
	lCGw5VBBqxuIgW6RSHOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReNC-00045S-CA; Fri, 17 May 2019 15:02:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReN4-000454-JU
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:02:07 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ED43217D8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 15:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558105326;
 bh=F2xzjbmPebq5VH3JMx7EEVAsi4CNpDivddgn/1jbBAs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XdxBsIykMyAOabldCz0HuF+LJmO2C5zsJ2+NoTQzHgPcLnVcN9LT7h2Vs4qtynT9k
 e4urQBoDCEMASdSI0DbYvveILygSgBFQbSb6ehyGgbCD8bltJ923MStVW5SfQ285F6
 73YYvqSHjccVh/gm/xsZugZbMVy2kPhNAR+z+3pE=
Received: by mail-qk1-f177.google.com with SMTP id z6so4608372qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 08:02:06 -0700 (PDT)
X-Gm-Message-State: APjAAAWAUgmSMcFuN11woydbbPH98BGUk6YihOj4Kohj3S6EPZma1X1J
 rBl4CICuyaKR12aqSr1Iifb+3F17fheB9aEncA==
X-Google-Smtp-Source: APXvYqxJ4ypnBJ3cGt4vROxwCij49/tt947ZHeY9PErfDKK8wU2HrMDkPhuoMSAUYqKiKLM0ASN0u5gpEYnHgxklVDA=
X-Received: by 2002:a37:a8d7:: with SMTP id
 r206mr32659301qke.264.1558105325399; 
 Fri, 17 May 2019 08:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <225e90a94e9558db9f72f64aca05b0951b88c7c5.1558017853.git-series.maxime.ripard@bootlin.com>
 <5e126d3a9be35a288863189854ea3828f7e5ad14.1558017853.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <5e126d3a9be35a288863189854ea3828f7e5ad14.1558017853.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 17 May 2019 10:01:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLOKBhfu3D=pN4ZOzouAGVL_T=W0hE+LudEOGxJXTBhUQ@mail.gmail.com>
Message-ID: <CAL_JsqLOKBhfu3D=pN4ZOzouAGVL_T=W0hE+LudEOGxJXTBhUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: mmc: sun4i: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_080206_663821_B575A753 
X-CRM114-Status: GOOD (  14.46  )
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
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml | 98 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/mmc/sunxi-mmc.txt                | 52 +--------------------------------------
>  2 files changed, 98 insertions(+), 52 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sunxi-mmc.txt

Reviewed-by: Rob Herring <robh@kernel.org>

> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false

BTW, I expect this issue will be fixed with the new
unevaluatedProperties in draft8.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

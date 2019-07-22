Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827B07016E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/j8mAs/RB3vbHFYFoDP/A+njHGv/0njgxiarAugvCs=; b=P0BR7DY7O8W+3n
	n3MGoMJm2g1IXq5rltDhCEa9r9yZmiFkwSzNvHUw79BTmP8QCWR4CWT1Z2yaXH9NR7Fly4upSTFy9
	n16V5fZJLz7FjQAwYx++mbHV30Qv8PQqx04Bq7u80OjdJRkI34SjMxMu8VzV1zYTNlCST50t5WVmC
	9RU3zI6Qe538Qz3Z1BxJs65pM+kxYZ0Dw/QA/zD1b2XL5ZPuXbd3Xgd86eOdMYp3BtqJKeIECxw3z
	q6PlAil0VPrRd8YO5AtygAzAnHNuLFE7jTnJ6KCnXejLFj5X5tmyUBzlc6PHbDzqbgE2f9ZCyxzJw
	vLNd52wa723ZrOOLDKIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYbc-0000qs-O2; Mon, 22 Jul 2019 13:43:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYbH-0000pv-AQ
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:43:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r3so26081240vsr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GzeJmpKD7dB1BcnAqy2fLUAETNrLhEZq/GzIzifX3rM=;
 b=k9ec/yRYrEBUkxwk582HRuZ4bh/6llTYhV1Lyfw+mNJYkWylldnN6VCrx6g4FgIzOf
 fFVYTtxL/EXr48ISMBlPUUt+SozF/0RKzg5JpMyJDF56m6g34zuYVofS6Kb3JBDWO5w1
 BjfwU4DuUN9g1mQBXXBMm66PmXKSpUM7AcxKNOTuSQGH2+ma17JiRCGnnq7FLmqGO6/y
 LRDeoMSaw74ZKM74DzzqPcgsplk46aQBAXlGpyia1xuy8Lw7R/sYRAeS7Z260ZzDU5SA
 fm0eq7nLgw5Svdvk04NOKL/eBzFd18N2cO0L1dZV+uNWucq3jm+vdwKHXay0YfyKs1kX
 pL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GzeJmpKD7dB1BcnAqy2fLUAETNrLhEZq/GzIzifX3rM=;
 b=j2d/8fqHCGuSfTMtwFJZdEk97rzgMluqmcnjGr8s05CNlQjhUkY/9PSDM/37mpUM06
 +o5GWURfIeTT2KJWG3iUqYBIEvrBzTsFNT2ONqQafoZOb11DTwFososqucFZ4aHOEXk6
 hcXNmMv3ofd5l60Myiu3Zg+YJV61aFeAaYvhFHp2jfjfnbALumKKQMB5A6iERghklmK1
 DuR5R0OKMkgp+5oWl/JA1uS6MB8FzPmswtRApwjdQlGtFOkUGLp0/PWw4rDjMDRjW8tU
 FNxZPHwpBESufdrMGZzg8zDdQptg8j5hqRyQfJ1jT2XTwWkqG0WCUQa6u2mfJ+9KjoY2
 Jk2g==
X-Gm-Message-State: APjAAAXey0UBYlWkheWc9smYfj4i2wSBe9pn4nNevaH/eGP1Jzvo6fhw
 jT3aB9hEIwvnKn8mXht7DN3+FJO+wHuAX+BzwxrLzQ==
X-Google-Smtp-Source: APXvYqysofOLp0mqm8qYUMlKBMjSTE6XdBRitpLtn07et9m3ZF2oRHXMEjMC127T6JQoRdvv8wb0ReINVSNZU/xMTKw=
X-Received: by 2002:a67:8709:: with SMTP id j9mr42148022vsd.35.1563803014581; 
 Mon, 22 Jul 2019 06:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190722120740.8966-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190722120740.8966-1-maxime.ripard@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Jul 2019 15:42:58 +0200
Message-ID: <CAPDyKFo-HwgkuY1Dat=FXNior0fFcDdD_QtxWqFb5rYGCLNc6g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sunxi: reorder MMC compatibles
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064335_363281_2A8B3CAA 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 14:07, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The MMC compatibles in the bindings are not ordered as they should, so
> let's make sure it's sorted.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml        | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index df0280edef97..06329115dc6a 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -29,18 +29,18 @@ properties:
>        - items:
>            - const: allwinner,sun8i-a83t-mmc
>            - const: allwinner,sun7i-a20-mmc
> -      - items:
> -          - const: allwinner,sun50i-h6-emmc
> -          - const: allwinner,sun50i-a64-emmc
> -      - items:
> -          - const: allwinner,sun50i-h6-mmc
> -          - const: allwinner,sun50i-a64-mmc
>        - items:
>            - const: allwinner,sun8i-r40-emmc
>            - const: allwinner,sun50i-a64-emmc
>        - items:
>            - const: allwinner,sun8i-r40-mmc
>            - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun50i-h6-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun50i-h6-mmc
> +          - const: allwinner,sun50i-a64-mmc
>
>    reg:
>      maxItems: 1
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

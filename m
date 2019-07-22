Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702CD7017B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBx3BF2tfVEqpNALFxMOtlwxlhFUxsFLwSyvwMVQCdk=; b=mtJP8RCTb5zdDT
	xUWl/Q3jBfeCSKf2+xVs5E+uw0mOVafrENXlQ8aFy0ZE2U8eZUvwZhrZGNG+biXx+PYiJiRl/sd78
	ksU4B2Svt/OHDpWIY2xKHbHVV6f/m37q9Pn+xt4Mf/f3zywL0x8IXLn8MsJddbslieN89tHvN6gaJ
	4o8tZwmDLRJOA6KFS5tK7ykWYjQH8Hm2CqqvBFXopaEZyWqL60h9SF5aRnsVMln5j69yL/A0BaQ8O
	xKch2nQ1QAw1Wpb+3cIMzOEYNXLSMdnClFEPnJkN25unW5JJn/MB1OrJnAeBBkeY2it0jZ53k1rh1
	jswVk+gZJ1QpZkWl+wbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYd4-0001zN-M0; Mon, 22 Jul 2019 13:45:26 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYba-00013H-3m
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:43:56 +0000
Received: by mail-ua1-x941.google.com with SMTP id g11so15302573uak.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iRYfNxmRGZxja2aVerHwx+L3OctiiirveEgY/SpoZGo=;
 b=LyH7T9dlRo7g4lnuXgZU64vVwhjnpNVE0dmH0+KSUIiLJSNWCQgZoqIWq5XaHwhC3P
 8ydM6v5YUdfeTPYmUnfjEaWYR71/3wbRj6bX555P9r6zI1LS/fttMxBXbkdw/wWvRLDU
 4wsCi9S5vleIdvxmfzsrwtxs8rpXO/3bcIkqTngmeygsWEqdkzyqMgBelhlkBiwo+r8e
 NLE4VgjkjPGj59aOXIT6Gh0EtoVYSYzqd29yGnndn89Kgfs5QqgwQKNycm+J0NcQuBSB
 SFlNjifPIw+SBmO1a3hfIsuMspDoiRCucdhfptRR34hhCDLg66Rh9glIUFXAGZpIRBS0
 6gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iRYfNxmRGZxja2aVerHwx+L3OctiiirveEgY/SpoZGo=;
 b=VzEtr2H030XR+8rV23R29/HUtP7zLlvcXNXbhHKAsz3jdMW340RUustv1wsqE1z6Mg
 sHEedfAJk8dUOrsdIGDNG9t/WNoeqPwzMNc11dSWaPReeclp8v2KNgPGviR9Y3axY94D
 aVxpq0M4pcIljy3nUiK/m27IXLuuKKH2+8mvhb4lc0SLhtC7v5Mj4RemALymolXEHhRm
 kdYFp5wK25U0YAK32avDoUO0/8HJBit239wa0Qr6Pjt+kz7IfYHUgEHGQ1lKSVmrDpGV
 q/P9eOTA7ZiMPuUPvNiUq0gVURoPSmRla/CnWXIupR5gZ640yApixmndWMlGmd64wnt8
 ciHg==
X-Gm-Message-State: APjAAAVydkcsQYBv6U/8uQG1DJQZ5w6YF9WoArLZaMdNUiel4ZfT05AO
 JLL4hTVkt/oiw9BixVxfoexE8jvCKx51s4oSgcHKQQ==
X-Google-Smtp-Source: APXvYqw3AfSjTqhb46VrvlwGb6HfSPyjBQ4zqei8hoJZ9u+BGXpYvPmlaOewG1Gyhz0LPpTnVsahsy6rkH67aXY7HR8=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr41461397uad.15.1563803032923; 
 Mon, 22 Jul 2019 06:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190722120740.8966-1-maxime.ripard@bootlin.com>
 <20190722120740.8966-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190722120740.8966-2-maxime.ripard@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Jul 2019 15:43:16 +0200
Message-ID: <CAPDyKFr+W4jofZb1Ajt4hyRFYBvB3M64cM=zW5AA0=gcp6OWnw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mmc: sunxi: Add H5 compatibles
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064354_543415_43A73C4C 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
> The conversion to the YAML binding left out two compatibles. Add them.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml    | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index 06329115dc6a..d2d4308596b8 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -35,6 +35,12 @@ properties:
>        - items:
>            - const: allwinner,sun8i-r40-mmc
>            - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun50i-h5-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun50i-h5-mmc
> +          - const: allwinner,sun50i-a64-mmc
>        - items:
>            - const: allwinner,sun50i-h6-emmc
>            - const: allwinner,sun50i-a64-emmc
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

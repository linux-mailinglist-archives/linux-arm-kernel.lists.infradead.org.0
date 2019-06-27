Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8E357C5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xtxw2CMRjDK6waUuWSYRzouggxx/iSdvpFkGflYIRgE=; b=CLzQ0P1miop3P7
	br+w+WEtXOOtP3TSe7OgYWW+G8iiAG2t1TwnwkBERxMWE+FL+QMa5Xis4fggKcoqKhGu1xRpGDS5n
	D/YY8646XUx7891fPYYyyy3fqCqtuLwrG+7O+kqSFkoJEBzhtxRRggQRo2bsgkEwp1JPlqjUxEBEk
	nZPT/ZVJNnxS/W5TQ0ponItBO0fpnq20AFLfTk9QLl02BjHqebWLWH++00/RKvF3L3FX7nPTN/tkn
	jvGSCYbSen8tkoPppYcVr6YQhxjnPaSUebXW1suiTeSpwJWYJNSl5HZs0l0MO3BhlaucxJ50JvWbE
	0dkfCrA7r7PRv5xxNTQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOA7-0000Pp-Fd; Thu, 27 Jun 2019 06:45:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO88-0006KM-J1
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2KVsZBY5LFFo4gY6VFlLWm4C7+0s80NQB68c0PwknKs=; b=F0ttKjGgE3DtEJWAEaEyTykAv
 MLqqL81DEwuoiuwAmoCRB5CJxhCZ08U9yNR8jbDJ5qggJvCdyoAuHZEzpHLEMPSM8Wd1i1J5XCUtV
 YjVm9EV4y89v/k+Df0lo746HSZuAk5Xte0M1Y34H/dynO0zjPWxZhRElrgdWcFb0IevAzbeIMVu6s
 j1h0Nrl+NQcdPeMeqLvklDKB45igHXbGJ1DltgpjkfihQxdVyA6LisnaC5rsJd1X8YidvUNmvFEuy
 lnHSxC3voSSPaMMVWFvN8MhPNcK0Uhsjl77KL9hqEDftABjrKafhHrGJKZbTixbRUBGFHsZndQa4V
 7LOZiYnEQ==;
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLCI-0006M8-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:35:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id p144so522262qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 20:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2KVsZBY5LFFo4gY6VFlLWm4C7+0s80NQB68c0PwknKs=;
 b=CIH3DEPisvLbPTZi3wGI1i0TO6B3EfYZ4CM7za6PasawEQwEPzSBOS2EYItAnRotMN
 nOB68MyZj2/cOYouVjFwjG2GMNoScQjVrcU9FtqqisfIN3GYQi/GI6j2w7t0LZspAEZY
 OxPlsgmasoWbTm8XsFglyvqYvmDiZcPezKJzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2KVsZBY5LFFo4gY6VFlLWm4C7+0s80NQB68c0PwknKs=;
 b=Kp1kQPi9wUrJeT7zYWMhMIw20jy0clTd1hZQ+h0sfdsIzJ+SEVX8LdNsLb5L+7uDcE
 +4hYHCJI7w7ZpOJLFDROr1C/xRSZ9+WR6j646vJp0DKnsMz+hs6S+zHESh4eH6mWGuW/
 xmHuWC3dL+Lyh/Ckfwz+tsKnTzdza2yGD0esMEyPLAGf9QluBWQdKqO6O64HainvML3X
 CeAZMlin2dpLaaWBSh60oV20qvspSoMGQn8UkomEpmtk3bG47DK8uSGoiuUSX/yTp80P
 E5Acdpc5sI+u/J+7H0PJcA8hiEGvt5lmSgoHQQWDa50swD/wQxHhbM8wujw5/HrB2PrF
 O6Ow==
X-Gm-Message-State: APjAAAXsRpJtttjEj6v7NAcQ2GhhVV8SEV9qNYhGeMf/BJ20XbakmFZD
 eU6a+C3TlXvhxmlY0vfUgVShI73fLefaP9jegKs=
X-Google-Smtp-Source: APXvYqwXbb3SH4AresCUU4pzniix+MHNP2zt84LdWlLd+3IFX0N+wQdttTRFErJ2Y5pcpv3VABkcH8J/i1o8Fv56cF4=
X-Received: by 2002:a05:620a:1113:: with SMTP id
 o19mr1389916qkk.330.1561606418450; 
 Wed, 26 Jun 2019 20:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-7-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-7-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Jun 2019 03:33:26 +0000
Message-ID: <CACPK8Xf2xvQAm8sad-xTt_yNO0-ed+PG8mVDujS8EsXzZw4J0A@mail.gmail.com>
Subject: Re: [PATCH 6/8] pinctrl: aspeed: Clarify comment about strapping W1C
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 07:16, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Writes of 1 to SCU7C clear set bits in SCU70, the hardware strapping
> register. The information was correct if you squinted while reading, but
> hopefully switching the order of the registers as listed conveys it
> better.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Acked-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/pinctrl/aspeed/pinctrl-aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.c b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
> index 4c775b8ffdc4..b510bb475851 100644
> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed.c
> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
> @@ -209,7 +209,7 @@ static int aspeed_sig_expr_set(const struct aspeed_sig_expr *expr,
>                 if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP2)
>                         continue;
>
> -               /* On AST2500, Set bits in SCU7C are cleared from SCU70 */
> +               /* On AST2500, Set bits in SCU70 are cleared from SCU7C */
>                 if (desc->ip == ASPEED_IP_SCU && desc->reg == HW_STRAP1) {
>                         unsigned int rev_id;
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

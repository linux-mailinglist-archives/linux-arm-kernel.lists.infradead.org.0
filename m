Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715D256AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6eOVo/ILhfP5QOqxyBGrleE1dnoD6DV4TB+3WFFdGA=; b=VfbCulJUY5Ifk4
	fDJBhN/7VFxf22ilA2gqbQD/3Tw002PdcoTqMvf1b4DVtp00ZQany3SHUn0Oz4hxgoPTBsYO9nrrR
	fDL0gD3H0+yCBbCX2v/KIrMtKCRDyItxVdegfcM5qfNBHvF5Zcm5Z0eq8Dg+MapipPS8HE4WrDxYH
	35kMky9V0sUCMjyhcNOfK1TqSjxdnqtydOwJc9ByCqUfCzMZjhcPxy9KGLxzRLnKgEVNYMd9NsAzx
	XVZxzWn526jPgD3STZRqt38cnRYLqRyh9J420NkwAie1Qtr1U+Zq8j8BE28Qnz2KS0myKSroFmFU2
	cFzw3Ff279Y/KF3NkBzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8XR-00056t-H2; Tue, 21 May 2019 17:26:57 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8XJ-00055l-7u; Tue, 21 May 2019 17:26:50 +0000
Received: by mail-oi1-x243.google.com with SMTP id z65so13389269oia.11;
 Tue, 21 May 2019 10:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eJOLO6+fT4P+SCiRyBPi4+7nDWuVS/cC7SMFnlO8FSc=;
 b=n8lCd1SP0iIV23NZM5l7ia3aHOMNEtqfLvquCPcDPsnqwrEWFZ6vl9vMTQd1JRdQeW
 UXnFXy2vE1aEiifYnBqCVNna1rQH8K42SPgJjgyioDfJUNT92VDuAJx4Cr+reAYATiDn
 UOuJaaZ4PYi0cMSNKj5rrruCriHDjB/stgLnUu1+LH4TivLCmw89/aIaQ9nmfOekILtW
 wDNFBJWclJkOjPCeBpIj6bCh4YxXb5j7KtRis7iP3uU8QnIYH+JMtCgbPO15VZR60Tc2
 iHq6G+NRKM4NCrdZtpcARpKhCG9mABICAJd3F/9bTuTDbBcQd/cCUzhKfrtYVrHLU6jx
 S+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eJOLO6+fT4P+SCiRyBPi4+7nDWuVS/cC7SMFnlO8FSc=;
 b=UUwN9XVpf00huosUX3f8IB6KSyfqC+IaG0DIoN4XsSK/PbCNBUMJ/YoW/oP43Ku4c9
 Zh2eFwwNGEKHldek93rWSbQH+Y7aIPuhf3Ek47cChqgout2axRRMP+y3UNyCioywJTTT
 f9SKK9v0UM/Cn2A3FgFfy1AsRyxYJwSyGsPqqn/9S7m/o9s6fQtd9TzRiAWqw1LXyHgS
 X+F+upK7rwDw8VbIV48hLpqIEFKcUyRLO4yJgALeeZwuSKx8N7gY3u0qvCkytO+47abn
 jCrZAEFkKxorJLvagNyjdAccf9hpqOyUfDo+sMQuRM9eKZ/ITx7yTbTxu93Z/B1hm5Ug
 17dQ==
X-Gm-Message-State: APjAAAUd867NaZOaeP92aKlTVxj1uqoDGesKciQlxxmFzHKgf/R8tAft
 4khOND+tn9SJKPrUdzv6ElAQQJiQas22D4gsGeg=
X-Google-Smtp-Source: APXvYqyxdi56Ueg7EALlUk1Ep4gxIoClF1dtxww572zKOE3qzb9zruGzNqp+lYbXuSuglCifRABlgvwxXURBaXVflsA=
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr4436854oih.39.1558459608028; 
 Tue, 21 May 2019 10:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190521151952.2779-1-narmstrong@baylibre.com>
 <20190521151952.2779-3-narmstrong@baylibre.com>
In-Reply-To: <20190521151952.2779-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 21 May 2019 19:26:37 +0200
Message-ID: <CAFBinCCvoq0xkoCCiOqh7YHegZB4SJBjDMJTxEknDXogWiXUxw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102649_291437_0EAD86EB 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 5:19 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add compatible for the Amlogic G12B (S922X) SoC based Odroid-N2 SBC
> from HardKernel.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Rob, Martin,
>
> I converted the patch you acked in yaml, I kept the Reviewed-by,
> is it ok for you ?
yes, looks fine to me as well

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBB5243EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8l5LcvM6ImuN5WNKygDQK68kmwSWri0mvHk4WSuZBcs=; b=MX4l12OCvLscuB
	f88LgZgO8LrvEM87DXBNEVFhq885PGAPqifBN2XKcKd9LBvbN1aO6krqxFjGj3cfnyTIAhealr6si
	8pF7KKyMY3mekV1jyteccJRqmFtnlApGFeCcQGsE6iCM6f5eRv5vZT3jeKAIL3OPksbphY9opXMRD
	B9w05qc3VAtEkEVd/ZVlJ9Gi9EGyhFjHf8Tvz5NFx/jWNrnSAaPvoelN7isqAwdnl3rGUd5N9AIg7
	e22k+P7arUqGK0fnT/oTFRrxrogUr1OfRZ/tLxCcoog3aysXJ3zV0vCPTGtkAkt8I3VtgVeFe3Hp5
	8zCPQyu/x/6T5lMTDC6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrOI-0005gQ-9v; Mon, 20 May 2019 23:08:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrOB-0005g4-8a
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:08:16 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2DF72171F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 23:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558393695;
 bh=ADrBNYwjJaQRdD8qP6L3ZncT4kT3HxR4MJLlIgRo1fw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QDEaFDw4x2j8sWPdkyEZ1Gc/aTUCHVN17mXVua90r6wy6VVcJZlLguJdTsRDWlsms
 kfZTrCGxDTc4JCu9vFiNg4ww4LhJ1U5LNEQbSmli3itLi65i48W+f7Z3W1eV5qaEFO
 DfTycFiMXIt2iVa8ZXrlMFW2yhotvsHI6nTLJhjc=
Received: by mail-qt1-f177.google.com with SMTP id z19so18276382qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:08:14 -0700 (PDT)
X-Gm-Message-State: APjAAAWOU4Dc8qnA2LuhOfiC3jdr4rOROUgYGtbZcFgVY2ICrrlVaOlU
 lhkHTpi9uXEaIRqyw6zs/CFVP/nHjBq0fq3ZgA==
X-Google-Smtp-Source: APXvYqwbvpvnRbI++0UunGJk2DioJdUwpLpIyA/fbn7qfEvVnN8HhjmnIthfVEA4znX5UdjOIGfKuO58qc+BGQfRS+4=
X-Received: by 2002:a0c:929a:: with SMTP id b26mr61995364qvb.148.1558393694150; 
 Mon, 20 May 2019 16:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
 <682af95d93f4065ee7ab6a5d6f226c848f6a7da8.1558363790.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <682af95d93f4065ee7ab6a5d6f226c848f6a7da8.1558363790.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 20 May 2019 18:08:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK4aj4tNoHpnhkJfw_2+sf=EZkZ14vC=nnUDTM0Ogp20A@mail.gmail.com>
Message-ID: <CAL_JsqK4aj4tNoHpnhkJfw_2+sf=EZkZ14vC=nnUDTM0Ogp20A@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: spi: sun6i: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_160815_318039_00AFC1D9 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 9:51 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix the slave device regex
> ---
>  Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml | 106 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/spi/spi-sun6i.txt                |  44 +------------------------------
>  2 files changed, 106 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun6i.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD0396A10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RHv52rQcu7TvgY8s//iVkhb2pDzuGKM7dtEPSLWnUM=; b=HCxdNuhs6t7M8W
	XYlLSvI9Tfy9EPGgMeOh3ze2ZJxxb+KYbqs42kmDnBMGsjvma83U8J6nldxTslpNRs4O1tCz5igA5
	J4Ta+SYnYz2z7KfvVVQhNNaBJKdqs5Gtafp+P1HQOboNybeuLMb5UPO3+8s4rr4/GbJrI6c4QCK2K
	kHu5bmLdb4Oe5Gb+DgRVBpusOssk+Kh8kxp/prPFgXC5KXWJP2V7YVAPt1kVskqP1mYiEqXjZo46i
	eD/t3j/7BmJkHOQN3ig+UsLZZbolBcB9X6IQwHw/kAnxbnQp/GHYx/GigEf3jrrjSKQtDlUA/Y3AK
	GlS7NSnL1g6l2642jOSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AaM-0007b4-RQ; Tue, 20 Aug 2019 20:18:30 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AZs-0007IV-V1; Tue, 20 Aug 2019 20:18:02 +0000
Received: by mail-oi1-x244.google.com with SMTP id q10so5144269oij.0;
 Tue, 20 Aug 2019 13:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Do7rgk/e6SkhLJFZ//u+bS6ASixL3x/VgaGx7XQsINQ=;
 b=P2NLC74e2Xs4De0rALlzIE89sgPJa7ppZiJEI9MWLGs0qL2LH2HICwhHdHB3ZKksYB
 rB6zdVMTZjDHASjONz8yzVN77nDdxdKc68tT0WSOQFhMIuG2OB2yUqpPpz+QNIuAdSLl
 ZW3vPXRtqZMk2lcw3bykA/IjHi/b1+p78uzKpcFWqHMXLEz+JiumEsaUigTCdHzW6mZY
 qo557pm2wEkp3Cc/LqJpTnXLEFXbAv186VF1dX+wtWCOh+QjUTdZ41a5jsY9JttG/NdV
 1HJs7dGhKckeqyro77ZmRwnT3C911pJxRwMUir9fM1+tFMWjaoOhXStFjjuh6RkVduln
 JN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Do7rgk/e6SkhLJFZ//u+bS6ASixL3x/VgaGx7XQsINQ=;
 b=Q9EY49ng1SKrswymuMfmYWIKD4mTNsWU1OXf6/RIwPH9NNJouT/fNw84XlHkaR51FI
 YRl3zNMTwlH62/E8cIoiLfInBlvt50ATABKi0MHFwpmDIAnydIEjGDiNPvW5odAZvXp3
 G9BIz6kQusuj/WDt6xhOQ9e/jkFsanZGKJNakEppkci2gy7K+OdClW9/7hKJmSSATFMT
 dTqcbBOQh0DS5YzsvxqPT4yckz84VykEU+XFZdbVj4hZ6RvhD/668LL0ice2tAlDH7Pb
 jSdChfvibvWDnmiBUgRAWLujpTazhTxdA8RczkwKKHQJypBqa8mXQRGXX2kdYj150SHs
 dWyw==
X-Gm-Message-State: APjAAAXVrHLGM6e6rkgbpDCrORap+ngRDb9BpuD57lAWkvHH5CIhafnn
 xDpzJJ6ap1IYhnObXOYhruCjYQn/cf8jXxjGVGw=
X-Google-Smtp-Source: APXvYqz8QBrUZytquR+jcvW5t0XCKEchKH1yCSzPctu/Wl30VX0pR70g4FhY1GPwzBppfd5C5vdN/whftMemITke8kg=
X-Received: by 2002:a05:6808:b14:: with SMTP id
 s20mr1332830oij.15.1566332279621; 
 Tue, 20 Aug 2019 13:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190820075742.14857-1-narmstrong@baylibre.com>
 <20190820075742.14857-2-narmstrong@baylibre.com>
In-Reply-To: <20190820075742.14857-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:17:48 +0200
Message-ID: <CAFBinCDP898fhoqh8wApfrsqAuv1dEQSoxy0yDA2hHKxoFsr+g@mail.gmail.com>
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: net: snps, dwmac: update reg
 minItems maxItems
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_131801_039483_A01F5921 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 9:57 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The Amlogic Meson DWMAC glue bindings needs a second reg cells for the
> glue registers, thus update the reg minItems/maxItems to allow more
> than a single reg cell.
>
> Also update the allwinner,sun7i-a20-gmac.yaml derivative schema to specify
> maxItems to 1.
this looks good to me because:
- allwinner,sun7i-a20-gmac.yaml now restricts reg to maxItems 1
- allwinner,sun8i-a83t-emac.yaml already restricts reg to maxItems 1
- amlogic,meson-dwmac.yaml (introduced in patch 2 from this series)
will need maxItems 2
- (these are all yaml based schemas for DWMAC IP)

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

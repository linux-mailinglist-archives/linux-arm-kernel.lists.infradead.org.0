Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E06AF538
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siwRpLsOd3YCciQxzQbhw+TV+eKtXBd7MXnO4ee3oTE=; b=ctcqBqMxMoQHsv
	ZfBq27OugijsSQQqqEIGcj3TZoNUfAXteYGIRQYEVa/ZB8fNruvHJxLPPUm/wLjmnMZMh593AoFxh
	VYHSQF5CfUiqhqL2IWJifqmnD94Ag1vCkRvX5dte6JM2nqgnTdkLh30yv7dD/07dN8AN9f4dhB+X6
	hnHa738xVh/wYoR3gLO3VWCYG6xm9U/1qukQa8dWInDv6nf3hFfb+5lvkMueCtoxfDItryj4Oh6O0
	o9xknFZqHDGP6j0903JmH91ClzOkt/WKi2RK2x6Yl+Z6CDXIKBU7kZkvi5OGxwtqo8qz554OJ+miA
	vJ1ovQ1gKuaMmFddKV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQii-0005yY-IF; Tue, 30 Apr 2019 11:14:44 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQiZ-0005xs-J5
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:14:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id o10so7700844vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 04:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+apvPOK9hOKuyGFcfXqjcVJRX/KMiOheouDto7GSYrU=;
 b=OlG3x6DSEKoTSrHDdX3ybp6fgR+JxEYnOW6sgWdoouyfjOMZfIZE834Z0i1m4d147e
 yh01OWpa7Edvr5/DLSw4qqB8LMCNiX6xfb3u9ldeB5liaei3o+eamVJpoz15S4Di9YII
 N6OoTOfeYCULR2C/P3lYgfImFJYDCIrkgWUkZczpN1A48fy5NIuyoJS3kmm+qXRQDaW7
 fQTR+sko1QYp8Y9xuuWEQmS/WEufRgOb11yfjRtsiozp+zLSS624cIH40INcfhqvWQzF
 5/ZF1BLNue1OMHom1HohEH3No7Eg1JyIyx+xodFErGChH//VZmOfMLRkNZCuTkzjv/Ks
 d+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+apvPOK9hOKuyGFcfXqjcVJRX/KMiOheouDto7GSYrU=;
 b=YUVlMReVGSKsFpU2F0MFqhLDj4Qje3b4W2bgGWgaoQGpOwhLagRY4o7I1ohHNhJqQM
 cGVA6jv+3cRNoyuAM7TEEVgcqr8LpkyxoGlBh5VJ9C4geNc+kQhFItXmvwMKoVgPZXcn
 mu8Bz4KsloQ3MJSie0NKOuVLd80yJ/Rs0P6OeYJyTE50c2Af6pqiMyfAYWGB87PGqbJj
 26VZQ13Nqn+b+Il92cxhCx3NpHh949TH+B58QSXjKAKH3ESU4uKxV5K07Q8LwRxcJ+73
 Vj+T3zWpW9OKT+HaAzYv8b1GHvbfOu1ntapxpk3BivMclX0ZiB6GKgVDfjiff7hLzMTx
 fnAg==
X-Gm-Message-State: APjAAAWpMO5od/TeOKWhLZohTkoVtSvCX9kZ/rgdtjf5jQ1F8+toF/md
 3No5ggBpeko3c97ew7p3zbsECYqEqZqBP7DrMcq09A==
X-Google-Smtp-Source: APXvYqyAUnACtUpQ/7yb1Sl1GxiGdH/gfNEqoAuzPz1Lm3B7D3UA4Nrusr1PmU9LKsLBG5dbHrkeoO4MOXsyUmN5ypY=
X-Received: by 2002:a67:c987:: with SMTP id y7mr310439vsk.35.1556622874058;
 Tue, 30 Apr 2019 04:14:34 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
In-Reply-To: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Apr 2019 13:13:57 +0200
Message-ID: <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_041435_635436_96EBE2F6 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> This patch series adds busy detect for stm32 sdmmc variant.
> Some adaptations are required:
> -Avoid to check and poll busy status when is not expected.
> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
>  different.
> -Add hardware busy timeout with MMCIDATATIMER register.
>
> V2:
> -mmci_cmd_irq cleanup in separate patch.
> -simplify the busy_detect_flag exclude
> -replace sdmmc specific comment in
> "mmc: mmci: avoid fake busy polling in mmci_irq"
> to focus on common behavior
>
> Ludovic Barre (5):
>   mmc: mmci: cleanup mmci_cmd_irq for busy detect feature
>   mmc: mmci: avoid fake busy polling in mmci_irq
>   mmc: mmci: fix clear of busy detect status
>   mmc: mmci: add hardware busy timeout feature
>   mmc: mmci: add busy detect for stm32 sdmmc variant
>
>  drivers/mmc/host/mmci.c | 61 ++++++++++++++++++++++++++++++++++++++-----------
>  drivers/mmc/host/mmci.h |  3 +++
>  2 files changed, 51 insertions(+), 13 deletions(-)
>
> --
> 2.7.4
>

Ludovic, just wanted to let you know that I am reviewing and testing
this series.

However, while running some tests on Ux500 for validating the busy
detection code, even without your series applied, I encounter some odd
behaviors. I am looking into the problem to understand better and will
let you know as soon as I have some more data to share.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

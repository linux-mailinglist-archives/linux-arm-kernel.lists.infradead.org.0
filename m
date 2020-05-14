Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386771D29FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxQO0gIbXwx59oqGHnUHdvKCRLS/LHBC6s3e9GxKGsw=; b=E/Eu4x3FBjdXdx
	4Vff+neFGxQQAcOOav139RUV/pBRtirP0MStDcn0u1n35gg7CY5EE0QwYi4VBwZ1f+aw5Oh+999ft
	GitBenf5K3geo8/r6Cq+FCtJIu0GanaBlQHx8uHIgtyTwVNJKMzQAUrNoPFZIVyTr7nmyFV1ONt9K
	DzoSX/bckTrDMV3ETHoMmhhCKXvAV/KhNcHEVxbeaRuljFNLcIgyAeNnoBJhcpz5M/9tRxxoeK3oF
	BJjQkFAOH1EJNjIpDaBy7+NarnpHvvecI/a4ssvpfUnH6JgleiIOUn7hNWvTfOtAvneDu8Rk4wGPw
	bBRggR8YV/+XCCIQnxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9Ag-0006Lc-C5; Thu, 14 May 2020 08:24:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9AX-0006LD-9y
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:24:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id b6so2568866ljj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jkb8BxKnl71QcTSlAQifB2QDBHTd1utKf7Tuku0XIK4=;
 b=iIm3W3vxPyvQT8hBr8kR8u+6yVBH0h6bfGPXKdobARfet5qpx6e2NJwbGUoVD4BTiz
 kvpn1tyKA+LwVUJc8z8fF1ZwXlCreaNrldq4vaEDBNH9cKFjh4tAUHQkvEkgZrv38eDN
 o2gz3Js+ZsuW3daffpbxtnkSsvbVGjH/1ch+B53s3SDAzYlJpVIgVSGq9BIdUF43U3J3
 PYEdm9THYdzNqhqnu0YtajA3OhEFK2moz2+zytOAdmmOqgbfZNV8YpRwBfYf+FcYfKP1
 slXNCbKogiAPZuvMbATklfcba8DSvlZ/NhggKTK4KlzEC8fEhJbI/SNZCFcSB3u8yrD/
 oIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jkb8BxKnl71QcTSlAQifB2QDBHTd1utKf7Tuku0XIK4=;
 b=lyBj7Ep6MMsVAi86LXHvaJ0rSNg7AYxo3AZnbMCfBpiu2ixXKyqWq+rjRs719SgrMS
 N2v6GV5CfjAoXNyAjzyfBu2ZbIgoYphdhsp+Ry0rDpziYB2F/ohqBWdUfq+oxallMPwH
 8gOSgPqzkf+9edBhRx6Q2lANHXEQP6aR/4keSQpBjSvcQSKT4bWK2WZDqYEUq0nuD2cn
 x8UV7pQATs7oYXZuxabTBtM4Vr8y0HqSNZYwNF+5mmL/vuqyuf+uFZBOG4Jtwmt4wEuM
 VfaLNC5gk2tJ/43F9Ac2zfryJig6iJm/BzbCpdPeq9VutcSlSIICSpEyV3MYmp+AgPdw
 Nwbw==
X-Gm-Message-State: AOAM5306+xpEys5zCs9gRHSrU0ccpkRK42kBfa6DiNKuo+T5oWMk4avo
 +9f9MfkRrdeivgS3c9ypZJJhfawEWEM6zsr/NuWNnjZhOEc=
X-Google-Smtp-Source: ABdhPJzbR0lONsL+LHNQ562bI+zZx3vzCrNYamk5GJI5zjbv9WVScZ7rOiUe3C6sarzGNmAWB4jF6RMUNqx0dbXgSxU=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr2073815ljh.223.1589444679816; 
 Thu, 14 May 2020 01:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 May 2020 10:24:28 +0200
Message-ID: <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341
 on stm32429-disco board
To: dillon.minfei@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012441_345654_96508184 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:

> From: dillon min <dillon.minfei@gmail.com>
>
> Enable the ltdc & ili9341 on stm32429-disco board.
>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>

This mostly looks good but...

> +&spi5 {
> +       status = "okay";
> +       pinctrl-0 = <&spi5_pins>;
> +       pinctrl-names = "default";
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> +       dmas = <&dma2 3 2 0x400 0x0>,
> +              <&dma2 4 2 0x400 0x0>;
> +       dma-names = "rx", "tx";

These DMA assignments seem to be SoC things and should
rather be in the DTS(I) file where &spi5 is defined, right?
stm32f429.dtsi I suppose?

It is likely the same no matter which device is using spi5.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

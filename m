Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D72718B922
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8v7v8aFY9RYqtHiJL2rAWy2wbn3jWNCxurWvsG+Kd8g=; b=PFPmM4GskaxXY6
	SOFZ3VzFLv+QyhNW9CB1EZkbgfpPbcSx04uevmK0NLiCURRv/kBVN0HMyfvJwnPlGfXfE4GyDQbd2
	+JYf4M/rGH7kwT6gPQQ3LG6ZbcSco/Fez7E7cBEADFnqPvlmbI1ockmlycNDKkw8bMkxnlOxH8gOm
	2Y/HQ37ZG3Bxuto7gZ4n1+xqRnpp7olwGCYDoIKHo0n2rzYf0G1GE+oULspSNUp9zr+8twjyEBOKb
	kqRIxPZ/xB8OGVDl8yMiFH2EIJnIkrFzT/WklxnPWCx7tYxz6r1ZBohH0angJFix3fUvQhfweOXl8
	Pqa2WC12VnjL9GM2N44w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvwf-0001m0-Oz; Thu, 19 Mar 2020 14:14:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvwW-0001lc-7Q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:14:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id c20so1779323lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OxjXVpGbkMkJ0WExSWqPpSaBQvMwnWJnTr1Wx+V8SG8=;
 b=AZOPCFBQYSqsz/AEYGuuPOzJTdJ/ZTsTX/5uwunSTWHVK4GeC09eczWB8hdsOqDQsH
 NE8V3RKBTTt/IsOKfyue6IUukFCUmj3uB93xzQ16sNd3pX1n2wcUou3DKPqS5PevTns+
 5LNt1lCgFE2eWtnlkTxMBQdN+pvFJKsgupqIqdXFoBTY7yLdtCl4MwY5foZ598hflKd0
 QT2gQX4or7spIgIPXs8+H8T97cA1BW9Up0Z2Vcurti7BHsL+aF7uRlooa5KRFECreWJz
 bd8L7aFaU+J0uvbvpWCM1DHhdsSBSToFgHhOJr52xfwt7vvwoFoygtLsq273UwCfnbVy
 J3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OxjXVpGbkMkJ0WExSWqPpSaBQvMwnWJnTr1Wx+V8SG8=;
 b=YAzIpa4UziHfU24zK0nGmCzI9d3ba9zwzZnZczKSC62cP54uO1/5B4CV4lQiwsfHeJ
 O1+yfJMU1qUAvQZ/XsSZ9X0gneC82p8GNjixCUOM3aPw/lifoNpWjRDTFxG7wEHqpuMB
 byg+uKV+oPXQ4TAL5KSOC5PDIP/6ZolNpD7RLO+4hmjTNU3ccIq2nhehhWBSS30eM3gN
 ieAjPcDKbMKP6I0TK639BmEHK+5jyr5bDDDsJ5ZZETodsDhXYTBsaJR4sIW29ozgW64t
 DQJ2eoiAMzJXQ7CU17NYHTYBNcIkpGiKjdfRRDwNdaxn8C1T3z8eU/D79IhpV/+eIeo3
 so1A==
X-Gm-Message-State: ANhLgQ3z95wfmWNuI7L6JsCfJTJbuojNFOqBeJlmWYH8KL03UyzbV6+5
 XoLzL+0xatJuIN9YFEC9q9PGYmLE36/MG4MgDUg8mG1Zc8c=
X-Google-Smtp-Source: ADFU+vt1yS1vI9ljM0gwVaf68ZRjuY1p2nfT2WzK32ag3cYSnzmKGhQi4YvVl/W8DZtvTQtWWxSu7seu9AnqnrT9Fjo=
X-Received: by 2002:a19:2353:: with SMTP id j80mr2188497lfj.4.1584627278167;
 Thu, 19 Mar 2020 07:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-3-icenowy@aosc.io>
In-Reply-To: <20200316133503.144650-3-icenowy@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 19 Mar 2020 15:14:27 +0100
Message-ID: <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_071440_331419_2EE4524C 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy,

On Mon, Mar 16, 2020 at 2:37 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel.
>
> Add its device tree binding.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
(...)

> +properties:
> +  compatible:
> +    const: xingbangda,xbd599

As noticed in the review of the driver, this display is very close to
himax,hx8363.

I think the best is to determin what actual display controller it is,
I think it is some kind of Ilitek controller since Ilitek ili9342 is
clearly very similar.

The best would be something like name the bindings
ilitek-ili9342.yaml and then:

properties:
  compatible:
    items:
      - const: xingbangda,xbd599
      - const: ilitek,ili9342

Possibly use oneOf and add support for the himax,hx8363
already while you're at it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

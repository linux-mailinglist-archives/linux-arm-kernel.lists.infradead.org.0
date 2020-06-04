Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A801EEC53
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+XZuyZMMDFh7o5mUVqN3pSKnuX66s9OhN2YjlLiTwA=; b=dLtR3k+90zKrVq
	6KFUePfVNouDw7Srb3QlHMo62ekbgjSoBV1yKDMn6ieo6NAi4hj4SGuj4yJcnMejA1NKfSeWj/Zn1
	5wyvheCewrZRslScanvJKm3+9/qrhcl6aC4MQ7EdAeRxC2dO/5qhl8E4ZFqAUjBmSR3e8ZyizRZqJ
	20ByXfukkrZ1JxXrcwwz9KlbFwOxi6jeQLGn6jEdSwNIUgOLd5US2X7HiAXNsx4hTXbC8xXC+yW3d
	NpLZCNcsuV6ShgtURDyu9yAd9uE8uF5+AAyYRydeCMFoHR2Cu+inyYF7YDXzG69Ylfks4kAUsozyz
	IJ/0Y7eMaHDmZrklTdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwlq-0005yg-9m; Thu, 04 Jun 2020 20:47:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwle-0005y2-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 20:47:16 +0000
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 911D9207DA
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jun 2020 20:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303633;
 bh=KFodmG5dxLwi01xoHP3XvvFF9k/ifovAv20CD/RAbqo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k7PE0miyDMbeR8z6yic0GzwJHBc4BnWOuy+uL5PUFHy26zjLx2c7DrAUiWE/dVFDH
 7HEjNWZWuIzljvHpDgOzFd1//3dVtoLjgsJiP49dP3iJaDk1Ue8EzPwNL0p3YWhvgb
 /IYet3YsBRn9V4Ll3IT9POl3Aw+S19y36dNyj1yg=
Received: by mail-oo1-f42.google.com with SMTP id q188so1517392ooq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 13:47:13 -0700 (PDT)
X-Gm-Message-State: AOAM530+A7hiAvD8h31Nf3d+FWnbvIroEWd5FCDHwi2Tuj7wHMlUKKgL
 RiQgOLDSOb5gyHvdNFwrCFYe51Y+Hvr4g/vvqg==
X-Google-Smtp-Source: ABdhPJwwaaT3W3YLSJDqZR+blejzcilkUVb+CLjXx9zxnhQgu0H5S8pzGVf0fGb0K342AwgdZ/YgUMdqmCyiyHTPhzI=
X-Received: by 2002:a4a:2c88:: with SMTP id o130mr5106020ooo.81.1591303632915; 
 Thu, 04 Jun 2020 13:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-13-lkundrak@v3.sk>
In-Reply-To: <20200519224151.2074597-13-lkundrak@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 4 Jun 2020 14:47:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxP8-0amAEW7-zB_QRvXSmmTfgMDj7UOuDX-6z9me0Hw@mail.gmail.com>
Message-ID: <CAL_JsqJxP8-0amAEW7-zB_QRvXSmmTfgMDj7UOuDX-6z9me0Hw@mail.gmail.com>
Subject: Re: [PATCH v3 12/13] dt-bindings: clock: Add Marvell MMP Audio Clock
 Controller binding
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_134714_699455_5FA8BF59 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 4:42 PM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> This describes the bindings for a controller that generates master and bit
> clocks for the I2S interface.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
>
> ---
> Changes since v1:
> - Fix commit message wording
> - Define MMP2_CLK_AUDIO_NR_CLKS
> - Make clock ids start at 0, not 1
> - Fix dt-bindings/clock/marvell,mmp2-audio.h file name
> - Rename node from "clocks" to "clock-controller"
>
>  .../clock/marvell,mmp2-audio-clock.yaml       | 74 +++++++++++++++++++
>  .../dt-bindings/clock/marvell,mmp2-audio.h    | 10 +++
>  2 files changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2-audio-clock.yaml
>  create mode 100644 include/dt-bindings/clock/marvell,mmp2-audio.h
>
> diff --git a/Documentation/devicetree/bindings/clock/marvell,mmp2-audio-clock.yaml b/Documentation/devicetree/bindings/clock/marvell,mmp2-audio-clock.yaml
> new file mode 100644
> index 000000000000..ab6e82d1d3a9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/marvell,mmp2-audio-clock.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/marvell,mmp2-audio-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell MMP2 Audio Clock Controller
> +
> +maintainers:
> +  - Lubomir Rintel <lkundrak@v3.sk>
> +
> +description: |
> +  The audio clock controller generates and supplies the clocks to the audio
> +  codec.
> +
> +  Each clock is assigned an identifier and client nodes use this identifier
> +  to specify the clock which they consume.
> +
> +  All these identifiers could be found in
> +  <dt-bindings/clock/marvell,mmp2-audio.h>.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - marvell,mmp2-audio-clock
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Audio subsystem clock
> +      - description: The crystal oscillator clock
> +      - description: First I2S clock
> +      - description: Second I2S clock
> +
> +  clock-names:
> +    items:
> +      - const: audio
> +      - const: vctcxo
> +      - const: i2s0
> +      - const: i2s1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/marvell,mmp2-audio.h>
> +    #include <dt-bindings/power/marvell,mmp2.h>
> +
> +    clock-controller@d42a0c30 {
> +      compatible = "marvell,mmp2-audio-clock";
> +      reg = <0xd42a0c30 0x10>;
> +      clock-names = "audio", "vctcxo", "i2s0", "i2s1";
> +      clocks = <&soc_clocks MMP2_CLK_AUDIO>,
> +               <&soc_clocks MMP2_CLK_VCTCXO>,
> +               <&soc_clocks MMP2_CLK_I2S0>,
> +               <&soc_clocks MMP2_CLK_I2S1>;

This now breaks linux-next. I think the above defines are missing
their include.

My testing wasn't happy either because it couldn't find
marvell,mmp2.h. I guess that's somewhere in linux-next and now we're
on to the secondary issue. Once that's fixed, then the schema checks
will actually run (hint: make sure they pass).

Please get this fixed or revert before it is sent to Linus. Maybe we
can have an rc1 without the schema broken.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

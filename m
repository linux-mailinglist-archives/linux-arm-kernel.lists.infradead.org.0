Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B9C16A8E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im87R9kHzUCbDtPvWMmNDyK9c8Vm0mmOG2MI2fekZXQ=; b=krwdvunRz7PHc0
	A0gtrGF3n6A+tvXfGmnHw3TmOSyKN9UdDdHi+CN0RUdATHZR1rFO3CP9JVvnsW42DQ80cb+ibY6WV
	4hRBbXG9JZ5ghYIEZuVa8yFIrUTFCA7bxjOTcYOJaSXbDw12fOQoQHh8yRzKNHkPiCX1GAiF0Vs4J
	izKgwQRJKQvLTLmWS+02opJfh198Ay2VYwDLE1FVefsB1+14WgroNCvnr1n8ejQKgcZzFmktBmDJC
	XFxhukNjx8v114I+QnG+6GcIRwwMPPCMisN8yjvHOrxAZros/Us+ZCcZgnSc9DN6NIre0vXtrdgAe
	UD+6vCJ4PqChzxPaG6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6F8p-0003Ui-Qw; Mon, 24 Feb 2020 14:55:27 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6F8f-0003Tr-Pk
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:55:19 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m4so5809798vsa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 06:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nf8Hhdqzm/gWtkB0ZWHb2rHYmerMHbHruZ0Ukrv/hp8=;
 b=tTyvRsQ3w0ChPxDQdkv7glQk3wtPZb10J3tAyqqzoRHQ8KPQTGzEw7zNYCRWKnZ4q/
 Sp8M/ZgkeF0DtmsdSoX/jaS9Cj+6QBjmmTRJVhrc7HoP/5FhbIeVVDjpdF5PLkBe58vj
 ts7HWtfrr72NlXIevmGqHAfZoSQtS3kdP0RkKaH9LgNtDi+gsiTvRDUVyaaRZ9aMGbcK
 nWLTioIrgs3f4ikzwkQv7LsyiNYZ06XlkRhH7duzXqdMOUtinyzy3B9nZHXoHNW2BDly
 Q6PiovLQ+WSUH/5StMinuKTlSvTQU7SMVrsaqT4aYLh+Nu8jmjojFJaax3RoAahqLwvZ
 0NHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nf8Hhdqzm/gWtkB0ZWHb2rHYmerMHbHruZ0Ukrv/hp8=;
 b=AzXghBSqAvOlrvKAkSgnQRFSa4aIxV7KlObB+CvAd799MSQqzx/e3F28IOe5S+cYZF
 dxPPffiZ90ElaqjcO2oZ0dFOZLxTG1lT9ayjUJW0D+Nh2WIJY3eG3I2eAewxfUEY0+YY
 gVlf8hbveT3TJq1XjOvq5bDAT1EekYtNe/+x9DE+zNOFPgkR3qwcyyBXmO/1Qpg+H8+d
 DlmgD0GNUoQXKGLhUPMcBqaMHSuaErOKQxKVso5e2n0yNC2r2b9sH+1g1KlQsJDFCxji
 6Z1eJ0GNIJc1dPvk72jcR3ZnCx64C1NoWVwPPhM55PWBvCMHQEgwrrLQAvEv8Nw+LTST
 9U0Q==
X-Gm-Message-State: APjAAAVYoacvDuT8GzPtQaE75dcQKORHQvz1QafR5waqM99tDAM9R/A7
 qaWx7LZa9JDeL8E6mr7tfThkuVoFJAcXsK1+nRrCrw==
X-Google-Smtp-Source: APXvYqwle+5L5EqgMdMX2NFSAUa3m6tBXE9trHhUlWTILDVFPKISTVy7qlGqCRTcc9lNxiPA7RF35oJihsqFh//dkI4=
X-Received: by 2002:a05:6102:535:: with SMTP id
 m21mr25212006vsa.95.1582556116187; 
 Mon, 24 Feb 2020 06:55:16 -0800 (PST)
MIME-Version: 1.0
References: <cover.1582361737.git.mchehab+huawei@kernel.org>
 <83c5df4acbbe0fa55a1d58d4c4a435b51cd2a7ad.1582361737.git.mchehab+huawei@kernel.org>
In-Reply-To: <83c5df4acbbe0fa55a1d58d4c4a435b51cd2a7ad.1582361737.git.mchehab+huawei@kernel.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Mon, 24 Feb 2020 20:25:05 +0530
Message-ID: <CAHLCerP_UW-6CdaOziHTY01cD_6Ou4h0Jj6mOJKj60P4GL9H=w@mail.gmail.com>
Subject: Re: [PATCH 2/7] docs: dt: fix several broken references due to renames
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_065517_984760_B4206B59 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stuart Yoder <stuyoder@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 linux-clk <linux-clk@vger.kernel.org>, linux-leds@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-aspeed@lists.ozlabs.org,
 Jonathan Corbet <corbet@lwn.net>, Kevin Hilman <khilman@baylibre.com>,
 openbmc@lists.ozlabs.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Joel Stanley <joel@jms.id.au>,
 Zhang Rui <rui.zhang@intel.com>, Linus Walleij <linus.walleij@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Dan Murphy <dmurphy@ti.com>, linux-amlogic@lists.infradead.org,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Andy Gross <agross@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 2:30 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Several DT references got broken due to txt->yaml conversion.
>
> Those are auto-fixed by running:
>
>         scripts/documentation-file-ref-check --fix
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/arm,scmi.txt        | 2 +-
>  Documentation/devicetree/bindings/arm/arm,scpi.txt        | 2 +-
>  .../devicetree/bindings/arm/bcm/brcm,bcm63138.txt         | 2 +-
>  .../devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt  | 2 +-
>  .../devicetree/bindings/arm/msm/qcom,idle-state.txt       | 2 +-

For qcom idle state and ..

>  Documentation/devicetree/bindings/arm/omap/mpu.txt        | 2 +-
>  Documentation/devicetree/bindings/arm/psci.yaml           | 2 +-
>  .../devicetree/bindings/clock/qcom,gcc-apq8064.yaml       | 2 +-

For qcom tsens,

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

>  .../devicetree/bindings/display/tilcdc/tilcdc.txt         | 2 +-
>  Documentation/devicetree/bindings/leds/common.yaml        | 2 +-
>  .../devicetree/bindings/leds/register-bit-led.txt         | 2 +-
>  .../devicetree/bindings/memory-controllers/ti/emif.txt    | 2 +-
>  Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt   | 2 +-
>  .../bindings/pinctrl/aspeed,ast2400-pinctrl.yaml          | 2 +-
>  .../bindings/pinctrl/aspeed,ast2500-pinctrl.yaml          | 2 +-
>  .../bindings/pinctrl/aspeed,ast2600-pinctrl.yaml          | 2 +-
>  .../devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml  | 2 +-
>  .../devicetree/bindings/reset/st,stm32mp1-rcc.txt         | 2 +-
>  .../devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml  | 2 +-
>  MAINTAINERS                                               | 8 ++++----
>  20 files changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> index f493d69e6194..dc102c4e4a78 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> @@ -102,7 +102,7 @@ Required sub-node properties:
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>  [2] Documentation/devicetree/bindings/power/power-domain.yaml
>  [3] Documentation/devicetree/bindings/thermal/thermal.txt
> -[4] Documentation/devicetree/bindings/sram/sram.txt
> +[4] Documentation/devicetree/bindings/sram/sram.yaml
>  [5] Documentation/devicetree/bindings/reset/reset.txt
>
>  Example:
> diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> index 7b83ef43b418..dd04d9d9a1b8 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> @@ -109,7 +109,7 @@ Required properties:
>  [0] http://infocenter.arm.com/help/topic/com.arm.doc.dui0922b/index.html
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>  [2] Documentation/devicetree/bindings/thermal/thermal.txt
> -[3] Documentation/devicetree/bindings/sram/sram.txt
> +[3] Documentation/devicetree/bindings/sram/sram.yaml
>  [4] Documentation/devicetree/bindings/power/power-domain.yaml
>
>  Example:
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.txt
> index b82b6a0ae6f7..8c7a4908a849 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.txt
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.txt
> @@ -62,7 +62,7 @@ Timer node:
>
>  Syscon reboot node:
>
> -See Documentation/devicetree/bindings/power/reset/syscon-reboot.txt for the
> +See Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml for the
>  detailed list of properties, the two values defined below are specific to the
>  BCM6328-style timer:
>
> diff --git a/Documentation/devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt b/Documentation/devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt
> index 115c5be0bd0b..8defacc44dd5 100644
> --- a/Documentation/devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt
> +++ b/Documentation/devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt
> @@ -1,7 +1,7 @@
>  * Hisilicon Hi3519 System Controller Block
>
>  This bindings use the following binding:
> -Documentation/devicetree/bindings/mfd/syscon.txt
> +Documentation/devicetree/bindings/mfd/syscon.yaml
>
>  Required properties:
>  - compatible: "hisilicon,hi3519-sysctrl".
> diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt b/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
> index 06df04cc827a..6ce0b212ec6d 100644
> --- a/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
> +++ b/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
> @@ -81,4 +81,4 @@ Example:
>                 };
>         };
>
> -[1]. Documentation/devicetree/bindings/arm/idle-states.txt
> +[1]. Documentation/devicetree/bindings/arm/idle-states.yaml
> diff --git a/Documentation/devicetree/bindings/arm/omap/mpu.txt b/Documentation/devicetree/bindings/arm/omap/mpu.txt
> index f301e636fd52..e41490e6979c 100644
> --- a/Documentation/devicetree/bindings/arm/omap/mpu.txt
> +++ b/Documentation/devicetree/bindings/arm/omap/mpu.txt
> @@ -17,7 +17,7 @@ am335x and am437x only:
>  - pm-sram: Phandles to ocmcram nodes to be used for power management.
>            First should be type 'protect-exec' for the driver to use to copy
>            and run PM functions, second should be regular pool to be used for
> -          data region for code. See Documentation/devicetree/bindings/sram/sram.txt
> +          data region for code. See Documentation/devicetree/bindings/sram/sram.yaml
>            for more details.
>
>  Examples:
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 8ef85420b2ab..f8218e60e3e2 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -100,7 +100,7 @@ properties:
>        bindings in [1]) must specify this property.
>
>        [1] Kernel documentation - ARM idle states bindings
> -        Documentation/devicetree/bindings/arm/idle-states.txt
> +        Documentation/devicetree/bindings/arm/idle-states.yaml
>
>    "#power-domain-cells":
>      description:
> diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
> index 17f87178f6b8..3647007f82ca 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
> @@ -42,7 +42,7 @@ properties:
>        be part of GCC and hence the TSENS properties can also be part
>        of the GCC/clock-controller node.
>        For more details on the TSENS properties please refer
> -      Documentation/devicetree/bindings/thermal/qcom-tsens.txt
> +      Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
>
>    nvmem-cell-names:
>      minItems: 1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

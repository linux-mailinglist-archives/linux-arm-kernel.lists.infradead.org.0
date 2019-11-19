Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EECF102814
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 16:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CleSeksKA9KE+2V6baBuT7ze8tWJ8LgTDyawdi/3O88=; b=MYU194oFw40V4C
	sc7JEsOvtidF6Qe30bkvI/R+FRgdzofptkN2kP94VhBCPbOwm3o+z054XHxvAH4W4axltFKYOM7Jp
	DbfmX7eA7Vx6jqLNwSFdt6xHeqse0V2rrF+yy6FYF+uJAeh073FYK/ABAf286qCnYGmE1ZYxi8hRI
	zL8bKDd+H9nLQrGx9u9LCOesb8VC8EWd9WpwIf5AMeSHP+mJVBSlpsl8b62l9x4FY2QNbhlP1bK8a
	96pbFFvp4JPirGPkNCbYoWb8gIlKTxkSL2NI6/g5HPCLxXiZDDGfFlmpn0KLs/XhZE/9nQMOaTAt/
	rQo6qmoiMoVJw4+LU/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5PH-0000G4-OC; Tue, 19 Nov 2019 15:27:07 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5P7-0000FA-BP
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 15:26:59 +0000
Received: by mail-vs1-xe41.google.com with SMTP id k15so14494678vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 07:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ruFMyMbG2A0Sl+E2MtwfMZpZ4tIYTvoy03y2qa7f34E=;
 b=O5QUCmS9kyUfhVz8hhtgitRHPjqoKdUJ/9SwehBHVCZC+F8kPasFctX4bpscUsBdLv
 Y+hIQFGK/SxaOZbOE0I6BvvLUIOnSwJZr+Y29Yq/1PCJOIEcNGcJLa+CnQSuq+RwypJm
 HXqNXAzfkJO7ajVrBURHNH2ji48BAtTKXn+EQbTacvsKMKht4Ul8NfjbkxkOvSE4T2D4
 5Y4fE5RVnfkk24AwtEtzzzd3PGuYGMIZQjQg1nC5yPOi0NVzT31U1Rk6rTU+PjSnfP4J
 IJV+Ttql+Iy+k7bstBmgq/Q6o81B9vYhb//h7DW5Q6A81X774CaFCbnEpk07zyfLSj3i
 WMkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ruFMyMbG2A0Sl+E2MtwfMZpZ4tIYTvoy03y2qa7f34E=;
 b=gdfS3zMv7ZzZFiIcf+h3ey6xx20RfrztDIC2IfwU6NQdooAR+SySmx13vWLsasg2h1
 E/YfZQLEQjrDJvxtbumNjPSCF22JSVK9wQ3TtPRlaX0/H35crB1zk2RadcCpeeTLqXcc
 lBxeS6R6Gr+xyA8L/IDcNWtDLv8Kc2q/uz6tXv1KK5Vdehs6WIsCzNz7wiJW5TkF8Qj1
 0j7JOm31PoWuy4eQ3Ei1/S6Lvm3ZMQSGRIIFe//hV5cftyhrj0MGFUl9XC0WajYnBfBv
 oOfJq5UHUNwRbYFagWZGO+U4CCXoFfL2lprCN/xCt+SEOLrm8NPTlol86fjRJQKQ9lqy
 NmWQ==
X-Gm-Message-State: APjAAAVvy05qQ1/GNeVhxQ4vaojlsWS2ZRL9fndTGEQDqSWJYqHgjBvT
 NaDWdA7i2Fn07kYKlizQ2lI+/XBFq/2Sdud/v0uJig==
X-Google-Smtp-Source: APXvYqzjmIgAqo65ZtHlzvLKQIezgt3Yysnx2zSv7S/NVt7hDgT4mebPm7ddIkvQVQ7fZBBshSpGOwXS0HaK1lReOVw=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr23440420vsa.34.1574177213644; 
 Tue, 19 Nov 2019 07:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20191119144315.11261-1-krzk@kernel.org>
In-Reply-To: <20191119144315.11261-1-krzk@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 19 Nov 2019 16:26:17 +0100
Message-ID: <CAPDyKFo7KGCj1WcOomEz_dr_9m67Jps7CJ-pKo22hO9-Bn05Hw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Fix path to power-domain.txt bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_072657_521726_40E8E77D 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 DTML <devicetree@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 Linux USB List <linux-usb@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 15:43, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> With split of power domain controller bindings to power-domain.yaml, the
> consumer part was renamed to power-domain.txt.  Update the references in
> other bindings.
>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: abb4805e343a ("dt-bindings: power: Convert Samsung Exynos Power Domain bindings to json-schema")
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Oh, I didn't noticed that the patch for conversion got queued up. From
what tree?

And why was the file renamed to power-domain.txt?

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  Documentation/devicetree/bindings/clock/clk-exynos-audss.txt  | 2 +-
>  Documentation/devicetree/bindings/clock/exynos5433-clock.txt  | 2 +-
>  .../devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt  | 2 +-
>  .../devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt  | 2 +-
>  .../bindings/clock/renesas,rcar-gen2-cpg-clocks.txt           | 2 +-
>  .../devicetree/bindings/clock/renesas,rz-cpg-clocks.txt       | 2 +-
>  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt       | 2 +-
>  Documentation/devicetree/bindings/display/msm/dpu.txt         | 2 +-
>  Documentation/devicetree/bindings/display/msm/mdp5.txt        | 2 +-
>  Documentation/devicetree/bindings/dsp/fsl,dsp.yaml            | 2 +-
>  Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt    | 2 +-
>  .../devicetree/bindings/media/mediatek-jpeg-decoder.txt       | 2 +-
>  Documentation/devicetree/bindings/media/mediatek-mdp.txt      | 2 +-
>  Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt  | 2 +-
>  Documentation/devicetree/bindings/pci/pci-keystone.txt        | 2 +-
>  Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt | 2 +-
>  Documentation/devicetree/bindings/power/qcom,rpmpd.txt        | 2 +-
>  Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt | 2 +-
>  .../devicetree/bindings/usb/nvidia,tegra124-xusb.txt          | 4 ++--
>  19 files changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt b/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> index 6030afb10b5c..e6c6b43e9770 100644
> --- a/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> +++ b/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> @@ -36,7 +36,7 @@ Required Properties:
>  Optional Properties:
>
>    - power-domains: a phandle to respective power domain node as described by
> -    generic PM domain bindings (see power/power_domain.txt for more
> +    generic PM domain bindings (see power/power-domain.txt for more
>      information).
>
>  The following is the list of clocks generated by the controller. Each clock is
> diff --git a/Documentation/devicetree/bindings/clock/exynos5433-clock.txt b/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> index 183c327a7d6b..972d4e45f8c1 100644
> --- a/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> @@ -178,7 +178,7 @@ Required Properties:
>
>  Optional properties:
>    - power-domains: a phandle to respective power domain node as described by
> -       generic PM domain bindings (see power/power_domain.txt for more
> +       generic PM domain bindings (see power/power-domain.txt for more
>         information).
>
>  Each clock is assigned an identifier and client nodes can use this identifier
> diff --git a/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> index 7cc4c0330b53..46ecbbce277c 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> @@ -17,7 +17,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.txt.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> index 8c81547c29f5..cb32b4f41046 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> @@ -19,7 +19,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.txt.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> index f8c05bb4116e..58f9054704c2 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> @@ -28,7 +28,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.txt.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> index 8ff3e2774ed8..9f32528e7245 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> @@ -21,7 +21,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.txt.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> index 640592e8ab2e..76d25d1499f7 100644
> --- a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> +++ b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> @@ -20,7 +20,7 @@ Required properties:
>
>  Optional properties:
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain.txt
>  - #cooling-cells: : If used as a cooling device, must be <2>
>
>  example:
> diff --git a/Documentation/devicetree/bindings/display/msm/dpu.txt b/Documentation/devicetree/bindings/display/msm/dpu.txt
> index a61dd40f3792..3ef875e94845 100644
> --- a/Documentation/devicetree/bindings/display/msm/dpu.txt
> +++ b/Documentation/devicetree/bindings/display/msm/dpu.txt
> @@ -13,7 +13,7 @@ Required properties:
>  - reg-names: register region names. The following region is required:
>    * "mdss"
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain.txt
>  - clocks: list of clock specifiers for clocks needed by the device.
>  - clock-names: device clock names, must be in same order as clocks property.
>    The following clocks are required:
> diff --git a/Documentation/devicetree/bindings/display/msm/mdp5.txt b/Documentation/devicetree/bindings/display/msm/mdp5.txt
> index 4e11338548aa..1cce2a61cb8e 100644
> --- a/Documentation/devicetree/bindings/display/msm/mdp5.txt
> +++ b/Documentation/devicetree/bindings/display/msm/mdp5.txt
> @@ -19,7 +19,7 @@ Required properties:
>  - #interrupt-cells: specifies the number of cells needed to encode an interrupt
>    source, should be 1.
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain.txt
>  - clocks: device clocks. See ../clocks/clock-bindings.txt for details.
>  - clock-names: the following clocks are required.
>    * "iface"
> diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> index f04870d84542..e71cff583cf0 100644
> --- a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> +++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> @@ -36,7 +36,7 @@ properties:
>    power-domains:
>      description:
>        List of phandle and PM domain specifier as documented in
> -      Documentation/devicetree/bindings/power/power_domain.txt
> +      Documentation/devicetree/bindings/power/power-domain.txt
>      maxItems: 4
>
>    mboxes:
> diff --git a/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt b/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> index 71fd74ed3ec8..0b2bbd64d18b 100644
> --- a/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> +++ b/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> @@ -17,7 +17,7 @@ Required properties:
>  - clock-names   : must contain "pclk", "wrap" and "phy" entries, matching
>                    entries in the clock property;
>  - power-domains : a phandle to the power domain, see
> -          Documentation/devicetree/bindings/power/power_domain.txt for details.
> +          Documentation/devicetree/bindings/power/power-domain.txt for details.
>  - reset-names   : should include following entry "mrst";
>  - resets        : a list of phandle, should contain reset entry of
>                    reset-names;
> diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> index 044b11913c49..51f890c64004 100644
> --- a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> @@ -14,7 +14,7 @@ Required properties:
>    Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
>  - clock-names: must contain "jpgdec-smi" and "jpgdec".
>  - power-domains: a phandle to the power domain, see
> -  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +  Documentation/devicetree/bindings/power/power-domain.txt for details.
>  - mediatek,larb: must contain the local arbiters in the current Socs, see
>    Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
>    for details.
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mdp.txt b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> index 0d03e3ae2be2..988898f44bac 100644
> --- a/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> +++ b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> @@ -17,7 +17,7 @@ Required properties (all function blocks, child node):
>  - clocks: device clocks, see
>    Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
>  - power-domains: a phandle to the power domain, see
> -  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +  Documentation/devicetree/bindings/power/power-domain.txt for details.
>
>  Required properties (DMA function blocks, child node):
>  - compatible: Should be one of
> diff --git a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> index 4751029b9b74..de58cbee3dca 100644
> --- a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> +++ b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> @@ -27,7 +27,7 @@ In 'cpu' nodes:
>  - power-domains: A phandle pointing to the PM domain specifier which provides
>                 the performance states available for active state management.
>                 Please refer to the power-domains bindings
> -               Documentation/devicetree/bindings/power/power_domain.txt
> +               Documentation/devicetree/bindings/power/power-domain.txt
>                 and also examples below.
>  - power-domain-names: Should be
>         - 'cpr' for qcs404.
> diff --git a/Documentation/devicetree/bindings/pci/pci-keystone.txt b/Documentation/devicetree/bindings/pci/pci-keystone.txt
> index 47202a2938f2..4c592504bb69 100644
> --- a/Documentation/devicetree/bindings/pci/pci-keystone.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-keystone.txt
> @@ -88,7 +88,7 @@ num-ob-windows: As specified in
>  num-lanes: As specified in
>            Documentation/devicetree/bindings/pci/designware-pcie.txt
>  power-domains: As documented by the generic PM domain bindings in
> -              Documentation/devicetree/bindings/power/power_domain.txt.
> +              Documentation/devicetree/bindings/power/power-domain.txt.
>  ti,syscon-pcie-mode: phandle to the device control module required to configure
>                       PCI in either RC mode or EP mode.
>
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> index 64b286d2d398..3fff2c2e1500 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> @@ -17,7 +17,7 @@ Required properties:
>                 1 - PCIe0 Lane1
>                 2 - ICSS2 SGMII Lane1
>   - power-domains: As documented by the generic PM domain bindings in
> -       Documentation/devicetree/bindings/power/power_domain.txt.
> +       Documentation/devicetree/bindings/power/power-domain.txt.
>   - clocks: List of clock-specifiers representing the input to the SERDES.
>         Should have 3 items representing the left input clock, external
>         reference clock and right input clock in that order.
> diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> index bc75bf49cdae..014be1448fab 100644
> --- a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> +++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> @@ -13,7 +13,7 @@ Required Properties:
>   - #power-domain-cells: number of cells in Power domain specifier
>         must be 1.
>   - operating-points-v2: Phandle to the OPP table for the Power domain.
> -       Refer to Documentation/devicetree/bindings/power/power_domain.txt
> +       Refer to Documentation/devicetree/bindings/power/power-domain.txt
>         and Documentation/devicetree/bindings/opp/opp.txt for more details
>
>  Refer to <dt-bindings/power/qcom-rpmpd.h> for the level values for
> diff --git a/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt b/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> index 712caa5726f7..442768f68b49 100644
> --- a/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> +++ b/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> @@ -44,7 +44,7 @@ Example:
>
>  Devices residing in a power area must refer to that power area, as documented
>  by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.txt.
>
>  Required properties:
>    - power-domains: A phandle and symbolic PM domain specifier, as defined in
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt b/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> index 5bfcc0b4d6b9..ac6b272c4bbf 100644
> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> @@ -64,12 +64,12 @@ For Tegra210:
>  For Tegra210 and Tegra186:
>  - power-domains: A list of PM domain specifiers that reference each power-domain
>    used by the xHCI controller. This list must comprise of a specifier for the
> -  XUSBA and XUSBC power-domains. See ../power/power_domain.txt and
> +  XUSBA and XUSBC power-domains. See ../power/power-domain.txt and
>    ../arm/tegra/nvidia,tegra20-pmc.txt for details.
>  - power-domain-names: A list of names that represent each of the specifiers in
>    the 'power-domains' property. Must include 'xusb_ss' and 'xusb_host' which
>    represent the power-domains XUSBA and XUSBC, respectively. See
> -  ../power/power_domain.txt for details.
> +  ../power/power-domain.txt for details.
>
>  Optional properties:
>  --------------------
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

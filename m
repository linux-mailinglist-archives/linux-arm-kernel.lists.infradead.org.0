Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67F3D8C33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4LMXZeUgfkWyV7YYkpjYOgfb4N17+45/Ik4PktjHFQ=; b=I9vHW1yqxU5aaM
	rbqEA1KN96QfdcGMRM9HCbUTXmrFSdVVAvH1AwPmyKqMBn2Fy1qVKQZ9InaO7N8+2kO5GuLHbyCnT
	a7wSXfPYT+Cey4fXCorCqonZHLYYtQGeNROVJLL5lLbsdrQEZ1+tbJjJLOF+L6hHft9+dP/Qsv7Dx
	wqbShSwk7+iXhMi3pgj9AV+Gj3aAVvOSogGJcJk7O1ZhxZNpLRzyu/DbfiNYoZE5lFHwcG8FO/YXT
	HFtDnCNPVCSM3e3yxC3aw4hgcNxx95MOBFLLaZQowt2AFnvdjdM2ULv3Bc6TohD7CjT+leUn2shiN
	8kfTEOksvFLs1GU1uZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfIv-0003Yp-1f; Wed, 16 Oct 2019 09:09:13 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfIa-0003Uk-9B
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:08:55 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v10so15107386vsc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 02:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f+cbAAT/Sf2rErLhd62NV0+wHrRpwzDTpuV1QL+WgT0=;
 b=WkQCEGe/JAlMlgRGB7nm+sPGEBKCVm2NHJCVmMGXfIYgzeKUN3my5cJrAPT2mNJVkb
 fpEN30qA5FLHU5uCRa0DaQr2t6p3BpsDX7lgLuldrPYzWo7TX7WyhiEemNZWiMpWAl6D
 S3LkJwnFcv+UrH/tOvfu2o4TPqWrUh9Zbv0hZrp8uL4K1mIKneqUwLhV+Jslu423nKSH
 TMsl0r4WiGv/koqvQRiM49mFdqg31ufBtMedL4v9eLtp2a1WkTf5UaX8UXKbLsdJhbOg
 AvpE37hKsWvyZpkCGedlDeYcXFROMfTaGrUX2fgkhK4Bgn0019hnDfwJZ8k2UA25ivTK
 SlGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f+cbAAT/Sf2rErLhd62NV0+wHrRpwzDTpuV1QL+WgT0=;
 b=E22ogSbvEl//uRLDEPn5Wdl/SOxl4JyUE5TX56bmaYlNe7BIfM3xlXHtt7cNZcK+Go
 CltWRccCpv1XRcSTcEZMp68GG4sJIR4NtsKLoCZF025nJX5SJXE+P41tCz/4xSdPITtP
 8Qqitj48sLW9XUkOqIVlxlxOnkqrDlKD41sz6dg7ZKkVVDVXOw/UXFQvbGWZzs6AjGwH
 wGbiNCSuIKLVGAx92+29KpP8y3xuJOTcZeYyBtL6TepKOvFpAWYsQyFWVR8rqvDyoUeQ
 DRGEsE5rX38fe1kPsuVsU9w5o3eX+nx6vyVs4iD1xLriOmntzaC05Zvg7EX7hwvIwMAw
 YQMg==
X-Gm-Message-State: APjAAAV5z1KRW+bWYD5moOj1bAEI47MrNVluWCL/+DywWEx9P+MzbWtV
 QnE5ezsQ/3sYOjTE2/tbCN2ap8QLm3XUvqQI/mTqRQ==
X-Google-Smtp-Source: APXvYqys96QtP/a589oj4qhDSHoh3ceKxXMx8205sD/iOsFacZUanmKIFgQRgZbT9Fci7ihZ25YAPhZkM6grwM2/Kv8=
X-Received: by 2002:a67:df0d:: with SMTP id s13mr4375026vsk.95.1571216930772; 
 Wed, 16 Oct 2019 02:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191004090114.30694-1-glaroque@baylibre.com>
 <20191004090114.30694-7-glaroque@baylibre.com>
In-Reply-To: <20191004090114.30694-7-glaroque@baylibre.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Wed, 16 Oct 2019 14:38:39 +0530
Message-ID: <CAHLCerOcHoMLc8kjBvG3ssiro31sr2Fsv5dGscqCTD72xdaLMQ@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: amlogic: g12b: add cooling properties
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_020852_329668_32EE30D0 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 2:31 PM Guillaume La Roque <glaroque@baylibre.com> wrote:
>
> Add missing #colling-cells field for G12B SoC
> Add cooling-map for passive and hot trip point
>
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 29 +++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> index 98ae8a7c8b41..4bb89bce758f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -49,6 +49,7 @@
>                         reg = <0x0 0x0>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu1: cpu@1 {
> @@ -57,6 +58,7 @@
>                         reg = <0x0 0x1>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu100: cpu@100 {
> @@ -65,6 +67,7 @@
>                         reg = <0x0 0x100>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu101: cpu@101 {
> @@ -73,6 +76,7 @@
>                         reg = <0x0 0x101>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu102: cpu@102 {
> @@ -81,6 +85,7 @@
>                         reg = <0x0 0x102>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu103: cpu@103 {
> @@ -89,6 +94,7 @@
>                         reg = <0x0 0x103>;
>                         enable-method = "psci";
>                         next-level-cache = <&l2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 l2: l2-cache0 {
> @@ -219,3 +225,26 @@
>  &sd_emmc_a {
>         amlogic,dram-access-quirk;
>  };
> +
> +&cpu_thermal {
> +       cooling-maps {
> +               map0 {
> +                       trip = <&cpu_passive>;
> +                       cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +               };
> +               map1 {
> +                       trip = <&cpu_hot>;
> +                       cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                        <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +               };
> +       };
> +};
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

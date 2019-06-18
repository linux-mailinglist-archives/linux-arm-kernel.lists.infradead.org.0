Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD4749D22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7UwqTIO7xs9GmI9ZQUno4yisO+mvXgDqUmYy3X7lAc=; b=NJEpi92CXd0hy/
	J0whW3Ame1QKC4HSXdKCCKtbl8vMKBa7YoeQOy8bNhkuV+U3BONnonuIIY4CTPcQkqpIECpMsecyS
	xCFsA6CXzkzobGGEkWgRSauQ+Gk1KsCoXqtZwl1RY7AdFcXEhwgu0t6jkZdSa/cTmSTqDOyV31T6o
	ukn8zhjCWP+jcFvr+hEMJRcK+bHHKmyP08ZKi+oh5pPkPHT5DtvAAENRvpn/eZmtiC1u7AVpDUVLh
	fxrEGwHpmVM/zJ+SH7D5Fz4826zQUD1qCmrz48PTPfeqxY+ckOEaxwisK+szJ9Mc2Ln6t0EkRyIpL
	mRnG2Vjnv5h6rNWLuNTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAOg-0005lZ-JW; Tue, 18 Jun 2019 09:27:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAOW-0005kL-4S
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:27:13 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EE4C2147A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 09:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560850031;
 bh=3d0WB2FWSq617HwBgtInbOFcIijY2d0ifcR6Ea00qN8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ImqAUIsomz+S+K3RJ1At8naHxBQ5VKVZ7zN2BeD/fqyI+PN1PHJnllocUrPWLqL9R
 4RJoVrM+vEJSIBAnQ89brETmsQokQSFSKDVLkqSdOszPh70zYhR+Ki5IN1H8jvO2tV
 LgI2Q6sdVSP+1oDmThdaHW4dcWzk0NYRSuQd/mvA=
Received: by mail-lj1-f182.google.com with SMTP id s21so12353535lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 02:27:11 -0700 (PDT)
X-Gm-Message-State: APjAAAW8rmcwaGbQBMN0m+mcLJWONkaLhuji9FcOLECc2ICrID6YfpkX
 JLO+bBiH+MhGPyyxE6kIYuWGEFS0AXSwkzY8k/8=
X-Google-Smtp-Source: APXvYqzv7Gbmd6Xf/1K1px/rY6lBV7NSaMJUwamp2eOU1O40f6wjgppWFyx9CidnmsTWpf06LGliW+GVZtXWpi54Tbo=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr10481642ljg.80.1560850029693; 
 Tue, 18 Jun 2019 02:27:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
In-Reply-To: <20190614235719.8134-1-joseph.kogut@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 18 Jun 2019 11:26:58 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc-Xztou+xyibb8YZtfz20q3kzr_gTBoE=R3q_CSk9kzQ@mail.gmail.com>
Message-ID: <CAJKOXPc-Xztou+xyibb8YZtfz20q3kzr_gTBoE=R3q_CSk9kzQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Joseph Kogut <joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_022712_211098_2639D476 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 airlied@linux.ie, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 kgene@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 15 Jun 2019 at 01:57, Joseph Kogut <joseph.kogut@gmail.com> wrote:
>
> Add device tree node for mali gpu on Odroid XU3 SoCs.
>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>
> Changes v1 -> v2:
> - Use interrupt name ordering from binding doc
> - Specify a single clock for GPU node
> - Add gpu opp table
> - Fix warnings from IRQ_TYPE_NONE
>
>  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> index 93a48f2dda49..b8a4246e3b37 100644
> --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> @@ -48,6 +48,32 @@
>                 cooling-levels = <0 130 170 230>;
>         };
>
> +       gpu: gpu@11800000 {
> +               compatible = "samsung,exynos-mali", "arm,mali-t628";
> +               reg = <0x11800000 0x5000>;
> +               interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> +                            <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> +                            <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +               interrupt-names = "job", "mmu", "gpu";
> +               clocks = <&clock CLK_G3D>;
> +               mali-supply = <&buck4_reg>;
> +               operating-points-v2 = <&gpu_opp_table>;
> +       };
> +
> +       gpu_opp_table: gpu-opp-table {

One more thing - use "opp_table" as node name (generic class of node,
matches style with other tables).

Best regards,
Krzysztof

> +               compatible = "operating-points-v2";
> +
> +               opp-177000000 {
> +                       opp-hz = /bits/ 64 <117000000>;
> +                       opp-microvolt = <812500>;
> +               };
> +
> +               opp-600000000 {
> +                       opp-hz = /bits/ 64 <600000000>;
> +                       opp-microvolt = <1150000>;
> +               };
> +       };
> +
>         thermal-zones {
>                 cpu0_thermal: cpu0-thermal {
>                         thermal-sensors = <&tmu_cpu0 0>;
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

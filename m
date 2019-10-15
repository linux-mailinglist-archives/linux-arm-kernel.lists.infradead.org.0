Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A052D8463
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 01:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cipLpz4gMTZx+iV9HKFv+oocEtPrfVhmuaySu+BrON8=; b=r0llkWwprRIXRY
	OMTeJZNN+nCXin7qKhWeiVhFLKztXdhTrtL5qIHuutoO+S/4DBhEVRuG1meLkWen1smoOqDqssF96
	PcwPdmYxto3R1cKpJU5A4JPcId2nmIPTZf+dqKZahRQM+m6BZJSs6raKwYwGVJ6OUTdrOUdOKJrOY
	Na99My4Jp0gMGqpB7Qse1JSRRnPEQh+yhwwR6uMaKgdyn1sK/w19a2hpIk63Ce2xfXb7Ub2jBeorw
	TdjC4nNfVHSbXTQLWdAsKGTRbt21z4uVvwi6wCaTPH/DHJj880Ocp83AeA+SaBqOUSk7RaXCuuJVp
	l8aWVoMD2cfrgkQCfwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKW7a-0002oN-BL; Tue, 15 Oct 2019 23:20:54 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKW7Q-0002gP-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 23:20:45 +0000
Received: by mail-vs1-xe41.google.com with SMTP id d3so14381060vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 16:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Luzeu61JUpCQk5lttonbL70KSFby5OvdNNxzg/MFQ8=;
 b=eDOzDhVMybk0i/+feqo0X+49gsS5JqJW8Ry8hE/JpXVc3WdVLD8WqJn9dDxRuwCehy
 QvBk66yW4mH2kDlYuzMBwPUkP7IEFj9ZOCyD/4jTGGzyqm14Z6beV+SiRvogqh3bul4S
 iB5C2XFuK7HRXnTP1fLCtCvORAdxwIVNNPgEfK7/yPQBrFJLj5U8IlVLAnGbma2My+bA
 WBSOGcGHMJNm8DROoKh3HDAVOdcniv422vxJwA1eHO+j7o/CCl3KJUcbsWYelqWlID+T
 ADHbasV+eQpUbByIGOW8dLaZ/+35eAnKAiGRw80ERMmbEtCmUY0OfB7tcC1PPQ9bI1JZ
 KYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Luzeu61JUpCQk5lttonbL70KSFby5OvdNNxzg/MFQ8=;
 b=a+lWlcsS64l5Ix6WK8NYmjW20th7OLT31c8L6g6qJTZUBut9u3wiop5O1xsCBTtqW5
 aj4+68wSecEcX1UnCNCVDvo9Z8kgidG/wlMD4xp+kSaktzCutUQE2NdcY8wBxauFcwD/
 YcBLxBqqlktwiip0QsmLC89TCIQKvgSmIZbxtvlhc/vetBsIskHU9F0mOaVMdvlZRXsn
 ZKH9eyIvc/FFQ/REETMnglR4MazAG9sY5cYLu3kel88Clm/S08QMSkwPn7Yl3YVvFeX5
 CmHuZte881dTWrD0KNj1c8kPDIFTQt1Q+49EgvdFevTXf8qL6FKF0I63bUVRSJn5zust
 eBbQ==
X-Gm-Message-State: APjAAAWn3qw4mS8odcn9yYxGUxFV2qoeWtueBjAqsgjXJ/zl7aqFrJsp
 1Rz9FUHYWC6wC9RL2s/96k3wGbG4wLCiO8CTIPltWg==
X-Google-Smtp-Source: APXvYqygrun7u9zevVDKfu0sa7amxsriNbVYF4wbVRpuSP6Re4yc+jB0Mmyyr6iQQ2WpPrkisEClAIRglX6AbvGsZDk=
X-Received: by 2002:a67:dc16:: with SMTP id x22mr1767729vsj.159.1571181642542; 
 Tue, 15 Oct 2019 16:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191004090114.30694-1-glaroque@baylibre.com>
 <20191004090114.30694-5-glaroque@baylibre.com>
In-Reply-To: <20191004090114.30694-5-glaroque@baylibre.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Wed, 16 Oct 2019 04:50:31 +0530
Message-ID: <CAHLCerOzZ6kc0nrGL+XMi37WuBKUv6E0yzE26wUZ5XoRMS8q6w@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_162044_410982_73754DCE 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)
>
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 0660d9ef6a86..a98c16e163c2 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -12,6 +12,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
>  #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
> +#include <dt-bindings/thermal/thermal.h>
>
>  / {
>         interrupt-parent = <&gic>;
> @@ -94,6 +95,61 @@
>                 #size-cells = <2>;
>                 ranges;
>
> +               thermal-zones {
> +                       cpu_thermal: cpu-thermal {
> +                               polling-delay = <1000>;
> +                               polling-delay-passive = <100>;

Ordinarily, you would need to set these delays to 0 in interrupt mode
to prevent polling overhead. I've just submitted a patch to of-thermal
that should fix this requirement. Could you check if it works for you?

> +                               thermal-sensors = <&cpu_temp>;
> +
> +                               trips {
> +                                       cpu_passive: cpu-passive {
> +                                               temperature = <85000>; /* millicelsius */
> +                                               hysteresis = <2000>; /* millicelsius */
> +                                               type = "passive";
> +                                       };
> +
> +                                       cpu_hot: cpu-hot {
> +                                               temperature = <95000>; /* millicelsius */
> +                                               hysteresis = <2000>; /* millicelsius */
> +                                               type = "hot";
> +                                       };
> +
> +                                       cpu_critical: cpu-critical {
> +                                               temperature = <110000>; /* millicelsius */
> +                                               hysteresis = <2000>; /* millicelsius */
> +                                               type = "critical";
> +                                       };
> +                               };
> +                       };
> +
> +                       ddr_thermal: ddr-thermal {
> +                               polling-delay = <1000>;
> +                               polling-delay-passive = <100>;
> +                               thermal-sensors = <&ddr_temp>;
> +
> +                               trips {
> +                                       ddr_passive: ddr-passive {
> +                                               temperature = <85000>; /* millicelsius */
> +                                               hysteresis = <2000>; /* millicelsius */
> +                                               type = "passive";
> +                                       };
> +
> +                                       ddr_critical: ddr-critical {
> +                                               temperature = <110000>; /* millicelsius */
> +                                               hysteresis = <2000>; /* millicelsius */
> +                                               type = "critical";
> +                                       };
> +                               };
> +
> +                               cooling-maps {
> +                                       map {
> +                                               trip = <&ddr_passive>;
> +                                               cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
>                 ethmac: ethernet@ff3f0000 {
>                         compatible = "amlogic,meson-axg-dwmac",
>                                      "snps,dwmac-3.70a",
> @@ -2412,6 +2468,7 @@
>                         assigned-clock-rates = <0>, /* Do Nothing */
>                                                <800000000>,
>                                                <0>; /* Do Nothing */
> +                       #cooling-cells = <2>;
>                 };
>         };
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604501DA29A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ed1YFQrMXRBH1nuudjI2ewxFi5FJRlbpg6vFOkOnOys=; b=UNPC6mKoQcvKJB
	+JSfLGU4mWyWclZBRTHDdyebdeMF+eZcOUTu0ABQhKzX2Sw5Sw2AQhDnJhJQhSjs5qKB8yFu1n+Ct
	jKpZqmq6YcshpWbq9wHoidOknEA7PLnbQ0PMtLbiOyaUFlan3s9zwAvMuzlMAqLI+ZTOih49IiHj+
	n67iBBgjOp9Y7z1jl6HDpKW88SBRcMKOCLt24VAWNhrVa86omfpaQ6+L1YRS/ZXj90xoKflV7pLYE
	0kChL8TbvmZUh1fFbzrsOFyERSVjFSTlnwnEWQk+8XrYmsynllVDwLDwYwuwlJr+A4nmewvMIUl0d
	Rp+d1qOY0sZ5zPu48Ppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8s5-0004OO-TP; Tue, 19 May 2020 20:29:53 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8rw-0004Nn-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:29:45 +0000
Received: by mail-oi1-x242.google.com with SMTP id i22so931287oik.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zpnctebz5JsG00b9dnvqrxDWPeUQwd+C1voSzStELVM=;
 b=QjSNvkOcDiUgtet0E/jVsZ4aMISulwLy3pXGNI7E4mn8PlM7rGR5Qcp5BR12gQJ7ES
 q9bz/acZ76nw3/sSl9O9epFdnx5bRtLu0JeyFqhyk7EkJ9vf7RPvOImYidQHe+N4Sxkj
 Bu35E45+R4+4Nw2LuGg6ZSI1ei7t1w/iNSJYEN6Hc0izoxlxIGGLeObcH35Vl+RNWkK4
 VcBRhswbw+d7/MGgP4qpyBx8HMaM4TEyhfLbpICIbrLCl6jc++rGZv/ms4xFJ8iIVujQ
 17p1QbzdwjtMhbMQhSwZ49HdKkx+l4/1qgf1ccyHqYFAvoSbmZze6hEKL149XRtTGNiZ
 RKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zpnctebz5JsG00b9dnvqrxDWPeUQwd+C1voSzStELVM=;
 b=mLxa+fpzmyrD8K6FsiZKHMlo9BJa/+Wm0Ya0StYJzI4fMqO/U24A/ya27WWUWMG5og
 4YsvvQtkq45vp0pOaOgR1mcF8f1U/mIOvOju9EjMaKNODvIxtJmiliM+y9gyHWXpViVh
 aiOhTwS6RXrnwWvo61SRu8nqfWRvhoODdEwLKh8yMw+GPgeei4CeTEBUqJsVmT55rfnZ
 wfAciWbMacmMYYPDSNkAC2pEfI/oN5dCQVOLBOK7grcJYfHhAnt7d8NjaP35PQ/ko13m
 rF3Aexd7MBiRujhH/QsQESfSYnw79ThsDZVOIVMkFVm5vMTuI0HvdLtitejJNnifga1I
 IUHQ==
X-Gm-Message-State: AOAM531vleUdCYiXqx7UdJaF3aq/d7hDNXOGLH+9ZSOB1hYGLSJVeGU8
 JVUxqqWy4oe0wv7lJT4YkzrcUB/xNLjKFIJWBdJQGQ==
X-Google-Smtp-Source: ABdhPJys/3NSSmNVLRHHDHO1hXSA01gPwmY5NQh31qgjEE/ATbY/o+QKo0+2jfsv7i1f9sCKmDr9KuiEsl8eMl2QXA0=
X-Received: by 2002:aca:e1d6:: with SMTP id y205mr950674oig.142.1589920182286; 
 Tue, 19 May 2020 13:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191016103513.13088-1-shengjiu.wang@nxp.com>
In-Reply-To: <20191016103513.13088-1-shengjiu.wang@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 19 May 2020 13:29:31 -0700
Message-ID: <CAJ+vNU0GVCnX14fGsxoasBLoEcVsEUvB5rUeAiHDBQfuys4WSg@mail.gmail.com>
Subject: Re: [PATCH] ARM64: dts: imx8mm-evk: Assigned clocks for audio plls
To: "S.j. Wang" <shengjiu.wang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_132944_368018_82F6060C 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 3:36 AM S.j. Wang <shengjiu.wang@nxp.com> wrote:
>
> Assign clocks and clock-rates for audio plls, that audio
> drivers can utilize them.
>
> Add dai-tdm-slot-num and dai-tdm-slot-width for sound-wm8524,
> that sai driver can generate correct bit clock.
>
> Fixes: 13f3b9fdef6c ("arm64: dts: imx8mm-evk: Enable audio codec wm8524")
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 2 ++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 8 ++++++--
>  2 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index f7a15f3904c2..13137451b438 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -62,6 +62,8 @@
>
>                 cpudai: simple-audio-card,cpu {
>                         sound-dai = <&sai3>;
> +                       dai-tdm-slot-num = <2>;
> +                       dai-tdm-slot-width = <32>;
>                 };
>

Shengjiu,

Can you explain the why dai-tdm-slot-width here is 32? I noticed when
I assigned that for an imx8mm board I'm working on (that uses a
tlv320aic3x codec) I ended up with the clock being off by a factor of
2 (audio playback was 2x too slow).

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

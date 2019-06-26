Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C92D56581
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87Vq4GSxoDJOLN9PvlRMOw8smVkbXEfFPpE8BbPrw3U=; b=oXpZ2T5ZclWNxV
	zlnhfYyNs3/LoZuPKipAOjLvvBfLJ0hCNlwhw1ZyxN95qPmKHW7nyuT4nIA/Yrc/Fm4JCizdLd0OR
	ByqJAkAAKijJNLS85wAhTzfPsuxm7svr7MMcLq1ua7s34hpxUOtUkWanZT2//886xNG2OVm+kZ5wI
	HK8VUGFHn7X+sgO3N/gY7RPPx7RzPDAB9yTk3eSO5sOmPILoqX2JZWFn+j9gQH2xxBdatnkzcX2NS
	YYArIjdMINY/Ba9XHYkvaX7fmDRZTujxmb2/isUuUaLdb29m3vKSozmIs0qQyV/VuiVy92Hr37H6L
	31yFDk6mzgDhmgTT/xDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg40Q-00014d-5q; Wed, 26 Jun 2019 09:14:18 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3vO-000450-Tj
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:09:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so3405670iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7dL7h7SkSMLVzpfEmrmJiFGBAxYoaIavJjZPSz0hU7I=;
 b=jbtXscDhjsJEuONxCbh2rlWb09IQnHwk9phiuKReIYqMagEZRqkefxApOqrDgNTjwC
 8cPxCqS0njqZUitqGx7byaBanzWe2tWExVqIf68fiYfH6GgLkeZEwPtnvUm1Lb0sJOQk
 7Whmtox8TN6p53sDlWCs1Oeqo9AMZltPxv5s9W7A8jCwmFqppF8lT+ueiqYTm2ofp54L
 J9pYfCTt5eh2Bbxi/Hb36NchgHNxMaDxlY6CWwQa/LX3TU7ltrsxZOTcb5RPsAUb9y4u
 tX3irBmXchaHy8jhV2/r0EVfAxm5Z2Mk28WUGwx+Qjfvkf7HpEsbuKwE9m+UQeqR9zBN
 MXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7dL7h7SkSMLVzpfEmrmJiFGBAxYoaIavJjZPSz0hU7I=;
 b=Vw7ad0J7qv2OPOAHqgGwuHEhZjeBYMf87pGbxx91O90yqNY80ulOLaxD6ql2Tr6CJU
 yPtTXL8VtzpeYxa4Ph7hPKaBZof728ClbrLaKMo3zlUI/MJgbEKvXxq/G5qb4FG2N0Z2
 Yw5uCuUVKHLy7xq8ftistmn3GGTj9L1Yu9tOxm+oltb6Gm9ehfZCIBsOQb3JaiPA6cxa
 tpmS0NoIGWvaUyTqBuZh5DOBAZqvEJgd4Ru2hJXjR9N2kz91beWeTKFd9GXLDtV8rE3o
 9sLl8uWP3WG5vZ0bWceo94FYleo0B8LmDGbwTw/eQuPO+Qc+AqlSAp2xG08rMfZkA8u3
 jOmw==
X-Gm-Message-State: APjAAAWtFGC5YnE/wxKJxMiYTd4+0wx2NQnEZeSoPV68FTiUwwHznyBE
 iQiv1tPBvJ/JN/knS/6Cm8/rMg1S+E2Bm6+F2xOZNg==
X-Google-Smtp-Source: APXvYqyfAj3+7X5HQdYqxWCVc+aScPFHv4kHJEc2n+zGiaWOgxDOOyizFKHvtKMZ7FZ6f9dIyrSzDbudAT6xWVQ+DOM=
X-Received: by 2002:a5d:8252:: with SMTP id n18mr2740479ioo.230.1561540145441; 
 Wed, 26 Jun 2019 02:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
In-Reply-To: <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
From: Niklas Cassel <niklas.cassel@linaro.org>
Date: Wed, 26 Jun 2019 11:08:54 +0200
Message-ID: <CAHYWTt37Q1E_bggbKb8VdcHRj_YYubqaoVHNN7+1kcr8+XMX0g@mail.gmail.com>
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: qcs404: Add DVFS support
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020907_257858_BC561F31 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, heiko@sntech.de,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 jassisinghbrar@gmail.com, Sibi Sankar <sibis@codeaurora.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 devicetree <devicetree@vger.kernel.org>, arnd@arndb.de,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, olof@lixom.net,
 Rob Herring <robh+dt@kernel.org>, horms+renesas@verge.net.au,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Khasim Syed Mohammed <khasim.mohammed@linaro.org>,
 enric.balletbo@collabora.com, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I actually think that it makes sense to squash this patch with the
[PATCH v3 10/14] arm64: dts: qcom: qcs404: Add OPP table
patch.

But that might be a personal preference.

Either way, I think this series in ready for the real mailing list.




On Tue, 25 Jun 2019 at 18:48, Jorge Ramirez-Ortiz
<jorge.ramirez-ortiz@linaro.org> wrote:
>
> Support dynamic voltage and frequency scaling on qcs404.
>
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 9569686dbc41..4b4ce0b5df76 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -34,6 +34,9 @@
>                         enable-method = "psci";
>                         cpu-idle-states = <&CPU_SLEEP_0>;
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb>;
> +                       operating-points-v2 = <&cpu_opp_table>;
> +                       cpu-supply = <&pms405_s3>;
>                 };
>
>                 CPU1: cpu@101 {
> @@ -43,6 +46,9 @@
>                         enable-method = "psci";
>                         cpu-idle-states = <&CPU_SLEEP_0>;
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb>;
> +                       operating-points-v2 = <&cpu_opp_table>;
> +                       cpu-supply = <&pms405_s3>;
>                 };
>
>                 CPU2: cpu@102 {
> @@ -52,6 +58,9 @@
>                         enable-method = "psci";
>                         cpu-idle-states = <&CPU_SLEEP_0>;
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb>;
> +                       operating-points-v2 = <&cpu_opp_table>;
> +                       cpu-supply = <&pms405_s3>;
>                 };
>
>                 CPU3: cpu@103 {
> @@ -61,6 +70,9 @@
>                         enable-method = "psci";
>                         cpu-idle-states = <&CPU_SLEEP_0>;
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb>;
> +                       operating-points-v2 = <&cpu_opp_table>;
> +                       cpu-supply = <&pms405_s3>;
>                 };
>
>                 L2_0: l2-cache {
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

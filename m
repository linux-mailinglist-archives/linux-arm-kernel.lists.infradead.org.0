Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208DBD89D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOlv6XyL3U4twoAVYgeFSDhgb6XytS3qw0KjJMTWjiw=; b=q/fTvwDmEU4Kqj
	rRqeQRtue//9aZY+081RTE8C3OLqCuW8Sud7Y6hgWZrZtNu+3ayU79txIiGqbM72+D/pIArhHKVjL
	GLU5GWWmcpUSm2MWigfMMwrnRQio+C4k4ri4Bhob590r3dIOKiAWW0cYWGv9iSKcElgsgYFcSdDXS
	Nct7j0Sp3R1R9hi1AdOdgjy5w3LA0fLjdHXxXoxHClfWTFTFuxTycKYQprCC/RxGhabmtj7IhzFA0
	spHIZoV/AkOA79W/KUJXx1eBy9mFMPsi7izFQkz3x0ViwaBGUtCJbMSiow0gwfZaq8l501qnIBrmV
	w4Wl4oApA2HyHxYLvPwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdrK-0005YZ-U0; Wed, 16 Oct 2019 07:36:38 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdrC-0005UB-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:36:32 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b1so14953645vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qe50GbZLQRllpuQvATvkx8bEhPSzudVQM7HSFSmEcqo=;
 b=l5x1Vw+AifeukGvQl9qOlNjchU0byCxsiNuVC/wLdzx3JAF0gqmbkCNXOr9FzTZdPp
 w9+mgNpDiDOQsqKTMADmoZZC8coYmgv/De1dyaFsHYwshJ4ASgvIzVBONkqKf6hDTBHZ
 JFclIxNc0ZhuePS2bjfY6gCJyBH6ikBhqrnxs6c+gENEZQX5mNw1BZhNuuXy0DKAjSoR
 n0JBLgpY8Eyb2pb7nfcNbAwPMPPN/LhhToh3yfaoLCFZL+Rx5q3jAOK1CbmLTch4J8oP
 qxtoZ7j8UuHZr0bkkvw2p2nBT+EhVlmevzHACoCNhE7U1ygaGPiLOWXtFPY86ao8xjDV
 vwog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qe50GbZLQRllpuQvATvkx8bEhPSzudVQM7HSFSmEcqo=;
 b=jDfQAuQ3j524k1KFLrlUUZfvmqEEbOphMjZYraQS4rfyt7dQzUd0W1xBcMBvwNm2jo
 TrCXTPLEPFReehHTwSqaQn2vauruGMAsDZymxgE5/zpjXsEnIZmjRl4N729lAD+OJzDP
 eTv42aR4h1juzQIAV/Khz/2EMFwWGk0iUETQyyuEjcWgI26EPvfAkRrw5jOOex/NVxvz
 6Y8HjMHT3pgaT7WhmxH5TK71TzY7V2gKchY4y0BLWbDKUp+yS26BK1HrvuzbFqXsE19E
 UalqkVMNOTv/a622G/TpFBrXviKdEsqcM8Fb1Ij2kmj3Aiu1nb50HO6p1CEVuDkD+1Vz
 6BiQ==
X-Gm-Message-State: APjAAAWFYWrRLWywbSG6BpCU4OzUjKxSdWjCFxlUp0d7HNyGephHUnOI
 RKpHHEn67O0RIGGqeSl9DNqsqSAJ6XHGJEtARJrA0w==
X-Google-Smtp-Source: APXvYqwpQsX8XDUKsMfMEkQSA0p4CQbdijqex0x7A7VShelbL+ZQrXv0eMhDptdmMbVegT+VCOz1tJhzZAzrEwpnPWI=
X-Received: by 2002:a67:edce:: with SMTP id e14mr16842513vsp.182.1571211387638; 
 Wed, 16 Oct 2019 00:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191011234402.374271-1-bjorn.andersson@linaro.org>
In-Reply-To: <20191011234402.374271-1-bjorn.andersson@linaro.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 16 Oct 2019 13:06:16 +0530
Message-ID: <CAHLCerOnj24B8wZxuqbBgt1UtxO5E7Caa8WTP=o3bXJv-QDy1Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm CPUfreq HW driver
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_003631_072935_D6188226 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 5:14 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> The Qualcomm CPUfreq HW provides CPU voltage and frequency scaling on
> many modern Qualcomm SoCs. Enable the driver for this hardware block to
> enable this functionality on the SDM845 platform.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

You beat me to it. :-)

Acked-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index dea051a64257..45e55dfe1ee4 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -85,6 +85,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
>  CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
>  CONFIG_ARM_SCPI_CPUFREQ=y
>  CONFIG_ARM_IMX_CPUFREQ_DT=m
> +CONFIG_ARM_QCOM_CPUFREQ_HW=y
>  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
>  CONFIG_ARM_TEGRA186_CPUFREQ=y
>  CONFIG_ARM_SCPI_PROTOCOL=y
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED853D2A5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYxl4rTtSC0r4YqroAcfjSX9omSIE5zwXNeVggebQ0o=; b=UJtu7kyqHXXcsR
	tHP4vZrBh4LnfYEqvJUuIHwLD1SrlKg/zGNpO86iP1iMhK09JDfwZd+zxE03/T9294MwRPOJpWv1P
	voeg+aJO2ksLmpFyUV0qUUPkv921zuN2cs6Odu3BXGPw/Fdn09yc8ve+dpWDoCohAJWNAMXrvmFXd
	lerETG5ip74yRXGaIstirG16oBUZ+My5mdzbsz/Fuog0Q1maZg5+FD439UBD1w4aDB1Izhvtq5lLs
	5HmfuXViVfXMfopSP/C2MOGy3O8dQKDV2VNavj4DDLfhwe5r7DlcfqagEIfuDI1WHs55/GvEDFi6D
	/Zj94O3CL/k/GHUfpiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYA7-0004Tw-Lp; Thu, 10 Oct 2019 13:07:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIY9z-0004Ta-7T
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:07:16 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so13554031iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 06:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zlF+lm3JRhGGGTiYfCuwp6G/d6yyrmwzyu8GIS+igK4=;
 b=H1dTyMBFIxWKLe11ms1NCdcfBtCBpqXVkW+dP5rVr0WIdme7EQjM/pMm7lcwrIxxM8
 OSmpVngDeVcQJH6WBnFGd5CBlGk1jJn2wITfkXttoIYjJGOc9j6F8GEHm3hqKHUFR7b/
 E463+H76GPy5mHM7FEZ7YO0YV1dEHrrpuEFQTn+9VnXu+uMyin7MPc3glOXQCQpc9IZJ
 h+wVKXChEJU3K1WkMUkwl77tP3C65QvxLJAw4MCzbDlN5OhboWRLuKZZ/E6WGVleIRqd
 Sq69NsqFHpZ7UT1ak4bUVHSqs8JR/AiW3d7uap6GqMi0sq9dGkAHTxvbkTrRyKpv4snl
 7ktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zlF+lm3JRhGGGTiYfCuwp6G/d6yyrmwzyu8GIS+igK4=;
 b=dhq1g3tsTgL4n4kBm8Z8NpmEnhA8GW5Nfyfo8VD8CGrA0SguM1kDukGHkejWQxD17k
 PmTuFCgBuy9HhbjAr9U+svJZtKZX7d6eQJ1j0EJkTb4+PpURLu5OIZRHFV4tso2jHYQL
 hppXnTWhkQv5oCUiQ0DpAlnRLOvjtDFVkcRkHOqz8Rbnv7UoOJhnVYYXyUhKczWmxiMc
 z9v3dc7HUL6bjTHqXm/yEdpFh3/O9XahM1IYfdz0DV9FSeAYlzgJD7ubppdiz/LimOOU
 QzQvL5mdoMhcAPbEF09o31a1fi7mDvaQvdweNq/PgLo88MZ3d2IgDHlzowsuh1KapJ6Z
 vVNw==
X-Gm-Message-State: APjAAAUxLo0NC+T36PmuXhHT1Ze/dly/mgdHhauUERUxtqxzPtF1N7AK
 pDFRvkn++jw724nY3zs0A5xvpA==
X-Google-Smtp-Source: APXvYqyAjQRQelOCSKOee17IGyMMbI3XhdVPttdK72+RBX5FZw+MN5wAbpJ99qPYf6OKqWinlI7l9w==
X-Received: by 2002:a92:7e91:: with SMTP id q17mr6655ill.22.1570712833738;
 Thu, 10 Oct 2019 06:07:13 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id i26sm3491521iol.84.2019.10.10.06.07.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 06:07:12 -0700 (PDT)
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm remoteproc dependencies
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Olof Johansson <olof@lixom.net>,
 Maxime Ripard <mripard@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Dinh Nguyen
 <dinguyen@kernel.org>, Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
References: <20191009001442.15719-1-bjorn.andersson@linaro.org>
From: Alex Elder <elder@linaro.org>
Message-ID: <cc0482aa-10fe-9a49-da2d-6f30b130da3d@linaro.org>
Date: Thu, 10 Oct 2019 08:07:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009001442.15719-1-bjorn.andersson@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_060715_273820_43ADE867 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/8/19 7:14 PM, Bjorn Andersson wrote:
> Enable the the power domains, reset controllers and remote block device
> memory access drivers necessary to boot the Audio, Compute and Modem
> DSPs on Qualcomm SDM845.
> 
> None of the power domains are system critical, but needs to be builtin
> as the driver core prohibits probe deferal past late initcall.

I asked Bjorn privately about the need for these to be built in,
and he clarified:

> However, Rob Herring introduced a nice feature last year that means that
> if you request a power-domain from a driver that has not yet probed at
> late_initcall that request will fail instead of returning EPROBE_DEFER.
> So compiling these as modules will, based on kernel module load order,
> cause intermittent failures to probe the consumer drivers.

So that's what "the driver core prohibits probe deferral past late
initcall" means, and better explains the issue that requires some of
these to be built-in rather than be built as kernel modules.

I was able to test with and without this applied, and I find that without
the patch the modem won't boot, and it boots successfully when used.

Tested-by: Alex Elder <elder@linaro.org>

> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c9a867ac32d4..42f042ba1039 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -732,10 +732,13 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
>  CONFIG_RPMSG_QCOM_SMD=y
>  CONFIG_RASPBERRYPI_POWER=y
>  CONFIG_IMX_SCU_SOC=y
> +CONFIG_QCOM_AOSS_QMP=y
>  CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
> +CONFIG_QCOM_RMTFS_MEM=m
>  CONFIG_QCOM_RPMH=y
> +CONFIG_QCOM_RPMHPD=y
>  CONFIG_QCOM_SMEM=y
>  CONFIG_QCOM_SMD_RPM=y
>  CONFIG_QCOM_SMP2P=y
> @@ -780,6 +783,8 @@ CONFIG_PWM_ROCKCHIP=y
>  CONFIG_PWM_SAMSUNG=y
>  CONFIG_PWM_SUN4I=m
>  CONFIG_PWM_TEGRA=m
> +CONFIG_RESET_QCOM_AOSS=y
> +CONFIG_RESET_QCOM_PDC=m
>  CONFIG_RESET_TI_SCI=y
>  CONFIG_PHY_XGENE=y
>  CONFIG_PHY_SUN4I_USB=y
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

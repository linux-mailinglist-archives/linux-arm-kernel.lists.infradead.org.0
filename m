Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E2E18287A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0yM+4Q16eRgDOZtU3rAWp0y3xJ4RckVylaRSBot8Xw=; b=LTvOHYBipYB2YE
	M8TokahJQpBvc1ujxNEJ9C/91GYDnG6PzWCb0hT2a6ERFp1mf8tlVRS6z+LEDJIlkwaIboBhf+a7d
	GO0zUJ0P/VGDI0K2EtMh3JC606uHn+vjuIMjNJlUmKkBblYrsj2vf/PH7NnfFjMdxmBUst3RuS3Yi
	NDU2i6OuqVc833O5FhIhAtUFmcWYXGqlyc8dH3fStqqUeYqe0HeEEUFn4KXbEHIgvypAkvX3jxbtj
	DI3E5w1cLQAgdjMx7KBauZCsTp9iuQC9dkOf5C2zN4bedjgVWh7wOgIo23BXDZ+6xcTSHsBj3UIlo
	2P0R9mvs1m5aCLbqADvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGVh-0001xh-Ct; Thu, 12 Mar 2020 05:35:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGVY-0001xN-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:35:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id j20so2186803pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SheGGD9VvRORuB+YjWtmYV6UdkIZ+YDt0GYXTwxkFwY=;
 b=QI2yaeJTxbAKLPQH0pkjzKp+KCo2eDQet9Ig6cqJPhHEquRvxiac45P3qf/0UGZniP
 5hWk1YbfNsLqCRoWrqE2NKrXHQGNuxEEWOoTauvZKasxXU2WfwtkPyBkOLtIIWroL3Cv
 1sYSyzYW1Igxtzlz9TTHPGTKHr883vKw+zscEwVMe/f52ixMYl53ao5yfjNtGeK1PmGs
 5lKsz1EQf/4MQRAwaasfI8033m6xGEplswXgiDo6pgvioQV274C+CPAvXK1+RiE2vNSR
 WqP1mRMJEjFr9OG96PPxJcfO7DHsJWoP2YhpPdlC2AgSk94Mlp92EhKGYZB5SZqo7Y2z
 c/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SheGGD9VvRORuB+YjWtmYV6UdkIZ+YDt0GYXTwxkFwY=;
 b=g8/w2n2l1oP2MjGRG1QHs4o8JWjf+Z+MmlD3Vpe5JCMHWU3i94zTjhat0u7NIDEbcV
 m+YeNe88PkIhoSS56a6B8MqWbh7a+Eoaz+SuGxtKCQirqDZ89AmfUC6t+fUcwP+o3al9
 cqdn3qky0tV+Mhs80iitb5RDjYWb/6T9JtcETerI/941TeRgOetedKsrqSsLHElcj47c
 +jMLX8oaBa8GzOB2DupWp/HJoe3C6u0nNynDw31Nw2oKQIHwcjP8uYaWBdDugfgYew4G
 JnMoDZYShGh68xmaB9eG85r69xq7fdecDJYwexuJxKCoVrI4/7cu4XjQWZNc3HAcnDrq
 Rp3Q==
X-Gm-Message-State: ANhLgQ2o/wpy7qMCv5PWZAWap+N58KjCt1U6HI7mCrYP3ymxKpoPkaXp
 874Pmm9FxIh5Q4XcBpOBBJ5oBg==
X-Google-Smtp-Source: ADFU+vs9fJDSMy2lBvj+aQy82yNPIdBrCy8YZQTsCPzP8m1hXpLVEkqnvIUqt9mGo7rUFkpJ+nWE9A==
X-Received: by 2002:a17:90a:9f93:: with SMTP id
 o19mr2359492pjp.76.1583991347467; 
 Wed, 11 Mar 2020 22:35:47 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g9sm44204468pfi.37.2020.03.11.22.35.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 22:35:46 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:35:44 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 6/6] arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI
 drivers
Message-ID: <20200312053544.GY264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-7-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-7-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_223548_378048_E6B10B27 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Loic Poulain <loic.poulain@linaro.org>, Anson.Huang@nxp.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 marcin.juszkiewicz@linaro.org, dinguyen@kernel.org, agross@kernel.org,
 maxime@cerno.tech, linux-arm-msm@vger.kernel.org, olof@lixom.net,
 shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11 Mar 05:35 PDT 2020, Robert Foss wrote:

> Build camera clock, isp and controller drivers as modules.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>


Thanks for the series Robert!

Regards,
Bjorn

> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4db223dbc549..7cb6989249ab 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -376,6 +376,7 @@ CONFIG_I2C_MESON=y
>  CONFIG_I2C_MV64XXX=y
>  CONFIG_I2C_OWL=y
>  CONFIG_I2C_PXA=y
> +CONFIG_I2C_QCOM_CCI=m
>  CONFIG_I2C_QCOM_GENI=m
>  CONFIG_I2C_QUP=y
>  CONFIG_I2C_RK3X=y
> @@ -530,6 +531,7 @@ CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
>  CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>  CONFIG_VIDEO_RENESAS_FCP=m
>  CONFIG_VIDEO_RENESAS_VSP1=m
> +CONFIG_VIDEO_QCOM_CAMSS=m
>  CONFIG_DRM=m
>  CONFIG_DRM_I2C_NXP_TDA998X=m
>  CONFIG_DRM_NOUVEAU=m
> @@ -732,6 +734,7 @@ CONFIG_MSM_GCC_8994=y
>  CONFIG_MSM_MMCC_8996=y
>  CONFIG_MSM_GCC_8998=y
>  CONFIG_QCS_GCC_404=y
> +CONFIG_SDM_CAMCC_845=m
>  CONFIG_SDM_GCC_845=y
>  CONFIG_SM_GCC_8150=y
>  CONFIG_QCOM_HFPLL=y
> @@ -762,6 +765,7 @@ CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
>  CONFIG_QCOM_RMTFS_MEM=m
> +CONFIG_SDM_CAMCC_845=m
>  CONFIG_QCOM_RPMH=y
>  CONFIG_QCOM_RPMHPD=y
>  CONFIG_QCOM_SMEM=y
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

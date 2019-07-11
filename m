Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C665765A6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ihVAURlUEk4iaDJe5egvQZ/FvldwdGMHfsGzuqmhC0=; b=Lmv33ZAnEGMeUz
	EzGsp0+iu+/lNu69KyOKYH2V6OuTBtttDh4uOMSw71IuXusGRxbDB0vShw2uftz/RBSQ0+KtXtsDp
	MbjFnwBWL51XriRUn3MEAVNI06jrFkBwayVm7dtpClP0VDKDMfXEcOVvwb4wMABj2GhXx3lp2E2bU
	NMxWZz5W+NJCBMceC04kVM3MpgrlLLm1DRXrlakCPryYGBDk56QsKOh206aBoML7mkH1pfJgZ7hBJ
	A4dubkvApoLfMjlz/Bxf5KD+KEuVxYQhXa/hVT4O7p5kJWt2R/npk5GJwZtSUljzuoPrqso43zO2E
	bU3W8jf35+h1gWDsRbEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaxg-0006oH-4N; Thu, 11 Jul 2019 15:26:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaxS-0006nZ-EV
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:26:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so3207801plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9jqKL10SfPBHX8ip9SjN9bbGfYwLa0UEkg7TV5tI+44=;
 b=Ai33U1cb/AuUPGwciTGPKsb8cL0yezdO4orewd1YNIYc2T4/AMDQiliCn4BrgHRPxY
 vEETBjvOfm7iQYPsPTa+4SfomDLYmhdxcvTz8z43WGVQk1PkjHmPEtfSRDdum1qWGHYW
 MSilOaZIxICmIN+BM8S3RqU6CE1wP97gLp0f4vL5ac/XJ4GSOv/Dw/ZfNPpx+FyLRFDR
 VWI5R2VfhQs931xNuTpJdYKo1Adtk3eIbfpi/3aIHkmzSLyHYQZXw9C66524u0DAQNoc
 bBIi9a0w1YREf0fgWqEzGwGfgiMlIKbpF798d0jFtgRmx/8pSEyzkMTr/O32/Ln6sJeN
 yZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9jqKL10SfPBHX8ip9SjN9bbGfYwLa0UEkg7TV5tI+44=;
 b=aII9NFEJ+91M1gi5yWnHvhDqt4mVdwPDgd/cjRPjFX0oG3+mop1wPpowMrxkE3sSnU
 hq7lbl2NsWFPBLg+dQlpB3oeqpfgSpCjIv40rgB7Q/ot3gHs+8fKvcyVnGWOFC7+NKcC
 1dRF5XGggiUot5ciRkjOtIEDVeLkETJSRcc9Iiz5NKCqiabNUfJwYwnyVtSO4mlmI/Vg
 jnNQyEQJBbTBzjCEny7wKcIuW4d0WqBGMNyDkW+hg9Jlifj75xSZSA6uL16dkKc7tti9
 NIBB6O578Jqduo6m/BHfA9lLTU1jDE4Yybj1Zqgrd/t6O1Pk/jryHxlPRKkVTOHFmTS4
 km7Q==
X-Gm-Message-State: APjAAAW6n7zrvVB/1X6gSwWry5Wr2GKMKUEmPp/eZoDlzOPyb3sclPJy
 sRvHzjFAzsp3sDyhvi07fJbgLw==
X-Google-Smtp-Source: APXvYqyi5VNP+LKJHngY4Cs3k5DfNNUN1ljoMrjNS1v+CpK76lG427Jq4WFgS6YE/HD2LWMQMvA0qQ==
X-Received: by 2002:a17:902:aa88:: with SMTP id
 d8mr5039813plr.274.1562858765582; 
 Thu, 11 Jul 2019 08:26:05 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q19sm7117085pfc.62.2019.07.11.08.26.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:26:04 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:27:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 12/14] arm64: dts: qcom: qcs404: Add the clocks for
 APCS mux/divider
Message-ID: <20190711152714.GM7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-13-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-13-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082606_510020_E8FAADBB 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Specify the clocks that feed the APCS mux/divider instead of using
> default hardcoded values in the source code.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 94471aa31979..9569686dbc41 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -850,6 +850,9 @@
>  			compatible = "qcom,qcs404-apcs-apps-global", "syscon";
>  			reg = <0x0b011000 0x1000>;
>  			#mbox-cells = <1>;
> +			clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
> +			clock-names = "aux", "pll";
> +			#clock-cells = <0>;
>  		};
>  
>  		apcs_hfpll: clock-controller@b016000 {
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

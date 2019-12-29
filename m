Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052CA12C03E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBA3G1iQAv2488IlTbXAFHkGcZryBm6JqkpXc09h6eY=; b=O7TCb1h76kJbgZ
	K8id6HqXfsQSo1oy3d7Cyf85abUK8eahTD0dAp8aq6riOkV84K9sQ2Olnf39L2H52V4u51C/yqjCt
	BtmLDOY1qIfCGUX6jiy8pUQH0ob34LiBhpOXtjGZgZf9Oenw+Bt/afHsh3ORG8J/d0gEThPjsRMvK
	AD8TFHYofA7HGal/ALCjj1RKxLnkpKmuHKnAux10Ck/4RB8ai2LO3b9gXircUBiavNlPfSR3pkg4H
	jND3l0Mud1nZcf+ZVlR9+4XZp1vZGvKataLB84FXdWB583ToS4jGdoLo9UvkF1v9TRyyFPQCCqHgH
	3uZc/qZIokPVulNTB2hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilP2G-0000Ix-7e; Sun, 29 Dec 2019 03:14:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilP25-0000Hy-HB
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 03:14:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id i6so9850913pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 19:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wEeDhGD9qE9h8SuRwaZIe778VYxrlh346WtNbjw3o7A=;
 b=Sz58O9O3SoPFrI0m7TZzPfCRrFbgwtxnWiGZUQsm/CZShNJZp6hTSgkLqGqaVN3xgS
 w3tBxNoFyC45eJIAYWfbcD2L6ak6bsk4irQUlRCxYimBY8bZLXOknH1mZzQBTe+BROWd
 FzD0BlmpOerV2U0OjKq4FOVEuXCQVDOkmIrm5FaLfRsNXJH/kkuGdxMDmHMEaw+bL65M
 As3plY4XmTjYCoRKPAQKOJpQgb3UBgfQ5eCFfFnJyZxYc/UhxznLXJNpiHpRpPHxTuHh
 +/I5pxb3lkXvVhOs890TiE2C2DSPsYTYP3xljeb+BUvnWYecPftzmPMnenFfA0zMOEaZ
 ImZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wEeDhGD9qE9h8SuRwaZIe778VYxrlh346WtNbjw3o7A=;
 b=naFn943pnTqgYP4hDXLgRN1Fb9WfGTTa/n03bj2HyHRgGjOATccIwOSRNc7J38eHN9
 WYmGg1Pq3bI/0DtuOWWMuM//VnSStYfGUkU3mM6mxgZWkhOO53bF911/b67KbI4P36y3
 zmRU5bj/eQgmLXthgmcJF9RuE+gR5Y9lTRmnQ3jyWutIt9X+aqIazmd/Ct8aE1B9EL7u
 SKYwi5nRlaMIW5MnctEIcxylGj3qFvMsH8CnrnyAodi/HpZEbW2XOKh+ppxV/cLaX7Jw
 L7dL7LAd77kuYQjPCZmbq3/vf2YafYL16LXNgwrivx7+BVwXfEq3olKYe97Kbpvt1pLs
 HbTA==
X-Gm-Message-State: APjAAAUJnEOi6vPGaB/58oe/EDqsO7eixHOyf01THkpsQwWe6EA+wd/N
 +ZLnu0/kHp9ePI6QwMMYrTqTXQ==
X-Google-Smtp-Source: APXvYqyrN5Vts6qPQ1tr8xyRCTf/z7TJ6Nu77KyEYF2HVSsX4g9swQo843iIk+bkqCPSyLGa+Ii0wA==
X-Received: by 2002:a63:2808:: with SMTP id o8mr62765812pgo.39.1577589258899; 
 Sat, 28 Dec 2019 19:14:18 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 18sm38826148pfj.3.2019.12.28.19.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 19:14:18 -0800 (PST)
Date: Sat, 28 Dec 2019 19:14:16 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20191229031416.GK3755841@builder>
References: <1577181575-25788-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577181575-25788-1-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_191421_739376_57479613 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 24 Dec 01:59 PST 2019, Rakesh Pillai wrote:

> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> This change is dependent on the below set of changes
> arm64: dts: sc7180: Add qupv3_0 and qupv3_1 (https://lore.kernel.org/patchwork/patch/1150367/)

It would be clearer if you linked to the series instead, but it doesn't
matter at this point, this is merged already.

What doesn't seem to be merged is the addition of the
qcom,msa_fixed_perm property, so I presume I need to hold off on merging
this?

> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 28 ++++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 189254f..b2ca143f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -248,6 +248,11 @@
>  	status = "okay";
>  };
>  
> +&wifi {
> +	status = "okay";
> +	qcom,msa_fixed_perm;

As remarked by Rob, properties should be using - instead of _.

> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>  
>  &qup_i2c2_default {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 666e9b9..7efb97f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -42,6 +42,12 @@
>  			compatible = "qcom,cmd-db";
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: memory@93900000 {
> +			compatible = "removed-dma-pool";
> +			no-map;
> +			reg = <0 0x93900000 0 0x200000>;
> +		};
>  	};
>  
>  	cpus {
> @@ -1119,6 +1125,28 @@
>  				#clock-cells = <1>;
>  			};
>  		};
> +
> +		wifi: wifi@18800000 {
> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
> +			iommus = <&apps_smmu 0xC0 0x1>;

Lowercase 'c' please.

Regards,
Bjorn

> +			interrupts =
> +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> +			memory-region = <&wlan_fw_mem>;
> +			status = "disabled";
> +		};
>  	};
>  
>  	timer {
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

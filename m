Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D618C47673
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 20:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvHceFspCl3chqHOhnQhEd4LpLDSaxRtj9hWilXCgKg=; b=NrhOB+EcGDp+sw
	apayPzuLczl+ZbXdc2x/NpHNSJsH3rEYzehRchDC4RKIS6NouKN+gu9c2rB5M0/hspEr8sdUl7qgd
	+NR0myIw9ypzDNEGO80WT8xq9hCBJEp3PCqwdUNkxfUa6t8Aiu3Y2svq0LD7nFjNoBl7uQmKlod66
	axfQMFKiBFYJ7NbHiD82QtHsU4ALs7KBmg198Obzv5WfKDmowFmFFXSFOATYMzMniAbEZD3fJNnYe
	2mNllNbEkwdkPK+Qh5OKzS4FHd2NukjwPqB/YrvLCqjmZiZz2JNiRIb8wXyWtzZy5R53v+DkTJ4/O
	hW00PpBK0ZA6BF7gXv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hca4m-0002I9-7z; Sun, 16 Jun 2019 18:40:24 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hca4U-0001mM-DI
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 18:40:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so3144212pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 11:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=btKkF8Mqx8IA5i++C7IxPWIDPO0GeHSWef12pSEOb0Q=;
 b=S1pC/wj1+zqmYBm3MeXf98LuztUeNJukN2stfm0fz+lPUcAFyoMrCqM8L9Cz1icXyM
 wwu2DWcJJ0Jns1MCuFv8F+OBnvecCbkIBnl1d3biaMPSDT1141BqEnKC+62bBAxyDJhj
 IvmsgH2VWZ7XxqdDGlu3pPex0srTtBbO8G+jr0CsNB+PCNS1xTFqIeE7VkkOyJsmKa6i
 7r3zMb883RzTj2rBPfF+A/0CdpWixtmF9t9RRx/bADUBh2HSmueAq28QzWaPXlS24QRy
 LuYAcpIaJ1xAqqNWNJE9QS8tEUULdnRGZavqBv+pnlo/W90Pr09q50r0jb2hRGkDSIxE
 4HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=btKkF8Mqx8IA5i++C7IxPWIDPO0GeHSWef12pSEOb0Q=;
 b=ado98krS0gsIIJQAUxd1qfLzzCQiCJYJcS6+lImu0LT8rnX5bRvv2/V4ylilDZkAH+
 iUGGvUSGNoyWn2692xZvjazjSBiTUkv81aYsjPt8GLvG9LlFw/5nxCc+OSjvcfeeCtmw
 8CcFgJo7lkjVzTlJVWlooSBzzlC4cbHVsgcq4KhHrrv2YCAgkOQaV/GooGbOrrDUqTyU
 6BQR2atjCGoCXNE27qdK5ef70L8sH5umLrzcW54Spx/a9IAiCpSnCM8n/TAB2O81D45M
 7TWosPP8tczaeU5JZB9l95JlYoPfHYXqDenWTYA8CAuHBBAJXT7jBD5+jPDOk8iPNFMU
 V1Aw==
X-Gm-Message-State: APjAAAXhUpBqcxEaijv3MJOr33kdzqkMUcNRD/dUdSMJF3AcZI4k2qBg
 bKElkYuldn2UEIRJVSXajAoyiQ==
X-Google-Smtp-Source: APXvYqzOGRcA+Tq/jrany4OPqM6WGc3SeKBY+5M8G9CwOBF5iVJP761Y0EuPoqMABGSP+jkZQAiohQ==
X-Received: by 2002:a17:902:205:: with SMTP id
 5mr97285945plc.165.1560710405032; 
 Sun, 16 Jun 2019 11:40:05 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e6sm8544314pfi.42.2019.06.16.11.40.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 11:40:04 -0700 (PDT)
Date: Sun, 16 Jun 2019 11:40:51 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Brian Masney <masneyb@onstation.org>
Subject: Re: [PATCH 1/2] ARM: dts: qcom: msm8974-hammerhead: add touchscreen
 support
Message-ID: <20190616184051.GC31088@tuxbook-pro>
References: <20190603010455.17060-1-masneyb@onstation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603010455.17060-1-masneyb@onstation.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_114006_472297_73C04177 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux@armlinux.org.uk, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, david.brown@linaro.org, absahu@codeaurora.org,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, frank.rowand@sony.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun 02 Jun 18:04 PDT 2019, Brian Masney wrote:

> From: Jonathan Marek <jonathan@marek.ca>
> 
> Add support for the Synaptics RMI4 touchscreen that is found on the
> Nexus 5.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Applied for 5.3

PS. Please use a --cover-letter when sending multiple patches.

Thanks,
Bjorn

> ---
> This is to be applied on top of the display patch series:
> https://lore.kernel.org/lkml/20190531094619.31704-1-masneyb@onstation.org/
> 
>  .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> index c92ea01e3918..06c33bd71620 100644
> --- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> +++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> @@ -280,6 +280,16 @@
>  			};
>  		};
>  
> +		i2c2_pins: i2c2 {
> +			mux {
> +				pins = "gpio6", "gpio7";
> +				function = "blsp_i2c2";
> +
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +		};
> +
>  		i2c3_pins: i2c3 {
>  			mux {
>  				pins = "gpio10", "gpio11";
> @@ -326,6 +336,25 @@
>  				bias-disable;
>  			};
>  		};
> +
> +		touch_pin: touch {
> +			int {
> +				pins = "gpio5";
> +				function = "gpio";
> +
> +				drive-strength = <2>;
> +				bias-disable;
> +				input-enable;
> +			};
> +
> +			reset {
> +				pins = "gpio8";
> +				function = "gpio";
> +
> +				drive-strength = <2>;
> +				bias-pull-up;
> +			};
> +		};
>  	};
>  
>  	sdhci@f9824900 {
> @@ -468,6 +497,41 @@
>  		};
>  	};
>  
> +	i2c@f9924000 {
> +		status = "ok";
> +
> +		clock-frequency = <355000>;
> +		qcom,src-freq = <50000000>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c2_pins>;
> +
> +		synaptics@70 {
> +			compatible = "syna,rmi4-i2c";
> +			reg = <0x70>;
> +
> +			interrupts-extended = <&msmgpio 5 IRQ_TYPE_EDGE_FALLING>;
> +			vdd-supply = <&pm8941_l22>;
> +			vio-supply = <&pm8941_lvs3>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&touch_pin>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			rmi4-f01@1 {
> +				reg = <0x1>;
> +				syna,nosleep-mode = <1>;
> +			};
> +
> +			rmi4-f12@12 {
> +				reg = <0x12>;
> +				syna,sensor-type = <1>;
> +			};
> +		};
> +	};
> +
>  	i2c@f9925000 {
>  		status = "ok";
>  		pinctrl-names = "default";
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

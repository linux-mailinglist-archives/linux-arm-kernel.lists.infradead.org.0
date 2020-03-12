Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69693182800
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zG6/2babYBZlfESxB5pgduNB/VzGuguy/6Z1iaV9Hvk=; b=lCxrv0A3P0MWg9
	9ZqPLUaGbPnyWqvrHX7VK7xWsk6cDl0Cuyh6I7ZFe1aJfCRyPU8XPZjQeZc26flnxvvJPhNZMVo+u
	iIskWDKynzGjfvGkm90zuEweodmi4bOQmAbdHCE2uvPOm7q5qOYPYvmbIDO1LP1yUh1JTH6xG+Kge
	x5xtpUlcdLm40kVoX043qBlSNksMTkkqVrioXdg+NT3g6Y/y1w3gUnT7BasGYpV4mugdzKDevGp+D
	bSCoLYFGeDv7TxVCZYGaZUcnOi9uaQG7xsSrnWyJODPM+nsvIOubsO+ztC59pTJPvfhD2WASjqO1p
	XkeNQ8yVBoRferuDPryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG0A-0005At-3r; Thu, 12 Mar 2020 05:03:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG02-0005AS-4M
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:03:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id s2so2429265pgv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cTgoCb839w9OT0HV/GelOC2bBejqZHZyMGPiFKWTS/E=;
 b=J08u2w/Zf7UGNyiE282O3vgUMkztg53mwZdynLXMMKVUqMuiK2YqTiVvoQDsJgGpv4
 0otKKtN/SiVW3dyVhymAEtPrXh2MyM2WvOZgvkZx/YveoBLedK3g/xxYgIOO2OYrvhck
 rnj/wqIf37KO131R1ABcBYvng6GCMJ2MJTbjfF/n6aX3HwEYOnJRzufsneI6FT0GyzmU
 Uw3u8GvwHjHeoa+cxn9jmbz1veUatAaqfYKpPSbgN2txE7K7CWRB/5h6C4/N76bf8kML
 5682MY5ss5c+KqDKdIX/G1rdkV1HwMBEj3hr1gie1T1MuLRm9pkCVmRHKPShzgKD4gJJ
 uBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cTgoCb839w9OT0HV/GelOC2bBejqZHZyMGPiFKWTS/E=;
 b=qdbm700z6r5nvVfSZ874ttqHxBpvtpa+FFV6KRuWwJCrBxAWVqP8aS4e/kU+KTZoxw
 xk2vaPuM0wmXKDR07SYhGxPU5VR8aqIysFtO4I4JNnDMr7g1VVGOmJk1MdboUJ7NmA6v
 H6nyCjPoVyiNeqlXM1sDJjDgbxVZxwmuqM1GZO9gg3jMWYNsQeIIPxBhXmp+i3cVQw9s
 i/9oMPneYkV+6nBI/Qrqh4DZ1S8DkX45BijvTeGxANfxZC75dKgdgb/c0LuHdC7Yr2ep
 a/Gh7ttNvIEFPaeD+of9/2n2bJxZOJ/UPwKyP4EQTvJ6jtQDPAddFdGJAjcsAUiQ2FI+
 Z9MQ==
X-Gm-Message-State: ANhLgQ33gBXpQqRpngXN5Tixq1YoEncb4F1pIhLuf9ED0+4rAhQ0ZUUp
 YMV7tt3PNDU7PS+Z9qfakVqirQ==
X-Google-Smtp-Source: ADFU+vs21f/l4jH6Bg1k/SVgcLp8lig2v5uQGw4OkgWvTJTRpScTVWOWhPCZokHdhiZSRONggGreOg==
X-Received: by 2002:a62:e909:: with SMTP id j9mr6407295pfh.134.1583989392797; 
 Wed, 11 Mar 2020 22:03:12 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s12sm24253061pgi.38.2020.03.11.22.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 22:03:12 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:03:09 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 2/6] arm64: dts: apq8016-sbc: Add CCI/Sensor nodes
Message-ID: <20200312050309.GU264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-3-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_220314_199232_6F051493 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Wed 11 Mar 05:34 PDT 2020, Robert Foss wrote:

> From: Loic Poulain <loic.poulain@linaro.org>
> 
> Add cci device to msm8916.dtsi.
> Add default 96boards camera node for db410c (apq8016-sbc).
> 
> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi | 75 +++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
> index 037e26b3f8d5..a3e6982f4f93 100644
> --- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
> +++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
> @@ -495,6 +495,81 @@
>  		wcnss@a21b000 {
>  			status = "okay";
>  		};
> +
> +		camera_vdddo_1v8: fixedregulator@0 {

While "fixedregulator" is a seemingly good name, you're not allows to
use a unit address on the node if there's no address information in the
node. So you need to give these nodes a non-generic name.


And please move nodes without a reg (i.e. not on an mmio bus) out of
/soc, i.e. place it near /chosen.

> +			compatible = "regulator-fixed";
> +			regulator-name = "camera_vdddo";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-always-on;
> +		};
> +
> +		camera_vdda_2v8: fixedregulator@1 {
> +			compatible = "regulator-fixed";
> +			regulator-name = "camera_vdda";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <2800000>;
> +			regulator-always-on;
> +		};
> +
> +		camera_vddd_1v5: fixedregulator@2 {
> +			compatible = "regulator-fixed";
> +			regulator-name = "camera_vddd";
> +			regulator-min-microvolt = <1500000>;
> +			regulator-max-microvolt = <1500000>;
> +			regulator-always-on;
> +		};
> +
> +		cci@1b0c000 {

Please ensure that cci and camss have labels and reference them by &cci
and &camss below the / {}, sorted by label name.

> +			status = "ok";
> +			i2c-bus@0 {

Please reference this by its label as well.

> +				camera_rear@3b {
> +					compatible = "ovti,ov5640";
> +					reg = <0x3b>;
> +
> +					enable-gpios = <&msmgpio 34 GPIO_ACTIVE_HIGH>;
> +					reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> +					pinctrl-names = "default";
> +					pinctrl-0 = <&camera_rear_default>;
> +
> +					clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
> +					clock-names = "xclk";
> +					clock-frequency = <23880000>;
> +
> +					vdddo-supply = <&camera_vdddo_1v8>;
> +					vdda-supply = <&camera_vdda_2v8>;
> +					vddd-supply = <&camera_vddd_1v5>;
> +
> +					/* No camera mezzanine by default */

This comment gives me the feeling that this node should have been status
disabled, please confirm.

Regards,
Bjorn

> +					status = "okay";
> +
> +					port {
> +						ov5640_ep: endpoint {
> +							clock-lanes = <1>;
> +							data-lanes = <0 2>;
> +							remote-endpoint = <&csiphy0_ep>;
> +						};
> +					};
> +				};
> +			};
> +		};
> +
> +		camss@1b00000 {
> +			status = "ok";
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				port@0 {
> +					reg = <0>;
> +					csiphy0_ep: endpoint {
> +						clock-lanes = <1>;
> +						data-lanes = <0 2>;
> +						remote-endpoint = <&ov5640_ep>;
> +						status = "okay";
> +					};
> +				};
> +			};
> +		};
>  	};
>  
>  	usb2513 {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A905A1827F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb6AoK3dFhnbn/Q0FFubJV+MfYl8jEj/ehAWZ3oxI4E=; b=stJEfkzGQaei8Q
	O/udwVSdDGYqhzdCDHroTIecBEbIcqav7dUVfMJTqdOovQYWrrbLATkd12JZzJ/4oMAaoMznDjF2P
	rIbYx6Q7B6VEB3qDSGDVjKaEJ18UV5E2f3krDTuAZVE6jAas1uk/eTqGhBie2oM7T3nh2Bk3GCs40
	MVlP6OIEvy31zIeXlS8ecRi9de7DEYQkmcqGzGOgQ33JZNf2An/HSqU0o3lii64NIAj0Dwu4JxZtr
	9l1yYZuZLTYnvs8zrZsn6fmNnGsMyYsfSjko3AfgvNyDTkqGGXt62xkXbWLQWlaRHyoYzed/98gb6
	g66ph3IcMoHOJafOjopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFnb-0001Ln-Bm; Thu, 12 Mar 2020 04:50:23 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFnV-0001LH-7O
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 04:50:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id y7so2024693pjn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 21:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9Huysc9k69DOetuyPT37xPzZ+YLOLRqnJ/FtV19WEDc=;
 b=u05buOnhB2ZaHjx7I2VFVZdDS3meih0mc6WZaP2ubEFIX5IRV5PakdbMoocuP1aMet
 136201rU4y6u8Z/BRJWEayhmgq6izg7StoG+xiBHPWeICaxzekOrFwczJDFN37vhaqhG
 1kw58XU/mfyf4/4oZnJjk92aE03UU/a077dE71+PFVLVGLx6/iA3tlkGQl5FIdnhviBh
 3XsuPkEDF8xtLyCuU6ZrY2qrQhM265xHA2AbYFz8FY43oNPUUHgB4+ccFwqE47xUd2S6
 W4eYzRJufanpih+BqCLI38xka2OLJnMdlWxDNUS1RZnkjiP6U9kMQyeitCgIeZxffQ0S
 Klvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9Huysc9k69DOetuyPT37xPzZ+YLOLRqnJ/FtV19WEDc=;
 b=avugarp5qFhbBIwnltTOw6KAoEUx34+AafqqXlqRSAYiQ895h6ArexYAY/ZhzGqYfY
 SssRLPrCFPbLJD6qOEkFwczOmWLT71LBepVEDelCahDBQrjUuLKNziVBvU6EnfC76Jh5
 FCZtALQjbLaRNlgxT1WK5DxmFzh1Ji+dlV4ScdvFkOiW203ls5H2zzcMAOlIVzm8ODLb
 WuwDyeBWPxdHphDmwJuzpUsGpR+ZxWoL6Oel5L03kMgAxfeRV1jBN2oFa9Tx4F/210jV
 tmQbWGJkDlB53KCqJ4lsyQekmAoyzTANTguLQW1pOSfEcOpPVj2uQb4yMqRpuVwsgbXQ
 I2mQ==
X-Gm-Message-State: ANhLgQ3aM3BX84xpR7YCS2tizciTehbigxqyBllIRG/KqOaR1m9IuS9t
 SAiezadl5Q2fDYcrQ1ewwnaIOw==
X-Google-Smtp-Source: ADFU+vtQv6XCgFYw5CWT4cXp6fyTARSMSkMReQUHbK2N7f/ufSK/IBPreQ4I9vHrUgXhd7/6d78Hww==
X-Received: by 2002:a17:902:7c0d:: with SMTP id
 x13mr6162264pll.93.1583988615935; 
 Wed, 11 Mar 2020 21:50:15 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q12sm52827529pfh.158.2020.03.11.21.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 21:50:15 -0700 (PDT)
Date: Wed, 11 Mar 2020 21:50:12 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 1/6] arm64: dts: msm8916: Add i2c-qcom-cci node
Message-ID: <20200312045012.GT264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-2-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_215017_331230_8C9FE2A4 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
> The msm8916 CCI controller provides one CCI/I2C bus.
> 
> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 9f31064f2374..afe1d73e5cd3 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -1503,6 +1503,33 @@
>  			};
>  		};
>  
> +		cci@1b0c000 {

This deserves a label, so that it's possible to reference it and alter
the status in the board dts.

> +			compatible = "qcom,msm8916-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x1b0c000 0x1000>;

Please sort nodes my address (and then by name).

Apart from these two nits, this looks good.

Regards,
Bjorn

> +			interrupts = <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>,
> +				<&gcc GCC_CAMSS_CCI_AHB_CLK>,
> +				<&gcc GCC_CAMSS_CCI_CLK>,
> +				<&gcc GCC_CAMSS_AHB_CLK>;
> +			clock-names = "camss_top_ahb", "cci_ahb",
> +				      "cci", "camss_ahb";
> +			assigned-clocks = <&gcc GCC_CAMSS_CCI_AHB_CLK>,
> +					  <&gcc GCC_CAMSS_CCI_CLK>;
> +			assigned-clock-rates = <80000000>, <19200000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&cci0_default>;
> +			status = "disabled";
> +
> +			cci0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <400000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>  		camss: camss@1b00000 {
>  			compatible = "qcom,msm8916-camss";
>  			reg = <0x1b0ac00 0x200>,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34BE150EAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 18:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEYCCZwawcEtbFgkrXBbPLLOy4YZNLSbLyRtNzR0plg=; b=PzMDGiwuw+JkS9
	TcJuAo2w7j/C5DX/Nke1eSBrzwBcTyHOtawvwdEsyDqaAckz/8KW4X8niYTj3IL2C5WEzhzUzXcil
	HORr/NYySIcADpGDsaOXAq3ZcDlryhea3bGsuy7jL4ly77OHQQoGiRzw7cE6fPSaXZy+x/1W/7/E5
	+WjYk43pJgYFpWa9ettXeufjw7/4+Y422fATZOoGtcBqNqQtjO/jYCWLubDUOHVFIKwniM+TLK3Uj
	KNOtrlO56tOzUOf42/4XmK+s5IOjKhqEHt0p2HisTB/akTTvht1rSpu1ETjTZ/ZCuG1wJfJXFBcQu
	xX3umonubHRmeSHVJD3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyfcv-0000HX-HI; Mon, 03 Feb 2020 17:35:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfcm-00080t-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 17:35:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id k29so7913825pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 09:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/2GnHgYEod44KNh5O907qr0Dr3tZt31Xm1Pio0+BUtU=;
 b=T3/dlEbss69QCdMNMPoph/AGjrLOJywnCDQUDC2crHYwLXIj8gbLjE1Mhh/0AS4Q5i
 1AN7ohRk8xc5mWmOgUpM/XP9ETNjwFHjATcQYoN/y6IcTcbeIIKbLoOOtplCNuIlIw6C
 lt1Al/0QHs4pwiYD+e5S5S6DGygimX8cRV8E3qtmVn0c98qAteldebnd1oAOpSZWRLfg
 X4hvg2OAdCgQIqlJrR5SZ3IxW3t0aZSQGeM7PWTCFvoCLYqq0Cq4KzyCL5katLBoLA+4
 hc+utViSzEbgLYkXa9iZmRJ+ZawjFNhlcJ0L48IDNx6YU3dp1OVy3uPvyrzXLMKfamqU
 h+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/2GnHgYEod44KNh5O907qr0Dr3tZt31Xm1Pio0+BUtU=;
 b=nXX9r78oi94H3wHnRYNBgEexpnb8K3DebedRXHIItN85A42MURckTNwF/Qkl4pPlHS
 PgQMyCiLVGHha2vG2XJSJhM/n+If2o5F95v/ilUhZT76Cfug/4+o4Mw0Ux07qRQSQy/N
 hAac7KkNrSSyI9FdVMKOsYLn3UPV8bKA5fmDeVekExFOHmF9swotC3d55VUnFSTsAnDG
 D6inNa3UdR5hd8/U8M+N7SCj7WixDjlcXGQnZEXlnzopJwwOOSYkqVos9JIxeHdHecFS
 MboWnNYRYS/bEpsXKhHMcv0/023CHDsmWtcjN0l5jC+1ozTajBwhRat40rh+xNnRMs3+
 T5Nw==
X-Gm-Message-State: APjAAAUPHsEE/dj9F+WRc7ODF6f2RCiiTmLYFmai7JJFra80CSW59iwe
 1wX/LSB01sGWDjm934xVGlE0IEwZP0A=
X-Google-Smtp-Source: APXvYqwHjAZO5+aiba+vTO0oc2CApTMEtmAA4xfo4oGHCw/dpaiKyNl42GAFhoYlHtXUvoagPsmxZg==
X-Received: by 2002:a63:7e58:: with SMTP id o24mr25705879pgn.214.1580751302915; 
 Mon, 03 Feb 2020 09:35:02 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s18sm700055pgn.34.2020.02.03.09.35.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 09:35:02 -0800 (PST)
Date: Mon, 3 Feb 2020 09:35:00 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v5] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20200203173500.GB3948@builder>
References: <1580281223-2759-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580281223-2759-1-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_093505_014761_3125C53B 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 28 Jan 23:00 PST 2020, Rakesh Pillai wrote:

> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 28 ++++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 388f50a..167f68ac 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -287,6 +287,11 @@
>  	vdda-pll-supply = <&vreg_l4a_0p8>;
>  };
>  
> +&wifi {
> +	status = "okay";
> +	qcom,msa-fixed-perm;
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>  
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 8011c5f..0a00c94 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -75,6 +75,12 @@
>  			reg = <0x0 0x80900000 0x0 0x200000>;
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: memory@93900000 {
> +			compatible = "removed-dma-pool";

Sorry for not spotting this earlier, the "removed-dma-pool" compatible
is a downstream thing and isn't defined upstream.

> +                     no-map;
> +                     reg = <0 0x93900000 0 0x200000>;

If you swap the order of no-map and reg in this node it will look like
all the others.


Apart from that the patch looks good.

Regards,
Bjorn

> +		};
>  	};
>  
>  	cpus {
> @@ -1490,6 +1496,28 @@
>  
>  			#freq-domain-cells = <1>;
>  		};
> +
> +		wifi: wifi@18800000 {
> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
> +			iommus = <&apps_smmu 0xc0 0x1>;
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
>  	thermal-zones {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

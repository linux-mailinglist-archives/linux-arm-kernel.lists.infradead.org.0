Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D789D11A4FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqSm8w2ctzpxjmNXGu3my/F0Qrg/kzKb9uVAsJHvO04=; b=oOCQAWcBOoeaLB
	/lU6B/G07dEI4kFmJe7YsokiG1mzw2BBvkkiwoM0zZi/jUmabynb8uHs1/sFs44LRdhegmd+Nh5ce
	WwHCYxH96h5QypupI+oljxm/q8RMuansC2jXP5LwfXVEFIUVKkT5L9uQMhSl6qEbL2ECbAJwivyor
	OvHhaw80IArQ4ffqCocceD4AITr+/LgmaWuLEi/ftr8NZWETPFIaPM6hF0nyRIKfqtgrZoJa1e8iW
	6La1qylsKF9Gzz4HwRV5eJcBScfTFxkWfEn8uCoOX4QS25HrdUklacBflrZdf9iIbLUYYfqOYx559
	X9Jqpxs1Uqb2av3n0nLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewJ2-0007Em-KP; Wed, 11 Dec 2019 07:21:08 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewIr-0007E4-5D
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:20:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id b1so10301514pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 23:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Zt7dD+G6CZ7JiW/OTyZRbi+QrgrCgEMr0EtbdbVOEvo=;
 b=iMahdVvUtYzRqHNMafgKcr6aoqiCK7vmp3iXqmihp+FGIvNpLfNq/m2YTqfRe+k0Nq
 kOgT74Udrg0WLXHns+nS0rhaInQiPaL9iouYgxrdAT5bAbwQwwHN7S42aW0rt0G1wpVs
 /PzhtlbQuD9V6KkI5xOMC+fLmXXzxU2ho0S1E2oQPsyEFtfcJcHC/MlIeQGN+c7/OaEP
 j+KfHH8baHU9oSpk3Qwwr3Y2ZIl0C0iSDFuYhCH9ASpnb4HysTH5LLb1HCrL+cuu5s09
 6X8ZfQDg/XjLZW35aWVypgrT6JPBCcSgHQctQRkYClbxNQ21QZSwiFPBs9bCmQwV34g3
 VOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zt7dD+G6CZ7JiW/OTyZRbi+QrgrCgEMr0EtbdbVOEvo=;
 b=I7wRhCQ3aX4LErOOi5AblMcoUDMiEOM72drmd4Ege1Z46i3lE9U9Op/kAADzZbQFl8
 tvvXN8NDr/xeyWIpAmbsP2YJJhbmeB6ZbatBS5Bpoud/R3EPSoi+EpgCkIctyx9lpgMk
 XtTgS1a/uRHHnEnZjcOQKB0jGub3D61qTdZ7ingZPKo4RVkv26dS07zPgnS/l4hZGjGs
 JgcGTkvbhAq0o9G0dffm8VOC7vdxUnnua7grmcm/8UXzjLsEifOt3rXOmFes+iXKw5ED
 tz/Ngx2irFX0HsSko/aIZeKPx4eAeuIVz0hG6K/F2oAJcrhK+2cRvLjJDtg9giwIhmL+
 dDrA==
X-Gm-Message-State: APjAAAUyGPsLU0h+FNtyEbmbi4VvjqSjTLh6WxBHAtJcs8LQenTCMEVh
 pu97PBRR5Qrvc+mjXOXb57C9zw==
X-Google-Smtp-Source: APXvYqw4cxozBp2uimntGWWy0jZ4dci8RUXiHQpPyTXnBRm14alWbArUZIe+OL2WJ+qkqlQdnpm8Ug==
X-Received: by 2002:a63:684a:: with SMTP id d71mr2442865pgc.27.1576048856072; 
 Tue, 10 Dec 2019 23:20:56 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x4sm1496180pfx.68.2019.12.10.23.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 23:20:55 -0800 (PST)
Date: Tue, 10 Dec 2019 23:20:53 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device
 node
Message-ID: <20191211072053.GH3143381@builder>
References: <0101016ed018cde9-da3dc3e0-de6e-4b18-9add-bc6f88511ab2-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ed018cde9-da3dc3e0-de6e-4b18-9add-bc6f88511ab2-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_232057_213091_2F021592 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed 04 Dec 00:48 PST 2019, Rakesh Pillai wrote:

> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> This change is dependent on the below set of changes
> arm64: dts: sc7180: Add qupv3_0 and qupv3_1 (https://lore.kernel.org/patchwork/patch/1150367/)

Why?

> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  4 ++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 189254f..8a6a760 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -248,6 +248,10 @@
>  	status = "okay";
>  };
>  
> +&wifi {
> +	status = "okay";

Please conclude on the representation of the "skip-hyp-mem-assign" and
add it here, rather than in a subsequent patch - which implies that this
patch doesn't work on its own.

> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>  
>  &qup_i2c2_default {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 666e9b9..40c9971 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -42,6 +42,12 @@
>  			compatible = "qcom,cmd-db";
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: wlan_fw_region@93900000 {

wlan_fw_mem: memory@93900000 {

> +			compatible = "removed-dma-pool";
> +			no-map;
> +			reg = <0 0x93900000 0 0x200000>;
> +		};
>  	};
>  
>  	cpus {
> @@ -1119,6 +1125,27 @@
>  				#clock-cells = <1>;
>  			};
>  		};
> +
> +		wifi: wifi@18800000 {
> +			status = "disabled";
> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
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

No iommus in sc7180?

Regards,
Bjorn

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

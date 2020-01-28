Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FB014C0D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 20:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gic4Dd9C9X9OSkVltKfe1kaekOrj/GfCTgEIZqMnsdo=; b=fORNcAoV8bp+91
	K+I7u4s3/7hdZixgHRiXk9rYcYIamG6G7nl2u1t6psYBkis5TlbgthRRVE82m8ItgjF0xHv6WMGlA
	ZOO/gwfNOsLvnW+hpKXZV6DwL6DfoEAhn23joI9kU9O4mqv3P114om7RW4yEMvc/i1IjtMB1vKFYv
	wVLlM7tHeyE9uTaoU07EmWS4dk97tbPXKytfLBpbhqiLbk/u+jIoPtKspGhJ3pXrQOK5EUWc99/oV
	AUT4bMmrdc+/U0GFC288GQdsIOfbehH3h4ksPpeQqtDgR0pEjRPPj0b4xsi8DkJanZd5IoABUnjpd
	a7/iAAKCjLK4bM+P/bmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWPg-00065P-66; Tue, 28 Jan 2020 19:20:40 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWPX-00064Z-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 19:20:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id b22so5482379pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 11:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LYew2jkDUlCfpmqi8UqP0MWvgK08mQLJ5QipcXk94Nw=;
 b=glPmxTzfm4zSXwo1RsCFH9zx4U29Qc+s6KSPIHJMi2jbjXSMEVSOjw0/UqU4VnHzPM
 eohNZW//0zQfzufKpO9a95QWtX13bd8YVoMKRF0gJwmWRB051bfN23hlNI0paEW/h/AG
 eOHU3WiH0S/gbabgW+QPPE8OkyF1OiL7OokTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LYew2jkDUlCfpmqi8UqP0MWvgK08mQLJ5QipcXk94Nw=;
 b=gcwFWCG3zSjW0EGlmiDxrhKIFy0SRrMuP/6gqYb9UCjz5PMTna9Z6/iSn6crASB9xD
 5aeSF8npH1OMk1KzC22u9K+Ce0tVY4QQqsyCg8IiuLAxuPyyn6ewDgQ8/lFtPhn/qp6B
 3vs1VIfLpBLdgauqMXvnyiayT5xnqXzHRduI8Sp9lRtqDAD3wEWeTUNQ6xqqPrBzTgEj
 cPSXErHDZDqFxiNn/AS6LKfuC/LyExB4apsCkGlw/F3gsgEYDXGImpXEF/WVL73AXIni
 GV2hkDW8f1llM1LzSLU0CZJHYYhgtDGVYpfyJwRUcOp1TAykNZJpxqlaAt6ipKSI3tSv
 +wLQ==
X-Gm-Message-State: APjAAAUc8dLHpDcLO2KyRghglYfN+KcvvXsecCaOz956Us1qBtl8kwjO
 mp2XVc9DdW6oNYQLAVCQ9t0M8g==
X-Google-Smtp-Source: APXvYqxkt5ByEhDoG7VUZvlRrj1lUICrxMnGZlHApMda1UlKyNQiei8yE1/b5ej/6G+z0l1bn2aQzA==
X-Received: by 2002:a17:90a:191:: with SMTP id 17mr6579887pjc.88.1580239229274; 
 Tue, 28 Jan 2020 11:20:29 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id l37sm3886086pjb.15.2020.01.28.11.20.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 11:20:28 -0800 (PST)
Date: Tue, 28 Jan 2020 11:20:27 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20200128192027.GB46072@google.com>
References: <1580207617-818-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580207617-818-1-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_112031_532302_DEDFBD3F 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Rakesh,

On Tue, Jan 28, 2020 at 04:03:37PM +0530, Rakesh Pillai wrote:
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
> index 189254f..151b489 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -248,6 +248,11 @@
>  	status = "okay";
>  };
>  
> +&wifi {
> +	status = "okay";
> +	qcom,msa-fixed-perm;
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

This part doesn't apply cleanly on qcom/for-next, looks like you have to
rebase.

>  	cpus {
> @@ -1119,6 +1125,28 @@
>  				#clock-cells = <1>;
>  			};
>  		};
> +
> +		wifi: wifi@18800000 {

You added this node at the end of the file, outside of the 'soc' node.
It should be inside the 'soc' node, the sub-nodes are ordered by address,
so (currently) this node should be inserted after 'cpufreq@18323000'.

> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
> +			iommus = <&apps_smmu 0xC0 0x1>;

nit: the convention is to use lowercase characters for hex adresses.

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

not sure these 'CEx' comments after each interrupt add much value. What does
'CE' stand for in the first place?

Thanks

Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

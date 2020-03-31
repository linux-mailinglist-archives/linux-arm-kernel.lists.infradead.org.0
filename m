Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BBB198C84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWEAvzB3QkIikKygaKAWP5EtSmdSb5ZYMgYgp8Tupkw=; b=Lnuv2mPN/iFuTE
	SROl0pIU0PKlaQimAcaJCrzZhtDCNPyCnp4PMyXl1UBVycL/Xj9cMMVYcTORueaqO8k7PEpHDI0m5
	CJM5RgRe0TjG+hoDwQ8xLQDJPZ8wmKoCoFCESFXZpwbkTLzUG+E0M2bYdxTDSWEC1KeHyPFBJ778O
	1ybB4pvDUp6IFtfrVX/XjmGF4yrMFmnfCaS23BGUyq6gYgqDFqt6DmrlnE4QNVmsOTXjNydGNWq7+
	izxtvy79WUL5WsU7+xMbVOQyXh5o0EUekyoWJKlYSgVFqaNiCmUR9uAP8ZZ0M+DfWUmib8P1wGKhg
	57fSlAy4qGtCJgchbkZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAgv-0006ts-RJ; Tue, 31 Mar 2020 06:48:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAgm-0006tZ-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:47:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id q3so9862571pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xzBzTtyv/ik/5EBBE5B9QBIPXEM25PMpqUtEZkO+j2o=;
 b=YWiJoWdxOokr0IV/cq7x5S7oImQ3xpSnBWJaj/CnjT9pp1xdd61+UWDi4ViiQoAXeC
 RIk6lzC2DdfPIEjFecCeaTAk3EHi9Ivm30yknHCQUtMXrC+gmtxNKep1BuDiBX2MbBDe
 v/KaqM9xH/cOJv38hF6Wfgx6IJMQiklpPy1fv/QRIWXaBbj/q6JEvJB5lmPBbx+dJgzz
 SEa3LZlJ3FGT7zIrO6uFSAFN3O8ncCy0ARu+niB3CeiEEmsrsbkBHiSi1atwPNptN5zy
 8La0T84o34UgCrlbYm649ZDPs37IqnM0gtSJHoAChDFAG3GfoOqpPjv2vGAgmJW2VCNJ
 0qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xzBzTtyv/ik/5EBBE5B9QBIPXEM25PMpqUtEZkO+j2o=;
 b=M501fCgX5ao6zHN/SJ5hdEHcV/GdGkyL3Fefus5NmvaRZGPw+C638TmkgbPCLBvqxp
 ij2pSig6Ly5KeV9cnXtYvDukDGce+dMNRf2aarkXasLCMy6S5vRCQvT/NuUvmPSZqgv8
 XNVY+vAKJoisa6fhid881tN7cQRvQOEI26H77Cy64uizwKMXNZJdzz8FGc2BoslHGKrv
 H4yaFNcN4Ad5Q6AiSBnZI+EHETMkhWT6Ai42p/mgEV8D0IlTSwEuztyDQtOMH9Ll9qIF
 hsjWO+dowyyL+HuRDHJofg71IOeGqF7LZOyXhIov8aBlNPBLdmeV4K/1vX7HjoptE9+r
 jpWw==
X-Gm-Message-State: AGi0PuYijb9JUcC3lzRrwcLfEqnLr+FWdCpAY2j+B5X2S7+vJxxpTTQ4
 6mSpy3Vni11XxgHqU2IPbtBq
X-Google-Smtp-Source: APiQypIEAbi6y8ZieLWWZV5hNFsKxVPMpUpaUafWP3vaBcDMbP+sPBBj/4VNd+xWoSMenMebveeTjQ==
X-Received: by 2002:a63:1053:: with SMTP id 19mr2930152pgq.60.1585637276025;
 Mon, 30 Mar 2020 23:47:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id h11sm11741855pfq.56.2020.03.30.23.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:47:55 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:17:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 17/22] ARM: dts: stm32: Enable Bluetooth on AV96
Message-ID: <20200331064749.GF17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-18-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-18-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_234756_605667_773FBF27 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:56:56AM +0200, Marek Vasut wrote:
> The WiFi/Bluetooth chip is attached to USART2 on AV96 as well, describe
> it in DT to make it available. Remove BT LED and turn it into a shutdown
> GPIO, because the GPIO line controls the BT_REG_ON signal. The LED is just
> an indicator connected to the same line, but not the primary function.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 23 ++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 12ee95d5adb1..29af5ed2ebb3 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -21,6 +21,7 @@ aliases {
>  		mmc0 = &sdmmc1;
>  		serial0 = &uart4;
>  		serial1 = &uart7;
> +		serial2 = &usart2;
>  		spi0 = &qspi;
>  	};
>  
> @@ -63,13 +64,6 @@ led4 {
>  			default-state = "off";
>  			panic-indicator;
>  		};
> -
> -		led5 {
> -			label = "blue:bt";
> -			gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "bluetooth-power";
> -			default-state = "off";
> -		};
>  	};
>  
>  	sd_switch: regulator-sd_switch {
> @@ -421,3 +415,18 @@ &uart7 {
>  	pinctrl-0 = <&uart7_pins_a>;
>  	status = "okay";
>  };
> +
> +/* Bluetooth */
> +&usart2 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&usart2_pins_a>;
> +	pinctrl-1 = <&usart2_sleep_pins_a>;
> +	st,hw-flow-ctrl;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		max-speed = <3000000>;
> +		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

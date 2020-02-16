Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E0E1604BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 17:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUfcqBJSDGKOhlk2w7cnIJVs9aDBknHuo4MfSbIp6fg=; b=AZHkuSboHCBw2D
	Vk7hXH9EYBzTEUFN3goYzRewVt5wN0/mMqUqWyFXaCUAtIk88NlIzkNlSs0K8PIuCiqQvQ9xjNqn6
	TL5AQnHIveLiBYVTuQq3InmYAusv9ltJ8lICQIzLAPALiwWeTk9wq+XdMMtevL1HrweBOsZiPSazS
	ovu8LlefHAmTQC84WWraaYQUjms+JpOv0BNd1cDCwyZHm8/qNtszKLPIsZ0+7UAO32EEWLbWoVYf2
	XH34i1t0c+lzrCCArjFDkIRJ09PRs0h7/fubW4IQnqPsInozViVQoJx3/HDZw37EzfSsVLthzTuhh
	Qs+v0nQY0xJS7sG8THnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3MZt-00015s-FM; Sun, 16 Feb 2020 16:15:29 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3MZm-000157-IS
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 16:15:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id i14so3223359qtv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 08:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J3cNauMywvmvrNjMdZIsRhBPNnoWHlOKi7QO8UB6MPk=;
 b=BXOaOEv8BbApLvLetaTwVC1B1Auzb4otCcb98Psh406JCqev8lW/eR9r8ZNu3kRHy2
 Dgu/Oa6jnNd0wh/TzxGD44AbXOhCbQsXlnNTyc2IRrrS1QJ9kQswauFOnlQjPfE/Lz41
 sU7nXO5LtsgLywhpTUHs6kGD8vI6llgCiw8QeIxrAe0ZK8WA5SXRevH1q4esCPUxrPQh
 g59BzejUIUZM4+k6R8/gxEhO0zdLdgjCKAuLSIk9+IXitpS3tJNk+uU4GMjo5Qcx2jJa
 McQu0BQZ+m9xB5IbGTUwffQE225n3cQfwlSXVHyrZAWCeUYkJtSFP1OpGqvTWseg2wih
 q9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J3cNauMywvmvrNjMdZIsRhBPNnoWHlOKi7QO8UB6MPk=;
 b=HKXooyVJnqttsF75E2I0KAkHsAMFkaBjEsR6bCQHZdkjKU33uZeeufdeaR2s5kREzS
 6AHP7oThbDfUDOSaN2F5K6u+/hpHlnTyPb9ENtJcX69IIruuObDR6RHAzYSObWLczO6E
 23x46wSqNfMhFCmmsMlY9mPxvSc43POERGmbnudarcEaw0d8+0352ynUNA2xp7NX3t/p
 gNaD3sqaFvFh5uR8UG7Vf00G1tXH/aFMIGFTdR9h/ciym8VwTXIiC5Q/EKXc3flik2Vc
 rfLYXvYD3KLk75Zv3tpzSI9HyzAVgaRPRf7e5Jv1m6a8LIj3eOaIJxYLem61Wz6TO1Ts
 0blA==
X-Gm-Message-State: APjAAAUPFg0BeM5W+Kh4FVFVW3fUi9B2Z3pbTJFGPs+jPhIkzvqlUVGr
 Q7RnzxdCar6xJ+wfWZXLwC1FTw==
X-Google-Smtp-Source: APXvYqzioS28BG97ZxGGZ27cm1611TLDSQG3gxp4BWjtUmDJDMTBOrkgxSFIzXZFctQ7+JKhEqGE9w==
X-Received: by 2002:ac8:37e6:: with SMTP id e35mr10046559qtc.302.1581869720982; 
 Sun, 16 Feb 2020 08:15:20 -0800 (PST)
Received: from localhost.localdomain ([179.159.237.245])
 by smtp.gmail.com with ESMTPSA id b12sm7385014qkl.0.2020.02.16.08.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 08:15:20 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mq-phanbell: Add support for ethernet
Date: Sun, 16 Feb 2020 13:15:16 -0300
Message-Id: <20200216161516.15568-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200211134828.138-1-alifer.wsdm@gmail.com>
References: <20200211134828.138-1-alifer.wsdm@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_081522_667598_C7CBCC6A 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marco.franchi@nxp.com,
 festevam@gmail.com, Alifer Moraes <alifer.wsdm@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alifer Moraes <alifer.wsdm@gmail.com> wrote:
> Date: Tue, 11 Feb 2020 10:48:28 -0300
> 
> Add support for ethernet on Google's i.MX 8MQ Phanbell
> 
> Signed-off-by: Alifer Moraes <alifer.wsdm@gmail.com>
> ---
>  .../boot/dts/freescale/imx8mq-phanbell.dts    | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> index 3f2a489a4ad8..16ed13c44a47 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> @@ -201,6 +201,27 @@
>  	};
>  };
>  
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <10>;
> +	phy-reset-post-delay = <30>;
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
>  &uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart1>;
> @@ -254,6 +275,26 @@
>  };
>  
>  &iomuxc {
> +	pinctrl_fec1: fec1grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> +			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
> +			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
> +		>;
> +	};
> +
>  	pinctrl_i2c1: i2c1grp {
>  		fsl,pins = <
>  			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f

Tested-by: Vitor Massaru Iha <vitor@massaru.org>

Tested on Coral Dev board.

BR,
Vitor

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

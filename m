Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1539916125B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EojPOh/h2cia7E3XClGhamusFruMIm2DhIar4ThzXBI=; b=mlGTMrc6GvkaHS
	fO8W5kDu6iycy8rKBZ3OcPT8qWcY6WcbXTqCglwWCOfj/qCpFElQ+YxhNigDjJKBrlQ4/tvFSRQLf
	ROtzP+eRkyOwxyQlqUWNmdGsHvOETz5VfaMZgm5eUUg7vJDpHfVoikY1Lhww48F6HfolD+4DcBkk4
	yx57/0ejnq12k9FYT+8LC4efyOIBgqMNlfvMfa7TQ+ZES0FYru6w+JVhu+crQwwYJ/8RXe+VNOpOC
	8KG+dV9odhEQde2n91DgVKQ9bQnL4U/yBfBO39VUVAdepC4s+oPo4nk59iPHUGxc+AhB/Qnec84s4
	9+pOBbiW0Qnl4C/NW2vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fsW-0004pd-CQ; Mon, 17 Feb 2020 12:52:00 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fs0-0004oG-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:51:47 +0000
Received: by mail-lj1-x243.google.com with SMTP id d10so18733294ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 04:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=p7FyknOVWX4R66SQBUeluzCkbXYT5k3MWupHr8k4D/8=;
 b=XJTQskTtjB9nRx0EqNx0e1ef/CbZIlzPBT3l2uJDbVpIDl7JcA3woZYVlHUethVpDH
 YbTL2ncyQtSaEwj1AUz98VE0quMA2gR64qDB6Sfdmax/UgGFyadIQcx/kDPNudVtXoIc
 Tro5D65MrhYZ6ph6ggmoFe0yeouvCrc57EN6Lf9vjACarrg9mFXnSTahJugL5Ekg3znK
 WO9pkYrxSZkwHZfrJWL8rJNDEDJ/RR+3tKRILNjlSte6PoHdHYuhrJlcK/MVaKgerDPR
 1MJtoKXnq3KVUZwJHBvdLaG7mRR3FlNb/Cem+SUrVCjV9D9YHg/V6CjCpYpiq06A62Sj
 iM4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=p7FyknOVWX4R66SQBUeluzCkbXYT5k3MWupHr8k4D/8=;
 b=NoJwc4kAxzU7Mqg7732VvbVtVogOtiVa53Azp90mEm6/McVpd1bqn5dYNsahyy8Cum
 g5Rb2qz6ePNQOmesf+AG0diQtWmeEOBR3DmZaLfCbGfvphl2wXJuoNljPp2+pUiN3C9y
 AYiMOmMBoQhFSzMvyCiuL5UMhLA8tRefm5CkxcQROVUc12VRW1/GR/lm69G0xAHs/7c2
 Yesh5MLKbuwcoi8hfz2Kiv+AVty3TydPdyWlWAsDIZwIkg/2QLXSgKIER85XJ2u4Y0TG
 CYcLVRhEsREdz3C2z20VJwpzKnAt0jdNV+GYd2oyB38m6tmq9wDcxHgvRXNN0naVybza
 PxfA==
X-Gm-Message-State: APjAAAWxLXRk90OR68x6AFtfTMMkhpP9/KnN2GC4fUT67O5iLt9wE+cq
 78pmvIhIch/d4QVbcqdaLw5NuA==
X-Google-Smtp-Source: APXvYqxzNR3oKfgSKx256hPNVC4uZ8AYONQFRUjzyGqicN8jQhPOemT9wO+bN2D3q646sS/kUsDJag==
X-Received: by 2002:a2e:3c05:: with SMTP id j5mr9246844lja.131.1581943885970; 
 Mon, 17 Feb 2020 04:51:25 -0800 (PST)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id k25sm353697lji.42.2020.02.17.04.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 04:51:25 -0800 (PST)
Date: Mon, 17 Feb 2020 13:51:25 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: defconfig: Enable additional support for Renesas
 platforms
Message-ID: <20200217125125.GW3013231@oden.dyn.berto.se>
References: <20200217103251.5205-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217103251.5205-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_045129_044157_0FDB2CBA 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thanks for your work.

On 2020-02-17 11:32:51 +0100, Geert Uytterhoeven wrote:
> Increase build and test coverage by enabling support for more hardware
> present on Renesas SoCs and boards:
>   - R-Car CAN and CAN-FD controllers,
>   - MSIOF SPI controllers,
>   - ROHM BD9571 GPIO support,
>   - R-Car MIPI CSI-2 receivers,
>   - R-Car Video Input,

For VIN and CSI-2,

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

>   - Renesas Fine Display Processors,
>   - Renesas Digital Radio Interfaces,
>   - R-Car Gen3 internal HDMI encoders,
>   - Generic LVDS panel support,
>   - Dumb VGA DAC Bridge support,
>   - Thine THC63LVD1024 LVDS decoder bridges,
>   - Synopsys Designware AHB Audio and CEC interfaces,
>   - Renesas USBHS HCD support,
>   - IDT VersaClock 5,6 devices,
>   - Maxim max9611/max9612 ADCs,
>   - ARM TrustZone CryptoCell security processors.
> =

> All of the above are modular, except for the VC5 clock driver, and the
> SDR config gatekeepers.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> To be queued in renesas-devel for v5.7.
> ---
>  arch/arm64/configs/defconfig | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> =

> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 51b8b8555a6e4065..49053323323fe68b 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -161,6 +161,9 @@ CONFIG_QRTR=3Dm
>  CONFIG_QRTR_SMD=3Dm
>  CONFIG_QRTR_TUN=3Dm
>  CONFIG_BPF_JIT=3Dy
> +CONFIG_CAN=3Dm
> +CONFIG_CAN_RCAR=3Dm
> +CONFIG_CAN_RCAR_CANFD=3Dm
>  CONFIG_BT=3Dm
>  CONFIG_BT_HIDP=3Dm
>  # CONFIG_BT_HS is not set
> @@ -399,6 +402,7 @@ CONFIG_SPI_QCOM_QSPI=3Dm
>  CONFIG_SPI_QUP=3Dy
>  CONFIG_SPI_QCOM_GENI=3Dm
>  CONFIG_SPI_S3C64XX=3Dy
> +CONFIG_SPI_SH_MSIOF=3Dm
>  CONFIG_SPI_SUN6I=3Dy
>  CONFIG_SPI_SPIDEV=3Dm
>  CONFIG_SPMI=3Dy
> @@ -432,6 +436,7 @@ CONFIG_GPIO_XGENE_SB=3Dy
>  CONFIG_GPIO_MAX732X=3Dy
>  CONFIG_GPIO_PCA953X=3Dy
>  CONFIG_GPIO_PCA953X_IRQ=3Dy
> +CONFIG_GPIO_BD9571MWV=3Dm
>  CONFIG_GPIO_MAX77620=3Dy
>  CONFIG_POWER_AVS=3Dy
>  CONFIG_QCOM_CPR=3Dy
> @@ -516,19 +521,25 @@ CONFIG_MEDIA_SUPPORT=3Dm
>  CONFIG_MEDIA_CAMERA_SUPPORT=3Dy
>  CONFIG_MEDIA_ANALOG_TV_SUPPORT=3Dy
>  CONFIG_MEDIA_DIGITAL_TV_SUPPORT=3Dy
> +CONFIG_MEDIA_SDR_SUPPORT=3Dy
>  CONFIG_MEDIA_CONTROLLER=3Dy
>  CONFIG_VIDEO_V4L2_SUBDEV_API=3Dy
>  # CONFIG_DVB_NET is not set
>  CONFIG_MEDIA_USB_SUPPORT=3Dy
>  CONFIG_USB_VIDEO_CLASS=3Dm
>  CONFIG_V4L_PLATFORM_DRIVERS=3Dy
> +CONFIG_VIDEO_RCAR_CSI2=3Dm
> +CONFIG_VIDEO_RCAR_VIN=3Dm
>  CONFIG_VIDEO_SUN6I_CSI=3Dm
>  CONFIG_V4L_MEM2MEM_DRIVERS=3Dy
>  CONFIG_VIDEO_SAMSUNG_S5P_JPEG=3Dm
>  CONFIG_VIDEO_SAMSUNG_S5P_MFC=3Dm
>  CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=3Dm
> +CONFIG_VIDEO_RENESAS_FDP1=3Dm
>  CONFIG_VIDEO_RENESAS_FCP=3Dm
>  CONFIG_VIDEO_RENESAS_VSP1=3Dm
> +CONFIG_SDR_PLATFORM_DRIVERS=3Dy
> +CONFIG_VIDEO_RCAR_DRIF=3Dm
>  CONFIG_DRM=3Dm
>  CONFIG_DRM_I2C_NXP_TDA998X=3Dm
>  CONFIG_DRM_NOUVEAU=3Dm
> @@ -546,15 +557,21 @@ CONFIG_ROCKCHIP_DW_HDMI=3Dy
>  CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
>  CONFIG_ROCKCHIP_INNO_HDMI=3Dy
>  CONFIG_DRM_RCAR_DU=3Dm
> +CONFIG_DRM_RCAR_DW_HDMI=3Dm
>  CONFIG_DRM_SUN4I=3Dm
>  CONFIG_DRM_SUN8I_DW_HDMI=3Dm
>  CONFIG_DRM_SUN8I_MIXER=3Dm
>  CONFIG_DRM_MSM=3Dm
>  CONFIG_DRM_TEGRA=3Dm
> +CONFIG_DRM_PANEL_LVDS=3Dm
>  CONFIG_DRM_PANEL_SIMPLE=3Dm
> +CONFIG_DRM_DUMB_VGA_DAC=3Dm
>  CONFIG_DRM_SII902X=3Dm
> +CONFIG_DRM_THINE_THC63LVD1024=3Dm
>  CONFIG_DRM_TI_SN65DSI86=3Dm
>  CONFIG_DRM_I2C_ADV7511=3Dm
> +CONFIG_DRM_DW_HDMI_AHB_AUDIO=3Dm
> +CONFIG_DRM_DW_HDMI_CEC=3Dm
>  CONFIG_DRM_VC4=3Dm
>  CONFIG_DRM_ETNAVIV=3Dm
>  CONFIG_DRM_HISI_HIBMC=3Dm
> @@ -605,6 +622,7 @@ CONFIG_USB_EHCI_HCD_PLATFORM=3Dy
>  CONFIG_USB_OHCI_HCD=3Dy
>  CONFIG_USB_OHCI_EXYNOS=3Dy
>  CONFIG_USB_OHCI_HCD_PLATFORM=3Dy
> +CONFIG_USB_RENESAS_USBHS_HCD=3Dm
>  CONFIG_USB_RENESAS_USBHS=3Dm
>  CONFIG_USB_STORAGE=3Dy
>  CONFIG_USB_MUSB_HDRC=3Dy
> @@ -712,6 +730,7 @@ CONFIG_COMMON_CLK_CS2000_CP=3Dy
>  CONFIG_COMMON_CLK_S2MPS11=3Dy
>  CONFIG_CLK_QORIQ=3Dy
>  CONFIG_COMMON_CLK_PWM=3Dy
> +CONFIG_COMMON_CLK_VC5=3Dy
>  CONFIG_CLK_RASPBERRYPI=3Dm
>  CONFIG_CLK_IMX8MM=3Dy
>  CONFIG_CLK_IMX8MN=3Dy
> @@ -792,6 +811,7 @@ CONFIG_EXTCON_USBC_CROS_EC=3Dy
>  CONFIG_MEMORY=3Dy
>  CONFIG_IIO=3Dy
>  CONFIG_EXYNOS_ADC=3Dy
> +CONFIG_MAX9611=3Dm
>  CONFIG_QCOM_SPMI_ADC5=3Dm
>  CONFIG_ROCKCHIP_SARADC=3Dm
>  CONFIG_IIO_CROS_EC_SENSORS_CORE=3Dm
> @@ -885,6 +905,7 @@ CONFIG_CRYPTO_DEV_FSL_CAAM=3Dm
>  CONFIG_CRYPTO_DEV_HISI_ZIP=3Dm
>  CONFIG_CRYPTO_USER_API_RNG=3Dm
>  CONFIG_CRYPTO_DEV_QCOM_RNG=3Dm
> +CONFIG_CRYPTO_DEV_CCREE=3Dm
>  CONFIG_CMA_SIZE_MBYTES=3D32
>  CONFIG_PRINTK_TIME=3Dy
>  CONFIG_DEBUG_INFO=3Dy
> -- =

> 2.17.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

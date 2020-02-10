Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E3F15731F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4zOUEqY71cQ8sQNB2i7QexkSjpfi6LqJfyYLrmtpBU=; b=P8WMRr35I48941
	7WVt7rEUzakm5UCbaGlKoILVtrcqbXJGSiUCExCOQVSwJ9HOrxpQ+UI3VrJ4jkOpnsNkabWUJTTgs
	rETg7kpnWUrNJwRqc++Y9n8PQ43BHd6sHHZ7M1hcJfIGrlLzIFjd2gvrUKo5VJNioJJJaIKTbKA5s
	UyXoEx6ow0+j6Y+o9l23obY9ma9P8vsDmpiR/uz4oDZPXURThZ1mil1m92yabyngro24+WyTKHhoB
	Qf10BMQm2cos7HR0+TJdmOLqTc416Dsl0ApVCLdy9d5m4QrdJkoQtjztwO1pqeK58OBJeB19loJxg
	m9TQ81/B96xwDaFsV3Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16iC-0002kV-Mp; Mon, 10 Feb 2020 10:54:44 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16i6-0002k3-9g
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:54:39 +0000
Received: by mail-ua1-x942.google.com with SMTP id p2so745798uao.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OK+fNFVryzyVYrXPzyQztWsAjpXsP146XLj7YZxSTx4=;
 b=QSGI0U8vFm796piSvUhpAe6ARu7rVLdm9/fiJdocrploEvRsgJAUBxeAqMscpgLCKD
 Whf2qYJ34q9iWIwU4HbPmxaxbg7ZF5CBvA5syh7jkyl10en6EngKCrQHSD7XXU0wLFQE
 GSB2m+eREav6OFakiUAg35kk9bUaUyFmxH1ltE9MqK8Hq9U2cqs1gmeSAv/oBdLiS4H5
 OchwiFINF8FkU3+JQWPLNa+5JXqD//FiAgiUCXGfVIpfIZQEdQvl/aC3OV2thO90bAuW
 sDHJx/pHpAefGPcZo+EKLyAkdeu9VUbKcFMYD/Tk7V4yh1LA9Eel7S3V3U5AzoXPXwxS
 g8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OK+fNFVryzyVYrXPzyQztWsAjpXsP146XLj7YZxSTx4=;
 b=VKDzSCdfRGwTyZs0z5cyna8Q36NPANAbde2pMfinGiidrFRrkNu8v6V2z7+Jt4W0H1
 EyvquI2DQVbApTnTSeIKbU+6GRbRpaWbuMdIAixvlJTx93yC1gwTn3MGr4R7S7I7We0R
 2SoFikbV2P7zhBQ1sdMXWEjJGNDTxKkkFupI+NllEUXdoXVkpCCePIhyphGAX4nBKGxr
 PWFD09yGaEo7IGHhFxJLds+Ti69VEU4kcdumysdTNCJDL1vTv35ymlIyjuTOxXur708E
 YXxIne+kFH13oNOPX61ewflGykr9X9loxNG294Q0wOEb+BlS/Se7o1Op9+1jYdbGFSLZ
 +i7g==
X-Gm-Message-State: APjAAAWtnsbh7ypzhFRr3oXbV8YS6ByCb+KiQPeVHbGdyvO9aPkb2oaM
 Qc3MWPb9+vNFklU4M+KxoT3invbh1AAvbFEM8KtgAw==
X-Google-Smtp-Source: APXvYqzRgzlxK2LxMt8GQqJ2lf4BDGBrcMUbWX1z7cPtuSuLR4JkFhJD/I054BzWJsQWRCbs+hE910M9cCBZfSnKYxs=
X-Received: by 2002:ab0:14ea:: with SMTP id f39mr336598uae.40.1581332075883;
 Mon, 10 Feb 2020 02:54:35 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
In-Reply-To: <20200124084359.16817-1-christian.gmeiner@gmail.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Mon, 10 Feb 2020 11:54:24 +0100
Message-ID: <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025438_338571_DD9B1618 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>, Lubomir Rintel <lkundrak@v3.sk>,
 Joel Stanley <joel@jms.id.au>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
<christian.gmeiner@gmail.com>:
>
> Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> full drm support.
>
> Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 3f1b96dc7faa..d213a35557ed 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -637,6 +637,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
>  CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
>  CONFIG_VIDEO_ADV7180=m
>  CONFIG_VIDEO_ML86V7667=m
> +CONFIG_IMX_IPUV3_CORE=m
>  CONFIG_DRM=y
>  # CONFIG_DRM_I2C_CH7006 is not set
>  # CONFIG_DRM_I2C_SIL164 is not set
> @@ -652,6 +653,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
>  CONFIG_ROCKCHIP_DW_HDMI=y
>  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
>  CONFIG_ROCKCHIP_INNO_HDMI=y
> +CONFIG_DRM_IMX=m
> +CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
> +CONFIG_DRM_IMX_TVE=m
> +CONFIG_DRM_IMX_LDB=m
> +CONFIG_DRM_IMX_HDMI=m
>  CONFIG_DRM_ATMEL_HLCDC=m
>  CONFIG_DRM_RCAR_DU=m
>  CONFIG_DRM_RCAR_LVDS=y
> --
> 2.24.1
>


ping

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FFC1C254C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 14:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqWBMEfc1wZKYYSow0WnPqRPMOEFGn2HtZybrBbjG2Q=; b=iyLR26KkowGiVM
	2X6BCqzIQuPzizTTpyW7touPrM4YvxfNIjUz3/OgNloVeazLM5+Mdaf1MwdNJQNXuF87sW/6s6cpe
	H2DHlExs8PPoWL/UYPjNejNjwXrF6fGNETDC1a+jIxeZ2Cv4I1m8RkPQpWbf+2aUG9gVOKLFmvNwc
	Et4apvgU7ems+bCeRRqAG62s/1spd6hd5/poLhahDZ6tF4iuWBHF+l/kLmtyT+7vTl/PSihj3Z5Hb
	kTekr+Etwwik6sf42+EZBfF2WcSKTbysayNKWW4k076R17z30MNFmpu+CsgYVhcCKyDSxPj1U8sWy
	osjM7c+6xmDJSLD9oAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrIZ-0004ed-Ge; Sat, 02 May 2020 12:31:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrIT-0004dp-7V
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 12:31:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id z2so7432199iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 05:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sqj5OwuLQEiWexB38E560Tjsw1EblC4/Va2EqzU4zWU=;
 b=TDQZRCub/ffrM2W4i8QJOuhIY+QH+daszsb1JtU2K1qx68balRapnI/NPBGF3rx+0k
 9+fT7x5KhGLiXSZlABWZAN8+G7oPLjRIS6o+sGKU5g6dDcLc1XbSGaZtOy/kwXWWDdgi
 EA+Qr24M2AWf8vtQrYUIITqUhyYcUdON3jdrg3YIlgiDChIKAuKIYBONAajUi5Y3eMkG
 IqvHBs/bCOi3d67GUs7y81AzXERtMJ5v5QlOrn4uwJqxzEAPBGIrOKcIIKq1orflrxNg
 dA5rMjh6CQec4qmjX6sO9PExSF9TZzgYDWxUrX/UqFalmZGdgN2BjMe2YEOIVfEJxCNA
 EW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sqj5OwuLQEiWexB38E560Tjsw1EblC4/Va2EqzU4zWU=;
 b=Zl99cTQfY5dwlM41DVyCPan4U+l911IzSh7KjPvmwschVw9IVLAJLdqdQNrrPCuZHg
 EJgtrOTX4srqV1r0TdYCb3n6TiThO4p/4M2yXMlmLZsEy+PDmvxeUYNF+FeQgyJ/YFV7
 HEg4iyZ4FRwVxPrztoMKSb75382YTieDF1cRJTLV1lIxFFgy9vlIBIkqGWrsb82CNrIR
 DFCrSqJax7KagBF02fw1efuzulx2IcSFGoVEGB9GDE1ZIm6IGnCtvHEvjgXtW2u1XoNp
 GEDx2QAm791pAnM8pb1T0jpKv0UtUDr7ks691uH6YsyGO1G6+7F7FLoY98Xhgu6MPyYV
 rHWA==
X-Gm-Message-State: AGi0Pub+CpXR84IzdJhclkzAe8OEtEviTvsVrUs8zfw0mfr7OdbsGMO+
 hQI9UcBWln7VrvzlJEEcmQ6zhhff54/9SVj5yBwM9ZgfUSQ=
X-Google-Smtp-Source: APiQypLCKDX6+VT+B8oaq1wJy/OgIWsAdpELwqgIIb/i0Sgf4Zq30t2c9jYp25yvXVW+C9OZQ58ht4N448yyjimkCWo=
X-Received: by 2002:a02:a60b:: with SMTP id c11mr6944237jam.45.1588422667696; 
 Sat, 02 May 2020 05:31:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200306103839.1231057-1-aford173@gmail.com>
 <20200306103839.1231057-2-aford173@gmail.com>
In-Reply-To: <20200306103839.1231057-2-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 2 May 2020 07:30:56 -0500
Message-ID: <CAHCN7x+cG873bhDkGPjq9u2bn=b0QRpdYgh_yvWkfyLBde_mxw@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable IMX/FSL Audio Support for WM8962
To: arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_053109_270803_D3988471 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 4:38 AM Adam Ford <aford173@gmail.com> wrote:
>
> The Beacon EmbeddedWorks i.MX8M Mini kit has a WM8962 audio codec.
> This patch enables the required drivers as modules to enable sound.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
>

Gentle ping.  I don't know who the right person is to ask for this.

adam
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index d19ca82b3c40..ab71a407288f 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -601,6 +601,9 @@ CONFIG_SND_HDA_TEGRA=m
>  CONFIG_SND_HDA_CODEC_HDMI=m
>  CONFIG_SND_SOC=y
>  CONFIG_SND_BCM2835_SOC_I2S=m
> +CONFIG_SND_IMX_SOC=m
> +CONFIG_SND_SOC_FSL_ASOC_CARD=m
> +CONFIG_SND_SOC_IMX_AUDMIX=m
>  CONFIG_SND_MESON_AXG_SOUND_CARD=m
>  CONFIG_SND_SOC_ROCKCHIP=m
>  CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
> @@ -614,6 +617,7 @@ CONFIG_SND_SOC_ES7134=m
>  CONFIG_SND_SOC_ES7241=m
>  CONFIG_SND_SOC_PCM3168A_I2C=m
>  CONFIG_SND_SOC_TAS571X=m
> +CONFIG_SND_SOC_WM8962=m
>  CONFIG_SND_SIMPLE_CARD=m
>  CONFIG_SND_AUDIO_GRAPH_CARD=m
>  CONFIG_I2C_HID=m
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFFC175F99
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4Vkuo9buVyRzh+aMOPQDBTnPscV92LTo2p0J1EVhgo=; b=fmafkCboB3yN55
	bVMdeRmZ1yPr5JGYgupQ8aOGmCpAJjHryxE3SrIP29fUohkVb7ShX0IvxWlLuWeGd9krprKiwwvj2
	aR/6p0MO6cS7SphwWrrJXY6P19BgYb16ndCS2h6d/r+BgH0Gta+ghAE3KtZa9jTqCnWjINEVw0v8k
	2cRp9qSJdfhmL2SqczuwwMwF37p12jVz0L+DtI2W9MDSzU9G9dP5eZwirxOtp+3EOxq0NgR4SxYcx
	qkj9ytmdSVdw4tU+hruc6qRdre7UCrOPRjPdqKpHifXFCryy1rFW4UvN7cAXHn92NW1pL12sI6n/K
	RvV5NXUvgyfCvt0L1p3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nwA-00047c-Jv; Mon, 02 Mar 2020 16:28:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nw3-00046i-Af
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:28:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so5680842wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 08:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZUd/Div/Te/3bRQgmH3YEsXKnQcbUcpguyRKLSpxNRQ=;
 b=Lsg+52eWcC89f3lIuRvPAF3AR8KUI89Rwy0zf4GFj4oJo2V2+P2MJRrvstxx+bZIpe
 v6QeEYN+OX6zN9iI4NcBGTUUfYlwK0JuGRjO8elK8eW7RuSyQvhHtgEVe27wYKbCOKDx
 ureNAk+pyJmNGVZWrdOK7HbJEAxk5K3e+Fb5EtbeyjSPC4MZeKNObnBW9MzAL+qMzEPd
 A/fkoQn1G8PfALnJLdF9YWpSkvs+pr07A6p2DtMo0Guqd8TmrnerkBTqjfhaRc+f8BK3
 RUKSVmaBQN7Pp5En76rnSKCsDcQwawIaLIqIMiClnEbDwJK68mlfC0kI3gfSqrhUoJo/
 LhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZUd/Div/Te/3bRQgmH3YEsXKnQcbUcpguyRKLSpxNRQ=;
 b=Bj6M62AFWyk8tQ5G7CSAJApHkLlFk9vkq5g643lPmglLYcfdWXTh29QidnQhobtldN
 jJbxbW5gTcVF5ugMw7QO2qtHacjsUNgEcB4w5oYuCDldirOJ10xqKpl644/JUFiqMt20
 8kQcstKREmY70GfQMIl/jZ/LqIzFXXdNc7Z4bG2JnJaUdegsBaiQxLwL4PO3SNd6hKZE
 JmtXvmaTn6N3pscc6qFbq6WI2vJMlLUyVBcCnlvTUFes8EN2TBqzybfxrEPuokbnTs4l
 nZm5deHvdUFMP1voS9evu21UynFioFPKKxvvKr2tOAdRbIpkcn/XSWSVCbWb1/KurTR+
 pe8w==
X-Gm-Message-State: ANhLgQ09BTrcTbtQW3ybItm/t0XuNy1hKjKLtl6SwKyHJuueLT6Glsj3
 es6/WH5G4RIyGSys9C/2WhnmevX4y5l/wleriOVJPw==
X-Google-Smtp-Source: ADFU+vtgykJMdwMoKZl8rgU+WTQDv1XCjvm8XxyPIKNq2gxNvI3sJHV0y+M8KB4Tps+/2PYqPRz/EHCEvF0HkKHUiTs=
X-Received: by 2002:a7b:c7d5:: with SMTP id z21mr213294wmk.83.1583166528840;
 Mon, 02 Mar 2020 08:28:48 -0800 (PST)
MIME-Version: 1.0
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
In-Reply-To: <20200221090845.7397-2-narmstrong@baylibre.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Mon, 2 Mar 2020 17:28:38 +0100
Message-ID: <CAMO6nayj8NK1Ete+XcSsiN5R7NNDjG+opxhxTM9pArbRRwcjgw@mail.gmail.com>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_082851_368700_FB73138A 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:09 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Amlogic uses a proprietary lossless image compression protocol and format
> for their hardware video codec accelerators, either video decoders or
> video input encoders.
>
> It considerably reduces memory bandwidth while writing and reading
> frames in memory.
>
> The underlying storage is considered to be 3 components, 8bit or 10-bit
> per component, YCbCr 420, single plane :
> - DRM_FORMAT_YUV420_8BIT
> - DRM_FORMAT_YUV420_10BIT
>
> This modifier will be notably added to DMA-BUF frames imported from the V4L2
> Amlogic VDEC decoder.
>
> At least two options are supported :
> - Scatter mode: the buffer is filled with a IOMMU scatter table referring
>   to the encoder current memory layout. This mode if more efficient in terms
>   of memory allocation but frames are not dumpable and only valid during until
>   the buffer is freed and back in control of the encoder
> - Memory saving: when the pixel bpp is 8b, the size of the superblock can
>   be reduced, thus saving memory.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 56 +++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
>
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8bc0b31597d8..8a6e87bacadb 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -309,6 +309,7 @@ extern "C" {
>  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
>
>  /* add more to the end as needed */
>
> @@ -804,6 +805,61 @@ extern "C" {
>   */
>  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
>
> +/*
> + * Amlogic Video Framebuffer Compression modifiers
> + *
> + * Amlogic uses a proprietary lossless image compression protocol and format
> + * for their hardware video codec accelerators, either video decoders or
> + * video input encoders.
> + *
> + * It considerably reduces memory bandwidth while writing and reading
> + * frames in memory.
> + * Implementation details may be platform and SoC specific, and shared
> + * between the producer and the decoder on the same platform.
> + *
> + * The underlying storage is considered to be 3 components, 8bit or 10-bit
> + * per component YCbCr 420, single plane :
> + * - DRM_FORMAT_YUV420_8BIT
> + * - DRM_FORMAT_YUV420_10BIT
> + *
> + * The classic memory storage is composed of:
> + * - a body content organized in 64x32 superblocks with 4096 bytes per
> + *   superblock in default mode.
> + * - a 32 bytes per 128x64 header block
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_DEFAULT fourcc_mod_code(AMLOGIC, 0)
> +
> +/*
> + * Amlogic Video Framebuffer Compression Options
> + *
> + * Two optional features are available which may not supported/used on every
> + * SoCs and Compressed Framebuffer producers.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
> +
> +/*
> + * Amlogic FBC Scatter Memory layout
> + *
> + * Indicates the header contains IOMMU references to the compressed
> + * frames content to optimize memory access and layout.
> + * In this mode, only the header memory address is needed, thus the
> + * content memory organization is tied to the current producer
> + * execution and cannot be saved/dumped.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER     (1ULL << 0)
> +
> +/*
> + * Amlogic FBC Memory Saving mode
> + *
> + * Indicates the storage is packed when pixel size is multiple of word
> + * boudaries, i.e. 8bit should be stored in this mode to save allocation
> + * memory.
> + *
> + * This mode reduces body layout to 3072 bytes per 64x32 superblock and
> + * 3200 bytes per 64x32 superblock combined with scatter mode.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING  (1ULL << 1)
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> --
> 2.22.0
>
>

I'm the main developer of the V4L2 video decoder (H264, VP9..) on
amlogic platforms, which is a producer of such compressed frames.

Those modifiers suit well the combinations of options that can be
applied to the frames when created. I also helped testing the
following scenarios of decode+display on various SoCs:

- SM1: DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER (10-bit & 8-bit video)
- SM1: DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER +
DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING (8-bit video)
- G12A: DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER (10-bit & 8-bit video)
- G12A: DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER +
DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING (8-bit video)
- GXL: DRM_FORMAT_MOD_AMLOGIC_FBC_DEFAULT (10-bit & 8-bit video)
- GXL: DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING (8-bit video)

Reviewed-by: Maxime Jourdan <mjourdan@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

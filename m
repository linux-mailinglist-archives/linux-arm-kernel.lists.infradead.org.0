Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D227816673D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 20:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewu2YZevxC1ilgz3I/ngbrFu+u+9g88gADBDvR5W1gc=; b=GgF3LWq6ca0EHQ
	mrpYgdLEm40FWIeu2Xnk3zGEoVp3onYbGb5duw7iQU1AfxL0/m0yRtgoKuyQaaOY+MenA5X0hSIoP
	G7Rk4tzv83lWAx5l3HrU6YGeVm0bhZkeOeI6D2DkeGSJ5WdVC05jXiBkVKZEq3zSOG67N41yR9f9B
	DdvTtlmfRN2teW5RA0JLp/VEDkH8kUKmX9bmUCNBTOhN8D7zaAljKMSakkctdntjsGb0WXOXz/SOr
	FRz3dlQnOTpaVCpmq160SK3zhssKG6F2DFHnafHM1PQP2mSPrjD1gNkDl5AJgzNmALfSJWLLjWtuG
	bYz+Illtl2+oKOVHw6hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4raL-0007vE-MX; Thu, 20 Feb 2020 19:34:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4raA-0007t8-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 19:34:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id s10so3267992wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 11:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=E5S9aNFqrzMweT/fLedmBehI6zV6DT/E9arXjx8LiL0=;
 b=nOW1dJSzVFvP0XctGEk9bOJKCW15bXfIREw5h2tgDjQ7/Hy8IEAJb5xaKyMhtkXjx1
 zf6LOVFL1PjyR7nlfG8EuK4rtTnOanIvbqjgbBwBrAx4mjbJ2JEJjs7uehAUoeK7tB95
 fDZ4tbWQqoy4/TpwsJQMQiV/kE5TMUjp3ze8Yia7KWyx070YH2eGHlts6U9lccd7ct/B
 5Ullq95LMHp9mv1E73Yo8t5A1A8jZb66djGqxV4gy2dF/w7u4ycUdO2FiuSz7/dkbw4I
 eSzjvIHL1p/ecO+ONVa928EumIhfe/+oaG5d2PBDNKCf9V35Q50WJzrsr4maUjBrbwCA
 qRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=E5S9aNFqrzMweT/fLedmBehI6zV6DT/E9arXjx8LiL0=;
 b=d0oEHiy2q+ScfXrrvduFPwcf3NCw406ySbGs6J5PLgWLC87rfyaANJg+WA6Jx+oFQ8
 1dD/Up0cn/1gARALwKBKHizglxAPT41RXFuUInYtfIf4iuxgzBSCiRu8BBIxrGnRtad9
 70QSlo2nyVlbG5p4uln4lBKm+Q+kKyI84NKJwZswafeFNU73TsTvjM6N511l1hm/0KXA
 AHQPHZUHOscFONsOd3uMR/68Oo8JvTFPa7eMnfbaJHdYxELwUQ66W++o24J7OS+keDlM
 yI2yWfVk/Bz8jMap5vgPRY2smwaq6FE8xTVgPCc5iTIbP4Qbwr8U5Aax5NwhjFjbv9xK
 W0vg==
X-Gm-Message-State: APjAAAWgoudnsexKX1oecKaptTlGPF8tVhzBFB7n8mFtLULMoyRIBYQT
 rHBSXXWCfNXdn+yuVxDPrUBZ9Q==
X-Google-Smtp-Source: APXvYqxe0BOqNhTYK0A0EeE+usRWZgwZqrZrRH7ay8qcw1krcOJVLuutSOD8sd+Ax/AYw3YPnyYC2g==
X-Received: by 2002:a1c:ddc3:: with SMTP id u186mr6081797wmg.103.1582227236703; 
 Thu, 20 Feb 2020 11:33:56 -0800 (PST)
Received: from Armstrongs-MacBook-Pro.local
 ([2a01:e35:2ec0:82b0:3115:825f:fd46:f0e9])
 by smtp.gmail.com with ESMTPSA id q1sm694991wrw.5.2020.02.20.11.33.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 11:33:56 -0800 (PST)
Subject: Re: [PATCH 2/4] drm/meson: add Amlogic Video FBC registers
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org
References: <20200220162758.13524-1-narmstrong@baylibre.com>
 <20200220162758.13524-3-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <85b7dab4-0941-d31b-bcd7-3589d5040064@baylibre.com>
Date: Thu, 20 Feb 2020 20:33:53 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200220162758.13524-3-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_113358_597455_3DE15CA2 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le 20/02/2020 =E0 17:27, Neil Armstrong a =E9crit :
> Add the registers of the VPU VD1 Amlogic FBC decoder module, and routing
> register.
> =

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/gpu/drm/meson/meson_registers.h | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/me=
son/meson_registers.h
> index 8ea00546cd4e..f784d7d1fe2e 100644
> --- a/drivers/gpu/drm/meson/meson_registers.h
> +++ b/drivers/gpu/drm/meson/meson_registers.h
> @@ -144,10 +144,15 @@
>  #define		VIU_SW_RESET_OSD1               BIT(0)
>  #define VIU_MISC_CTRL0 0x1a06
>  #define		VIU_CTRL0_VD1_AFBC_MASK         0x170000
> +#define		VIU_CTRL0_AFBC_TO_VD1		BIT(20)
>  #define VIU_MISC_CTRL1 0x1a07
>  #define		MALI_AFBC_MISC			GENMASK(15, 8)
>  #define D2D3_INTF_LENGTH 0x1a08
>  #define D2D3_INTF_CTRL0 0x1a09
> +#define VD1_AFBCD0_MISC_CTRL 0x1a0a
> +#define		VD1_AXI_SEL_AFB			(1 << 12)
---------------------------------------/\
				Missing 'C'

Thanks Christian for reporting.... last minute checkpatch fix gone wrong.

Will fix either in v2 or when applying.

Neil

> +#define		AFBC_VD1_SEL			(1 << 10)
> +#define VD2_AFBCD1_MISC_CTRL 0x1a0b
>  #define VIU_OSD1_CTRL_STAT 0x1a10
>  #define		VIU_OSD1_OSD_BLK_ENABLE         BIT(0)
>  #define		VIU_OSD1_OSD_MEM_MODE_LINEAR	BIT(2)
> @@ -365,6 +370,23 @@
>  #define VIU_OSD1_OETF_LUT_ADDR_PORT 0x1add
>  #define VIU_OSD1_OETF_LUT_DATA_PORT 0x1ade
>  #define AFBC_ENABLE 0x1ae0
> +#define AFBC_MODE 0x1ae1
> +#define AFBC_SIZE_IN 0x1ae2
> +#define AFBC_DEC_DEF_COLOR 0x1ae3
> +#define AFBC_CONV_CTRL 0x1ae4
> +#define AFBC_LBUF_DEPTH 0x1ae5
> +#define AFBC_HEAD_BADDR 0x1ae6
> +#define AFBC_BODY_BADDR 0x1ae7
> +#define AFBC_SIZE_OUT 0x1ae8
> +#define AFBC_OUT_YSCOPE 0x1ae9
> +#define AFBC_STAT 0x1aea
> +#define AFBC_VD_CFMT_CTRL 0x1aeb
> +#define AFBC_VD_CFMT_W 0x1aec
> +#define AFBC_MIF_HOR_SCOPE 0x1aed
> +#define AFBC_MIF_VER_SCOPE 0x1aee
> +#define AFBC_PIXEL_HOR_SCOPE 0x1aef
> +#define AFBC_PIXEL_VER_SCOPE 0x1af0
> +#define AFBC_VD_CFMT_H 0x1af1
>  =

>  /* vpp */
>  #define VPP_DUMMY_DATA 0x1d00
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

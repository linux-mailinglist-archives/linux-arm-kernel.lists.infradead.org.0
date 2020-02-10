Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06857157328
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHTB5b1dol1Befrm6FvwZmJmkWgOT1e340HyVw8rBiY=; b=gljWtkX8k0MuSG
	aZnDxw2El/dt+cqfgd4RdCiB4FlaNc19ZQnLB11MaEeJaLbrP8M11pf2f9tOEQ4MIH0T7bKnxkEsr
	lLQRnpiE9zrRu/jiFk35wM6FKNaX/ZJ6tp8C9dsXf49ujPBKaq8sF00dB99IbAhomK7+R4I+zLULb
	7gtxIAtrLlNz2l+BPTLPAqgh+rczYrFl95sU9od0vt14PKw/O9nTeyT6Vy0QMd9ucMDo3Oah9HPY1
	L+VtxSJ/FDmU41WnW+jDvpOWZSdrwZz9QB6o2J9Isp/jg8Z/89Zk/26QA/A977wNGHC0CRG5tZRqg
	MD/Rdq9dtHgHXY+KkjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16li-0004c8-K3; Mon, 10 Feb 2020 10:58:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16lb-0004bo-Vu
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:58:17 +0000
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 760202173E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 10:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581332294;
 bh=sMBmPw/UXQNv3crzYTzb1AduPLQC6IwfbkcUeJC658Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WHGSa13+iF+Ry0ouJdd5ppIly5RqeNvKBpr/m26phwePHyTys2PWCrKkm1IUca7Ol
 ozG8VESk84Qptu3GrAJu7G98/Ev12PQjo5oX5kzd3e/dSH/ZLtSddtVLd9i7K521G8
 0l33MVmundeJLlGhSzEepUzzjZy/gy0TF/x6Dols=
Received: by mail-lj1-f176.google.com with SMTP id a13so6576679ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:58:14 -0800 (PST)
X-Gm-Message-State: APjAAAUrukQLJWP2u2g1KrunhtyCH38RFYkLfoinm29F46dNZYo7B+n/
 7E6J1GBlwLXRqy5PDNsYLeFS5AWcT/MZ9zAH1xk=
X-Google-Smtp-Source: APXvYqzmjwYhPpLhq8/nerP7eXgAypNzhiayrqIPJNCmgdqFOaK+1G29gpKsqBE6HJ82xfZb2Gd5V9Wdef8o/1yEWIk=
X-Received: by 2002:a2e:9705:: with SMTP id r5mr556812lji.114.1581332292498;
 Mon, 10 Feb 2020 02:58:12 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
In-Reply-To: <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 10 Feb 2020 11:58:01 +0100
X-Gmail-Original-Message-ID: <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
Message-ID: <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: Christian Gmeiner <christian.gmeiner@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025816_048374_E581D655 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lubomir Rintel <lkundrak@v3.sk>, Patrice Chotard <patrice.chotard@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Joel Stanley <joel@jms.id.au>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
<christian.gmeiner@gmail.com> wrote:
>
> Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> <christian.gmeiner@gmail.com>:
> >
> > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> > full drm support.
> >
> > Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
> > ---
> >  arch/arm/configs/multi_v7_defconfig | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> > index 3f1b96dc7faa..d213a35557ed 100644
> > --- a/arch/arm/configs/multi_v7_defconfig
> > +++ b/arch/arm/configs/multi_v7_defconfig
> > @@ -637,6 +637,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
> >  CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
> >  CONFIG_VIDEO_ADV7180=m
> >  CONFIG_VIDEO_ML86V7667=m
> > +CONFIG_IMX_IPUV3_CORE=m
> >  CONFIG_DRM=y
> >  # CONFIG_DRM_I2C_CH7006 is not set
> >  # CONFIG_DRM_I2C_SIL164 is not set
> > @@ -652,6 +653,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
> >  CONFIG_ROCKCHIP_DW_HDMI=y
> >  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> >  CONFIG_ROCKCHIP_INNO_HDMI=y
> > +CONFIG_DRM_IMX=m
> > +CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
> > +CONFIG_DRM_IMX_TVE=m
> > +CONFIG_DRM_IMX_LDB=m
> > +CONFIG_DRM_IMX_HDMI=m
> >  CONFIG_DRM_ATMEL_HLCDC=m
> >  CONFIG_DRM_RCAR_DU=m
> >  CONFIG_DRM_RCAR_LVDS=y
> > --
> > 2.24.1
> >
>
>
> ping

Hi,

It looks like you entirely skipped iMX maintainers in Cc/to list, so
whom are you pinging?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

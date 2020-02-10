Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68487157B7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Km3BmSiXSXj6gVRnQQy0YS3YBEbo5vPIk4VYNVFWAEE=; b=VaLnwEHmXUHZs3
	NU5wKQgaK9ntfoMjaaJ3hXq8vXBg365xIEwaNmYyuEjvoKKjLiLxfSSkIGL8+a3kfEdLrNF9Y2NH3
	ZYNFRyntMBtuqegLu1MzRBYdnvjp2SofaEhGRNGmJ5eew5YDYAMPSnLc00GR0zLgc0z/9icZ0df1v
	2yZ34P6xaHVM9NOa2cVsNw6jM5f5RWXBCnKGsUiWgq1tAZSZsAQyQBl2pBOtmlWNYaCj9HD4KUQSH
	syN+zIk2Jvt+N7VBn/xaM5toJslfIh2HvjA8uDXNjoEeJfl4+YPncFV/xCjeHrm0F3fl2SGGRQpJ4
	mubwgtLedd07iUW8FH/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1990-00020i-SC; Mon, 10 Feb 2020 13:30:34 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j198t-0001w6-ND
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:30:29 +0000
Received: by mail-vk1-xa42.google.com with SMTP id i4so1770001vkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 05:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sO0fguFagfrBAk+2OocklHo8Sby77UFX4PPPfRWY+Sg=;
 b=pDcGNIyyG74kffYSd13ak5T2WdV80gj/oEhQHCoC0gwU8Yo3Iq57Lq6UWUwBgyA75i
 vO9M6EYQ0hD/hOkFODwFPSVnMs+nhETuACUNaf+J4c+9ZkMRHMc5VKLxyaG6EXrPUm1z
 hZIGkKFEKNBtSTt28VjEQSTe55Rri4qZPWiGPYdL5mkfGxFJNYzy9V4gvA5BKsOltCdR
 cRVIxSL8HwWiqSIkbF8ucpmbCe5qbOUY9eILJcQrMJdF2RAVt4qHO3aahY02rOvVMj1s
 sM063H069FdrgWf0tJq7XOl4N5hc/DsIkoSRZhoL7KrZHcgh2eZTtNScWiTuTGhdLymT
 XpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sO0fguFagfrBAk+2OocklHo8Sby77UFX4PPPfRWY+Sg=;
 b=jU8UOn0XDVOcIQBBWG5eLlkLWgNpSMPZVUiCS+eE4GKGkKid6fo5Ul/eUcqPsAhSfC
 u+Z2oFhc29qCrM1wLkmS9eMN7nZR9QItyMCTgRHOdwV/gnrhNonTjFrljRyFkLUDvM0p
 gbnAfKbbWu0ds1iGxf6Tg9RVOT4u7ctnUqkQ9VBHKIiGQiDg4wRRRoTvAE7zY17wRiG5
 hjLadbzu1IgQrdaH8WnscYyq99V2jSeW8yQa1NFUfUfURTtxMlX4HFRks3mfwzQQ+Yau
 6btuVu8TqOkKgClm16quq3f98B41A42cllZTQf4Ml+iyittrVeu6PC2Nh5ZSs4O2zqF1
 Yo3w==
X-Gm-Message-State: APjAAAUxj+XPZYbo+OO3mc2QBbeNbLb1Q9IoYqyqqSkjRN6eXOLCLvcD
 JurRKhWYbMk4YTsUKHCShdhgXMO2izrIxog/QFQ=
X-Google-Smtp-Source: APXvYqwbgoxZHBa7hZysysH6OEO9Yk7qehrcW3zDNqntpDwRKYKxVzP/J2e+W+eUD7/czD/dFuOyPxLUf6CQhEXvi2g=
X-Received: by 2002:a1f:9785:: with SMTP id z127mr645665vkd.48.1581341423785; 
 Mon, 10 Feb 2020 05:30:23 -0800 (PST)
MIME-Version: 1.0
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
In-Reply-To: <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Mon, 10 Feb 2020 14:30:12 +0100
Message-ID: <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_053027_759423_D38A979A 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lubomir Rintel <lkundrak@v3.sk>, Patrice Chotard <patrice.chotard@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
<krzk@kernel.org>:
>
> On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> <christian.gmeiner@gmail.com> wrote:
> >
> > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > <christian.gmeiner@gmail.com>:
> > >
> > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> > > full drm support.
> > >
> > > Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
> > > ---
> > >  arch/arm/configs/multi_v7_defconfig | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> > > index 3f1b96dc7faa..d213a35557ed 100644
> > > --- a/arch/arm/configs/multi_v7_defconfig
> > > +++ b/arch/arm/configs/multi_v7_defconfig
> > > @@ -637,6 +637,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
> > >  CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
> > >  CONFIG_VIDEO_ADV7180=m
> > >  CONFIG_VIDEO_ML86V7667=m
> > > +CONFIG_IMX_IPUV3_CORE=m
> > >  CONFIG_DRM=y
> > >  # CONFIG_DRM_I2C_CH7006 is not set
> > >  # CONFIG_DRM_I2C_SIL164 is not set
> > > @@ -652,6 +653,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
> > >  CONFIG_ROCKCHIP_DW_HDMI=y
> > >  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> > >  CONFIG_ROCKCHIP_INNO_HDMI=y
> > > +CONFIG_DRM_IMX=m
> > > +CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
> > > +CONFIG_DRM_IMX_TVE=m
> > > +CONFIG_DRM_IMX_LDB=m
> > > +CONFIG_DRM_IMX_HDMI=m
> > >  CONFIG_DRM_ATMEL_HLCDC=m
> > >  CONFIG_DRM_RCAR_DU=m
> > >  CONFIG_DRM_RCAR_LVDS=y
> > > --
> > > 2.24.1
> > >
> >
> >
> > ping
>
> Hi,
>
> It looks like you entirely skipped iMX maintainers in Cc/to list, so
> whom are you pinging?
>

I did use git send-email --cc-cmd='./scripts/get_maintainer.pl .. to
send out this patch so I am not the one to blame here.

Adding some imx maintainers...

-- 
Thanks
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849861A0E36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIpkcebmRWTqyfwrM3I2ltRoMdtYzdln63LNipBh/gU=; b=saOPZiUgI2DNDc
	mwggWrjEtZhmvgV95lvVaHYBNT5U3JWkmfpj9HWL4RabzarJFWANBKmCrSuKXdS6gBbNw2O1jKisV
	rNGAyolUo9OlDpML+9PzXHWc2UwmTjptkO3zCXUwalYxsQT1+TB1UiZp2PeMcAkwNjCvip7dt4lcd
	YR8JmcsRdR4o4M2Q+JeZAvV4Q7+BNEYR6vnmcpaS+HYfM3hb085BAKmlyw8qgvbUrZxzXE6cp2GI1
	eEEDafcQjHmw7XErBEtW6jj4MAXDco+qXGiG6tK12lwkMCd+luWhFTshykc5ohQSZnVfNdvT+Jjw5
	VN9Qthk070Bnmbxv8OuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLo5l-0005p4-8h; Tue, 07 Apr 2020 13:16:37 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLo5c-0005oJ-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 13:16:29 +0000
Received: by mail-oi1-f194.google.com with SMTP id q204so1402405oia.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 06:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HPDKx3oSRt9Y7X4bWqhfNeKSwWIUsvZI1ClXBkig7os=;
 b=YVFTWd2zAqcJc8Z466jXAwZjPb3xWqOTMNByEVbnZUKQXucOQdpwzdyXGDjsHkvoEg
 vA2n5x2yVqdujLgMi2nH1JL0PJvWDgI8WogGzJeGV/7Qrjw9D6WEew4nM0nOsOtQSiqh
 zNBufh7HWrZkBFdD76LqRnF3uAlzpx9b4/u7ph91lUaNYDryLsJk8ezub6qVz7SMYYpq
 6NvUuIietE9X92JNO5kWHK5J+vktCGKjZv01ztSU+fE0NdP6T980/gwvm7feZyVryk7j
 0FGZ9NVSy0YynhirkU+hWXpLqPKK7/y52pNpgXE+FCTA6HoEY2pADYoDWp0fbV/tig1Y
 /s/Q==
X-Gm-Message-State: AGi0PuYVBSMWC7IP6GDB48rd5fp400NwFDmyxuTSgQvXiRXPEQ12u1v3
 KS4rknP7t37D0Raj5Xnk6U2vw/XUTQhy5X+7MTA=
X-Google-Smtp-Source: APiQypLG5uAh4zlD6yhUFCYUK18eL9OcJRZ0sLvd60tTXtYDdxd3jG6DqxcxL+LEDKwxJRKuEyPr6H6evLUmTJr8ALw=
X-Received: by 2002:aca:ad93:: with SMTP id w141mr1676490oie.54.1586265386476; 
 Tue, 07 Apr 2020 06:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
In-Reply-To: <20200407103537.4138-1-max.krummenacher@toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 15:16:14 +0200
Message-ID: <CAMuHMdWrekHiADkMmgO5nDxFNYjLud7FD=7ArMZNQire_+7TQg@mail.gmail.com>
Subject: Re: [PATCH 0/4] defconfig: fix changed configs and refresh
To: Max Krummenacher <max.oss.09@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_061628_671883_D2B22E7E 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Max,

On Tue, Apr 7, 2020 at 12:36 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> Three configs have been renamed and/or changed behaviour.
> Clean that by using the new config name.
> Then refresh the defconfig with make defconfig savedefconfig.
>
> The refreshed defconfig does result in a not changed .config.
>
> Applies on linux-next/master tag: next-20200407
>
> Max Krummenacher (4):
>   arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
>   arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name
>   arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
>   arm64: defconfig: refresh

Probably CONFIG_DRM_DISPLAY_CONNECTOR should also be enabled for HDMI,
VGA, and composite display connectors on various boards since commit
0c275c30176b2e78 ("drm/bridge: Add bridge driver for display
connectors"), but it's not clear to me when exactly this became a
requirement, as before there was no code that looked for e.g.
vga-connector.
Laurent?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

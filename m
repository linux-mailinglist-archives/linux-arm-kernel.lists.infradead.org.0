Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78390A0155
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/7IhDd8751Cn5OOUPBJa5Xjf7OkecxNWHR4zPWh9fk=; b=NtVlpUM294M15Z
	D/ojNKLHtINs0YDr1rPFkVIBxEFVADmW8AnIr/50LQqMxYCbFA1swmYtwQO9J5OI2qiOWsmSzOALb
	IBA1kREQGDmBNXW1SAxQPnjIpIBnouNyVrjg4EYDhsDcOK/4Nq/OI4R6iL1UnZH2GLrAgb7T5D9WZ
	fgg+MK42BxN22CCsPa2igxxRLteZ2s6f7Xvmb7oNIcHbk7yJqJnrG0laffZCN8ZtMpgCuwXMBXvGh
	7w9w3TVatfIa5YaqjOVYMQgi2Baw55+H8H/1idhjQdAGGyl/9pfFfbDiKJix5LF1dFUFoHS+T/hDZ
	lMSABNRDMD0z8Us5B5CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wm6-0003fj-Au; Wed, 28 Aug 2019 12:10:06 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wlU-0003Tl-AJ
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:09:32 +0000
Received: by mail-qt1-f196.google.com with SMTP id q64so2673049qtd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uY/0QthbDm0KRk0gieS7xBLQazGhEOHEGV7wuOo/gng=;
 b=FAwLrT5yOzuJ5BEyuGtIR8NDV0Ao293stge+ivKQchMYmlsrmHW6GsomZA/xm597Yw
 +XSpkos4a5e/pKV0jG+7TSvqwYAkc6xZx7ZsrzRpBl46ij76UfKpwCx0lbtmF4h8ir5R
 6frnhO0iz6CfMOwMT7ZxKKqKaqVvYitwNihy+PsysIdulPD9HGRKAU1xKowZyprUIAPq
 c5U65PEo8ZFcJvhusj9vcvzPUaiDhZrx+y5L0fOIOmjD3EX1byqf1Q5/C3o3Fb62a8AD
 Yd2K7w8MxO4b4OI3ZnPan/SPCz0cvVLkDDu/nwS/dDE8a+qvKvPxOvC4LXypTpRd31BK
 gAUQ==
X-Gm-Message-State: APjAAAXD+zTyLtUswkfZ58E1/nRSZIGInfzS7jTxmUMQQX7lNpg/H8dr
 YYYf86GaBsIp0TnwKNhzjrd9YAQi6RnEHzDQPfQ=
X-Google-Smtp-Source: APXvYqxPjCZy8Yr70wpAUsKG4hqpSsecPtkX5jagW7DEkIoSG6k0GIS1TjLQmGSzQOE2w0NAJB8sdbquABde5znr26Y=
X-Received: by 2002:ad4:45c7:: with SMTP id v7mr2362538qvt.63.1566994166270;
 Wed, 28 Aug 2019 05:09:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190827154851.10486-1-enric.balletbo@collabora.com>
 <20190827161045.GC26807@tuxbook-pro>
 <CAK8P3a2h2gUhxcVgD5JhR1Uo4qUSuG5yp4RCrAxevNmyD4ZRTA@mail.gmail.com>
 <2db6cde1-9e7f-8b1c-f2e4-80bdd2478d28@collabora.com>
In-Reply-To: <2db6cde1-9e7f-8b1c-f2e4-80bdd2478d28@collabora.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 14:09:10 +0200
Message-ID: <CAK8P3a3zYpgouGAibyMjDykZmy+ABnx6AD2cYpHnXq9Zsw2V=w@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: defconfig: Update configs to use the new
 CROS_EC options
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_050928_416838_402155A4 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Gwendal Grignou <gwendal@chromium.org>,
 Collabora kernel ML <kernel@collabora.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <groeck@chromium.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, SoC Team <soc@kernel.org>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yannick Fertr? <yannick.fertre@st.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 12:10 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
> On 27/8/19 18:12, Arnd Bergmann wrote:
> > On Tue, Aug 27, 2019 at 6:08 PM Bjorn Andersson
> > <bjorn.andersson@linaro.org> wrote:
> >>
> >> On Tue 27 Aug 08:48 PDT 2019, Enric Balletbo i Serra wrote:
> >>
> >>> Recently we refactored the CrOS EC drivers moving part of the code from
> >>> the MFD subsystem to the platform chrome subsystem. During this change
> >>> we needed to rename some config options, so, update the defconfigs
> >>> accordingly.
> >>>
> >>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >>> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> >>> Reviewed-by: Gwendal Grignou <gwendal@chromium.org>
> >>> Tested-by: Gwendal Grignou <gwendal@chromium.org>
> >>
> >> Can we make the entries in the generic arm64 defconfig modules?
> >
> > Good idea.
> >
> > Actually I would prefer to have all of them as modules for consistency,
> > if at all possible.
> >
>
> It is very common boot Chromebooks from an USB device, the EC needs to be
> built-in in order to boot from these devices, otherwise you should use an
> initramfs. I'd like to avoid forcing people to build an initramfs just to boot
> from these devices if possible, in fact, my usual workflow is without initramfs,
> and knowing that with the default defconfig just should boot helps a lot sometimes.
>
> Note that, it's not the case for EC subdevices, these are already build as modules.

Ok, fair enough, let's leave it built-in then.

> BTW, Lee asked if this patch should be squashed with the patches that really
> renames the config options to help bisect ability, I don't have a hard opinion
> as I don't usually run the config option between bisection steps, so please let
> me know what do you prefer and I'll respin the patches ASAP if that's the case.

I'm not usually worried about bisection in defconfig changes, since like you
say most commonly one would not run 'make defconfig' betweens the
bisection steps.

If we really care about it, we could keep a symbol like this
in drivers/platform/chrome/Kconfig for one release:

config CONFIG_MFD_CROS_EC
        tristate "Enable ChromeOS Embedded Controller"
        select CROS_EC
        select CHROME_PLATFORMS
        select CONFIG_MFD_CROS_EC_DEV
        help
           This is a transitional Kconfig option and will be removed
           after everyone enables the parts individually.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

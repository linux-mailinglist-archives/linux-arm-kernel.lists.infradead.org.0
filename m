Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC632A1C30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJd/+Ryphdudbr9mNaPOBaggCpYd+p2fHfHQbVh1P4s=; b=T89v/wzAprTOjF
	i6+o3gfEY7bDA8H0RrrxDQKpceekhkecXlcwrsmkIoDgjd6qs+tLajqd33gPHXPG8b8HJRV7BMQ+W
	LC59H5oU9lAdgh+C2XHuvUuaZUKeLfEvGz9DuknD0q1XpwYjgjBHjymh0CZYnVcdbCbb6cn1XV9kd
	ZRt9JKJ2EZBE8viOcctc5jpxDgYOvg6h6xkJG7E7myvPmUVk9/oKPSSACauZ46n28TGfRiTOzy0/r
	AxIw+E0+eBk6kNDLLoUWUs6hZKuhoUww4cCwF03EtRGS7uLdEm0xxpRfHIiY2cO1X0l75BZI2AepY
	GgqKuDuaZ4o9iGl6YQEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KvQ-00035a-4M; Thu, 29 Aug 2019 13:57:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Kv4-00030k-Ab
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:57:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 4149C28D4FB
Subject: Re: [PATCH] arm/arm64: defconfig: Update configs to use the new
 CROS_EC options
To: Arnd Bergmann <arnd@arndb.de>
References: <20190827154851.10486-1-enric.balletbo@collabora.com>
 <20190827161045.GC26807@tuxbook-pro>
 <CAK8P3a2h2gUhxcVgD5JhR1Uo4qUSuG5yp4RCrAxevNmyD4ZRTA@mail.gmail.com>
 <2db6cde1-9e7f-8b1c-f2e4-80bdd2478d28@collabora.com>
 <CAK8P3a3zYpgouGAibyMjDykZmy+ABnx6AD2cYpHnXq9Zsw2V=w@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <1fe8c0df-5e2d-6b6f-2a21-025a00b86f01@collabora.com>
Date: Thu, 29 Aug 2019 15:56:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3zYpgouGAibyMjDykZmy+ABnx6AD2cYpHnXq9Zsw2V=w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065658_622822_971888B6 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Lee Jones <lee.jones@linaro.org>, Dan iel Lezcano <daniel.lezcano@linaro.org>,
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

Hi,

On 28/8/19 14:09, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 12:10 PM Enric Balletbo i Serra
> <enric.balletbo@collabora.com> wrote:
>> On 27/8/19 18:12, Arnd Bergmann wrote:
>>> On Tue, Aug 27, 2019 at 6:08 PM Bjorn Andersson
>>> <bjorn.andersson@linaro.org> wrote:
>>>>
>>>> On Tue 27 Aug 08:48 PDT 2019, Enric Balletbo i Serra wrote:
>>>>
>>>>> Recently we refactored the CrOS EC drivers moving part of the code from
>>>>> the MFD subsystem to the platform chrome subsystem. During this change
>>>>> we needed to rename some config options, so, update the defconfigs
>>>>> accordingly.
>>>>>
>>>>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>>>>> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
>>>>> Reviewed-by: Gwendal Grignou <gwendal@chromium.org>
>>>>> Tested-by: Gwendal Grignou <gwendal@chromium.org>
>>>>
>>>> Can we make the entries in the generic arm64 defconfig modules?
>>>
>>> Good idea.
>>>
>>> Actually I would prefer to have all of them as modules for consistency,
>>> if at all possible.
>>>
>>
>> It is very common boot Chromebooks from an USB device, the EC needs to be
>> built-in in order to boot from these devices, otherwise you should use an
>> initramfs. I'd like to avoid forcing people to build an initramfs just to boot
>> from these devices if possible, in fact, my usual workflow is without initramfs,
>> and knowing that with the default defconfig just should boot helps a lot sometimes.
>>
>> Note that, it's not the case for EC subdevices, these are already build as modules.
> 
> Ok, fair enough, let's leave it built-in then.
> 
>> BTW, Lee asked if this patch should be squashed with the patches that really
>> renames the config options to help bisect ability, I don't have a hard opinion
>> as I don't usually run the config option between bisection steps, so please let
>> me know what do you prefer and I'll respin the patches ASAP if that's the case.
> 
> I'm not usually worried about bisection in defconfig changes, since like you
> say most commonly one would not run 'make defconfig' betweens the
> bisection steps.
> 
> If we really care about it, we could keep a symbol like this
> in drivers/platform/chrome/Kconfig for one release:
> 
> config CONFIG_MFD_CROS_EC
>         tristate "Enable ChromeOS Embedded Controller"
>         select CROS_EC
>         select CHROME_PLATFORMS
>         select CONFIG_MFD_CROS_EC_DEV
>         help
>            This is a transitional Kconfig option and will be removed
>            after everyone enables the parts individually.
> 

Not sure if really makes sense do this and tbh and don't have a hard opinion, so
I'll let the final decision to the soc/mfd maintainers. Just let me know and
I'll respin the patches with that if you really want.

Thanks,
 Enric

>       Arnd
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

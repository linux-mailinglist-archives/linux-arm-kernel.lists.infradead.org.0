Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595B71BCF06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C6NqNOVuLsbntEPoZxn7IRzo8leSFov/U30SfBW1Snc=; b=Of2xbQxAX7y3XB1XzwuPRFUgm
	BwWVBGOEOq0yr0we1GYjVnDq5GA/Zwu+sYqvSqdkgzvwTY+kbTrEVd2FFFFzD1bz5g6M0v99PlxZW
	6vEhJQBdkYBUKjMgN+hjvtUv4ZT7rYluPqGBLZsKhz5oqJoU6sdPle6qxgxOObjvTA5G4MojRIP9e
	kwdVKGdqtoFIu5jgiiKkea9wWFrm485WLFZPmLaSjpXbaWA/XtTbf7jyPLHKxNy6zZC6EosDIwlfW
	zvMDe4fd8/XrxkQnnDFj4m2Gx/j32V/qw8kCq4fVYvLFTOuu4tF7n/4fcYuPBf6+2q0AuIPPu1DlH
	/pMoNRbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTY0e-0003MU-I7; Tue, 28 Apr 2020 21:43:20 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTY0U-0003LW-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:43:12 +0000
IronPort-SDR: kIiwjAStoX42rbweq8Zb1dVQ7/7DeI6z8t+pf9YRN35Yg8HuJR4bRZAxAe2rmJTQ0YzdLub73y
 cfEso8S9aBjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 14:43:07 -0700
IronPort-SDR: zK/pOH0bB0NT5PPv86h4FZnum68iEaTsGInoqhARg7hctD54dmmM1+W6iUI50j6u6vBwxrQD+7
 Cq0xOkcDVr8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="249285767"
Received: from asehgal-mobl.amr.corp.intel.com (HELO [10.254.29.183])
 ([10.254.29.183])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2020 14:43:04 -0700
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
To: Arnd Bergmann <arnd@arndb.de>, Liam Girdwood <lgirdwood@gmail.com>
References: <20200428212752.2901778-1-arnd@arndb.de>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
Date: Tue, 28 Apr 2020 16:43:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428212752.2901778-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_144310_548992_56B1EB2B 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, alsa-devel@alsa-project.org,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Takashi Iwai <tiwai@suse.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/28/20 4:27 PM, Arnd Bergmann wrote:
> The imx8 config keeps causing issues:
> 
> WARNING: unmet direct dependencies detected for SND_SOC_SOF_IMX8M
>    Depends on [n]: SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && IMX_DSP [=n]
>    Selected by [m]:
>    - SND_SOC_SOF_IMX_OF [=m] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && SND_SOC_SOF_IMX8M_SUPPORT [=y]
> 
> This is complicated by two drivers having dependencies on both
> platform specific drivers and the SND_SOC_SOF_OF framework code,
> and using an somewhat obscure method to build them the same way
> as the SOC_SOF_OF symbol (built-in or modular).
> 
> My solution now ensures that the two drivers can only be enabled
> when the dependencies are met:
> 
> - When the platform specific drivers are built-in, everything is
>    fine, as SOC_SOF_OF is either =y or =m
> 
> - When both are loadable modules, it also works, both for Kconfig
>    and at runtime
> 
> - When the hardware drivers are loadable modules or disabled, and
>    SOC_SOF_OF=y, prevent the IMX_SOF_OF drivers from being turned on,
>    as this would be broken.
> 
> It seems that this is just an elaborate way to describe two tristate
> symbols that have straight dependencies, but maybe I'm missing some
> subtle point. It seems to always build for me now.

Thanks Arnd, do you mind sharing your config? We noticed last week that 
there's a depend/select confusion might be simpler to fix, see 
https://github.com/thesofproject/linux/pull/2047/commits

If I look at the first line I see a IMX_DSP=n which looks exactly like 
what we wanted to fix.

> 
> Fixes: fe57a92c8858 ("ASoC: SOF: Add missing dependency on IMX_SCU")
> Fixes: afb93d716533 ("ASoC: SOF: imx: Add i.MX8M HW support")
> Fixes: cb0312f61c3e ("ASoC: SOF: imx: fix undefined reference issue")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   sound/soc/sof/imx/Kconfig | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index f76660e91382..66684d7590f4 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -21,7 +21,8 @@ config SND_SOC_SOF_IMX_OF
>   
>   config SND_SOC_SOF_IMX8_SUPPORT
>   	bool "SOF support for i.MX8"
> -	depends on IMX_SCU
> +	depends on IMX_SCU=y || IMX_SCU=SND_SOC_SOF_IMX_OF
> +	depends on IMX_DSP=y || IMX_DSP=SND_SOC_SOF_IMX_OF
>   	help
>   	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
>   	  Say Y if you have such a device.
> @@ -29,14 +30,13 @@ config SND_SOC_SOF_IMX8_SUPPORT
>   
>   config SND_SOC_SOF_IMX8
>   	tristate
> -	depends on IMX_SCU
> -	select IMX_DSP
>   	help
>   	  This option is not user-selectable but automagically handled by
>   	  'select' statements at a higher level
>   
>   config SND_SOC_SOF_IMX8M_SUPPORT
>   	bool "SOF support for i.MX8M"
> +	depends on IMX_DSP=y || IMX_DSP=SND_SOC_SOF_OF
>   	help
>   	  This adds support for Sound Open Firmware for NXP i.MX8M platforms
>   	  Say Y if you have such a device.
> @@ -44,7 +44,6 @@ config SND_SOC_SOF_IMX8M_SUPPORT
>   
>   config SND_SOC_SOF_IMX8M
>   	tristate
> -	depends on IMX_DSP
>   	help
>   	  This option is not user-selectable but automagically handled by
>   	  'select' statements at a higher level
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

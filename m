Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F5FC3920
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YTZNP5YPIgC5guMSghWPhr5ZWwo0NKSb3Kt8xcyXyWo=; b=QJXbp/M/3vCJB6bbHyCLdi+ch
	r62NG/PKevTZUaylMULteUEpofWHBhKBHYPn/SsDkPtcO7Tn/AvnzWKZDJrURfdV9y1R19FXLmrxI
	Ls7OnGzuQVar9OjZ5hPehlgVORV/dd90K+IdRFsNwj9o6NUHbScO1W/dJV7t6GCwjaN+TjYfjPiIN
	jbbneV1YB+Hqfe6BZK8PkaeOBMH3M6es1WVnG1erjbMhPmsL+eJmeF+8qmECNcpKkYvgg3Vz2J75k
	fTOezIOQwTUSOD8bjquEO/Sbe34nrXZOhDyBT25rbmRDwVkQMixVLmzmK5josc22vLFBBfMk0BEMo
	+jtNwFr6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFK8Q-0001ph-Tl; Tue, 01 Oct 2019 15:32:18 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFK8J-0001oW-I2
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:32:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="275026881"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP; 01 Oct 2019 08:32:00 -0700
Received: from abapat-mobl1.amr.corp.intel.com (unknown [10.251.1.101])
 by linux.intel.com (Postfix) with ESMTP id D8A92580696;
 Tue,  1 Oct 2019 08:31:58 -0700 (PDT)
Subject: Re: [alsa-devel] [PATCH] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
To: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>
References: <20191001142026.1124917-1-arnd@arndb.de>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <bb58c7cc-209d-7a2f-0e5b-95a9605ffe7b@linux.intel.com>
Date: Tue, 1 Oct 2019 10:31:58 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001142026.1124917-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_083211_607255_4A5B664D 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Fabio Estevam <festevam@gmail.com>,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, YueHaibing <yuehaibing@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Hulk Robot <hulkci@huawei.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jaroslav Kysela <perex@perex.cz>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 9:20 AM, Arnd Bergmann wrote:
> CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
> turn referenced by the sof-of-dev driver. This creates a reverse
> dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
> is built-in but CONFIG_SND_SOC_SOF_IMX=m:
> 
> sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to `sof_imx8_ops'
> 
> Make the latter a 'bool' symbol and change the Makefile so the imx8
> driver is compiled the same way as the driver using it.
> 
> A nicer way would be to reverse the layering and move all
> the imx specific bits of sof-of-dev.c into the imx driver
> itself, which can then call into the common code. Doing this
> would need more testing and can be done if we add another
> driver like the first one.

Or use something like

config SND_SOC_SOF_IMX8_SUPPORT
	bool "SOF support for i.MX8"
    	depends on IMX_SCU
    	depends on IMX_DSP

config SND_SOC_SOF_IMX8
	tristate
	<i.mx selects>

config SND_SOC_SOF_OF
	depends on OF
	select SND_SOC_SOF_IMX8 if SND_SOC_SOF_IMX8_SUPPORT

That way you propagate the module/built-in information. That's how we 
fixed those issues for the Intel parts.

> 
> Fixes: f4df4e4042b0 ("ASoC: SOF: imx8: Fix COMPILE_TEST error")
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   sound/soc/sof/imx/Kconfig  | 2 +-
>   sound/soc/sof/imx/Makefile | 4 +++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index 5acae75f5750..a3891654a1fc 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -12,7 +12,7 @@ config SND_SOC_SOF_IMX_TOPLEVEL
>   if SND_SOC_SOF_IMX_TOPLEVEL
>   
>   config SND_SOC_SOF_IMX8
> -	tristate "SOF support for i.MX8"
> +	bool "SOF support for i.MX8"
>   	depends on IMX_SCU
>   	depends on IMX_DSP
>   	help
> diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
> index 6ef908e8c807..9e8f35df0ff2 100644
> --- a/sound/soc/sof/imx/Makefile
> +++ b/sound/soc/sof/imx/Makefile
> @@ -1,4 +1,6 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>   snd-sof-imx8-objs := imx8.o
>   
> -obj-$(CONFIG_SND_SOC_SOF_IMX8) += snd-sof-imx8.o
> +ifdef CONFIG_SND_SOC_SOF_IMX8
> +obj-$(CONFIG_SND_SOC_SOF_OF) += snd-sof-imx8.o
> +endif
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

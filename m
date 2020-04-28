Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1061E1BD048
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAY+XfuPT86bLWMWBgAp6CMxBnsKXjy48bQHU6w5S/k=; b=VG1GDLg/U7Qz4ULbBIHgmKEvn
	/h6zsO06kGVM/lQ1IP6qEoxsih6dGCsbvbN4UTiE6cgRr3n+Ok80yqilueX9tbSEZq26v3mxux182
	vDap7aTHV5H/aqnWHBpHCLpAI+LzcU6v8eyjjZ6sN7YTRo4f0kXfMzPSAmUWoxW+Ot6zyLnlAdoKy
	Aklmkw70x8I4JFQxq1xc3QcWH53ZOCYNXiW7WW/fxpzzldF1TeeB2wGeO19F+H9ZYhNp6w68oL+fk
	SSYl/gY70sqO+M18Wsbia451SL7yzdEX0SdKbhbGzZgCaqnulyZbMCUBA/Y/8Sj6CljnbH38HshFw
	6kmBDWI9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZDS-00069O-QY; Tue, 28 Apr 2020 23:00:38 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZDE-00068F-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:00:26 +0000
IronPort-SDR: 32fo3hrh7dFeM0L+A5vfIrmbLZJYxhuVrrtDyCrABzIhkJoVqXIndwiZIz4u1Ni7Xr5AmjjQ/E
 HpjQVZitpGwA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 16:00:23 -0700
IronPort-SDR: XdQu1T4O+w7tdYK2qGoB/pje7lUhIhCK+zaZQPZtijPvA6alH1AnAEYXmwSywMks5ISfrR8SCX
 JAGfDdavyxtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; 
 d="scan'208,223";a="247840359"
Received: from mdioury-mobl.amr.corp.intel.com (HELO [10.251.153.102])
 ([10.251.153.102])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2020 16:00:20 -0700
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
To: Arnd Bergmann <arnd@arndb.de>
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
 <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
 <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
Message-ID: <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
Date: Tue, 28 Apr 2020 18:00:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
Content-Type: multipart/mixed; boundary="------------83E0C404AAA0BEDB5B37198B"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_160024_764610_25B8F070 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Mark Brown <broonie@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------83E0C404AAA0BEDB5B37198B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



>>> Thanks Arnd, do you mind sharing your config?
>>
>> https://pastebin.com/HRX5xi3R
> 
> will give it a try, thanks!
> 
>>> We noticed last week that
>>> there's a depend/select confusion might be simpler to fix, see
>>> https://github.com/thesofproject/linux/pull/2047/commits
>>>
>>> If I look at the first line I see a IMX_DSP=n which looks exactly like
>>> what we wanted to fix.
>>
>> Yes, I think that fix addresses the build warning as well, but looking
>> more closely I don't think it's what you want: If you do this on
>> a config that has the IMX_DSP disabled, it would appear to the
>> user that you have enabled the drivers, but the actual code is still
>> disabled.
> 
> Are you sure? we added a select IMX_DSP, so not sure how it can be 
> disabled?

I just tested Arnd's config with the patch we came up with for SOF 
(attached) and it makes the unmet dependency go away and builds fine. 
the problem is really using select IMX_DSP if it can be disabled by 
something else. My proposal looks simpler but I will agree it's not 
necessarily super elegant to move the dependency on IMX_BOX into SOF, so 
no sustained objection from me on Arnd's proposal.

Daniel, this is your part of SOF, please chime in.

Thanks
-Pierre



--------------83E0C404AAA0BEDB5B37198B
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-ASoC-SOF-imx-fix-depends-select-IMX_DSP-confusion.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-ASoC-SOF-imx-fix-depends-select-IMX_DSP-confusion.patch"

From 208e61ae18d3a4aa93ffa73db01c4e3c24a4979f Mon Sep 17 00:00:00 2001
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Date: Wed, 22 Apr 2020 06:21:56 -0500
Subject: [PATCH] ASoC: SOF: imx: fix depends/select IMX_DSP confusion

The two IMX targets don't use depends/select in a consistent way and
there's a potential for an unmet dependency. Move the dependency check
to a higher level and select IMX_DSP to avoid builtin/module issues.

Fixes: afb93d716533dd ("ASoC: SOF: imx: Add i.MX8M HW support")
Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/sof/imx/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index f76660e91382..a11ecc1d56db 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -21,7 +21,7 @@ config SND_SOC_SOF_IMX_OF
 
 config SND_SOC_SOF_IMX8_SUPPORT
 	bool "SOF support for i.MX8"
-	depends on IMX_SCU
+	depends on IMX_SCU && IMX_MBOX
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
 	  Say Y if you have such a device.
@@ -29,7 +29,6 @@ config SND_SOC_SOF_IMX8_SUPPORT
 
 config SND_SOC_SOF_IMX8
 	tristate
-	depends on IMX_SCU
 	select IMX_DSP
 	help
 	  This option is not user-selectable but automagically handled by
@@ -37,6 +36,7 @@ config SND_SOC_SOF_IMX8
 
 config SND_SOC_SOF_IMX8M_SUPPORT
 	bool "SOF support for i.MX8M"
+	depends on IMX_MBOX
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8M platforms
 	  Say Y if you have such a device.
@@ -44,7 +44,7 @@ config SND_SOC_SOF_IMX8M_SUPPORT
 
 config SND_SOC_SOF_IMX8M
 	tristate
-	depends on IMX_DSP
+	select IMX_DSP
 	help
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
-- 
2.20.1


--------------83E0C404AAA0BEDB5B37198B
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------83E0C404AAA0BEDB5B37198B--


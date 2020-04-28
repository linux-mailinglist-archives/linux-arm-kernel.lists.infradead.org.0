Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953B51BCEA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UH4ziOkvdMzgesmHai/vKFlJNBvEmqHAWjaRXYq7hko=; b=jBXzvbYlxC1k21
	dYdE3q6XivxliabWAr+HXPpxXx5bHoMF4FvAsKfk0zdVxQSFJayxCg9qXlCBDsoNDm/qEXnVd762y
	PVjILCsRcthbpIFkfDI/Lfqn5yJUaafUfHt6E5f5ywhhpSUdK7JjJ9yjxk1WEPARs+NGWpygJBTv4
	u1sLRyENyvsHcPhjaGVOD1tx6RpCETo2I+FNMitUTEgPdSTU0jk7rgb+0Gg+EyDzkw/tGGhQd86pa
	iJ5AvZwULJ4nl975zYQ5yXZotZ/d2QAuBJjz0Cot4GJN88eP57Az+v22RUIk58QmEbTi+ptDSYEt3
	Hjm+glq024eeO+n5jn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXnF-0007rC-1g; Tue, 28 Apr 2020 21:29:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXn3-0007pc-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:29:18 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M3UhO-1jU5ja2dxi-000fbP; Tue, 28 Apr 2020 23:27:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH] ASoC: SOF: sort out Kconfig, again
Date: Tue, 28 Apr 2020 23:27:36 +0200
Message-Id: <20200428212752.2901778-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8d7WZ3UBhWpvVPatHjhGkfsTe799EeMmt2kakU1SILlE+Boi8JB
 2TfmLPolDBGYzmbr3Yno8gLoI+2IK035iR0LCwe1FAmFuobAdsepBIkcpYqlYgax5ACVuex
 BGiDnHlwlsqW7vSHLv20SbOdT6TEtexpnidSwU5d4AunnND0maUcQu6+BQ42oXEn9T/bWNe
 0JVj/r7tK7Ux78fglAMYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WvmTsyeNvCQ=:+pPOAQ1B7e8cgF5lZXL9vR
 AV22EdfqUTx2IPCOF5strs645hcHwIhAqY7J7wWwuobCW5hDdl0AngGnX7FJspnZnjegkrt2E
 RmD6/LNADCHxJSUPTqNAKmCZMRs5C5oEsGfLQ4S5+1i3B5jwR83pojGofRG2KonqBp+PQogZ/
 PJ76AC4wMLbAoudpCmN2AhZ56qTajfBaZKm0EPyPuF4BMapfAJ+3fpg+2ThssSqTdS6QhVH3X
 JXWKHebYIyuec84E+TkN/7zMCC4mzRp3S14HC9j/msgVL82IO6kBzDJBPqYcGQaktntpFs1E0
 UREoIKK4vZoyZbMjCuOY/XPm+BL2WakVX7I2vcuiV4zxVmVZWMx867aIodGfIfLUqOAIxl21d
 VzFTMP0BEeJtXhzaLFPYwgPl/PyoLYL7eCNieKKV9A38vtenhz8JzvwSuS2FVYacMXkNEVQEN
 Jdul6s9nst/hq8t7BtXJgFFaU3erH4AZbnj7ZqYckElD5nM4naktKQthw9CFOd2EdQoQP0ZC7
 hF6m/JE4PzxF3YX/pV8bsJrGNzoNSCJb4VUe9CAlPEiebv8tuUwPNrnrmHsw1f3amgWRHm7Y7
 fha9JwYcW2lOjlNSIalKXM1tYG2lpk04lmCKBnivI5JUzyBwXGcCkUl3U1h3WFDWiorQM7mgv
 j53SadC4DntEqIUENeoBK769K10vJLdDz8rtd9t5DXuxSJdx0Uto9LpFm/gKFohRqueOR654x
 tyByEJPuc+7C1bS9fDLIltl45IhTkIe6d+F4/srj7Px7uCwukODTvnxpR4c5bXI8DfbsJBhjC
 NJ8U4aGwH60t84BKXw5NKXImAnQcWYfTIA0izfoNj0lFbO8Ffw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_142917_618226_69A3DC20 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx8 config keeps causing issues:

WARNING: unmet direct dependencies detected for SND_SOC_SOF_IMX8M
  Depends on [n]: SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && IMX_DSP [=n]
  Selected by [m]:
  - SND_SOC_SOF_IMX_OF [=m] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=m] && SND_SOC_SOF_TOPLEVEL [=y] && SND_SOC_SOF_IMX_TOPLEVEL [=y] && SND_SOC_SOF_IMX8M_SUPPORT [=y]

This is complicated by two drivers having dependencies on both
platform specific drivers and the SND_SOC_SOF_OF framework code,
and using an somewhat obscure method to build them the same way
as the SOC_SOF_OF symbol (built-in or modular).

My solution now ensures that the two drivers can only be enabled
when the dependencies are met:

- When the platform specific drivers are built-in, everything is
  fine, as SOC_SOF_OF is either =y or =m

- When both are loadable modules, it also works, both for Kconfig
  and at runtime

- When the hardware drivers are loadable modules or disabled, and
  SOC_SOF_OF=y, prevent the IMX_SOF_OF drivers from being turned on,
  as this would be broken.

It seems that this is just an elaborate way to describe two tristate
symbols that have straight dependencies, but maybe I'm missing some
subtle point. It seems to always build for me now.

Fixes: fe57a92c8858 ("ASoC: SOF: Add missing dependency on IMX_SCU")
Fixes: afb93d716533 ("ASoC: SOF: imx: Add i.MX8M HW support")
Fixes: cb0312f61c3e ("ASoC: SOF: imx: fix undefined reference issue")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/sof/imx/Kconfig | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index f76660e91382..66684d7590f4 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -21,7 +21,8 @@ config SND_SOC_SOF_IMX_OF
 
 config SND_SOC_SOF_IMX8_SUPPORT
 	bool "SOF support for i.MX8"
-	depends on IMX_SCU
+	depends on IMX_SCU=y || IMX_SCU=SND_SOC_SOF_IMX_OF
+	depends on IMX_DSP=y || IMX_DSP=SND_SOC_SOF_IMX_OF
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
 	  Say Y if you have such a device.
@@ -29,14 +30,13 @@ config SND_SOC_SOF_IMX8_SUPPORT
 
 config SND_SOC_SOF_IMX8
 	tristate
-	depends on IMX_SCU
-	select IMX_DSP
 	help
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
 
 config SND_SOC_SOF_IMX8M_SUPPORT
 	bool "SOF support for i.MX8M"
+	depends on IMX_DSP=y || IMX_DSP=SND_SOC_SOF_OF
 	help
 	  This adds support for Sound Open Firmware for NXP i.MX8M platforms
 	  Say Y if you have such a device.
@@ -44,7 +44,6 @@ config SND_SOC_SOF_IMX8M_SUPPORT
 
 config SND_SOC_SOF_IMX8M
 	tristate
-	depends on IMX_DSP
 	help
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

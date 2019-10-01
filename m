Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E8DC36FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+C9oQ+5lplBu0o0VrTgsq4ECalgaZQl+JxQ1H6r92xY=; b=j8sB0+0bO4AdHy
	VESWBrkGeXdOoCIccRxSWL6zJBu0vOi7SXzgdxk5w0ySvJOqsZLp4AiVV1jizlmhdXfOmXZvpKs66
	Cmekv61Te6of6voU4AUySywXZNkcz/nC26bbZFCWkfpZ7kwqAKTQ9ojWlLv+qcBTyCSRAYMdmdxi5
	+aM8PQweYPlmtjFZXMIUAN9Dg8RtOKHvpjumwvk2zDpndneJrU6vLZXWMooszQ0oBZEf7o7A1s7VX
	1QojM5kQvDJ0mg7f4IlHFDvTqMXU62Qa+qYIX+fsV5E/tyDhhwsbBeWCAWoWIHmM4fOiWGRCe1iVC
	l3CaiIXih1Jk1oZt9BLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJ2J-00007M-2B; Tue, 01 Oct 2019 14:21:55 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJ28-00006K-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:21:46 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MHoVE-1iKFDt0sgo-00ExaL; Tue, 01 Oct 2019 16:20:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency
Date: Tue,  1 Oct 2019 16:20:09 +0200
Message-Id: <20191001142026.1124917-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:hL/OrOqx1oO4Bmp86kRM00tNRZ3chWT/eTPxi4JaUrsImLSXYp7
 i+qhAnFRG6eViMZ5TNl46bk0rixPpe+lc1OET7BF5YF7A071moylb49GvEj4GDKarj0uC0+
 ZU+hnVbZdw2WlCiPsgBt8jo3E/gi5h3MNgOBHDOJ3oB6ufIx8rjPWbFJglcQSltdef+vZ+z
 vb+eFvoyJkEdMHXsRPfSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UD9CBuUg62g=:c9PbZz2InB7poesIjc/J/C
 JDvhs0OAUieNXQYRdSS/AETOv3aLuELWRzX420aQAkLscCBi3TzXaYL5Je/C5Hm+pDziHPC+f
 c8/qVlqXWZtXwbsyGdhRNrkj5uwl96NnLUAmarjmwh68CXMZ4J5Wlk7oaKCVyRQTR1xHpL8LY
 qQmtbXueO1sAQqJOPbZ0gmzdpEn38ToU3i5ZPMCEdaGPjtjc6wZNAsBEpzCXzbM0wvamttdRp
 qFL00i6GPGw5UoBa93WdO4uW80+vaP2nutw/LwKluTurpcYBUxW8pAbE8fhr1w1RYRxhKVxt3
 HT+/vR6HrFTBo7WDfY+MbBySCYD++0Wdz0QsEkdWJLm7ctUU9hzcJqBTMIKjAGdaVpo37d3AD
 mRNIvoKo62Q4/zz8HhMoU0FQdSetGcri26tevKkt9l4KikSL4wOuPsST0tr69YqVrgcVgzF22
 +V1yiuUtuLwAt/ugNS6K6nKEqEJvVj4RBXVMM65FY/cjPMTxqDrCWBbqqeOBj7vhoLHMvE8St
 NFOraaDm6HFe+AkhgJARAGBMLUYhnge9RaJBRR25cyJyxaRE0LUUIBEKUzPp4HSO1nsFtEWuQ
 9Bkw1DY/URAci10xnfO4M3F5hP1e+OOcmOlhE+V8vtziqpcgbdCU9OZ1YbkOnq0pEVJ08CSYc
 rc/ngKrFD5pK+v45Kh1oKYzooYfgrtaaXRAdzZmKGka4RXtGgn7etgDRNjSM/XaWxgK0XmKkw
 Sp/xgUJie7+imAetJyXn6jXjV14HtyyqgV4WUPsCFFXwibYETjtOLmrT3eXFMYpC12WseKotV
 jpdjAT5MMl/74tC5GVYZpp1hjPswSP3wr1EcRlaWd58P0++zn5yiuZJagiOEELf8bYtx7wUqI
 /B4b2Dbt883pMpM4aFqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_072144_904509_FCB09431 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Hulk Robot <hulkci@huawei.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jaroslav Kysela <perex@perex.cz>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
turn referenced by the sof-of-dev driver. This creates a reverse
dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
is built-in but CONFIG_SND_SOC_SOF_IMX=m:

sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to `sof_imx8_ops'

Make the latter a 'bool' symbol and change the Makefile so the imx8
driver is compiled the same way as the driver using it.

A nicer way would be to reverse the layering and move all
the imx specific bits of sof-of-dev.c into the imx driver
itself, which can then call into the common code. Doing this
would need more testing and can be done if we add another
driver like the first one.

Fixes: f4df4e4042b0 ("ASoC: SOF: imx8: Fix COMPILE_TEST error")
Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/sof/imx/Kconfig  | 2 +-
 sound/soc/sof/imx/Makefile | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 5acae75f5750..a3891654a1fc 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -12,7 +12,7 @@ config SND_SOC_SOF_IMX_TOPLEVEL
 if SND_SOC_SOF_IMX_TOPLEVEL
 
 config SND_SOC_SOF_IMX8
-	tristate "SOF support for i.MX8"
+	bool "SOF support for i.MX8"
 	depends on IMX_SCU
 	depends on IMX_DSP
 	help
diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
index 6ef908e8c807..9e8f35df0ff2 100644
--- a/sound/soc/sof/imx/Makefile
+++ b/sound/soc/sof/imx/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
 snd-sof-imx8-objs := imx8.o
 
-obj-$(CONFIG_SND_SOC_SOF_IMX8) += snd-sof-imx8.o
+ifdef CONFIG_SND_SOC_SOF_IMX8
+obj-$(CONFIG_SND_SOC_SOF_OF) += snd-sof-imx8.o
+endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

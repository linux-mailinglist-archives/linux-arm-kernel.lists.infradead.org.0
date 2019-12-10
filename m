Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BE411936B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0KyN7S0F85aOs+BEpfsn2DTI1Ni9UHCJM19rGAA9CM=; b=NB1VEFmpWcBhDX
	zjBoSm3e/61fQ/KALApqpjwnspsKsGYkfKz+C7YqdxYe1c/ZjnisK9sHauNfjKV5nOoqRxzPAaZHx
	+U7Fk6A9OtOsXYHF10pdTeveOR5FHzn+cm10LIJOMcYjM6H907D2mJG31IqV9L475gvzm0YflZW8T
	sPHLVINcGC1mxIFkiWFborlR6q4xMNOIyhDM2K/s0y/suAO+pUarBLIc9Qzm7soEwV+mRT3Ks2S/O
	JqSEQE2VdKhC5Dt64B/A90xPw8ujSuaDbjRPTlsDC4vACY7iCv9ntdSF/5GbnqZw41xaM/XWqyU68
	iqWXuNtDuDDCmiiaxV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemn7-0005N2-Sq; Tue, 10 Dec 2019 21:11:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemmQ-0004rR-1J
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:10:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5C0D246AE;
 Tue, 10 Dec 2019 21:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012249;
 bh=stqJirSBigCjUNifC1OoMutB1fJmmXeU1I9ydq6AYUs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dlbFKKgn2thnft8UuIIwlYj0GXTEJh2YQtSYCnf+aKbhjhyW9qagx12qytufVjgOD
 VkMg/oCjnsM+sW+3nYq9VxNqjzswS2vyUi9QQHJJeG6PuHZeHrPNMnxeJv+bq9lesl
 Jde12IFb8TKLFNHQkNw78PYreD3oqSM+rwjSs/rA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 197/350] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
Date: Tue, 10 Dec 2019 16:05:02 -0500
Message-Id: <20191210210735.9077-158-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131050_102494_2B6FD60B 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, alsa-devel@alsa-project.org,
 Arnd Bergmann <arnd@arndb.de>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

[ Upstream commit f9ad75468453b019b92c5296e6a04bf7c37f49e4 ]

updated solution to the problem reported with randconfig:

CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
turn referenced by the sof-of-dev driver. This creates a reverse
dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
is built-in but CONFIG_SND_SOC_SOF_IMX=m:

sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to `sof_imx8_ops'

use def_trisate to propagate the right settings without select.

Fixes: f4df4e4042b0 ("ASoC: SOF: imx8: Fix COMPILE_TEST error")
Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Link: https://lore.kernel.org/r/20191101173045.27099-6-pierre-louis.bossart@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/sof/imx/Kconfig | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 5acae75f5750d..71f318bc2c74f 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -11,8 +11,8 @@ config SND_SOC_SOF_IMX_TOPLEVEL
 
 if SND_SOC_SOF_IMX_TOPLEVEL
 
-config SND_SOC_SOF_IMX8
-	tristate "SOF support for i.MX8"
+config SND_SOC_SOF_IMX8_SUPPORT
+	bool "SOF support for i.MX8"
 	depends on IMX_SCU
 	depends on IMX_DSP
 	help
@@ -20,4 +20,8 @@ config SND_SOC_SOF_IMX8
           Say Y if you have such a device.
           If unsure select "N".
 
+config SND_SOC_SOF_IMX8
+	def_tristate SND_SOC_SOF_OF
+	depends on SND_SOC_SOF_IMX8_SUPPORT
+
 endif ## SND_SOC_SOF_IMX_IMX_TOPLEVEL
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

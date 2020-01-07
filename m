Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C764133540
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XQamOaulqtQfyNV1MYv8wxG8+oCBQxNVWzIhKtCy47Y=; b=fZfdFxjg0AF/JV
	zE2SaVISrNIqZI/taYJVrVHgUY11Qnv7rYxuOrk21Z07aZDKbK5ZzOuWtcyW9xilxaY1eleXABFU3
	DyCLHuP+C93BYX4Dc0Pc7IeRtCsHOtRN/mODbQrJ09mx8OgQ69La3brcO/FtxLoIgcBirogTafyqS
	mBaU0tA//L+tXzmlA3d6al7qUQ/FL5e1bpkmkXkoMIvoiiEMIBV3cbm+Elf/Sh8jCF1Rf5mNVi4CJ
	OfMNiGLkR9Gavfm/EqPpNEGiqFUyUu+70G1MEWzScepkiaP/kDZNfeGyOPEr3aKx/FDujO/VMlPjW
	TVXgubvB9aw4d1aYKfnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowlo-00089M-Nw; Tue, 07 Jan 2020 21:52:12 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowlh-00088p-Ue
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:52:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Ml6Zo-1jXrM32fs4-00lT3G; Tue, 07 Jan 2020 22:51:59 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Anson Huang <Anson.Huang@nxp.com>
Subject: [PATCH] ARM: imx: only select ARM_ERRATA_814220 for ARMv7-A
Date: Tue,  7 Jan 2020 22:51:39 +0100
Message-Id: <20200107215157.1450319-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:IOTDqnkpbH8/vAmKOC5zE6L15ys1fxtzqis6/HShFAh2u0AZB8g
 K/VjWhwqUgdufgU1FpFXCGc4KMN7nwf9Ru1cKgdewNw7/2tiqwVpuBW/Ng5b1FMo/h3Ffd2
 gFSlWK3VZiNHUV9J2h9dxIrrCGtwUVS6dTMwvt74SUirIZsD7HYWDtFkDM8VIzW/PShSXvb
 q9FqOZ4A6286lyMWibtag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:agKvm2/8XaQ=:aHsB/iqpC114ScSlWlkfMd
 iDCZuvbSFh0o9sTvsBP11KDeJ9FH/mDWRiO2vMU8oabdc0eL8IuziuaUn0m+GOOG2SOgwsqnD
 OoQHSODU/VpooIWc8xAyCMamMdQMqYv3Hq33k6bBOZw7LjUKrf1WCDER8bvV204TX1pvHtBuI
 nkfYxfImoyybXa41lHQikzPCWaKjA5d4KmVdfv2kWakdh4iZGYwTsY5mX6SBV7pHhGRm8tAyn
 +WG0FH1VUteguMfzDtiBjgHmQ/Yx9QYM/IfBWMo99vZK5w7tm7q6c0DrwLgb7u+F39ixvYVg/
 xTjB1qlnZi/sDDJuOg2l5xrZEaSYzBjqcGtAWjCW5uilXMu/DUwJDdRRzHL4Yffgny10eDEdE
 utRGOKCZwW2JMLw9EY7MnpwlJXXey3twbw6LySMdvM6IIWL9aguWFRKlPDu/gSo//u5DkkF34
 9TkTdiTmcUM9nn3HIwLOSMi782dvJaw/xah+rTGkE1wnQWb5PbMbKwdgYWXSGCm5UMCUTRyQi
 xq03kcX/wYxM5yItjq1BBdkfyhAsTqLipTcMknH5Dftwey06/eNNvJX9leQrwkRbxK0zH697z
 wMzLG2EEudylQl5VvJ3+tCjSKVVrAD9R0prXu4D6zF6xZodT78oe0Xgur5Y2bj/ovunfJeP2r
 khHzPQ0+7wfCP2k1pa5FtuFqWFbHLRuH1EFI/j7j4ke2BTayIgmNaXS5miI7JbLr+lKSpMxdg
 VtD7FzZyr7XjzI9jHcKgp2RmXjmr9mqmihJorRiKArz1egbwtYOzxN+7CylgEOGbZNEJLu8Fs
 2PrpYRWjEYCqJqyv6vX7hqdqjnshZHWyWRew60qFFpQO7kbrP7kMw7qMVeECDW6WUkjX0EdcC
 hmhY8bRT/1NYjcIFGbdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_135206_281871_D1358351 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX7D is supported for either the v7-A or the v7-M cores,
but the latter causes a warning:

WARNING: unmet direct dependencies detected for ARM_ERRATA_814220
  Depends on [n]: CPU_V7 [=n]
  Selected by [y]:
  - SOC_IMX7D [=y] && ARCH_MXC [=y] && (ARCH_MULTI_V7 [=n] || ARM_SINGLE_ARMV7M [=y])

Make the select statement conditional.

Fixes: 4562fa4c86c9 ("ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4326c8f53462..95584ee02b55 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -557,7 +557,7 @@ config SOC_IMX7D
 	select PINCTRL_IMX7D
 	select SOC_IMX7D_CA7 if ARCH_MULTI_V7
 	select SOC_IMX7D_CM4 if ARM_SINGLE_ARMV7M
-	select ARM_ERRATA_814220
+	select ARM_ERRATA_814220 if ARCH_MULTI_V7
 	help
 		This enables support for Freescale i.MX7 Dual processor.
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

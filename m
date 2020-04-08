Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E767B1A290B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 21:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNLXADbYx/jr2wtn+0E6cuiCo6JG1n1vN7luz7E6Wec=; b=dmZJ1NWKbJ3exW
	y3z4MvkfA+h5qF9D7XajnahzoXFxbv68D8GpSo5LhBf/ew42fqbAKKu7MngZBIAIq1FKhkLVhL2mX
	Tp3bDWDEBc+3iXOOGxVGeqHOVlTJXZs8C27vKJZxV+DGLQR7bzIOCGCMYyzZQFQ47ZDW7Y4GbSQEM
	I+9AqYqvv5gjGxrM2d6k8xibQna/rbqH5WUq1wE+ca+1IngQ/9KuM55KwWGBxJ1V3ESG8U+GsKfiZ
	PD5ebpo0Varm11XfuiJtRuZ2prS3GROOUrC+mgA/ZIwoPCbNBXXXkTHI04TVbrA57gZoYbViQUW5l
	ItrMhz1V7HXc8ofvFyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFyw-0004Vf-VT; Wed, 08 Apr 2020 19:03:26 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFyq-0004VB-5E
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 19:03:21 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mg6i8-1iniJB1vaA-00haOp; Wed, 08 Apr 2020 21:03:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] firmware: imx: fix compile-testing
Date: Wed,  8 Apr 2020 21:02:57 +0200
Message-Id: <20200408190314.695067-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:MHUnGS4mhb9c0Ayqn3vJzYSSZquf3HBpsl6Pj4L+hYt5iYBAWOf
 NQh3uzTRWIYhEs8jW8faJAnTJk1sI/KDx23ioLQUPjJX2ymq+WT9C90sPnhQEtj/KGaD/AM
 +WZqaXe0OeUIhN0W4OmyYU+szIvUsR2+EMH3qSgWOJuOmUACA36zNk+drKkP3RoK5/RbYeS
 goXPkv3p116iHhkEYCCqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7T+8WLgcDJs=:xUMyHkZ75drqypZQFuX28i
 BNKdAuhp5qRrP6PXAgJTf8JefObWnjvuFtnXdT2Y0qcGAOxXbIcgqRP3r4qUj86c1Cfo6Q9kr
 0WjSZ72l77/wNd8Ne9gV+YqS00a2Vd4opY4wjgbGG+pqvi5/kHvDXKAwQEqFgTP3gqIITeIp8
 UkGv08cjyAc5ZEWmt6sQd0ltYZP7fRtxAmLrl+ttXHcXOA8yyiNowvobBvSLJZBS961VO1Na1
 OtM+0yj8mhcYlrz3le4bPleUOuZ4C/T6psozIDGl1MEXreFuaBuVB6SbaztpiIDB4P0nNuUOZ
 YM/LA/hRIUkRp0Lb9GpbWBsNGpqD7dEB5EwbQrT8SZQjhdZ6v6WPBW+e0rtK0EMjvKuggSoEZ
 1sLaBnc/W1x5te3q+ynOTeokQxybC+nHK666kYUD6ABlp1+I0tqfzx31UNSj3sg1hD6LWgGFv
 s4xN9PcQ58f1zJjiRMwRX8wc81QMSzDWNcIS4E5tFUwaX2jfH9mNQui2pCPrigi+h92hQYeUC
 VG+0sXC+wCPNm8D6VS5eeT2YxR9xNqyqX2OgCPDIZUgmvyswHuFqPRNvAM3AAwaIMe6yRkmoJ
 S4SSAMBYz+67IgDq4YvvpuJXcKaeG/4PDTFIiGLtcPKrXf2VXU/Ab8uRYF2Lt6gshd3m0wLKN
 hvlkSfpdxj0bUuPfgXbi1JYtVEHEsCQbxS+B9XyQxaTq1xB5sKieNsuFkl3cVUHLXJuKzSN1E
 1fGWREn0Tf7JwuFBz2yQlGZ3RDYUmK10aAuq7YUdgqOFMWSCP2U/ZNC6UFr7niV/DTT2cnniZ
 DmisMpT2nbeXHz3zznECz2ugrkbgRNwXWTdMIYvi4g2iGaB27o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_120320_490245_84BBE1E1 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Anson Huang <Anson.Huang@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is nice to allow compile-testing the firmware drivers, but this
fails when the dependency is a loadable module:

aarch64-linux-ld: drivers/firmware/imx/scu-pd.o: in function `imx_sc_pd_power':
scu-pd.c:(.text+0xd8): undefined reference to `imx_scu_call_rpc'
aarch64-linux-ld: scu-pd.c:(.text+0x108): undefined reference to `imx_scu_call_rpc'
aarch64-linux-ld: drivers/firmware/imx/scu-pd.o: in function `imx_sc_pd_probe':

Change the dependencies to ensure that any driver we depend on is
either reachable or we are compile-testing and it is disabled,
effectively reverting most of the previous changes that turned
out to be incorrect.

Fixes: a9f85f93ed73 ("firmware: imx: add COMPILE_TEST support")
Fixes: 5b00b8375416 ("firmware: imx: add COMPILE_TEST for IMX_SCU driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/firmware/imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 116707a075f3..1d2e5b85d7ca 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -12,7 +12,7 @@ config IMX_DSP
 
 config IMX_SCU
 	bool "IMX SCU Protocol driver"
-	depends on IMX_MBOX || COMPILE_TEST
+	depends on IMX_MBOX
 	help
 	  The System Controller Firmware (SCFW) is a low-level system function
 	  which runs on a dedicated Cortex-M core to provide power, clock, and
@@ -24,6 +24,6 @@ config IMX_SCU
 
 config IMX_SCU_PD
 	bool "IMX SCU Power Domain driver"
-	depends on IMX_SCU || COMPILE_TEST
+	depends on IMX_SCU
 	help
 	  The System Controller Firmware (SCFW) based power domain driver.
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

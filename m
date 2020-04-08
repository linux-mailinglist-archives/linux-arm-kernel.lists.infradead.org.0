Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9CC1A2658
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PL9PxVw6fPTO/QS3a21uVEjXJoJ4P8j3qTc9eqaji8Q=; b=NJxhTQ5i49olqu
	dYgeLBszgoRGzNErchVM6CxT0LA/unSwwR7FaOvEBtlJG290Zy+EJNEFI9KPZoQmxqnQXReAY1lZp
	8qxN+Kx6TDnitn9m3s7UtiSYfN6vACTorADL3sJs4V97dPqMoq76ObKoLwYo+a5mKv+PCZRY/P4Xm
	UCr5/ErQgkfMQwJEDYdpsbDnMOtlhU6v9EdtOThM3mmDXzXsJbzmDQKcmsdmMICG/Ve5bgK4pIfAr
	ol1vk7i1r1rvhGTfBLRz/oKfy8hHnfMK4sVPihu0B3Ye2MIL+EMDGw5G75Y975tlkujUNeospcitU
	r3AVd9RLb5tlIGdyvHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMD0I-0003JF-Rj; Wed, 08 Apr 2020 15:52:38 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMD0B-0003Ib-Ry
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 15:52:33 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MYeV1-1jr9s91kW3-00Vl5c; Wed, 08 Apr 2020 17:52:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>
Subject: [PATCH] drivers: soc: xilinx: fix firmware driver Kconfig dependency
Date: Wed,  8 Apr 2020 17:52:15 +0200
Message-Id: <20200408155224.2070880-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:WnjyOpiNcLqQfztyx9N69btLQ1WKhu518Y0sT2WFdNsAQVcG0gG
 +IMpFcx90FHUdlOpsHgSVLr574kD3T7BW03gP4LYceY0fi7mYgDuYJsQGxdnQ2E9JGEfLEK
 hh9CvkPa6lrQzLhokD32H4hYGay0r/s77OdAcc1JFvWyebr/8s3Z62+Bv23wOJPfI9iOsug
 ii3pAoqKFen8X3+6EJ2lA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6/D6tFvb3o8=:BjFJsKWkbiLT1YWPE3bzRs
 gIhFPk/emEX0msq3g2zWyG6wkAU/79WFC5RAUVg/Unhq1EFBSRNeyHFweoKljV8Nu4zqeXHLi
 jQaA0y532dIewP8G1MwId7H5q9w26Aq50rxe1XZkZSjcG8+EvB5cWk4PF9QMOFOq2w+H39jSL
 Cb5J8h/cJo6AweK9ZW6vn9L2Gp6hyICtQD7Lg9glVkQEHucsmDc/1KPI4yo0biO6ZGd/mTGvw
 zh5BcBtMZIGllV2cCCO2fWsY7AJX1J8b4+ZN25QX3uZxa1iUpqd1Ky8/JshdOiJ3ZxbKbRD+m
 c+xtDTAF6BMpnAvxGWVKCdWwozIJBpUL6/vm3WZJx7an9CQyA0ltd5nIZb/6FibNvc0swBXrL
 ngYkjY1tzx3rlw2zqxjJrZOORlylM7zmEYnGphRXTO9Xkx+KiU/4z5sIj66Lt6mlzJyz1MyBo
 vpcIFIPHS4apIqCC7aZaCSYLObjcPf4Ta4MVxeItrIwHsIp+r8MkZC0hlW/MsxpuXM4/P0Rr/
 FVNpv/vuDlOwTwWE5iuoI3HWNVynB8A35s82x5ffxoIn6OheAuF7bnq3pzhAuwUQGqdMqgcXL
 gnKkTxhKLFhbxqGbZPnv4JdQ710pRJxZPS33Y23/KmQ4tYmF6WCPmFjqwYhNEkxs/LR6NvB9M
 9+0CAkNM7zURfB5KhTR/97FjzRXvhed3xoRMOI83NRpfWxe6P2iEV2TTN6nyrMNmX+lZpQk7l
 ygGBqN8GxwwZfxgYQmth7oRi9pvSe4YNZHexXAmScn2KcCVdzNcPNqJKuXWGf97yY0+63sFGb
 LLKfwquH1WytWDO2G/DbQBfD1NBPFGM3IiQDOma0WlCNPqQ/Tk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_085232_189963_3E0C4E27 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware driver is optional, but the power driver depends on it,
which needs to be reflected in Kconfig to avoid link errors:

aarch64-linux-ld: drivers/soc/xilinx/zynqmp_power.o: in function `zynqmp_pm_isr':
zynqmp_power.c:(.text+0x284): undefined reference to `zynqmp_pm_invoke_fn'

The firmware driver can probably be allowed for compile-testing as
well, so it's best to drop the dependency on the ZYNQ platform
here and allow building as long as the firmware code is built-in.

Fixes: ab272643d723 ("drivers: soc: xilinx: Add ZynqMP PM driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/xilinx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
index 223f1f9d0922..646512d7276f 100644
--- a/drivers/soc/xilinx/Kconfig
+++ b/drivers/soc/xilinx/Kconfig
@@ -19,7 +19,7 @@ config XILINX_VCU
 
 config ZYNQMP_POWER
 	bool "Enable Xilinx Zynq MPSoC Power Management driver"
-	depends on PM && ARCH_ZYNQMP
+	depends on PM && ZYNQMP_FIRMWARE
 	default y
 	select MAILBOX
 	select ZYNQMP_IPI_MBOX
@@ -35,7 +35,7 @@ config ZYNQMP_POWER
 config ZYNQMP_PM_DOMAINS
 	bool "Enable Zynq MPSoC generic PM domains"
 	default y
-	depends on PM && ARCH_ZYNQMP && ZYNQMP_FIRMWARE
+	depends on PM && ZYNQMP_FIRMWARE
 	select PM_GENERIC_DOMAINS
 	help
 	  Say yes to enable device power management through PM domains
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

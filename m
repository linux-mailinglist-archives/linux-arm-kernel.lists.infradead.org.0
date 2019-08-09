Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DAC87D0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYWHOrTe0N59bCcGUJO5r1174nJfzQIXrG259DToo0I=; b=Pzt+tZj9uynjeq
	vt7MrluAuRBQgoeZyh5ZEffluxKnjGe1LKDS9u07xltTnQfOCzXHVaaTqs47pK0vP6r8g9010rApL
	7KgY8xsHFj2zCLLxrw7cIBYdIJZ2BUhQ2+I988rANocGKmmwfWYvC/6ehK49P4dxGpW+lTLfOmThU
	XXzdiUn0YSuHRL9ODXA2tqBHb4BUJzXPf3ceYziyCeB1m7h+ApQTWHDCAvaURVzugc4zDrufJOB8g
	xfGus76yVY1ipGuBY3hxcFjqRFEtFScSwlMagtzQmoJX9CCU2/tfKj6fC8y2JWPQcRtfu6TI0O6bF
	XaR70ijr+t7V96oX/KLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw68x-0007Pv-S6; Fri, 09 Aug 2019 14:45:24 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw68R-0006UI-Jc
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:44:54 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M7ehh-1hwwfj3ddd-0084kM; Fri, 09 Aug 2019 16:44:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 10/13] net: lpc-enet: allow compile testing
Date: Fri,  9 Aug 2019 16:40:36 +0200
Message-Id: <20190809144043.476786-11-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:RCFvjeuu0t6f1S3c2jeBwyAit2sEKCe3winoluK8TV6k5NAoOUO
 0HaU0UeVh1bfmegCwZ/LxZYBGuVQ+7eXPexo60SZ4/fhiQPq4crzC1qGmIJ/ZR2C10ryy8P
 +3n+Rbdz54ykoqC2GhA3rvwxeJ73S0gOOpx9LpPn+IDp8M7Qct4l2VjHj5K1QVYXDT4/g+1
 gvS4O0eBreeQVVrF4XDYQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vO1wbEWxD8I=:6+u3R4GfutAihcMR0mmONZ
 HP7bzqimvfTuINSG21LTieDz2KUv6efnOlbOGeMn/i80QZwho0TC8mAEWfJXPHxbAKDG5Suh4
 RknDI+FhEgZXDXw+DJvO73m1TbsaSWq2ADaOzaNwMKz7Yz4pLjKnkyjMsAXyqXqCKvpsnzanG
 DgCK/RBBm1OyJ4pOqRVtrly4GqCbLNtqtqww+vCW+wF2UVLD8sfjRbflblvU3XjSkdb8lxMjW
 Od8LUDWA4Q/S4zjmOaM8r+7U6V1V9EUUhMU8ZmL7yMbEansGeMyI01jfvMSd/YY4eJ7Z5j9Mi
 4uew4FuY2ITGLxTVi3UPQQVs+qsi8o/GhBVluXyBAkVbRigHeUHG8DvCn2LGcPkWDbBBtAs++
 cnGw/LGJ1ElnskF8l3d/+52MiyvPTv7yNgPEPXW0G+JcTKe+NE3ZVT/64VkZrjVXr4w57wx5h
 v005eDqI5QkSiqRdjwzeJxgfoXeUsRsJrZtQtZyQOphMoQeJKZsR9dHCZBwq/ocx8x8bC7iGf
 BMS2ffpA+JkheWx0C7rTmkMzyAnIFPMYV/Po522SNNBCx4MlExhIzMw5aWwG5vujNXpeXtrSD
 0WeGsWIjjNnImHwadAS1ScB4KbQd0Xcv7VSH83TABwqk/9+M0AiscaQ6OL6rauWRhnvvucmdq
 hJ4xCU1b0ilijKOsiP6+DOn9UJH6iQOSwn5qWI79J+uZC16GTA08mzqfWm9BYDLFzck/qhkE9
 5iCn+1XwlD62XtNtWSIAMC5X1XYrH4ZPc/M73w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074451_954174_3CDA4171 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lpc-enet driver can now be built on all platforms, so
allow compile testing as well.

Add one missing header inclusion that is required in some
configurations.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/nxp/Kconfig   | 2 +-
 drivers/net/ethernet/nxp/lpc_eth.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/nxp/Kconfig b/drivers/net/ethernet/nxp/Kconfig
index 261f107e2be0..418afb84c84b 100644
--- a/drivers/net/ethernet/nxp/Kconfig
+++ b/drivers/net/ethernet/nxp/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config LPC_ENET
         tristate "NXP ethernet MAC on LPC devices"
-        depends on ARCH_LPC32XX
+        depends on ARCH_LPC32XX || COMPILE_TEST
         select PHYLIB
         help
 	  Say Y or M here if you want to use the NXP ethernet MAC included on
diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index 96d509c418bf..141571e2ec11 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -14,6 +14,7 @@
 #include <linux/crc32.h>
 #include <linux/etherdevice.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

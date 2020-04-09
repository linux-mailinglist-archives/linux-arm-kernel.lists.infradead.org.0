Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA391A307B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pv11osGa6qx8lI4ZWQbnnMuoA1nJPEYa+jsL9jqRZEc=; b=QJE5A7kZ69cREJ
	+MmicPD+7KdZYP1bkXSXRut1NIp6Qd/Oy2InWynhADlBsMY0+kMKYkp4GivtoFZM4zYiahB28aHa3
	8FAyTG5YFyBVng0XDENAS05L8vtQoHkxFxZaT8gap656AaY40Y1iHZPOa9MdsYh8rnxHN+1eSif6G
	GakEgoO4S6W0P+oaTHEJZshxcudwh5GTcrkbKJqbLZ6BMjpDy63qFO/2nK1P9razKmaPfSMjoWgzj
	ef+0jLzH8d0TFmqC6Iwbeedw0W+9qJUw+MSDbVcs7kY8DGW0cLuyuFi5yL7B60zfhgTMc+EBSJFeH
	794Kgr692949WRRFXk6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRz3-0006pj-27; Thu, 09 Apr 2020 07:52:21 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRyw-0006pN-HY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:52:16 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MmyzH-1iuZbi1qn1-00k3v4; Thu, 09 Apr 2020 09:52:09 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH] soc: imx8: select SOC_BUS
Date: Thu,  9 Apr 2020 09:51:48 +0200
Message-Id: <20200409075208.2824062-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:LkzNn7xFJ+S4BreVJvd8lRBl/nAYYCjKyUmq0d3leAIueaMM0e+
 jnwqUH1rQ2RRvGZrmlAiN75Qu1m8zKFgZungN2D1qOVM2H38c/7hd7Ze8cj48w7/+EydLoQ
 Hni14QO/E93Q+hTDdjTSJER+Q7OLhXBQx2gORuibgd96D1dH/ouWVxelZEPXB+/Wf9zYBOX
 UrOVTaH/ZMm/iJgbYK37g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dCFo8GyL2i4=:cl9ebRjkrEp1wgV+ImJEzY
 pLPgUBL+krmv8nBO2eEtgQxgFLBXH86R1f3n0nuJmCTTb48Hd+ncCCHzoHGCM9HSv1x55oHtx
 sLgMc+C6/YYp9sQwA12ZdD5IwX+sX5ZtIINHG4wp3UMXz2RkPeC7UX+C3asCftg7vjlIDLY2z
 JgzGnZDbB/QjwyWw2eNf/5NsunhREJN4Wy7beiNcTewNqg7yyWlFf4sZ7zVzWBx3Z8bxzs9PQ
 nqwdaxVU/lpDm2DtWMjCXdCwBUx71jmLjfIsdMQ9+3rGJn1q54kl3GcJYK6DLWE/L/MNBXa7u
 r0EH4fcDt9MLlMyDjlD3BQbw5z+8dYIhNt/j6A8v3tD0C7WvU0IfxuWqQozSMgjpMflrAEGb4
 +aA3ZFP0UELKI6uzGXTSVCgxKogoeRu2FEjk8IsR9Tcm7w0RZnbj0/7PraqBuyWPtBkuDBpDJ
 zPjXLi+pLi4bEDJElddMYUGm800kumKT1yHtpplTr0VPzPToU/4pFfNlc0uKMXT2NMXwPsK7y
 2rK8Vy1xJnn9vdhv6HhGcWQKll1hJU33nHwPMh4AETqp0d3b8TwjJwuJUhUseTp+b1Q1eUgmo
 vcfIXsudmEi05a2AeNuyRPOepn9gUmea9OYtxUy76R/c5q0X4XXPZ8v8Hp1JY6cqQzsMC+PhF
 xeVooou0kBw4qbFhW6v+kh0TUF7PJnTTvSTFJtKgZt7GXpk6L/XsoEzWgyevj8xMTF6YufXpR
 57196LJnRXkGKGpikbA+U3XUO/kphRUXVKVC7eKrTlu2nHlPB+WDwhocb3hxUxOphVksTQJlo
 gtMtOfHxof3L1kXi9QyoT/KkJoB/Kun65ow9o6h6QkhlzJ2ERM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_005214_868457_46B14D60 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compile-testing the driver can result in a link failure
when CONFIG_SOC_BUS is disabled:

x86_64-linux-ld: drivers/soc/imx/soc-imx8m.o: in function `imx8_soc_init':
soc-imx8m.c:(.init.text+0x28d): undefined reference to `soc_device_register'

Select it from Kconfig, as we do from the other SoC drivers.

Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 67aa94b2481b..d515d2cc20ed 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -21,6 +21,7 @@ config SOC_IMX8M
 	bool "i.MX8M SoC family support"
 	depends on ARCH_MXC || COMPILE_TEST
 	default ARCH_MXC && ARM64
+	select SOC_BUS
 	help
 	  If you say yes here you get support for the NXP i.MX8M family
 	  support, it will provide the SoC info like SoC family,
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

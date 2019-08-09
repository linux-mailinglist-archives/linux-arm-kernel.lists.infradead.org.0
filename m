Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8363188036
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9+QdGK+eLmlrlIMRO44hdNLyFxDAi61g/G8scSNado=; b=Ul92XP+RiTGgUn
	PPBBITPl7qfAphI02uSvt9bEAERr76wkV+Stg29NHfhx5XjEa8ZnvATpZNtBHwp7Px5Aed0X8fBNI
	ll75nUgnVJqM/SCTq4G5vkcHWKaxH3imIKNNTJtnD+8C/9avagkH7XOd5qRhqeIPiqubytCVplUGh
	MusH0WR80Tfn+NUtZ9BNY8xzFNmKvtaeUrK4zpucG4HOHUYfrunqvsgDMcA/pTA7DJ23y4cLSn3Sa
	j/LUdlXE0lmph5aisgQ+4KdSFlIsOwISkiXCiMxQe+uAIE7BEOQMHwt2Mtm6LHqFraVK+9poFojFP
	thr/QGKGF4JhIGzV3XfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7qz-00056W-5c; Fri, 09 Aug 2019 16:34:57 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7q2-0003t0-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:34:00 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N2Unv-1iJPbx03ep-013rP0; Fri, 09 Aug 2019 18:33:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 6/7] ARM: iop32x: make mach/uncompress.h independent of
 mach/hardware.h
Date: Fri,  9 Aug 2019 18:33:20 +0200
Message-Id: <20190809163334.489360-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:vI8dtEjZnzwjq2sWL8d5fbMPZeZEV7AvW59MnNKT2uhvW6Kjd4+
 QOBkKhwEY9azPiKocWLoN574G7bvFZsJ4nOPkqLfmzxeSVwcFhzfQ0JOtSGKa8iDPx/KThd
 TMGllJRSWZY65qV4DjOqg2L4+9LOEf+gmG01q5n2GW2PEpZW47K4PK4kCQfoxu3mdrKP62T
 Y4DxEjvGN/6JC5oXKg3Jg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:R8VBPo7GS74=:ak4pWH17CjBan7Jv8I0xTE
 PIAFwppEm1A3IRTBsM35Id6qfBh/wGR5EWYKsptcsgDSiEPj8uLo3tvEbQmu4aogQQfanUBRw
 ec6HQjPzNLXdXbJFCNHcdM3WgfIhVxyvnii6xXjPIhhxizJUK1/w6S5lIpgDiSNenX9lTdzx6
 PGGEJF926WXnFBe5J8mV7WM0Qc6x3OwgW1bfkrgTculBAGdAtIdlCotRzOJVZeUiiQSc9Y5mb
 dFVMH57p5cB6JE53vy5YKR23yZCq+lLg04xSTwfXEMId58QYyIsuZR/OBLBcSN2L5SOF/R1cS
 9PEhxBXDgx04Fb42oV8eJAXGKCDlPOKZTqsBGbupDWte4b1+vbbO0DAAHUzmQoZ7QW3E2F5AS
 WdzkRtW0GakUXzPo1hggUyEZMQ9cG445/+0Gxn5ueOXi0NBIgK2qzlCkfgYFzPqjkPkCzJ7Wz
 66EeDd0BvJWrn8SrbzAiiCDJCYuXtgYq3thXXmMF0vyIdwDM5nfAGQwsoWSwHPDwF/D4wqNrt
 lqky1W4IwL7IP7sJQspXT1F0G/YbHd25e7sQ2oaV3+OsVwtiwOBL0pYMl8he8OaZTOBRrzqHt
 LffMwccDCho231N3Tlzr4zve/UkmrsqydZ4w2Vv1KGkxSPUr/cKHapjHKfr+aB+a4pbQnz0C6
 Wh+vO2Ox24XvBnngmzChO+3Xq7I1QG+DTZNt1Y2qmyPoZ80MJRi5nE3OP3EE7i5QKJ53BMwPo
 vVZC+WLPECLeIdpiDVyM1KXUhsMwy37TNHPCbA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093358_426380_AC889215 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Vinod Koul <vkoul@kernel.org>, linux-i2c@vger.kernel.org,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All supported uarts use the same address: IQ80321_UART and IQ31244_UART
are both defined to the default value of 0xfe800000. By using that as
the address unconditionally, all dependencies on other machine headers
can be avoided.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-iop32x/include/mach/uncompress.h | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-iop32x/include/mach/uncompress.h b/arch/arm/mach-iop32x/include/mach/uncompress.h
index ed4ac3e28fa1..c8548875d942 100644
--- a/arch/arm/mach-iop32x/include/mach/uncompress.h
+++ b/arch/arm/mach-iop32x/include/mach/uncompress.h
@@ -6,9 +6,8 @@
 #include <asm/types.h>
 #include <asm/mach-types.h>
 #include <linux/serial_reg.h>
-#include <mach/hardware.h>
 
-volatile u8 *uart_base;
+#define uart_base ((volatile u8 *)0xfe800000)
 
 #define TX_DONE		(UART_LSR_TEMT | UART_LSR_THRE)
 
@@ -23,17 +22,4 @@ static inline void flush(void)
 {
 }
 
-static __inline__ void __arch_decomp_setup(unsigned long arch_id)
-{
-	if (machine_is_iq80321())
-		uart_base = (volatile u8 *)IQ80321_UART;
-	else if (machine_is_iq31244() || machine_is_em7210())
-		uart_base = (volatile u8 *)IQ31244_UART;
-	else
-		uart_base = (volatile u8 *)0xfe800000;
-}
-
-/*
- * nothing to do
- */
-#define arch_decomp_setup()	__arch_decomp_setup(arch_id)
+#define arch_decomp_setup() do { } while (0)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23E4DC958
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0k2c4ZH4NKfjk8CjnE66pFNr1JdnDcZZZr9b/qeRUPo=; b=c5X0i/2GMmPfv8
	fGBidtQc/jorLfYl6BbipcyWyBTew1RJhS+YUyKl+xXpHJ8E7usJSPGnClI8lzMzNULpqSpZvPrSH
	Ng1DU729ihpiNAWWIgbDTtkSZ/81p6g/mukiwNb/VwhBC4io9+dVSRZHlsxNsZQ8SEqyIJf3Q9aD2
	CKoR4lknqy6CTEDEK+MCo9VeSKoLcKVy7/Ao+fI4b0BgBUzrnwmFXEKzh/q+Man1/B3pP47huSph9
	yl6wTDyDpU/o0anHEdV5LpS1nxtsj0nHE3VOUqrjBADfXjxuxaC0qO3GOwq3P70+zkCSmugUk5OeW
	BrmW2KJc7Q4ZmM19AFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUUT-0005RL-UC; Fri, 18 Oct 2019 15:48:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0008DU-Br
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eID8tVaOlY7Aw+kQrSMjoluUZfs5pixBuaXh/6OsTZw=; b=fONhUfPW226IdXygbSGqbWEAeR
 kwbswRYy8ElvPT1Q6cnu5GkbHb9GwIt2M942gpG7Nyh0pqbGjpu5rwha84JKYUZTxBd1d4Xr1tszx
 n8qzL+K5XbbuCJsD2mjgSBGMTvlj4mF3cYNmqI0c2dLieANdBdmO7upY2tuxLqbYDgonydQirc6Pb
 PuShFFkflazZq+Io6FVzSdeYCwM+G1Le3Aa9rUZhX/f8bU5GgKxFjo4Dxh2gJ89qNo90vIymY5BGy
 GZqVqcvpXC7YDbekO5sV4ZqUV3IA1kN2rnivo6LNsH5tlsgw5gYNt/2iUwhcfGGyvOtuY/1G9wdO2
 yVbZ46Sg==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOi-0007Wj-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:39 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1McY4R-1hklXG0AYf-00cyGG; Fri, 18 Oct 2019 17:42:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 33/46] ARM: pxa: pcmcia: move smemc configuration back to arch
Date: Fri, 18 Oct 2019 17:41:48 +0200
Message-Id: <20191018154201.1276638-33-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:DxmH2LbQts0InxyxX242/6orRSxw7B2eJs5alq6ovf8VEIfUb1e
 UZLkuu4zbqGUYzh8bXbjGhPHAuE7IWtUvRkJsrYOTVyLkPFu+sN0iZ2AYJ/Ruy1xBpMoODO
 MBAK6lOCRMRdG9ct64YHJgEe2ug8h0m0Q+xUS7VsuovBC7AW5Y+9RMMeZghwwjY0/Q8oqSj
 /MgezRfvSGUpKTEVFylnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WrnuPQtaRkI=:aNhI30tV/l0Fs9GdIHOfm4
 aPUOAjUVBVlceAwKIXu+nBeC8AIogNOMtkD4dqJrK7mcOXxk3t2B4recC/1NoWOBNPNb6fU7F
 iHMMov6kqXJRMwgk+s5sTJHamgOpl9Slb8AVU8RYDhinl2aJhMnOZB3aj1lEAFyrIUo/kVEql
 3ZxoTy0miU0x7DIzze0QdufvwMjRu8s0eM4lzOUYamFB916hPXszevUVUJi512EoYRtiKBc7z
 y7hq1jDkjNIefOSgqhnYtrdZfPLFC2qibIB1X91n79UhW5ihdqIP0kPZ9qBdCDyJSn7b/a5Qy
 hDjels/uHN9r9hyyfCNgGQHf8+pILYGL/uPTzjqQgHPg4RHJHGVe3CG3OfMdqMLqk2UNfgRCs
 3WN7p6O2rmSTRRbmBsxv9075NFdAJ1RjaUZZzCfTW8GeZCB7RBQ1WLeBC882w30bLnw1D/Z1x
 Xt2vt60+QICZZQPcu+InljDyGfql8R5CSr3yPunmfi6qMGuFsYDTuzEpX/Q33VyOArXpRyqZE
 YDCwHsak6Mc0u0rrxrkrzqFSWFGgnnmT9NhJcHcxaZqI/R8WcTwwhnN2FvyA3vXLRO/8DUJsq
 h4OPpRqdYQ1J1JzM/CvlQBAOnIJCBXDDYaz/QjBZ8JlZ9BRMYQjOQ69Id4Ur4qyuD+JyyPnlM
 KyxNE/Yqa2rvR0E9kG+Nzs/prbwLE7EtJmUve3hzZbb372ZlL9mTgTbLNiDQr6AzkSh2mIxC/
 cfbaVecWYcueyFCyx51RICqmkShMQ+PcXca+l3NPgqAuzPn3Lhu9I8LrzmeqEDqlxEAG11q4L
 AUpM+3gq+PV6jTOYiFZiPfikTyM2nFfmMuQqZn4kDmh5Us4pjCOzVMg9BzlsjdTPBZ9/crWaz
 dy7PM9mSbfkIJZpPSM8Q==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than poking at the smemc registers directly from the
pcmcia/pxa2xx_base driver, move those bits into machine file
to have a cleaner interface.

Cc: Dominik Brodowski <linux@dominikbrodowski.net>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/generic.c   | 29 ++++++++++++++++++++++
 drivers/pcmcia/pxa2xx_base.c  | 46 ++++++++++++-----------------------
 include/linux/soc/pxa/smemc.h | 10 ++++++++
 3 files changed, 55 insertions(+), 30 deletions(-)
 create mode 100644 include/linux/soc/pxa/smemc.h

diff --git a/arch/arm/mach-pxa/generic.c b/arch/arm/mach-pxa/generic.c
index f9083c4f0aea..fe1d55d328e5 100644
--- a/arch/arm/mach-pxa/generic.c
+++ b/arch/arm/mach-pxa/generic.c
@@ -70,6 +70,35 @@ unsigned int get_clk_frequency_khz(int info)
 }
 EXPORT_SYMBOL(get_clk_frequency_khz);
 
+void pxa_smemc_set_pcmcia_timing(int sock, u32 mcmem, u32 mcatt, u32 mcio)
+{
+	__raw_writel(mcmem, MCMEM(sock));
+	__raw_writel(mcatt, MCATT(sock));
+	__raw_writel(mcio, MCIO(sock));
+}
+EXPORT_SYMBOL_GPL(pxa_smemc_set_pcmcia_timing);
+
+void pxa_smemc_set_pcmcia_socket(int nr)
+{
+	switch (nr) {
+	case 0:
+		__raw_writel(0, MECR);
+		break;
+	case 1:
+		/*
+		 * We have at least one socket, so set MECR:CIT
+		 * (Card Is There)
+		 */
+		__raw_writel(MECR_CIT, MECR);
+		break;
+	case 2:
+		/* Set CIT and MECR:NOS (Number Of Sockets) */
+		__raw_writel(MECR_CIT | MECR_NOS, MECR);
+		break;
+	}
+}
+EXPORT_SYMBOL_GPL(pxa_smemc_set_pcmcia_socket);
+
 /*
  * Intel PXA2xx internal register mapping.
  *
diff --git a/drivers/pcmcia/pxa2xx_base.c b/drivers/pcmcia/pxa2xx_base.c
index 7cd1375d6087..13880137f175 100644
--- a/drivers/pcmcia/pxa2xx_base.c
+++ b/drivers/pcmcia/pxa2xx_base.c
@@ -24,11 +24,10 @@
 #include <linux/spinlock.h>
 #include <linux/platform_device.h>
 #include <linux/soc/pxa/cpu.h>
+#include <linux/soc/pxa/smemc.h>
 
-#include <mach/smemc.h>
 #include <asm/io.h>
 #include <asm/irq.h>
-#include <mach/pxa2xx-regs.h>
 #include <asm/mach-types.h>
 
 #include <pcmcia/ss.h>
@@ -113,7 +112,7 @@ static inline u_int pxa2xx_pcmcia_cmd_time(u_int mem_clk_10khz,
 	return (300000 * (pcmcia_mcxx_asst + 1) / mem_clk_10khz);
 }
 
-static int pxa2xx_pcmcia_set_mcmem( int sock, int speed, int clock )
+static uint32_t pxa2xx_pcmcia_mcmem(int sock, int speed, int clock)
 {
 	uint32_t val;
 
@@ -124,12 +123,10 @@ static int pxa2xx_pcmcia_set_mcmem( int sock, int speed, int clock )
 		| ((pxa2xx_mcxx_hold(speed, clock)
 		& MCXX_HOLD_MASK) << MCXX_HOLD_SHIFT);
 
-	__raw_writel(val, MCMEM(sock));
-
-	return 0;
+	return val;
 }
 
-static int pxa2xx_pcmcia_set_mcio( int sock, int speed, int clock )
+static int pxa2xx_pcmcia_mcio(int sock, int speed, int clock)
 {
 	uint32_t val;
 
@@ -140,12 +137,11 @@ static int pxa2xx_pcmcia_set_mcio( int sock, int speed, int clock )
 		| ((pxa2xx_mcxx_hold(speed, clock)
 		& MCXX_HOLD_MASK) << MCXX_HOLD_SHIFT);
 
-	__raw_writel(val, MCIO(sock));
 
-	return 0;
+	return val;
 }
 
-static int pxa2xx_pcmcia_set_mcatt( int sock, int speed, int clock )
+static int pxa2xx_pcmcia_mcatt(int sock, int speed, int clock)
 {
 	uint32_t val;
 
@@ -156,31 +152,26 @@ static int pxa2xx_pcmcia_set_mcatt( int sock, int speed, int clock )
 		| ((pxa2xx_mcxx_hold(speed, clock)
 		& MCXX_HOLD_MASK) << MCXX_HOLD_SHIFT);
 
-	__raw_writel(val, MCATT(sock));
 
-	return 0;
+	return val;
 }
 
-static int pxa2xx_pcmcia_set_mcxx(struct soc_pcmcia_socket *skt, unsigned int clk)
+static int pxa2xx_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
 {
+	unsigned long clk = clk_get_rate(skt->clk) / 1000;
 	struct soc_pcmcia_timing timing;
 	int sock = skt->nr;
 
 	soc_common_pcmcia_get_timing(skt, &timing);
 
-	pxa2xx_pcmcia_set_mcmem(sock, timing.mem, clk);
-	pxa2xx_pcmcia_set_mcatt(sock, timing.attr, clk);
-	pxa2xx_pcmcia_set_mcio(sock, timing.io, clk);
+	pxa_smemc_set_pcmcia_timing(sock,
+		pxa2xx_pcmcia_mcmem(sock, timing.mem, clk),
+		pxa2xx_pcmcia_mcatt(sock, timing.attr, clk),
+		pxa2xx_pcmcia_mcio(sock, timing.io, clk));
 
 	return 0;
 }
 
-static int pxa2xx_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
-{
-	unsigned long clk = clk_get_rate(skt->clk);
-	return pxa2xx_pcmcia_set_mcxx(skt, clk / 10000);
-}
-
 #ifdef CONFIG_CPU_FREQ
 
 static int
@@ -215,18 +206,13 @@ pxa2xx_pcmcia_frequency_change(struct soc_pcmcia_socket *skt,
 
 void pxa2xx_configure_sockets(struct device *dev, struct pcmcia_low_level *ops)
 {
-	/*
-	 * We have at least one socket, so set MECR:CIT
-	 * (Card Is There)
-	 */
-	uint32_t mecr = MECR_CIT;
+	int nr = 1;
 
-	/* Set MECR:NOS (Number Of Sockets) */
 	if ((ops->first + ops->nr) > 1 ||
 	    machine_is_viper() || machine_is_arcom_zeus())
-		mecr |= MECR_NOS;
+		nr = 2;
 
-	__raw_writel(mecr, MECR);
+	pxa_smemc_set_pcmcia_socket(nr);
 }
 EXPORT_SYMBOL(pxa2xx_configure_sockets);
 
diff --git a/include/linux/soc/pxa/smemc.h b/include/linux/soc/pxa/smemc.h
new file mode 100644
index 000000000000..cbf1a2d8af29
--- /dev/null
+++ b/include/linux/soc/pxa/smemc.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PXA_REGS_H
+#define __PXA_REGS_H
+
+#include <linux/types.h>
+
+void pxa_smemc_set_pcmcia_timing(int sock, u32 mcmem, u32 mcatt, u32 mcio);
+void pxa_smemc_set_pcmcia_socket(int nr);
+
+#endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

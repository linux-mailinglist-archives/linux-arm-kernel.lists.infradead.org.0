Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317AFB7CA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JUtYuMMiUu+rrvuYwA5R+TDXLuM6waZWYbKbEYvPphA=; b=ikp84E2DDOTthU
	qgpRcUF/PrzcMjH0G5zCjaNPwrplNwlKFDP1T7irUG1xLIP6YJMPWXGPJUplzvf1r38qIt6IT8/dW
	irkPzrT1DyVmqmByRt+IN3ZkhO6AjupMSiIrV8QSLdeHM6YlqSLo9R4sU7UGkSYa82zsnbwBaZzpG
	+3FG4QerghcP16CgKaUO+84JlAcZ7InBazYIFOw9ckR92RK8rEiETC6YZqV+gbJkfTzDSU7sz0QgV
	YeOrOFZkv924i2EL8Aw17XW5PSm6qkTXTizpv7MbZEPtEKkqCU8L04LEFG+EgeIoA62ePXaqO6zXf
	+WsYU76/Iluk8PK3/BgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxPO-0001TF-4R; Thu, 19 Sep 2019 14:27:46 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxOj-00010E-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:27:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MZSym-1igOhi1TOw-00WWXn; Thu, 19 Sep 2019 16:26:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Joel Stanley <joel@jms.id.au>
Subject: [PATCH] ARM: aspeed: ast2500 is ARMv6K
Date: Thu, 19 Sep 2019 16:26:38 +0200
Message-Id: <20190919142654.1578823-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:V9tdOUDtuGUe068WcZJL2K9tTtIESlF6Je8IaB76YM9nrgqfI4E
 b9qk+sCm+bba7I2po2I9hVnAaQqWXex61vapONgnrXW5FHiohTQgglQZlibOGxhEKD9qzot
 Yw4hDZaMBz+tIKqYvR3HhRYIKZl74HVupJ+bkdOqekLBPujC2cL0vvyRSjIwpN8aMcyTxXV
 Ql3aJeSt7/5UyABhcXDmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:397q3beN9XA=:4VKlSYyebHNm7oH5pfo2GW
 RK90uXC2JU16rym8ptVvfou00er5+P/BkiNtNHvcAYONDh2EhZLX2FoXiTVkKb2JkFYcFIiHh
 qUednjVO7y4qOgqHtoNal4smFk+IQ4eRbbMvjdfFnIx2XDf8FMd9gMv+IW3in/gKy2FBPgSwl
 7DfSofzWKNr+PgszVAQSFmfpBKsk3JM74ERpM4oUp1Yqjy3IIfPub19sKd6BHthw32kGcAvoR
 RJIzUcvZllbm1UMs2Qh6KhBqME/rC95n0XWbdXhLuWiknut/zYwEoTk5BKBFKGOL0J7pZUZu0
 SfUYCi2fdpgx6kzGs1gjR5vICj92GNHBOtKblVC/rISG8FNXIBZp0Lw0ouowSt7EQYO6SYQwQ
 zUhBeEdELuALvT6msAhbPz/5OFNnWB+M77T/ehGOLdcyi8Ao1dm4iZmWuicdxA7iG1oxku6cl
 v7smnRnMLdz375J8g7T1XwAWpp59yqBZqyHfzr8axFlFCzwk02mtetWeTcMk+Y5Kd5YtSakRX
 li/TFBygn4562hfX8BY8CPuluHBM+hQXsTZ12EmRk5CkFSPdcPwOzhAVuQeFwLDtkQQFTFp2M
 6iuJ065zW7oaH73muIxLm4bmGShC0YS6THGEfGVM6L78RIaVanRycH9JpZpp5I7JTC3jhKl+T
 wxzqW5JAJBrARDosiySjjC8Dw+8XlAOFVg93Mt0WVO0/CH0yrJo+zDblOIvDASFTB/V7r6Uke
 ge6KLztexZEKuOf2k5NXMtvfI1dp2CbfxJ1mjBVtEim7lZrYlhkmQFt0K8ahav+d1Z7omowtn
 hobE7eDMcU4uWbAI8qdPfguXRY5n9rxkmoYuXNk94TYhOWJ6jTQCAlH24gnoCoA4UvkqyTHay
 WVQim93EydDcj6UgeIeQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072705_884150_4539DD03 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux supports both the original ARMv6 level (early ARM1136) and ARMv6K
(later ARM1136, ARM1176 and ARM11mpcore).

ast2500 falls into the second categoy, being based on arm1176jzf-s.
This is enabled by default when using ARCH_MULTI_V6, so we should
not 'select CPU_V6'.

Removing this will lead to more efficient use of atomic instructions.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-aspeed/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
index a293137f5814..163931a03136 100644
--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -26,7 +26,6 @@ config MACH_ASPEED_G4
 config MACH_ASPEED_G5
 	bool "Aspeed SoC 5th Generation"
 	depends on ARCH_MULTI_V6
-	select CPU_V6
 	select PINCTRL_ASPEED_G5 if !CC_IS_CLANG
 	select FTTMR010_TIMER
 	help
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

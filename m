Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9706348360
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Pvpned9mY/xY9R19vdhFhgVao6GirS2zyY25ixSylI=; b=trODes0P2CJJMF
	AbwPQqRrSwOYdC9uqjg+j18IkXa9w5DRk8dmS5QET8Zhl4hcQSnO8n8Tncbur9rJeyOIfRaNd4Qys
	5wEqusTp5+zAcyLGol0CcHFoEIJdVOM1YtjMDOVQV/Qj4t66EsFEoSKmpsegtO7j2ADp2VfiPoxcI
	WkgCFR7hRXtpDp2VwH9JFjfCpPFyAq+EFdwM2WSUK0TWGye79Dqq8TeG8Hpr97oS/ntCiFTs160b9
	XNiCeOynvY3e/nln43hM02AA4Ot9grAL60U8X3wR0UhjVw2yMFh2AHrfbwEwV87BSYXwttVE3HhsJ
	/wooErWHeMMnDgcd/MJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrHC-0002Df-65; Mon, 17 Jun 2019 13:02:22 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrGr-00025j-HO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:02:03 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MT9v5-1i3cOz1DcF-00UeXy; Mon, 17 Jun 2019 15:01:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] soc: ti: fix irq-ti-sci link error
Date: Mon, 17 Jun 2019 15:01:05 +0200
Message-Id: <20190617130149.1782930-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:FRdEe6tjuV8KyxJSyrTdyhJaUWE5AS9D7M4jEyC+sBbLA/FibZc
 DYw+IyzPdm/Jp25ioQ6PWJYlw51JAUxTu7+Hfs80p/pul4o4y+21YGFbHBdYwE8p5ap0von
 g++GFuW5ry3GclAiTwmHWDNf+QQxkiLPWOp5mhatqbbgseGiluC8lTi2pLMXg69dVNYzfLv
 VlhXhp1PNhNWvhlccS/xg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zd06hkM9Szw=:mMYc/1oT1VBq+1iFcHYDsw
 +dPi8sODpQ5PmH/geIGQNy+AiBUO5PB0DyfiOtJWGL4eksx8/x9XC3W9EWffYtiEFSAIhwpma
 K22sxiWrsBUKBRjuNuYMF5WkHymqHAaQg5r2ywmVlX96+8I6CL9gGjZ80wHzmBOWwJAmYoxgB
 RK5kA9QjgoKgsosNxy79ufYjSqtdRPxK9uU71EpIC6ofYCxJZdxNHAsNRCZEvSKEtq9CaHoah
 wLwmSWeNtfvnk3/Esi7H4Wy5hnRmDzQZqAazjWU2Sy6oWQDNvRrGlCaRhAYrSP1uZeOm8J4J2
 9jp0JjgaUKqajvKGI14a4Ygt4ZpyJGmw0AY7fbVpGlkve4vufJsNUhZPdpLAfBdsgW9on7GEj
 q6dk0icEfK6IlX8XgEgPVyuNTefCgVlSW87o+KTS1McMUSKgxZ0aQtm5DEp/J64VcFxjN9iqD
 8qAdv809c2TlJeP4ZwBw43I1w6vsJGFz74W43TVdOKP6WSac+0SYL1+YlByW3xzYMUKiHSvys
 kLmRn8U79CTj3GceSuGouRqIh2BuXx9ZtJCkXDcYj90HwHcYcuL2TbN552XEJfutO3brF0nI+
 QHLXDVFLNoX8fslO8ULdjA7gvinfTrDNZfLHaVnZ6SGsIl1iJBunfubMwER5BNMZ2ooemo3/G
 HSTCPBHRmEsKaswQRPNzLyg1U0NXBLBitKuDhgxs7kUS3wFu1EICV9SwQzhGm4+FrSKa4Eime
 jhYi5pax9Gkdd/2fLOmYX2vcXLxm/TaQ5IeYFQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060201_911111_F2CA1E4F 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Tony Lindgren <tony@atomide.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The irqchip driver depends on the SoC specific driver, but we want
to be able to compile-test it elsewhere:

WARNING: unmet direct dependencies detected for TI_SCI_INTA_MSI_DOMAIN
  Depends on [n]: SOC_TI [=n]
  Selected by [y]:
  - TI_SCI_INTA_IRQCHIP [=y] && TI_SCI_PROTOCOL [=y]

drivers/irqchip/irq-ti-sci-inta.o: In function `ti_sci_inta_irq_domain_probe':
irq-ti-sci-inta.c:(.text+0x204): undefined reference to `ti_sci_inta_msi_create_irq_domain'

Rearrange the Kconfig and Makefile so we build the soc driver whenever
its users are there, regardless of the SOC_TI option.

Fixes: 49b323157bf1 ("soc: ti: Add MSI domain bus support for Interrupt Aggregator")
Fixes: f011df6179bd ("irqchip/ti-sci-inta: Add msi domain support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/Makefile   | 2 +-
 drivers/soc/ti/Kconfig | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 524ecdc2a9bb..2ec355003524 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -22,7 +22,7 @@ obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
 obj-y				+= sunxi/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
-obj-$(CONFIG_SOC_TI)		+= ti/
+obj-y				+= ti/
 obj-$(CONFIG_ARCH_U8500)	+= ux500/
 obj-$(CONFIG_PLAT_VERSATILE)	+= versatile/
 obj-y				+= xilinx/
diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
index ea0859f7b185..d7d50d48d05d 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/soc/ti/Kconfig
@@ -75,10 +75,10 @@ config TI_SCI_PM_DOMAINS
 	  called ti_sci_pm_domains. Note this is needed early in boot before
 	  rootfs may be available.
 
+endif # SOC_TI
+
 config TI_SCI_INTA_MSI_DOMAIN
 	bool
 	select GENERIC_MSI_IRQ_DOMAIN
 	help
 	  Driver to enable Interrupt Aggregator specific MSI Domain.
-
-endif # SOC_TI
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

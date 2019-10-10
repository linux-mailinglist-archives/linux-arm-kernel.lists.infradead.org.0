Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60079D3232
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmFChg0HAlKrzpPlHwMdtigMKqwzFVb/WAR9m3GCxEM=; b=pWAiZMcBt+R5wv
	IRYb+mArxtj1xAJ57bTRNm5d9p9bx6kXqx1HHUuTgH4iFDjrTGnT3eWyJSBF1Q/f3EL+K3yOwL6jO
	s4S2Vcz0mFvebYFOSkmV/QE5mb16olC8Y91f+kS1f6yTz9jvEDvWxXijsLxmRxBxLqpCsDoXgMBpe
	OgHQtDO5WsT5vLR7qhlp9uc9WnIVdyB/YaSQ1S/UVmqaJf/2cyvQ6krdTPHo+71p0IRPAw1gSAZR1
	40wSeta+TUcGFIB3PXcJ5z1rSgK4VaGHoj+xMFOvkZOijvyXOZORg6ZueQEA6stNRS/6blM58FbTV
	JOg/wV3PczfQ16PTV8ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfEf-0000c3-Lj; Thu, 10 Oct 2019 20:40:33 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfEX-0000bd-PR
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:40:27 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M1JJC-1iFv8y1hxS-002m0W; Thu, 10 Oct 2019 22:40:18 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 14/36] ARM: s3c: move irqchip driver back into platform
Date: Thu, 10 Oct 2019 22:29:58 +0200
Message-Id: <20191010203043.1241612-14-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:tpUU70kK2mbi+5FuJ7O/HDHJNvQ8Wxs2kgX7rE8BR+L60lBoHF3
 wudUVfEaPZ9r7AlBGTwQ0IxuvapY4pSNPE0QBHfF+o50E83eu4tVD1qYwE6XUbr46E4S4CB
 PLET0g3wo0KgjbRE2wat355k7aL1MgVVW0+pgArdBYfiF+X0dI8YgaMNmtJufHX+aYCzOCC
 HLscEytGGJ2sXXgaVEk4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q6XMjTeUzfA=:kDFlER7V334bXhY74s+aIR
 u3ogHMtNrh4V/IPMBwdJUxAYexjVtwtYWli4YpVUT7eNc94Edi1n6HlrJIT3Uks3xzHL/Aiio
 sD8r5yaB2audjRtGokFlBjtEuOm7dgB557Hm/0scEcKcwYGcwCiavuJnuDBDQzoZdIse5+HNM
 wUZdOy6PjZNPA9SktuBKQElsVX3i8z+G5zu60ry63tPG2frH28OPRI68mi7dXmF0kS73Bs/5V
 WG9oUYkTlVkbTjccpzyGqxfx/VNO64NkG/byVmT+q65qidyLadkd6N/Jxk3onG5nYu7RwYW5R
 0wh+OpcUzPA9UcyHIyAgtQko0pOgGhh0HoK7cN/hshmtbympJdYcnThHxrLRCkGYRVMCvaCSU
 TRjDydkbrRcIfpLkmHkzsnp2/xB0Y0OzqPaYELfgNmeDK2ffk+/fTLv/TTjPxjrfi+7qGtV85
 5tZyZP2zRKeXl2v2WSuFI1MEteHrEAMvcbZxUnczyfgifZAmGCs0lJInkdsUHUFgO4gNihHFw
 LrCLW2UIBcGQilEpQwTdEVuIs9l2G4qMXEWEU4MO3/eKTz2fJ9VDyPTaD+Co0sajf0G79Nhna
 gaY2z0GpLjtT3mBAc5ZoNW2+gTqZyq3f6yxcHVV36U3mrTpVuDwMfO4PNLdzaf+zbyRL+UV3j
 GXpPl0v4G4zeFjWXEz3Tk74cp2kX54MIv8VU5t1Ya9geXNK21FwDWVFVPMYm6ROCBCP9id4fv
 Kfi/qwP3bzpB1PPfNq4j22rsXokzBVv5L/hJ4+RDaaJNYMPkgF9R44FmHBoP5iAb5i8g58ysk
 2mU0CR+ieJGPiyJVIxXINQfBSh6Ta/XGRX+d92EOigqJWVxAgawm0txOak/khOmw1qmLpnWNm
 1G2OwpElH6YpJGzp7AAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134026_122212_CB8B9B9F 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was a good idea to move it out at first, but the irqchip code
is still tightly connected to the s3c24xx platform code and uses
multiple internal header files, so just move it back for the
time being to avoid those dependencies.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/Makefile                           | 1 +
 {drivers/irqchip => arch/arm/mach-s3c24xx}/irq-s3c24xx.c | 0
 drivers/irqchip/Makefile                                 | 1 -
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename {drivers/irqchip => arch/arm/mach-s3c24xx}/irq-s3c24xx.c (100%)

diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-s3c24xx/Makefile
index 6692f2de71b2..8c31f84f8c97 100644
--- a/arch/arm/mach-s3c24xx/Makefile
+++ b/arch/arm/mach-s3c24xx/Makefile
@@ -8,6 +8,7 @@
 # core
 
 obj-y				+= common.o
+obj-y				+= irq-s3c24xx.o
 
 obj-$(CONFIG_CPU_S3C2410)	+= s3c2410.o
 obj-$(CONFIG_S3C2410_PLL)	+= pll-s3c2410.o
diff --git a/drivers/irqchip/irq-s3c24xx.c b/arch/arm/mach-s3c24xx/irq-s3c24xx.c
similarity index 100%
rename from drivers/irqchip/irq-s3c24xx.c
rename to arch/arm/mach-s3c24xx/irq-s3c24xx.c
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index cc7c43932f16..92864e496251 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -16,7 +16,6 @@ obj-$(CONFIG_ARCH_LPC32XX)		+= irq-lpc32xx.o
 obj-$(CONFIG_ARCH_MMP)			+= irq-mmp.o
 obj-$(CONFIG_IRQ_MXS)			+= irq-mxs.o
 obj-$(CONFIG_ARCH_TEGRA)		+= irq-tegra.o
-obj-$(CONFIG_ARCH_S3C24XX)		+= irq-s3c24xx.o
 obj-$(CONFIG_DW_APB_ICTL)		+= irq-dw-apb-ictl.o
 obj-$(CONFIG_CLPS711X_IRQCHIP)		+= irq-clps711x.o
 obj-$(CONFIG_OMPIC)			+= irq-ompic.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

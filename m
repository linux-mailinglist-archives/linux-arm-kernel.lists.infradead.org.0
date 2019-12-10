Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF211910E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0IwrkjvcQvxskXKfDc7WUbR0VlovZRE04euJLn0d7c=; b=l9SHqLjAPcalE5
	YI6jAGoHPvgObAKmCsPwmYGZhg2tzVRE9TqNoqBdPdBgN6ad0GiVOMp/xgHLY8MCu6lyAkXGcHlvM
	ydeELrhWtvgs+K2KZxmAridYPVvLcQa5Ez+cxhhStuK/XNhnTLifEkYNZ21X4sNnlxIJsoFWkLB5L
	CSDr6YoOmsK45ciJ39bgwFpKp0Bcf1O95GM2d+KK9HuFr2HdMsLLkQ/zeHuK7XwjVwXjeWVafEo4I
	bGAqMwZxQVDYZEQNRXC33HMWhC9opjLacIynSgOjjT5pnd6urgSK4tba2RQ/B7dmHnezn5ieW+UCQ
	f5XaesOxuZvoQEmetSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielZA-0006F9-K1; Tue, 10 Dec 2019 19:53:04 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielZ1-0006E9-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:52:57 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MTikV-1iAh0D2xMz-00U0Gz; Tue, 10 Dec 2019 20:52:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Sekhar Nori <nsekhar@ti.com>
Subject: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
Date: Tue, 10 Dec 2019 20:51:44 +0100
Message-Id: <20191210195202.622734-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:yzlNRh3NNg4yi3/+SOu84vzqxuE3ALqmc8SzWN8n/eF/oFv9jH3
 pXUf0p+Robr0Mvi0Z5VXk60Q11HWX/ycX9tpw5EN7RlgBnPljnqSjSd+u2UdlVBpdR1xPG3
 dsLC+Dw5cG2sUwDhXndzdJRu2JJhpkp2uOJxSdmuxVZZFUoKZGazSdi525M5KidPgSPCFvi
 QIV4ktU1sNBtL7IVARytA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nkkoiZh+DM8=:HiMiLl6p7f68ae705iW+WW
 /+K5vhIuXifxSPnLe8u2pTUoZL61HepdIzROtYD+VGqOK16vjoxCRfLOyjD8/UWskFA6N4DDC
 cBTKWyP0TLZoZohKUcjDF1uj07cGjE88fDdmdA9G8N5Vfg5iQUU2OcDbTeZRmZ4cj6Q2kXRVu
 CG91KwO/mNFaIZrcFGhI+MsL8lrciilwEzX/ayTAf9jx3aR8QO0CgSnL4OhygxjN6ZXIXvIhv
 ZZ5gfXPk14E3wZQ5iQ/Lw+ocrbT3WaUwT2uX5QrgyNLk5bbacd89kD0ap6l/nW956g7lmMbx0
 OmYZWnDp/f3aKJzs8AHAK46+0v6KqR8rxScuD2y/yACg71oLqzKH8JYJZmIQZuBzvmFuadkW6
 aivmTH6ZYsOxGmjGDcgrKDQJUnAbxsTz1vcpiPpVHQVm89R4FFXqiQ1G7FBnrEDSKTeps3dgN
 Bnlhf4DXGlLI3/VNjHgmOA2+WrQ5vUZdctWq45f1sguM1SUAEIXWBK2RM6MNmJziV6VFVsVFe
 +CctwO6vX8nzbpbMtFP4/MnUs8Vz5oB8qeJqpJ5StboXEdRJEO7h1+JQjGx3HImT6RT+7TUOF
 bxG/5/2mmE0sPCiE1UP7rC6ZJT2rDjXHBKmlrYISXKFneXcuwzKbU+RC5Y6PyZNVjaBh7W0SN
 xQRKPNsEnGnhZwOx0SdF0v7d/pmr848lP1StNa+YAc3ycQtWPdmY5b/Kxi/kIqMFR6OuhEbRn
 J4wqUtJOz9KKy5YcL57Z+d/WTlubpqhCfHNXt4yiyX2eqBFNX8L2xJZkWhYD+lIZwU8B5iQ6v
 5HsJ3qdXA5htkt8CD1+rh02KI9u30r7CXPQMXFCHLL4KaKl3/zQIJvJ7NLrxfhyEF0FYbnQJw
 q+ACtPYVeVTWNIx4eAdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_115256_148378_4E549E08 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Selecting RESET_CONTROLLER is actually required, otherwise we
can get a link failure in the clock driver:

drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_register'
drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
psc-da850.c:(.text+0x24): undefined reference to `reset_controller_add_lookup'

Fixes: f962396ce292 ("ARM: davinci: support multiplatform build for ARM v5")
Cc: <stable@vger.kernel.org> # v5.4
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-davinci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index dd427bd2768c..02b180ad7245 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -9,6 +9,7 @@ menuconfig ARCH_DAVINCI
 	select PM_GENERIC_DOMAINS if PM
 	select PM_GENERIC_DOMAINS_OF if PM && OF
 	select REGMAP_MMIO
+	select RESET_CONTROLLER
 	select HAVE_IDE
 	select PINCTRL_SINGLE
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

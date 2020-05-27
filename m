Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4011E43F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tqDOdaqjB5xyKUdu5Ib6yYauSFqDhxG6mYheRV2utiM=; b=gG1LZQBt0N+VFk
	WxFureNq0tURcRHzi8eShWDAYOKditR/3pbJGU0atlbTiYgc5ir3mAQnGBk8Ko6/BymExcZUw/xr8
	WHSAZHU8wjI/Ze61SczzpGEfAE5b+/BejMTup8RE1gzC0Ra63LROEl5nAre7KUad1aogD/oY+0gCS
	7gX3OYxx1C1BQmIP6xRQivXGaG/sRwvzuu+juxw30hFxM8FzTRUT0x0WjI9fHWSz6q/uoaNCmC6zE
	4yEvStAQGl5ClakWRghiYe/0IN2eXUrUm5azWQybVx4S4DD0gXOUmbgGuqWgolAPr5llF+yn951h6
	40uYQD38ABqCTShQM7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwGI-0001ge-Hk; Wed, 27 May 2020 13:38:26 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwFp-0001SD-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:37:59 +0000
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MA7b8-1jjwmq2jEY-00BbQ7; Wed, 27 May 2020 15:37:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sekhar Nori <nsekhar@ti.com>,
	Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: [PATCH] ARM: davinci: fix build failure without I2C
Date: Wed, 27 May 2020 15:37:34 +0200
Message-Id: <20200527133746.643895-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:SLs7EPo0CHZ35dzILzlg3ynC9V36VweHDMcvML7eK6dlMa+8x+D
 78lfpGqShx4bwcPgQzRY4BRaUxMgsnkzdIhbmn/fDMo1RTidXOUkCG14pmNmDaEe4fIBpGJ
 0GJ8YUM4ZQRm2syGd9w5JZ1pq5HZvYj90TMEZZ7NMvp7up0nALLBO8aEaW373HbK2adJgaD
 VwY7gw3Ujyn51ZWneRDLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LSqZnahNGa0=:dOXn6UfLrNQ1/OX9KcCM6R
 mLYgB6k3/DBOAoJ3/kb8sNeadHjCWkSphjfPEc/gYpNVF+ynX6vlQnettRFJURxSAbUfr2XKB
 42PyLO8PKojzEJdopGAq0Yk7v2kvjgX8FkOrBaWqQVkmiU4/GWh83b4G7vzjK/EG5anKT9Fu6
 O0CxiOEDnlkVDkvzS15SyEiVFO72qL8AtcmWT6m9vX6mn4Rms2DQQPGGgDU7GWQLDktr5CpM3
 gyNqLA/a0dJSxDMAk0NVEnudS+4CFof4WpvYl9Ld2zRnvWXLON9hkuqbaBpj8C8lBijtdzmgx
 Q10B94mHS2p3lvFNOWDMU65j+HQGo1uaXjAH3szxrRjMao/doegjLsrlFT7KnZdYRFmK86FZr
 yrt+Ljo2q1fO6spmd3yfN29wUz/IFQSY80oRRay6dv6KUyrgqrpvIyID39Tn47Gr9A1a+NpQw
 wDuNAN2muxnSRNp3xHEW0UHCHuGzXMwZqV2o9EUEpL2HflLwo1M8P2klrFEVpm5ff8fFJvl7l
 OKUh174Hcw7ldzB05LsYouOvCBwKQlJk+IqDUh1xQEiahBXboMJTmXo87F8VgHPp+Yv/rJx2n
 4AWvG79F9iPUFFcSVToqMOxlXoW/dtapa7H0c7Q6VLQUZtnSNvoRixzJ8VxeOelQ++IsO1lgl
 Sf14Ruj8XNvKlnNkoE+KJYzDl/UnidsG0EzLLIdABfWYin7dSfNvySogAB+w/ax1ay9x0GDBm
 Tax/9VwUkzdRfdN7R9rIvaPiiQFRFGom/u5coB65uGc8F9aPRqJ8TrN+EAvewk9nFubSfq/xf
 vwI/VuvgdkFB8GMSigXXOE0D3DDD5yVd+1YtEpsDrFsiY5lbeY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063757_930196_E6463B9E 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 soc@kernel.org, Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The two supplies are referenced outside of #ifdef CONFIG_I2C but
defined inside, which breaks the build if that is not built-in:

mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifier 'fixed_supplies_1_8v'
                                     ARRAY_SIZE(fixed_supplies_1_8v), 1800000);
                                                ^
mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifier 'fixed_supplies_1_8v'
mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifier 'fixed_supplies_1_8v'
mach-davinci/board-dm644x-evm.c:860:49: error: use of undeclared identifier 'fixed_supplies_1_8v'
        regulator_register_always_on(0, "fixed-dummy", fixed_supplies_1_8v,

I don't know if the regulators are used anywhere without I2C, but
always registering them seems to be the safe choice here.

On a related note, it might be best to also deal with CONFIG_I2C=m
across the file, unless this is going to be moved to DT and removed
really soon anyway.

Fixes: 5e06d19694a4 ("ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-davinci/board-dm644x-evm.c | 26 ++++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 3461d12bbfc0..a5d3708fedf6 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -655,19 +655,6 @@ static struct i2c_board_info __initdata i2c_info[] =  {
 	},
 };
 
-/* Fixed regulator support */
-static struct regulator_consumer_supply fixed_supplies_3_3v[] = {
-	/* Baseboard 3.3V: 5V -> TPS54310PWP -> 3.3V */
-	REGULATOR_SUPPLY("AVDD", "1-001b"),
-	REGULATOR_SUPPLY("DRVDD", "1-001b"),
-};
-
-static struct regulator_consumer_supply fixed_supplies_1_8v[] = {
-	/* Baseboard 1.8V: 5V -> TPS54310PWP -> 1.8V */
-	REGULATOR_SUPPLY("IOVDD", "1-001b"),
-	REGULATOR_SUPPLY("DVDD", "1-001b"),
-};
-
 #define DM644X_I2C_SDA_PIN	GPIO_TO_PIN(2, 12)
 #define DM644X_I2C_SCL_PIN	GPIO_TO_PIN(2, 11)
 
@@ -700,6 +687,19 @@ static void __init evm_init_i2c(void)
 }
 #endif
 
+/* Fixed regulator support */
+static struct regulator_consumer_supply fixed_supplies_3_3v[] = {
+	/* Baseboard 3.3V: 5V -> TPS54310PWP -> 3.3V */
+	REGULATOR_SUPPLY("AVDD", "1-001b"),
+	REGULATOR_SUPPLY("DRVDD", "1-001b"),
+};
+
+static struct regulator_consumer_supply fixed_supplies_1_8v[] = {
+	/* Baseboard 1.8V: 5V -> TPS54310PWP -> 1.8V */
+	REGULATOR_SUPPLY("IOVDD", "1-001b"),
+	REGULATOR_SUPPLY("DVDD", "1-001b"),
+};
+
 #define VENC_STD_ALL	(V4L2_STD_NTSC | V4L2_STD_PAL)
 
 /* venc standard timings */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

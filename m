Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D4E1FDE3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQtPYdl8WNScKWxsn+ETe0dUwttS4q/3dW/WvMAOJ4U=; b=kd7yqG6I1LOzCV
	7FeZH4hhqlV0lbavTA71l5M4YGnEUtpceH+POL2X33GAgcWRmrptnTSK5EuKlRH9EUzwtOpWU20/4
	Pl7uViJMCrjq7bueVKmg6M6Km5UdGf5NBPiFHuoaOUJIV8t6tcal57hrFRkgCmJQdrcSA20ojJjjl
	UtQ8EvFr1tfk7Du6f6iOPOMOgjv/aFrT22vnLM3PmduV1NtsnusFxv53LwZ9UteXIFR1Ue9y+gQBW
	/UArrY3ZeMywcL/twm9GTP0pez7hXLeKGgXOEfU1alq7qub+rzgIS/8r/1W4usAzxVjOpyqXJ1cjR
	a54RDlWcSy37of+LjfMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljPN-0001XT-M5; Thu, 18 Jun 2020 01:32:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj8V-0003jy-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:40 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B230221D7E;
 Thu, 18 Jun 2020 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442874;
 bh=IgxoX0dS7tQSm492V5SCVu1eGtYviV5OFE6vUo6NCXA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LszBUIfvimymPLQXwwylFVUcDTKosxudXH54mAbhkfHvPzTgyc69iinRO/gIYhsQO
 FGE7U6m5HfhFxUD4b8tBuacK+UBcmM3JRHlTpPKmoVlxJLWpEzh/KzIgxFF8n4ReyU
 p2ccx/D6lG3SV6IqMvdL4mZYSKnnnEuIe+IE2bL8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 300/388] ARM: davinci: fix build failure without
 I2C
Date: Wed, 17 Jun 2020 21:06:37 -0400
Message-Id: <20200618010805.600873-300-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181435_290269_B1301D43 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 147922f91965e734664374a3f226adfeaa586d72 ]

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

Link: https://lore.kernel.org/r/20200527133746.643895-1-arnd@arndb.de
Fixes: 5e06d19694a4 ("ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

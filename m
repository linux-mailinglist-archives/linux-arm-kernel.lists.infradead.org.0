Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74164363
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IU45g4pGVqfu6SzMCqYAQ3BXs/Sbs8R35+fLs8LuOXU=; b=sK4U29As8jdQqs
	1ReAt+BNr/sSnaT9T38vWNm9YfszgCW16OeMv9C9Y2AOLUfdSa498O1RzuxLvjBDiwdhsU4GvJPWN
	41E8G3W5XCbRtULKMZHZtO/UZC0UsLep2pZX7frMBYJw9pG34xeBiIPf6u9a/b9BOEEfiChbaJhAU
	WPG1vNFD0xhcooVtCizePXzmkjh/uQTstporKG+CYaU/dYaThzjfEr6eiQvezpS3Vk+KukCGWO0sg
	TF1Ro3eZcE+VrWededwMOAZiQp3Z0yV5xOBbL89OGO8UbYkMwSfeZ+LBkWXf8U7wi3/rSulTKzmL9
	2JiztAJ5GJSMf0WrJanw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7fk-000278-5L; Wed, 10 Jul 2019 08:09:52 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7fY-00026c-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:09:41 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MvazO-1ibIbl3YHu-00sfRH; Wed, 10 Jul 2019 10:09:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH] watchdog: digicolor_wdt: drop unused variable
Date: Wed, 10 Jul 2019 10:08:57 +0200
Message-Id: <20190710080904.317599-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:mZ/4FmETA2N1iae5b2XmeS50rziApGWR+vb3D9a2WJ7k0ERculc
 ghh1DBVjPjlVFmFiUNa5WGCPIuQYF8zGQL06OabeHJT646KmHfuARB9U/YUq3soLwSLVPtg
 9VHbUI1gwlvlsDfDXGb3IZeiVPPBG5wRPphlG/ypn8e2103N1Cm84rMXw5kCpLby0IdT3Yp
 zEqBRLn0YPMkI6bTSJZfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mLuOMZv1Qn4=:XbQMW6B70avtrAIu/4Zx94
 kMkzCWYXuEqlLAzEpoMJt8Su4mBtp3ADnOk1w3r1rMCFH1hZL+xhjYtaVcgyVDtIQCpDFHFBQ
 8xjIgGJuRTfFFD9EYq3ZLAR4m8+4Vx8CerfachcGURZHoKlPmNZ6pMlQpeVwZvEAndUr8WtQY
 tqDOzeRm5MWuyjsbpKaM72yfb3wHpQCtZc5W6xKAEnBfRR3zM1pQouIxOwwxmGzH/DD/cvW8g
 xk9tjcqFrKCT1l4kVPX4uPnU0XozJhgbtM3vGi92CnnsIwreZu7OiyNC39BuhpIRxCgCBlYIL
 FeNP5Vtx5qEjYdQepOT76T1x/2NprVJIZf4J+vIWJVE8AHSzYR/wI07GIqgSIMo6uWWAeOECj
 9ZvSFCG3zVOdkSf0LW1Iam/rAc7fBxz620T9oKduPZvsou2PSf1splv+U0f3qJTsWi4YHhio/
 VXLn47cikQ7oc4oYkQ+J9rNsdTwfi/IfqPRqgQ6Rpnwt0nJhQPgIJ3djJiYamtB711EuwCvk6
 P7NVDy+NE2MW8RH0015N65kNS7I34PgIzcTlPwkiiYroQmzKCmySaaj7+vVOnaETIGAKv9ezx
 Mq3E/SYMR5kq2Ap+/0dh8YaLI5sbeNTck/CMRq1om/Ay7VYuc+px6aenndWwuPo6oDcsm2hQX
 KxnwtDtsAS6KUDlUtw0glRF9Y6lv3Rn/jQF0pDUCs4Gv3wIw8eMzI5nLxFm4OScnZeoUHeoE7
 Hqnuc6nHCDOjM0qnUGountlPKdAx6WDxjg6AbQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_010940_382523_7806A3EF 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-watchdog@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The last cleanup patch left behind an unused variable
that should have been removed as well:

drivers/watchdog/digicolor_wdt.c:121:6: error: unused variable 'ret' [-Werror,-Wunused-variable]

Fixes: cdad26977e3f ("watchdog: digicolor_wdt: drop warning after registering device")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/watchdog/digicolor_wdt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/watchdog/digicolor_wdt.c b/drivers/watchdog/digicolor_wdt.c
index 33cda95bd238..073d37867f47 100644
--- a/drivers/watchdog/digicolor_wdt.c
+++ b/drivers/watchdog/digicolor_wdt.c
@@ -118,7 +118,6 @@ static int dc_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct dc_wdt *wdt;
-	int ret;
 
 	wdt = devm_kzalloc(dev, sizeof(struct dc_wdt), GFP_KERNEL);
 	if (!wdt)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8313DFC79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMjaF+LZXEDg+vrxCUwdiLP1mGmSDr8oZlDIAhktQvE=; b=Qj8lltuT4hBsjg
	wwz5QYkO08frxgSkpE93Ix0W6cmou5W5S9qvLpwtj79vPteDgm/6nMxwXOFsbRKahTpWp0iKxx7UK
	3k6A/fwZDPivvMs5v4KV9cLzcchl1G8BDh827OqA7YeNaXkP1FgqPCqmxxjnmVdi9HgOfVPChCap5
	lyhit4OD1Zk1t3YxSzUZpjpfuShdE9ftqE7Lr3bsS0/YR0DM9396A1DTLSxuIaA/vRMeiyMBdNyO8
	EYp6cuCXyYTS2o8z6eoAA+j93h2hNZ3S1cZnRw0wygZop5B+Vqji+8fuNTkQuIvxo9JCMguYArq/5
	Nn+Wpe9ktVQ65In9Kw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlZU-0007Ch-Jc; Tue, 22 Oct 2019 04:15:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlZL-0007CO-3m
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:14:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id k20so9141065pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rs9LAlJ/Mb8c9Q5mqnJ0h++sIssMn8kGp7hyQlxdI80=;
 b=QZEVW2RSSdkh1WJhJ+2zM6gvI5OM1zukP2RcEMAPrk+gYXdCshBt6eo69Xdgf3piwH
 2jsrvgUWf8cb/5otO7cLp0OZTGHxclN0W7hqZny+giRNR8fylKD+GerxqjcUfDHD2lG2
 0KEw2YMYwQxe0KdAWRk8BFnaKDfT6Y4Mi/ezDoYAsR2aM80Bu/w8isG2AaVlXU5mmZZi
 ZsbERCij07rF7+9yS69wVKkOmNcbWkmFlmMwOqEO0p+lgpHQoaJBcTEvA3l4FlUVr5em
 877NV13qWH29BIhewCk+S4alQLXyTiejyaeVxvRhyP2IOZ4F9mgRTLfTePWYZ1dO2ZV+
 Z9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rs9LAlJ/Mb8c9Q5mqnJ0h++sIssMn8kGp7hyQlxdI80=;
 b=cejUNZWghkDibTqUDH1aa3kmjNLxqLXdSfyEDZXAPv9iTDLncE6/uA7gJROSrUxiBq
 LGWUJ9+Ax8JEqur5SjbOzk5atbaiCemoqKcVrOd+2RvmZKjBS3Xt2/PfBk8JOJ2wxLSd
 wqUAeT+wHSihZXBlzbwbfznp4n+QFKyzO+ES0r7FpZjC8k14XXmsXwPABJs3/1ot3t13
 W2MusjTuzXBIo4n4TQ1/o9s0vKiaZIVy8i+vs5GZQ5o+9DSAFlDmDvQB2hgLufOWjGyp
 sEqPuQBh5hT27aU5J9t2uxS5AQltUqPpenlDpAvhBl7m1HrZVHBvH5KqXl5/aAPJ6p6L
 bxdw==
X-Gm-Message-State: APjAAAUEK0qSmBFX5PbHAby7WzCrKt6yWhxVa5Zy3c0/+Lw20He0XtsK
 Zpgt3AVJEo7fv0NhL7HuUcs0uhnW
X-Google-Smtp-Source: APXvYqxuxUG7glI4cNP3QMXePzxvwJJd44e9KiYRq8sAvVisFJ5DBx1aafSGvsKs5wZCfJW9UfCxWA==
X-Received: by 2002:a62:1c96:: with SMTP id c144mr278831pfc.219.1571717689798; 
 Mon, 21 Oct 2019 21:14:49 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id b3sm15042191pjp.13.2019.10.21.21.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 21:14:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: imx: Drop imx_anatop_usb_chrg_detect_disable()
Date: Mon, 21 Oct 2019 21:14:45 -0700
Message-Id: <20191022041445.23897-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_211451_180446_66850887 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Peter Chen <peter.chen@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
detect in mxs_phy_hw_init()") in tree all of the necessary charger
setup is done by the USB PHY driver which covers all of the affected
i.MX6 SoCs.

NOTE: imx_anatop_usb_chrg_detect_disable() was also called for i.MX7D,
but looking at its datasheet it appears to have a different USB PHY IP
block, so executing i.MX6 charger disable configuration seems
unnecessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Peter Chen <peter.chen@nxp.com>
Cc: linux-imx@nxp.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

    - Scope of the patch reduced to remove only
      imx_anatop_usb_chrg_detect_disable() instead of
      imx_anatop_init()

[v1] lore.kernel.org/lkml/20190731180131.8597-1-andrew.smirnov@gmail.com

 arch/arm/mach-imx/anatop.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index 777d8c255501..8fb68c0ec34c 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -19,8 +19,6 @@
 #define ANADIG_REG_2P5		0x130
 #define ANADIG_REG_CORE		0x140
 #define ANADIG_ANA_MISC0	0x150
-#define ANADIG_USB1_CHRG_DETECT	0x1b0
-#define ANADIG_USB2_CHRG_DETECT	0x210
 #define ANADIG_DIGPROG		0x260
 #define ANADIG_DIGPROG_IMX6SL	0x280
 #define ANADIG_DIGPROG_IMX7D	0x800
@@ -33,8 +31,6 @@
 #define BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG	0x1000
 /* Below MISC0_DISCON_HIGH_SNVS is only for i.MX6SL */
 #define BM_ANADIG_ANA_MISC0_DISCON_HIGH_SNVS	0x2000
-#define BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B	0x80000
-#define BM_ANADIG_USB_CHRG_DETECT_EN_B		0x100000
 
 static struct regmap *anatop;
 
@@ -96,16 +92,6 @@ void imx_anatop_post_resume(void)
 
 }
 
-static void imx_anatop_usb_chrg_detect_disable(void)
-{
-	regmap_write(anatop, ANADIG_USB1_CHRG_DETECT,
-		BM_ANADIG_USB_CHRG_DETECT_EN_B
-		| BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
-	regmap_write(anatop, ANADIG_USB2_CHRG_DETECT,
-		BM_ANADIG_USB_CHRG_DETECT_EN_B |
-		BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
-}
-
 void __init imx_init_revision_from_anatop(void)
 {
 	struct device_node *np;
@@ -171,10 +157,6 @@ void __init imx_init_revision_from_anatop(void)
 void __init imx_anatop_init(void)
 {
 	anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
-	if (IS_ERR(anatop)) {
+	if (IS_ERR(anatop))
 		pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
-		return;
-	}
-
-	imx_anatop_usb_chrg_detect_disable();
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

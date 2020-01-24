Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04080148BBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ITw/0XQVOR09VblT0e53XdyodzXbdPGSkwDMy/v7Osk=; b=q6uDvXC4UeywYs
	TFYsK+JusCswtSI1a1fDE1QWypXeb+8Dq/2ggjtATSbq0/aELCK1TePRNSdqI2hopVIaSKTXpkigb
	uPB593ZG7BQEPRcEPIrkb5Pd0AvdcQDncKchSUAJphWW9epp/mVvR/Xl++QORE0lMXyONAovzEukI
	0PbC5RXie4LkX10yTuNJyXZPmbfLrrR1fpzhB5vZqCbf9X6luMNh4LSYYJbvYM624i7iRcfeP5iDU
	iJELiV52iluO5FVScyzUd1DNOBOC2wW7dMoIEKcQAu4+ptxVj364t46k7LCdO9HQ1jQht/V7Wf6LX
	7HTugBSqhk//O8fkWJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1e0-0005SQ-0n; Fri, 24 Jan 2020 16:17:16 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1do-0005RZ-S6
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 16:17:06 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 9EED521876;
 Fri, 24 Jan 2020 17:16:59 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 6EC3721875;
 Fri, 24 Jan 2020 17:16:59 +0100 (CET)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [RFC PATCH v3] clk: Use new helper in managed functions
To: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Message-ID: <19f7e109-e5d3-2401-efd2-1f19ec995e66@free.fr>
Date: Fri, 24 Jan 2020 17:16:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Jan 24 17:16:59 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_081705_207286_1A358E25 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce devm_add() to factorize devres_alloc/devres_add calls.

Using that helper produces simpler code, and smaller object size.
E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:

    text	   data	    bss	    dec	    hex	filename
-   1708	     80	      0	   1788	    6fc	drivers/clk/clk-devres.o
+   1524	     80	      0	   1604	    644	drivers/clk/clk-devres.o

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
Differences from v2 to v3
x Make devm_add() return an error-code rather than the raw data pointer
  (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
x Provide a variadic version devm_vadd() to work with structs as suggested
  by Geert
x Don't use nested ifs in clk_devm* implementations (hopefully simpler
  code logic to follow) as suggested by Geert

Questions:
x This patch might need to be split in two? (Introduce the new API, then use it)
x Convert other subsystems to show the value of this proposal?
x Maybe comment the API usage somewhere
---
 drivers/base/devres.c    | 15 ++++++
 drivers/clk/clk-devres.c | 99 ++++++++++++++--------------------------
 include/linux/device.h   |  3 ++
 3 files changed, 53 insertions(+), 64 deletions(-)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 0bbb328bd17f..b2603789755b 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -685,6 +685,21 @@ int devres_release_group(struct device *dev, void *id)
 }
 EXPORT_SYMBOL_GPL(devres_release_group);
 
+int devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
+{
+	void *data = devres_alloc(func, size, GFP_KERNEL);
+
+	if (!data) {
+		func(dev, arg);
+		return -ENOMEM;
+	}
+
+	memcpy(data, arg, size);
+	devres_add(dev, data);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(devm_add);
+
 /*
  * Custom devres actions allow inserting a simple function call
  * into the teadown sequence.
diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
index be160764911b..1da69d273855 100644
--- a/drivers/clk/clk-devres.c
+++ b/drivers/clk/clk-devres.c
@@ -4,26 +4,22 @@
 #include <linux/export.h>
 #include <linux/gfp.h>
 
-static void devm_clk_release(struct device *dev, void *res)
+static void my_clk_put(struct device *dev, void *res)
 {
 	clk_put(*(struct clk **)res);
 }
 
 struct clk *devm_clk_get(struct device *dev, const char *id)
 {
-	struct clk **ptr, *clk;
-
-	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return ERR_PTR(-ENOMEM);
-
-	clk = clk_get(dev, id);
-	if (!IS_ERR(clk)) {
-		*ptr = clk;
-		devres_add(dev, ptr);
-	} else {
-		devres_free(ptr);
-	}
+	int ret;
+	struct clk *clk = clk_get(dev, id);
+
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = devm_add(dev, my_clk_put, &clk, sizeof(clk));
+	if (ret)
+		return ERR_PTR(ret);
 
 	return clk;
 }
@@ -40,14 +36,14 @@ struct clk *devm_clk_get_optional(struct device *dev, const char *id)
 }
 EXPORT_SYMBOL(devm_clk_get_optional);
 
-struct clk_bulk_devres {
-	struct clk_bulk_data *clks;
+struct clk_bulk_args {
 	int num_clks;
+	struct clk_bulk_data *clks;
 };
 
-static void devm_clk_bulk_release(struct device *dev, void *res)
+static void my_clk_bulk_put(struct device *dev, void *res)
 {
-	struct clk_bulk_devres *devres = res;
+	struct clk_bulk_args *devres = res;
 
 	clk_bulk_put(devres->num_clks, devres->clks);
 }
@@ -55,25 +51,17 @@ static void devm_clk_bulk_release(struct device *dev, void *res)
 static int __devm_clk_bulk_get(struct device *dev, int num_clks,
 			       struct clk_bulk_data *clks, bool optional)
 {
-	struct clk_bulk_devres *devres;
 	int ret;
 
-	devres = devres_alloc(devm_clk_bulk_release,
-			      sizeof(*devres), GFP_KERNEL);
-	if (!devres)
-		return -ENOMEM;
-
 	if (optional)
 		ret = clk_bulk_get_optional(dev, num_clks, clks);
 	else
 		ret = clk_bulk_get(dev, num_clks, clks);
-	if (!ret) {
-		devres->clks = clks;
-		devres->num_clks = num_clks;
-		devres_add(dev, devres);
-	} else {
-		devres_free(devres);
-	}
+
+	if (ret)
+		return ret;
+
+	ret = devm_vadd(dev, my_clk_bulk_put, clk_bulk_args, num_clks, clks);
 
 	return ret;
 }
@@ -95,24 +83,15 @@ EXPORT_SYMBOL_GPL(devm_clk_bulk_get_optional);
 int __must_check devm_clk_bulk_get_all(struct device *dev,
 				       struct clk_bulk_data **clks)
 {
-	struct clk_bulk_devres *devres;
 	int ret;
+	int num_clks = clk_bulk_get_all(dev, clks);
 
-	devres = devres_alloc(devm_clk_bulk_release,
-			      sizeof(*devres), GFP_KERNEL);
-	if (!devres)
-		return -ENOMEM;
-
-	ret = clk_bulk_get_all(dev, &devres->clks);
-	if (ret > 0) {
-		*clks = devres->clks;
-		devres->num_clks = ret;
-		devres_add(dev, devres);
-	} else {
-		devres_free(devres);
-	}
+	if (num_clks <= 0)
+		return num_clks;
 
-	return ret;
+	ret = devm_vadd(dev, my_clk_bulk_put, clk_bulk_args, num_clks, *clks);
+
+	return ret ? : num_clks;
 }
 EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all);
 
@@ -128,30 +107,22 @@ static int devm_clk_match(struct device *dev, void *res, void *data)
 
 void devm_clk_put(struct device *dev, struct clk *clk)
 {
-	int ret;
-
-	ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
-
-	WARN_ON(ret);
+	WARN_ON(devres_release(dev, my_clk_put, devm_clk_match, clk));
 }
 EXPORT_SYMBOL(devm_clk_put);
 
 struct clk *devm_get_clk_from_child(struct device *dev,
 				    struct device_node *np, const char *con_id)
 {
-	struct clk **ptr, *clk;
-
-	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return ERR_PTR(-ENOMEM);
-
-	clk = of_clk_get_by_name(np, con_id);
-	if (!IS_ERR(clk)) {
-		*ptr = clk;
-		devres_add(dev, ptr);
-	} else {
-		devres_free(ptr);
-	}
+	int ret;
+	struct clk *clk = of_clk_get_by_name(np, con_id);
+
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = devm_add(dev, my_clk_put, &clk, sizeof(clk));
+	if (ret)
+		return ERR_PTR(ret);
 
 	return clk;
 }
diff --git a/include/linux/device.h b/include/linux/device.h
index e226030c1df3..9f18582fc0f9 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -969,6 +969,9 @@ void __iomem *devm_of_iomap(struct device *dev,
 			    struct device_node *node, int index,
 			    resource_size_t *size);
 
+int devm_add(struct device *dev, dr_release_t func, void *arg, size_t size);
+#define devm_vadd(dev, func, type, args...) \
+	devm_add(dev, func, &(struct type){args}, sizeof(struct type))
 /* allows to add/remove a custom action to devres stack */
 int devm_add_action(struct device *dev, void (*action)(void *), void *data);
 void devm_remove_action(struct device *dev, void (*action)(void *), void *data);
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6771454B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j5yu60Ir3MDuVcLob4SrgtPTJA5iUuKrj7IsZqM0wts=; b=nrOqOHbEsA/UF0
	REVbVppJ/rmXpUAzaLDGj/+cPVKXlyL23tLkt14/vfF+emBAsmJMpkl4z25dn/zOc+Weg5viC0lq6
	91TryKtcpvTcReCGC8U/lLwYovQWFks9DKu9HWoqgrA2JCx78bP8q28Gknjgk4YnO5UPz8W/yLKH/
	xRamv/02XSob6hn6Klg4BxTpy55WztxH0sWjdBt7fCOKRL7r/pShMCquzlOMbur1oN7IB9cAubn7t
	VdMsaJSkUuVMzjQLI4A9SckGroUtnauL9lTCPIe9rdCJK/eSr7oyuieFgYpMpZAFpnhczJLoJ2uWN
	rryuhzcCr8MLs1VA9wnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFeR-0007ZV-Mx; Wed, 22 Jan 2020 13:02:31 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFeH-0007Ym-Ek
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 13:02:23 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CF92C209AE;
 Wed, 22 Jan 2020 14:02:16 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id B45DB20169;
 Wed, 22 Jan 2020 14:02:16 +0100 (CET)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [RFC PATCH v2] clk: Use a new helper in managed functions
To: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Message-ID: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
Date: Wed, 22 Jan 2020 14:02:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Jan 22 14:02:16 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_050221_788121_4CAF0137 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce devm_add() to factorize devres_alloc/devres_add calls.

Using that helper produces simpler code and smaller object size:

1 file changed, 27 insertions(+), 66 deletions(-)

    text	   data	    bss	    dec	    hex	filename
-   1708	     80	      0	   1788	    6fc	drivers/clk/clk-devres.o
+   1508	     80	      0	   1588	    634	drivers/clk/clk-devres.o

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
 drivers/base/devres.c    | 14 ++++++
 drivers/clk/clk-devres.c | 93 ++++++++++++----------------------------
 include/linux/device.h   |  1 +
 3 files changed, 42 insertions(+), 66 deletions(-)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 0bbb328bd17f..76392dd6273b 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
 }
 EXPORT_SYMBOL_GPL(devres_release_group);
 
+void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
+{
+	void *data = devres_alloc(func, size, GFP_KERNEL);
+
+	if (data) {
+		memcpy(data, arg, size);
+		devres_add(dev, data);
+	} else
+		func(dev, arg);
+
+	return data;
+}
+EXPORT_SYMBOL_GPL(devm_add);
+
 /*
  * Custom devres actions allow inserting a simple function call
  * into the teadown sequence.
diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
index be160764911b..582fda9ad6a6 100644
--- a/drivers/clk/clk-devres.c
+++ b/drivers/clk/clk-devres.c
@@ -4,26 +4,18 @@
 #include <linux/export.h>
 #include <linux/gfp.h>
 
-static void devm_clk_release(struct device *dev, void *res)
+static void wrap_clk_put(struct device *dev, void *res)
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
+	struct clk *clk = clk_get(dev, id);
+
+	if (!IS_ERR(clk))
+		if (!devm_add(dev, wrap_clk_put, &clk, sizeof(clk)))
+			clk = ERR_PTR(-ENOMEM);
 
 	return clk;
 }
@@ -33,10 +25,7 @@ struct clk *devm_clk_get_optional(struct device *dev, const char *id)
 {
 	struct clk *clk = devm_clk_get(dev, id);
 
-	if (clk == ERR_PTR(-ENOENT))
-		return NULL;
-
-	return clk;
+	return clk == ERR_PTR(-ENOENT) ? NULL : clk;
 }
 EXPORT_SYMBOL(devm_clk_get_optional);
 
@@ -45,7 +34,7 @@ struct clk_bulk_devres {
 	int num_clks;
 };
 
-static void devm_clk_bulk_release(struct device *dev, void *res)
+static void wrap_clk_bulk_put(struct device *dev, void *res)
 {
 	struct clk_bulk_devres *devres = res;
 
@@ -55,25 +44,17 @@ static void devm_clk_bulk_release(struct device *dev, void *res)
 static int __devm_clk_bulk_get(struct device *dev, int num_clks,
 			       struct clk_bulk_data *clks, bool optional)
 {
-	struct clk_bulk_devres *devres;
 	int ret;
-
-	devres = devres_alloc(devm_clk_bulk_release,
-			      sizeof(*devres), GFP_KERNEL);
-	if (!devres)
-		return -ENOMEM;
+	struct clk_bulk_devres arg = { clks, num_clks };
 
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
+	if (!ret)
+		if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
+			ret = -ENOMEM;
 
 	return ret;
 }
@@ -95,24 +76,16 @@ EXPORT_SYMBOL_GPL(devm_clk_bulk_get_optional);
 int __must_check devm_clk_bulk_get_all(struct device *dev,
 				       struct clk_bulk_data **clks)
 {
-	struct clk_bulk_devres *devres;
-	int ret;
+	struct clk_bulk_devres arg;
 
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
+	arg.num_clks = clk_bulk_get_all(dev, clks);
+	arg.clks = *clks;
 
-	return ret;
+	if (arg.num_clks > 0)
+		if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
+			arg.num_clks = -ENOMEM;
+
+	return arg.num_clks;
 }
 EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all);
 
@@ -128,30 +101,18 @@ static int devm_clk_match(struct device *dev, void *res, void *data)
 
 void devm_clk_put(struct device *dev, struct clk *clk)
 {
-	int ret;
-
-	ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
-
-	WARN_ON(ret);
+	WARN_ON(devres_release(dev, wrap_clk_put, devm_clk_match, clk));
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
+	struct clk *clk = of_clk_get_by_name(np, con_id);
+
+	if (!IS_ERR(clk))
+		if (!devm_add(dev, wrap_clk_put, &clk, sizeof(clk)))
+			clk = ERR_PTR(-ENOMEM);
 
 	return clk;
 }
diff --git a/include/linux/device.h b/include/linux/device.h
index e226030c1df3..d47872c5ab72 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -969,6 +969,7 @@ void __iomem *devm_of_iomap(struct device *dev,
 			    struct device_node *node, int index,
 			    resource_size_t *size);
 
+void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size);
 /* allows to add/remove a custom action to devres stack */
 int devm_add_action(struct device *dev, void (*action)(void *), void *data);
 void devm_remove_action(struct device *dev, void (*action)(void *), void *data);
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

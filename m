Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9813910A1C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 17:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QSBi2Ub8EP05w2i6xnVE8NOoy51VPBzeXfTwbNJZTio=; b=PgAPn/wqibbQfU
	Qa2CgTxYxcbG62m+tysjmDx+H0jq0aR6W/N6ztaZW2IkB0VbW4QpXvzxzKMuheYNfizvjBneuXGew
	QK+OMdDAVg0dpTjW+ThiavdwIPrDhvuKVRgCSqva3FBdHJwF2Ul15LWgCis/aKbB0hGn/hK+RSzYI
	obaGds/ZgxrYBdzruMnZJJIuTvxUdkR8MXlaROixsUjNntyPnHzBpys0A4ttRm1YlT4KchzUSE7EL
	2IJ3CxLZRamFfz+yIZgLcGdMO2QKamWiifQtAp51BJZVqNOQVE4LxcYF+yIv7ll+qZi2Wm6QL++xR
	lLDGyGf3A8GkfXq+P92g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdWm-0007LH-Rd; Tue, 26 Nov 2019 16:17:24 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdWc-0007KG-QC
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 16:17:16 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CB34F215C7;
 Tue, 26 Nov 2019 17:17:09 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id BA55D215C6;
 Tue, 26 Nov 2019 17:17:09 +0100 (CET)
To: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [PATCH v1] clk: Convert managed get functions to devm_add_action API
Message-ID: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
Date: Tue, 26 Nov 2019 17:13:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov 26 17:17:09 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_081715_141480_489AAC04 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Date: Tue, 26 Nov 2019 13:56:53 +0100

Using devm_add_action_or_reset() produces simpler code and smaller
object size:

1 file changed, 16 insertions(+), 46 deletions(-)

    text	   data	    bss	    dec	    hex	filename
-   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
+   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
 drivers/clk/clk-devres.c | 62 +++++++++++-----------------------------
 1 file changed, 16 insertions(+), 46 deletions(-)

diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
index be160764911b..04379c1f203e 100644
--- a/drivers/clk/clk-devres.c
+++ b/drivers/clk/clk-devres.c
@@ -4,31 +4,29 @@
 #include <linux/export.h>
 #include <linux/gfp.h>
 
-static void devm_clk_release(struct device *dev, void *res)
+static void __clk_put(void *clk)
 {
-	clk_put(*(struct clk **)res);
+	clk_put(clk);
 }
 
 struct clk *devm_clk_get(struct device *dev, const char *id)
 {
-	struct clk **ptr, *clk;
+	struct clk *clk = clk_get(dev, id);
 
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
+	if (!IS_ERR(clk))
+		if (devm_add_action_or_reset(dev, __clk_put, clk))
+			clk = ERR_PTR(-ENOMEM);
 
 	return clk;
 }
 EXPORT_SYMBOL(devm_clk_get);
 
+void devm_clk_put(struct device *dev, struct clk *clk)
+{
+	devm_release_action(dev, __clk_put, clk);
+}
+EXPORT_SYMBOL(devm_clk_put);
+
 struct clk *devm_clk_get_optional(struct device *dev, const char *id)
 {
 	struct clk *clk = devm_clk_get(dev, id);
@@ -116,42 +114,14 @@ int __must_check devm_clk_bulk_get_all(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all);
 
-static int devm_clk_match(struct device *dev, void *res, void *data)
-{
-	struct clk **c = res;
-	if (!c || !*c) {
-		WARN_ON(!c || !*c);
-		return 0;
-	}
-	return *c == data;
-}
-
-void devm_clk_put(struct device *dev, struct clk *clk)
-{
-	int ret;
-
-	ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
-
-	WARN_ON(ret);
-}
-EXPORT_SYMBOL(devm_clk_put);
-
 struct clk *devm_get_clk_from_child(struct device *dev,
 				    struct device_node *np, const char *con_id)
 {
-	struct clk **ptr, *clk;
-
-	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return ERR_PTR(-ENOMEM);
+	struct clk *clk = of_clk_get_by_name(np, con_id);
 
-	clk = of_clk_get_by_name(np, con_id);
-	if (!IS_ERR(clk)) {
-		*ptr = clk;
-		devres_add(dev, ptr);
-	} else {
-		devres_free(ptr);
-	}
+	if (!IS_ERR(clk))
+		if (devm_add_action_or_reset(dev, __clk_put, clk))
+			clk = ERR_PTR(-ENOMEM);
 
 	return clk;
 }
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9988B170341
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf+KDyr9fUfxdLykyxnuOCn9Sp+d4wwIpfkdIsYxLWE=; b=cvwLEGjkrYcg5H
	MxlHXg3FgBvDJcNX+HB4kUoUUJ2DLeK8NOzm0fFtKqIdyH59+0jb4oOGIEvDOZ7t2pz0rmGfeb44G
	nADqNycYuJAlp/k9GXxXlGKCf51XiphVFtcBiA6vWkWg2AjZVFJbOPi/0NiCfxrqQtWlD32NIw4vV
	mDViFX9XabmtgoE6W0OGoRPJRknW2pcA6Z6Zz93/Sw3/NKf6i6ntYO4cNe3znnkF47sdmQLR73/+C
	VokbsOeeU2UnEd1pm02DON18d/ShepW+UcvXQy7LfbAmMNAtqgDfxi9UFjMC8Rvpfo7dSqzAOJAEK
	kStLTrH6x5FShq6EKoKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z1s-0007iz-Gk; Wed, 26 Feb 2020 15:55:20 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z1j-0007c8-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:55:13 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E996020025;
 Wed, 26 Feb 2020 16:55:04 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id D6430204B1;
 Wed, 26 Feb 2020 16:55:04 +0100 (CET)
Subject: [RFC PATCH v4 1/2] devres: Provide new helper for devm functions
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rafael Wysocki <rjw@rjwysocki.net>, Suzuki Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
Message-ID: <f53767e0-e533-74bc-2967-e2cc4c3df15e@free.fr>
Date: Wed, 26 Feb 2020 16:49:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Feb 26 16:55:04 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075511_574454_D749131D 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
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
Cc: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide a simple wrapper for devres_alloc / devres_add.

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
 drivers/base/devres.c  | 28 ++++++++++++++++++++++++++++
 include/linux/device.h |  3 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 0bbb328bd17f..7fe6cc34411e 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -685,6 +685,34 @@ int devres_release_group(struct device *dev, void *id)
 }
 EXPORT_SYMBOL_GPL(devres_release_group);
 
+/**
+ * devm_add - allocate and register new device resource
+ * @dev: device to add resource to
+ * @func: resource release function
+ * @arg: resource data
+ * @size: resource data size
+ *
+ * Simple wrapper for devres_alloc / devres_add.
+ * Release the resource if the allocation fails.
+ *
+ * RETURNS:
+ * 0 if the allocation succeeds, -ENOMEM otherwise.
+ */
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
diff --git a/include/linux/device.h b/include/linux/device.h
index 0cd7c647c16c..55be3be9b276 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -247,6 +247,9 @@ void __iomem *devm_of_iomap(struct device *dev,
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

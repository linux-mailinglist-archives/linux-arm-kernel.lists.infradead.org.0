Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254AF129D84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 05:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SbasWVgKtX+hSPKYZgVoqmF9lP57ohqVKqgY80A5+kE=; b=fVFHEpW+80rDn4
	ldwC9xRk/PimFLPnEBAgvNgJVSUaZkHh8g/bWtw03g9Ifz6oBEboJeseTGE1tgXZ5w23Gp3SEyu11
	6FWtD2cwaMqqECxw0gD2aKocpmHJwLTJNIM4h+SqHDydJpLjBELjBWZBhNhG0S+u/7dLX1yDzWXrU
	CDICoulACFeND6B05ytCcS50LuqxZ6kJOFwplwoZu/6E+OHlqn2h2yJKJqqzkTbcHl+6mbJcYQy/O
	HRIPTyrqOhyKLGKMS1hvM6/yEj/vmG+FxttgnOORlHHoTVmBU/0Ndd0hpKQH/t+V9azxJ0cpQWIHV
	Ze3Wr6RvSrtoRYieNM/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijc1E-00024F-UH; Tue, 24 Dec 2019 04:42:04 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijc14-00023S-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 04:41:55 +0000
Received: by mail-vk1-xa49.google.com with SMTP id s205so7395945vka.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 20:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=yroEW0xn9BihGZeuB+O1xglR6PYA2TBreCzWoEGLf04=;
 b=iUJt8dtMk5q41cRHbGDUJSVoeMRh/TeNE3JSDVCIQCm5jmHzA9JNOr0swbMu4OMGdF
 7dwbygk3CplLVRta3GhMkvz1YMEEymrE0fUvrkm1h2aIJAYYk00+JgIfnXIEE+vU/UaF
 bUyfBYh8Hv7P+2cpiFberWsRznAFqxiKequyel8lJiFGMFH8fTAI5V/ellPt/rx/x5r3
 c9/uzthGSjR0PJ/WRHl0kWKPojE/MIgcNMqC29l8EqWieorRo8hilN/5QANCQ7pXJ7uq
 kEhG/cMc6g2YqzTN0b99riYSLxAnuC4EBksULWiE7Jl45kjECJHdFFOrIvcroLbAVrzb
 pfsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=yroEW0xn9BihGZeuB+O1xglR6PYA2TBreCzWoEGLf04=;
 b=TeZfP0LyjTlUw/KtzjlS1XxAHrpSrk1iqEm9yD1j97nS0WWzmleMRbfFKU5ocpdOX0
 1tZ1KccusUuz+G4AuvmmH62HRrwHYsxPYDZj6w74Uag4CMqbXEsEScVIe7DhMy0iyO0Z
 XCM3HdZ1KGgc+V67zAFSGIwDnITn4had7zncOeKjj3SzqyJ19BhOBtGmy69Ad+4HRotw
 7066tuEgIUC8uY1sH8+A+nSNZya0S/W0YNERzDX7HiZ+ysJkLq7AXZilsW6f4CnKH/7G
 VpaJYWFxc7UWUqjt4tIWggYZxKVUAwdqhWy3NSw6nJ50VuTfRNi45X9LLsIhEST+nWXa
 FT7w==
X-Gm-Message-State: APjAAAUZH7JAqaE1ltnPxt4yV3QXxvqwpphTlvwZKl1jH5Gkk+ZXhgiY
 eArow9gCLEgG1Y6mte528Ae23xm3FXOKnd0=
X-Google-Smtp-Source: APXvYqxh9ATFeQANX8izAqqM7SHQ6Zqc8GWH2ft8gGY6oxG1HaOF75/GKCifSdlsUoByWqAmw3OPbieHzyq3lNQ=
X-Received: by 2002:a9f:222d:: with SMTP id 42mr20116882uad.6.1577162511178;
 Mon, 23 Dec 2019 20:41:51 -0800 (PST)
Date: Mon, 23 Dec 2019 20:41:46 -0800
Message-Id: <20191224044146.232713-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT systems
From: Saravana Kannan <saravanak@google.com>
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_204154_480754_15B57D42 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-efi@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
 will@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, bhelgaas@google.com, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ardb@kernel.org>

The new of_devlink support breaks PCIe probing on ARM platforms booting
via UEFI if the firmware exposes a EFI framebuffer that is backed by a
PCI device. The reason is that the probing order gets reversed,
resulting in a resource conflict on the framebuffer memory window when
the PCIe probes last, causing it to give up entirely.

Given that we rely on PCI quirks to deal with EFI framebuffers that get
moved around in memory, we cannot simply drop the memory reservation, so
instead, let's use the device link infrastructure to register this
dependency, and force the probing to occur in the expected order.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Co-developed-by: Saravana Kannan <saravanak@google.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---

Hi Ard,

I compile tested it and I think it should work. If you can actually run
and test it, that'd be nice.

You can also optimize find_pci_overlap_node() by caching the result if
you think that's necessary.

Right now this code will run always just like your code did. But once I
rename of_devlink to fw_devlink, this code won't be run if fw_devlink is
disabled.

v1 -> v2:
- Rewrote the device linking part to not depend on initcall ordering

 drivers/firmware/efi/arm-init.c | 106 ++++++++++++++++++++++++++++++--
 1 file changed, 102 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index 904fa09e6a6b..8b789ff83af0 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -10,10 +10,12 @@
 #define pr_fmt(fmt)	"efi: " fmt
 
 #include <linux/efi.h>
+#include <linux/fwnode.h>
 #include <linux/init.h>
 #include <linux/memblock.h>
 #include <linux/mm_types.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_fdt.h>
 #include <linux/platform_device.h>
 #include <linux/screen_info.h>
@@ -276,15 +278,111 @@ void __init efi_init(void)
 		efi_memmap_unmap();
 }
 
+static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
+{
+	u64 fb_base = screen_info.lfb_base;
+
+	if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
+		fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
+
+	return fb_base >= range->cpu_addr &&
+	       fb_base < (range->cpu_addr + range->size);
+}
+
+static struct device_node *find_pci_overlap_node(void)
+{
+	struct device_node *np;
+
+	for_each_node_by_type(np, "pci") {
+		struct of_pci_range_parser parser;
+		struct of_pci_range range;
+		int err;
+
+		err = of_pci_range_parser_init(&parser, np);
+		if (err) {
+			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
+			continue;
+		}
+
+		for_each_of_pci_range(&parser, &range)
+			if (efifb_overlaps_pci_range(&range))
+				return np;
+	}
+	return NULL;
+}
+
+/*
+ * If the efifb framebuffer is backed by a PCI graphics controller, we have
+ * to ensure that this relation is expressed using a device link when
+ * running in DT mode, or the probe order may be reversed, resulting in a
+ * resource reservation conflict on the memory window that the efifb
+ * framebuffer steals from the PCIe host bridge.
+ */
+static int efifb_add_links(const struct fwnode_handle *fwnode,
+			   struct device *dev)
+{
+	struct device_node *sup_np;
+	struct device *sup_dev;
+
+	sup_np = find_pci_overlap_node();
+
+	/*
+	 * If there's no PCI graphics controller backing the efifb, we are
+	 * done here.
+	 */
+	if (!sup_np)
+		return 0;
+
+	sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
+	of_node_put(sup_np);
+
+	/*
+	 * Return -ENODEV if the PCI graphics controller device hasn't been
+	 * registered yet.  This ensures that efifb isn't allowed to probe
+	 * and this function is retried again when new devices are
+	 * registered.
+	 */
+	if (!sup_dev)
+		return -ENODEV;
+
+	/*
+	 * If this fails, retrying this function at a later point won't
+	 * change anything. So, don't return an error after this.
+	 */
+	if (!device_link_add(dev, sup_dev, 0))
+		dev_warn(dev, "device_link_add() failed\n");
+
+	put_device(sup_dev);
+
+	return 0;
+}
+
+static struct fwnode_operations efifb_fwnode_ops = {
+	.add_links = efifb_add_links,
+};
+
+static struct fwnode_handle efifb_fwnode = {
+	.ops = &efifb_fwnode_ops,
+};
+
 static int __init register_gop_device(void)
 {
-	void *pd;
+	struct platform_device *pd;
+	int err;
 
 	if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
 		return 0;
 
-	pd = platform_device_register_data(NULL, "efi-framebuffer", 0,
-					   &screen_info, sizeof(screen_info));
-	return PTR_ERR_OR_ZERO(pd);
+	pd = platform_device_alloc("efi-framebuffer", 0);
+	if (!pd)
+		return -ENOMEM;
+
+	pd->dev.fwnode = &efifb_fwnode;
+
+	err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
+	if (err)
+		return err;
+
+	return platform_device_add(pd);
 }
 subsys_initcall(register_gop_device);
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

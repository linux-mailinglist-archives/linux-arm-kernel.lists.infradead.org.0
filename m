Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6A510A21E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 17:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=76817J886NgRK4SMm7qhLl8V6cpKs4augM40i9qMamU=; b=Ec+bpGvwNYdiz+
	hg44JW/fs0xClEYGfFnXyTJqKqg8XtgcxzfEf/xAoBGMaYKkDgsbx7Ng1uCW8iVl4GuXTxEhuU5Jp
	j3CECsbHtDaif3uUFV+qfvROyupCjW+FTqrcozd2RrJ5Q5PGxr5599XuFeC3KgiW16oEecrj4Nnnq
	hFLnGCVepKolc7WcLoQwqUNaQSro29IAASp6dwoZ0Mw42AJJfe7vs3DiUJ2kCsU7jDqe4lB+ASwKN
	Tjh/hQWadzg1Hrn3haRmTnP6ggjLo+nwyzHq9Pd4X2HALKK+bVcVrY0v/8wYbia8jvvn3kI85YCQh
	yT0dAujrHwnbM/dak/FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdj6-0003lX-P0; Tue, 26 Nov 2019 16:30:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdix-0003kn-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 16:30:00 +0000
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net
 [91.167.84.221])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 184572071A;
 Tue, 26 Nov 2019 16:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574785798;
 bh=qrvXuMHKCoQOdORxNJ+YbqsB49FLPqu3p1fW/+eSpZo=;
 h=From:To:Cc:Subject:Date:From;
 b=rNwTJiwpENG4ilu/hr3qpPAyWcnzAGOtNgVJBrxsMrEgkzWe0Ng+15ivaad2xTIvx
 yMTwWWetijnvVdKWKUlrh5QdY8wiellk32/tA6dpP1AjdcTEAoL2qjvN//Fb8u6qal
 YuLRlvReTloPuw1Grmkb393LOg6lU11gvYBcBctQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] efi: arm: defer probe of PCIe backed efifb on DT systems
Date: Tue, 26 Nov 2019 17:29:02 +0100
Message-Id: <20191126162902.16788-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_082959_452470_8E82360C 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bhelgaas@google.com,
 will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
Cc: Saravana Kannan <saravanak@google.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/arm-init.c | 66 ++++++++++++++++++--
 1 file changed, 61 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index 311cd349a862..617226d50774 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -14,6 +14,7 @@
 #include <linux/memblock.h>
 #include <linux/mm_types.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_fdt.h>
 #include <linux/platform_device.h>
 #include <linux/screen_info.h>
@@ -267,15 +268,70 @@ void __init efi_init(void)
 		efi_memmap_unmap();
 }
 
+static bool __init efifb_overlaps_pci_range(const struct of_pci_range *range)
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
 static int __init register_gop_device(void)
 {
-	void *pd;
+	struct platform_device *pd;
+	struct device_node *np;
+	bool found = false;
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
+	err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
+	if (err)
+		return err;
+
+	/*
+	 * If the efifb framebuffer is backed by a PCI graphics controller, we
+	 * have to ensure that this relation is expressed using a device link
+	 * when running in DT mode, or the probe order may be reversed,
+	 * resulting in a resource reservation conflict on the memory window
+	 * that the efifb framebuffer steals from the PCIe host bridge.
+	 */
+	for_each_node_by_type(np, "pci") {
+		struct of_pci_range_parser parser;
+		struct of_pci_range range;
+		struct device *sup_dev;
+
+		if (found) {
+			of_node_put(np);
+			break;
+		}
+
+		err = of_pci_range_parser_init(&parser, np);
+		if (err) {
+			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
+			continue;
+		}
+
+		sup_dev = get_dev_from_fwnode(&np->fwnode);
+
+		for_each_of_pci_range(&parser, &range) {
+			if (efifb_overlaps_pci_range(&range)) {
+				found = true;
+				if (!device_link_add(&pd->dev, sup_dev, 0))
+					pr_warn("device_link_add() failed\n");
+				break;
+			}
+		}
+		put_device(sup_dev);
+	}
+	return platform_device_add(pd);
 }
-subsys_initcall(register_gop_device);
+device_initcall(register_gop_device);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

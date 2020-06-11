Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC2B1F6414
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZYbBCwej0tbvfPSX/aIt+wRIYh1/WaXKy60zB98aN7U=; b=q8Bf589aR8Cadz
	oezNw4B0hNqU4U9lPHIr6F/wGwjch0zTNQ7ixT3I4QS/pu8p2Enh9FXFM78pXuvQt/KhS+kxuliZh
	jowBVmMspnka93krv/Awhh8T0spuitcQqJHUlMrkWU5dYOobWlkM/bB7ftbJhkHKXmDlm8xMnN67s
	5DnQoblVGaBZKpAvQtUnRZBtZYlXH2pkMLqOjad167pSoHh2UJrKUwNRX0s+prXBElfYzpKBw3/4W
	bD5TChRTPLGGYhoTV60WG/OlRV+N8oMrFV+XHiQsglZ1+x4lHdAnxKlvK9HKCGGiuWhK1eUh3Xqw+
	M/qpXEPeZYLPI4q69uZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJ0k-0005UV-CR; Thu, 11 Jun 2020 08:56:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJ0c-0005Tz-27
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:56:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id l26so4221829wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 01:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qU2/0Fjd1ahE8O8/RUC9rnziaw6fuJ/pHSo90+GxdTw=;
 b=nwzZSaUtT1vLeJgTi/P4p7LjDQgNEDz+mu3NpSEw/hURYs+PDyd4nRlXiwfcaim5eS
 XwxxhpC+OLrKSa9QQFu7sNaX23KBb5RIP608gOYHDxDINYvym/ELgsFNhAz8Kh+X1Hab
 cW9j97+2IqeCDDBekPTUKgYmw8SU/6MtcMr4M9L9aQhErFBhC9fkeAmHGow7MWk7otUK
 K4WKD07qyilJpnQ379k54Me/1gmrHqv7WMk2u61YAe2+oaennQWCOLeKd9dFgln/l49D
 r9rqsyTRVGEp/Bl5GZn697iZwGLv4klpswv3JCHo7j4hgxdtqS157jfgsqV0PdQy/+f7
 5N0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qU2/0Fjd1ahE8O8/RUC9rnziaw6fuJ/pHSo90+GxdTw=;
 b=b5SVk+zgUpvXq3imEw0HiHKljINv8Xzci5zEFp/QN1koi0NUF8q9INQ6URCfYCkN9Y
 wnxs+fGFqmIND3yyKp2YWECbwcqMbga8L/Ki1yUHNfB+/7eS55Sf3MZM9HFL84Ke/pV7
 2rYFoR+BVDgYDNGfycee9HG6INi2WdR/lcpeAggJqT9X5hzKTvaBXK4wr8hWseYspSOC
 ORDVeTvsI063kh9/tJQuEE5KDkq0h5+8dkMQJpnF5KHJQ40JmKRIc+WMWqNFxAyvoQko
 pjUyDCVZYvqmG1+leV/MwIvn/FawFYFdz80CSFwcYeoNzO27OfVgyzZInyZg53gbzExi
 5INQ==
X-Gm-Message-State: AOAM532F+DenfGjeQC7W4YooTzv8fe/KzksGmAu3vyvFaK1OVIViwOeb
 KzXLYaJVaGfbJbHxrZ4/wX/T+g==
X-Google-Smtp-Source: ABdhPJzXaneG4lOFPKYeervb9rEfTTYF/vkZIuAbfoin1q3Y/X4Md2QGSz2OzhZXHSmeOsTBz3A54Q==
X-Received: by 2002:a7b:c0d9:: with SMTP id s25mr7457364wmh.175.1591865784104; 
 Thu, 11 Jun 2020 01:56:24 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id u74sm3251717wmu.31.2020.06.11.01.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 01:56:23 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: andy.shevchenko@gmail.com, michael@walle.cc, robh+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux@roeck-us.net, andriy.shevchenko@linux.intel.com,
 robin.murphy@arm.com, gregkh@linuxfoundation.org
Subject: [PATCH 1/1] mfd: Make a best effort attempt to match devices with the
 correct of_nodes
Date: Thu, 11 Jun 2020 09:56:17 +0100
Message-Id: <20200611085617.2071167-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_015626_172213_35E6E1BE 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, when a child platform device (sometimes referred to as a
sub-device) is registered via the Multi-Functional Device (MFD) API,
the framework attempts to match the newly registered platform device
with its associated Device Tree (OF) node.  Until now, the device has
been allocated the first node found with an identical OF compatible
string.  Unfortunately, if there are, say for example '3' devices
which are to be handled by the same driver and therefore have the same
compatible string, each of them will be allocated a pointer to the
*first* node.

An example Device Tree entry might look like this:

  mfd_of_test {
          compatible = "mfd,of-test-parent";
          #address-cells = <0x02>;
          #size-cells = <0x02>;

          child@aaaaaaaaaaaaaaaa {
                  compatible = "mfd,of-test-child";
                  reg = <0xaaaaaaaa 0xaaaaaaaa 0 0x11>,
                        <0xbbbbbbbb 0xbbbbbbbb 0 0x22>;
          };

          child@cccccccc {
                  compatible = "mfd,of-test-child";
                  reg = <0x00000000 0xcccccccc 0 0x33>;
          };

          child@dddddddd00000000 {
                  compatible = "mfd,of-test-child";
                  reg = <0xdddddddd 0x00000000 0 0x44>;
          };
  };

When used with example sub-device registration like this:

  static const struct mfd_cell mfd_of_test_cell[] = {
        OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 0, "mfd,of-test-child"),
        OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child"),
        OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child")
  };

... the current implementation will result in all devices being allocated
the first OF node found containing a matching compatible string:

  [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
  [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@aaaaaaaaaaaaaaaa
  [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
  [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
  [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
  [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@aaaaaaaaaaaaaaaa

After this patch each device will be allocated a unique OF node:

  [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
  [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@aaaaaaaaaaaaaaaa
  [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
  [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@cccccccc
  [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
  [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@dddddddd00000000

Which is fine if all OF nodes are identical.  However if we wish to
apply an attribute to particular device, we really need to ensure the
correct OF node will be associated with the device containing the
correct address.  We accomplish this by matching the device's address
expressed in DT with one provided during sub-device registration.
Like this:

  static const struct mfd_cell mfd_of_test_cell[] = {
        OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child", 0xdddddddd00000000),
        OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
        OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3, "mfd,of-test-child", 0x00000000cccccccc)
  };

This will ensure a specific device (designated here using the
platform_ids; 1, 2 and 3) is matched with a particular OF node:

  [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
  [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@dddddddd00000000
  [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
  [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
  [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
  [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@cccccccc

This implementation is still not infallible, hence the mention of
"best effort" in the commit subject.  Since we have not *insisted* on
the existence of 'reg' properties (in some scenarios they just do not
make sense) and no device currently uses the new 'of_reg' attribute,
we have to make an on-the-fly judgement call whether to associate the
OF node anyway.  Which we do in cases where parent drivers haven't
specified a particular OF node to match to.  So there is a *slight*
possibility of the following result (note: the implementation here is
convoluted, but it shows you one means by which this process can
still break):

  /*
   * First entry will match to the first OF node with matching compatible
   * Second will fail, since the first took its OF node and is no longer available
   * Third will succeed
   */
  static const struct mfd_cell mfd_of_test_cell[] = {
        OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child"),
	OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
        OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3, "mfd,of-test-child", 0x00000000cccccccc)
  };

The result:

  [0.753869] mfd-of-test-parent mfd_of_test: Registering 3 devices
  [0.756597] mfd-of-test-child: Failed to locate of_node [id: 2]
  [0.759999] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
  [0.760314] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
  [0.760908] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
  [0.761183] mfd-of-test-child mfd-of-test-child.2: No OF node associated with this device
  [0.761621] mfd-of-test-child mfd-of-test-child.3: Probing platform device: 3
  [0.761899] mfd-of-test-child mfd-of-test-child.3: Using OF node: child@cccccccc

We could code around this with some pre-parsing semantics, but the
added complexity required to cover each and every corner-case is not
justified.  Merely patching the current failing (via this patch) is
already working with some pretty small corner-cases.  Other issues
should be patched in the parent drivers which can be achieved simply
by implementing OF_MFD_CELL_REG().

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c   | 102 ++++++++++++++++++++++++++++++++++-----
 include/linux/mfd/core.h |  33 ++++++++-----
 2 files changed, 113 insertions(+), 22 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index f5a73af60dd40..ecd5494c84747 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -10,6 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/platform_device.h>
 #include <linux/acpi.h>
+#include <linux/list.h>
 #include <linux/property.h>
 #include <linux/mfd/core.h>
 #include <linux/pm_runtime.h>
@@ -17,8 +18,17 @@
 #include <linux/module.h>
 #include <linux/irqdomain.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/regulator/consumer.h>
 
+static LIST_HEAD(mfd_of_node_list);
+
+struct mfd_of_node_entry {
+	struct list_head list;
+	struct device *dev;
+	struct device_node *np;
+};
+
 static struct device_type mfd_dev_type = {
 	.name	= "mfd_device",
 };
@@ -107,6 +117,59 @@ static inline void mfd_acpi_add_device(const struct mfd_cell *cell,
 }
 #endif
 
+static int mfd_match_of_node_to_dev(struct platform_device *pdev,
+				    struct device_node *np,
+				    const struct mfd_cell *cell)
+{
+	struct mfd_of_node_entry *of_entry;
+	const __be32 *reg;
+	u64 of_node_addr;
+	bool of_node_used;
+
+	/* Skip devices 'disabled' by Device Tree */
+	if (!of_device_is_available(np))
+		return -ENODEV;
+
+	/* Skip if OF node has previously been allocated to a device */
+	of_node_used = false;
+	list_for_each_entry(of_entry, &mfd_of_node_list, list)
+		if (of_entry->np == np)
+			of_node_used = true;
+
+	if (of_node_used)
+		return -EAGAIN;
+
+	if (!cell->of_reg)
+		/* No match defined - allocate the first free matching node */
+		goto allocate_of_node;
+
+	/* We only care about each node's first defined address */
+	reg = of_get_address(np, 0, NULL, NULL);
+	if (!reg)
+		/* OF node does not contatin a 'reg' property to match to */
+		return -EAGAIN;
+
+	of_node_addr = of_read_number(reg, of_n_addr_cells(np));
+
+	if (cell->of_reg != of_node_addr)
+		/* No match */
+		return -EAGAIN;
+
+allocate_of_node:
+	of_entry = kzalloc(sizeof(*of_entry), GFP_KERNEL);
+	if (!of_entry)
+		return -ENOMEM;
+
+	of_entry->dev = &pdev->dev;
+	of_entry->np = np;
+	list_add_tail(&of_entry->list, &mfd_of_node_list);
+
+	pdev->dev.of_node = np;
+	pdev->dev.fwnode = &np->fwnode;
+
+	return 0;
+}
+
 static int mfd_add_device(struct device *parent, int id,
 			  const struct mfd_cell *cell,
 			  struct resource *mem_base,
@@ -115,6 +178,7 @@ static int mfd_add_device(struct device *parent, int id,
 	struct resource *res;
 	struct platform_device *pdev;
 	struct device_node *np = NULL;
+	struct mfd_of_node_entry *of_entry, *tmp;
 	int ret = -ENOMEM;
 	int platform_id;
 	int r;
@@ -152,16 +216,19 @@ static int mfd_add_device(struct device *parent, int id,
 	if (parent->of_node && cell->of_compatible) {
 		for_each_child_of_node(parent->of_node, np) {
 			if (of_device_is_compatible(np, cell->of_compatible)) {
-				if (!of_device_is_available(np)) {
-					/* Ignore disabled devices error free */
-					ret = 0;
+				ret = mfd_match_of_node_to_dev(pdev, np, cell);
+				if (ret == -EAGAIN)
+					continue;
+				if (ret)
 					goto fail_alias;
-				}
-				pdev->dev.of_node = np;
-				pdev->dev.fwnode = &np->fwnode;
+
 				break;
 			}
 		}
+
+		if (!pdev->dev.of_node)
+			pr_warn("%s: Failed to locate of_node [id: %d]\n",
+				cell->name, platform_id);
 	}
 
 	mfd_acpi_add_device(cell, pdev);
@@ -170,13 +237,13 @@ static int mfd_add_device(struct device *parent, int id,
 		ret = platform_device_add_data(pdev,
 					cell->platform_data, cell->pdata_size);
 		if (ret)
-			goto fail_alias;
+			goto fail_of_entry;
 	}
 
 	if (cell->properties) {
 		ret = platform_device_add_properties(pdev, cell->properties);
 		if (ret)
-			goto fail_alias;
+			goto fail_of_entry;
 	}
 
 	for (r = 0; r < cell->num_resources; r++) {
@@ -213,18 +280,18 @@ static int mfd_add_device(struct device *parent, int id,
 			if (has_acpi_companion(&pdev->dev)) {
 				ret = acpi_check_resource_conflict(&res[r]);
 				if (ret)
-					goto fail_alias;
+					goto fail_of_entry;
 			}
 		}
 	}
 
 	ret = platform_device_add_resources(pdev, res, cell->num_resources);
 	if (ret)
-		goto fail_alias;
+		goto fail_of_entry;
 
 	ret = platform_device_add(pdev);
 	if (ret)
-		goto fail_alias;
+		goto fail_of_entry;
 
 	if (cell->pm_runtime_no_callbacks)
 		pm_runtime_no_callbacks(&pdev->dev);
@@ -233,6 +300,12 @@ static int mfd_add_device(struct device *parent, int id,
 
 	return 0;
 
+fail_of_entry:
+	list_for_each_entry_safe(of_entry, tmp, &mfd_of_node_list, list)
+		if (of_entry->dev == &pdev->dev) {
+			list_del(&of_entry->list);
+			kfree(of_entry);
+		}
 fail_alias:
 	regulator_bulk_unregister_supply_alias(&pdev->dev,
 					       cell->parent_supplies,
@@ -287,6 +360,7 @@ static int mfd_remove_devices_fn(struct device *dev, void *data)
 {
 	struct platform_device *pdev;
 	const struct mfd_cell *cell;
+	struct mfd_of_node_entry *of_entry, *tmp;
 
 	if (dev->type != &mfd_dev_type)
 		return 0;
@@ -297,6 +371,12 @@ static int mfd_remove_devices_fn(struct device *dev, void *data)
 	regulator_bulk_unregister_supply_alias(dev, cell->parent_supplies,
 					       cell->num_parent_supplies);
 
+	list_for_each_entry_safe(of_entry, tmp, &mfd_of_node_list, list)
+		if (of_entry->dev == dev) {
+			list_del(&of_entry->list);
+			kfree(of_entry);
+		}
+
 	platform_device_unregister(pdev);
 	return 0;
 }
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index d01d1299e49dc..cab307e41a327 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -14,7 +14,7 @@
 
 #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
 
-#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _match)\
+#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, _match) \
 	{								\
 		.name = (_name),					\
 		.resources = (_res),					\
@@ -22,24 +22,28 @@
 		.platform_data = (_pdata),				\
 		.pdata_size = (_pdsize),				\
 		.of_compatible = (_compat),				\
+		.of_reg = (_of_reg),					\
 		.acpi_match = (_match),					\
 		.id = (_id),						\
 	}
 
-#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat)		\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)	\
+#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize,_id, _compat, _of_reg) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, _of_reg, NULL)
 
-#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match)	\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)	\
+#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, 0, NULL)
 
-#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id)		\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)	\
+#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, _match)
 
-#define MFD_CELL_RES(_name, _res)					\
-	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)		\
+#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, NULL)
 
-#define MFD_CELL_NAME(_name)						\
-	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)		\
+#define MFD_CELL_RES(_name, _res) \
+	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, NULL)
+
+#define MFD_CELL_NAME(_name) \
+	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, NULL)
 
 struct irq_domain;
 struct property_entry;
@@ -78,6 +82,13 @@ struct mfd_cell {
 	 */
 	const char		*of_compatible;
 
+	/*
+	 * Address as defined in Device Tree.  Used to compement 'of_compatible'
+	 * (above) when matching OF nodes with devices that have identical
+	 * compatible strings
+	 */
+	const u64 of_reg;
+
 	/* Matches ACPI */
 	const struct mfd_cell_acpi_match	*acpi_match;
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

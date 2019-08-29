Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B9AA299C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkprmchhyxZz1YTqHdXOIIp3HYviDndSsP/4L5rF6Ws=; b=dfj4YLrroKBjF/
	aJJpLbO40ielVG6y7oOUCCT0vbiGcHjo//2+ep3AdlHcULsuNPoEvu57QuOfyS/9o3euWm8vlFuvo
	LS/QQ1+yjeRRvZFw3NeeYa7Qqg6OXunjf1LsiVugu9ieCcvZmxjvXNHoqHIBGOkds+JH+9GbLY+Wn
	6FVKyxgTqN/xv6DvZKP/FKPcB0sQrIblKRnGiCPr5fKit9RdYjL6EcFK/62cQH/XcIzKwyB53BPm6
	Fh/GDQmT5gtJQSP572+acU9HZ278MPgDukn+M3bFRE2Ym9DFhhrMieIl+FbKc50NywznDBGWhiYIn
	IiEWl522U4a34VwPWxYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Slo-0005hF-4m; Thu, 29 Aug 2019 22:19:56 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlE-0005Hs-JB
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id f22so5759528edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x2JwQdeRTi/hgvGya3SUXcpdHr3AMqxRJmguZS0isiI=;
 b=fMa8asTWe3nSoojjF5UDYpkAusc9bGVrfnq4cudtFqiVUelRztmeD7OuWQKxzoBXwx
 31u1L7vI++hZTMQ47Cb4n3eWOWFS3yRw6it7V+ZuDsG/3w5sZNAnMmdUoF99lJ4OFWOc
 iSt1s/nEHqAt4zCXl3Jcjyc+w2uaoviZBz0wPekdN6m/NLl4W3WyaNMghBvKm3Phrrx+
 nJBEQc3dnvdDZWh8oFIUFkuEvwL+LzVHToO6mxrQjEVRnCu52xh3jUaElrgtD8yQlh7H
 2fhzzSaZIsDhIKiaax8xCXs3RA33p7wIVm5REaWKX5Tqm9fTRLhr2EMUFjw5OHnHGi+P
 Z7Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x2JwQdeRTi/hgvGya3SUXcpdHr3AMqxRJmguZS0isiI=;
 b=AV0A//1iHhFkCZ1gm7rTr86k9IP11S2Ha2dAKSllKpJe9yIOc+8sHL2KESTFa0ukxs
 Ms9r2C0qrIt3WILs/WyuwsjGoX91P2x18J+lbI5685I8LoL8QBFqO4uTMDgZb1kzwnxq
 uWxczSxyMbaB2c4p57dvl7AFsThzkSB8T788EJ+RDw87CZlbO2RPVMzKHnddgEPshxUb
 sw4IGyl8MIlvv1BWuh1dGL0HyrctxMIZaqAgKmu13Qht5LLayrvzDwb0LF1Mik5UUbme
 focqs4BcNa2gESQGs8yUREeGHfmZ5BvfLwmeTR7vXhMFZ5bqWD0nhF0fABWEdLsrD1SU
 UCzA==
X-Gm-Message-State: APjAAAXo4EP6QbbdZc0gn/Aj13crsp0c6NRYtbLrJeF/SwgVYTxepo+b
 E0kW/4T0TjQGaL6g586qhMY=
X-Google-Smtp-Source: APXvYqwik/R8aKuqwauXQpDwXaxK1s18HWAuCScBbXbtHsQGzOZ3r99hcz+f+N0tH0yqRkCq7bWnhQ==
X-Received: by 2002:a50:b62b:: with SMTP id b40mr12750324ede.56.1567117159053; 
 Thu, 29 Aug 2019 15:19:19 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id f24sm662138edt.82.2019.08.29.15.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:17 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/7] soc/tegra: fuse: Implement nvmem device
Date: Fri, 30 Aug 2019 00:19:06 +0200
Message-Id: <20190829221911.24876-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151920_741076_ECBBEC79 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The nvmem framework provides a generic infrastructure and API to access
the type of information stored in fuses such as the Tegra FUSE block.

Implement an nvmem device that can be used to access the information in
a more generic way to decouple consumers from the custom Tegra API and
to add a more formal way of creating the dependency between the FUSE
device and the consumers.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/fuse/fuse-tegra.c | 82 ++++++++++++-----------------
 drivers/soc/tegra/fuse/fuse.h       |  3 ++
 2 files changed, 38 insertions(+), 47 deletions(-)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra.c b/drivers/soc/tegra/fuse/fuse-tegra.c
index 6617a4bd11bb..3ce2138b278b 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra.c
@@ -8,6 +8,8 @@
 #include <linux/kobject.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/nvmem-provider.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
@@ -31,50 +33,6 @@ static const char *tegra_revision_name[TEGRA_REVISION_MAX] = {
 	[TEGRA_REVISION_A04]     = "A04",
 };
 
-static u8 fuse_readb(struct tegra_fuse *fuse, unsigned int offset)
-{
-	u32 val;
-
-	val = fuse->read(fuse, round_down(offset, 4));
-	val >>= (offset % 4) * 8;
-	val &= 0xff;
-
-	return val;
-}
-
-static ssize_t fuse_read(struct file *fd, struct kobject *kobj,
-			 struct bin_attribute *attr, char *buf,
-			 loff_t pos, size_t size)
-{
-	struct device *dev = kobj_to_dev(kobj);
-	struct tegra_fuse *fuse = dev_get_drvdata(dev);
-	int i;
-
-	if (pos < 0 || pos >= attr->size)
-		return 0;
-
-	if (size > attr->size - pos)
-		size = attr->size - pos;
-
-	for (i = 0; i < size; i++)
-		buf[i] = fuse_readb(fuse, pos + i);
-
-	return i;
-}
-
-static struct bin_attribute fuse_bin_attr = {
-	.attr = { .name = "fuse", .mode = S_IRUGO, },
-	.read = fuse_read,
-};
-
-static int tegra_fuse_create_sysfs(struct device *dev, unsigned int size,
-				   const struct tegra_fuse_info *info)
-{
-	fuse_bin_attr.size = size;
-
-	return device_create_bin_file(dev, &fuse_bin_attr);
-}
-
 static const struct of_device_id car_match[] __initconst = {
 	{ .compatible = "nvidia,tegra20-car", },
 	{ .compatible = "nvidia,tegra30-car", },
@@ -115,9 +73,23 @@ static const struct of_device_id tegra_fuse_match[] = {
 	{ /* sentinel */ }
 };
 
+static int tegra_fuse_read(void *priv, unsigned int offset, void *value,
+			   size_t bytes)
+{
+	unsigned int count = bytes / 4, i;
+	struct tegra_fuse *fuse = priv;
+	u32 *buffer = value;
+
+	for (i = 0; i < count; i++)
+		buffer[i] = fuse->read(fuse, offset + i * 4);
+
+	return 0;
+}
+
 static int tegra_fuse_probe(struct platform_device *pdev)
 {
 	void __iomem *base = fuse->base;
+	struct nvmem_config nvmem;
 	struct resource *res;
 	int err;
 
@@ -150,9 +122,25 @@ static int tegra_fuse_probe(struct platform_device *pdev)
 			goto restore;
 	}
 
-	if (tegra_fuse_create_sysfs(&pdev->dev, fuse->soc->info->size,
-				    fuse->soc->info)) {
-		err = -ENODEV;
+	memset(&nvmem, 0, sizeof(nvmem));
+	nvmem.dev = &pdev->dev;
+	nvmem.name = "fuse";
+	nvmem.id = -1;
+	nvmem.owner = THIS_MODULE;
+	nvmem.type = NVMEM_TYPE_OTP;
+	nvmem.read_only = true;
+	nvmem.root_only = true;
+	nvmem.reg_read = tegra_fuse_read;
+	nvmem.size = fuse->soc->info->size;
+	nvmem.word_size = 4;
+	nvmem.stride = 4;
+	nvmem.priv = fuse;
+
+	fuse->nvmem = devm_nvmem_register(&pdev->dev, &nvmem);
+	if (IS_ERR(fuse->nvmem)) {
+		err = PTR_ERR(fuse->nvmem);
+		dev_err(&pdev->dev, "failed to register NVMEM device: %d\n",
+			err);
 		goto restore;
 	}
 
diff --git a/drivers/soc/tegra/fuse/fuse.h b/drivers/soc/tegra/fuse/fuse.h
index 7230cb330503..32bf6c070ae7 100644
--- a/drivers/soc/tegra/fuse/fuse.h
+++ b/drivers/soc/tegra/fuse/fuse.h
@@ -13,6 +13,7 @@
 #include <linux/dmaengine.h>
 #include <linux/types.h>
 
+struct nvmem_device;
 struct tegra_fuse;
 
 struct tegra_fuse_info {
@@ -48,6 +49,8 @@ struct tegra_fuse {
 		dma_addr_t phys;
 		u32 *virt;
 	} apbdma;
+
+	struct nvmem_device *nvmem;
 };
 
 void tegra_init_revision(void);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

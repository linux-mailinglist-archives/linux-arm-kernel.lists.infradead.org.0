Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBB3A4E09
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6dKWjgy6YcW44iqzg9QvqvrGodbAEFXLCub1hhwruE=; b=bY2tsQKGrWk1Ls
	V7vgD0ec1kZBZ5VNYpDQWJSeSIk+onb/PFnVJuenXXaqZZ1/6C/VaNJ1gcP0AjsIVMTwDkoR4KQip
	1jy1jxNrNKm1NfH/7LaKbq5EWlffi1fwAFQJhHYlKitRJO5ZD7G/n5Aqu1axLQmf8x2u0HlobDlKL
	AUkqqgUywiGKUX1T1S9TEJ/a0Ix2YYHVIUnZNehGnTOWlyn+eOk7UJfxn7nSqU1z5rZCR9aJ7mu2/
	EuFIxPnCxCgxgDNPHgM9OQL3w3Uzj7K4nrRFMlO4OUFSjWTJcv7pwd/KhCWZqsoytZHGapMAOXDfc
	adNA37/QP0doVxeiFmrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dUh-0001Fk-3O; Mon, 02 Sep 2019 03:59:07 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dUE-00012p-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:58:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 0CC4A44A;
 Sun,  1 Sep 2019 23:58:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Sep 2019 23:58:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=6HpwFSX23/R6f
 qQ1Vmx0lv614ze3IiqChsWjpEUZsHk=; b=nMCFMKow35QSDhSi44FBntAkPCA8R
 hpr7mWF9BVlaK6uFQ+S1uhXImb1U+G+v3mccDCBLJuO9F5+e3ZJ6t9BbnT0Rzwlt
 a86bMHprPe+3qBZUZuZkH3jW2eAezjVbe0GDmKFwYLEFXDMm6Lztc4jyf2k39UBu
 zIkDJOKpud+rtQF7rMFGmOmYf7p5iVNm+VZnXRoROKBkrljzJ28ZXygnYib75kec
 mg+AtHsrd/BDjyzscQHq3iEjVsO/ZSbQ3p1hzZ0vqST2srjvFhDDMTotxzSzNo49
 EVh4siLSD+PUNnGKX74XHGNPafgwznWrIEoT83VD1sBmSEEfBJSI2o8YQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=6HpwFSX23/R6fqQ1Vmx0lv614ze3IiqChsWjpEUZsHk=; b=Fd6KmWft
 1gg/nvdFoYNWtvYbUu6e5NNroZYZra5us7LqGeTZEAXIqtbuGzGofL2YgjGyJI2B
 bieEE12Zak5D6qZotkQP7IccvSJYmv9JqOy/Vz83hRmozVFiVv9AohbAMLBvRBU7
 fl8TuzLUCVbDC8Jd+NmLF+TRzhtmXaiE40H/9E+B9GQ0zmV9tMN6xKF6w1KMfqxB
 Zr1GZ1DOJx5r7hayRkfb5LV+hEoeXgA9Odrm0ySgqdOvNUeJzDc0/DZtG0u2mJZu
 fFKzVu5+oiQbz2wPLN8qyus1b6VN+3kM5vwh8S3r9HvhFCdSL+guMpScvFOMazLu
 Oo7eqbim2SwDNw==
X-ME-Sender: <xms:apNsXRINKU-hEJclL32ZGTQSIqUyAjksgqsINnv_ZaXC8gja6RauSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtdefrdehjedrvdduhedrudejkeenucfrrghrrghmpe
 hmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhi
 iigvpedt
X-ME-Proxy: <xmx:apNsXbqnNQg6UzznnOk2pKWxlMuuYqhqpWaPwfxavJ96zx7KQWNTRw>
 <xmx:apNsXQALeJMlZV3rwIJa5oHS3kVYvJLkJODDUKv81P4VhshN0ge2PQ>
 <xmx:apNsXY_qfw1QNrR2EAmrkCNKnzljNwHDJhkhOU0U3FdlJpEXT-a8sw>
 <xmx:apNsXXVYgpwm-tSXWW2Au-acbA2_x9x3X034qNeQLcghAbpdImqeog>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 46C91D6005B;
 Sun,  1 Sep 2019 23:58:31 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 1/4] mmc: sdhci-of-aspeed: Fix link failure for SPARC
Date: Mon,  2 Sep 2019 13:28:39 +0930
Message-Id: <20190902035842.2747-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902035842.2747-1-andrew@aj.id.au>
References: <20190902035842.2747-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205838_704980_ADB1E5B8 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ulf.hansson@linaro.org, kbuild test robot <lkp@intel.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Resolves the following build error reported by the 0-day bot:

    ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!

SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Guard the
callsite to maintain build coverage for the rest of the driver.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 38 ++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index d5acb5afc50f..96ca494752c5 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -224,10 +224,30 @@ static struct platform_driver aspeed_sdhci_driver = {
 	.remove		= aspeed_sdhci_remove,
 };
 
-static int aspeed_sdc_probe(struct platform_device *pdev)
-
+static int aspeed_sdc_create_sdhcis(struct platform_device *pdev)
 {
+#if defined(CONFIG_OF_ADDRESS)
 	struct device_node *parent, *child;
+
+	parent = pdev->dev.of_node;
+
+	for_each_available_child_of_node(parent, child) {
+		struct platform_device *cpdev;
+
+		cpdev = of_platform_device_create(child, NULL, &pdev->dev);
+		if (!cpdev) {
+			of_node_put(child);
+			return -ENODEV;
+		}
+	}
+#endif
+
+	return 0;
+}
+
+static int aspeed_sdc_probe(struct platform_device *pdev)
+
+{
 	struct aspeed_sdc *sdc;
 	int ret;
 
@@ -256,17 +276,9 @@ static int aspeed_sdc_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, sdc);
 
-	parent = pdev->dev.of_node;
-	for_each_available_child_of_node(parent, child) {
-		struct platform_device *cpdev;
-
-		cpdev = of_platform_device_create(child, NULL, &pdev->dev);
-		if (!cpdev) {
-			of_node_put(child);
-			ret = -ENODEV;
-			goto err_clk;
-		}
-	}
+	ret = aspeed_sdc_create_sdhcis(pdev);
+	if (ret)
+		goto err_clk;
 
 	return 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

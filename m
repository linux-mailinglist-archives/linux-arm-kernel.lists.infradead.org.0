Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26253348CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PiGCAZN/MGA662bz7CiVA0hQBVA5kG3Uk0MwGleyq0=; b=b0Slzx5vGpDUmW
	aY4B5yL1Q7LS3WGkNXZqRR+1Bwo2ry2SR5TRFafEgMmDw7PfVGMUH1h5/qbvbBTPtDq0ImoJVpbC5
	sv2a5Spea456Ehddq4T/6H3umhDjrjdTTaFm0t8oB9Y0Wb6xW8HygUi6Lix3GtkOrYtAK5HLnLXSy
	uQHqtDxonK3My0K6/fnnu2Lm0lmcdFhQ/KKlU7NWHSSXht30KphjMRAcI5O+oBTbhFN4bqobg96+v
	MNjXq1BtMCf6tyn+xwi9T3g12amMB/EOYmcTBHgvCwjT7jrErBtoeHUXeTYyqNOClwCjqi3OQEGyk
	IetYQRkIcpeyGW08Sixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Z2-0005jD-8n; Tue, 04 Jun 2019 13:33:20 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9YW-0004oD-Pu; Tue, 04 Jun 2019 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RfvV7ZEVCE0D/QH1puvv34eRoVr5xAL88W1PeCX6A4=; b=QLK9qgccwZz0HoxzkVaPP1pcF
 SfwHjvvQqDyPG+btn1WFvl5NpX+Lz/EOwcX3SA1+VisAYzIGMuYOZI768akfJ2Z5v2OdgjNfb/jFY
 Bj5Mryz1/EA5xEKWDtd++UZsh9IBc9Jrgiktk+z7EfoilmEniFgFJGsI4PXGYzHsHzgzMLkbivsYq
 G9Mfols2UpU5ZNiUCKVlXjKBG07iXTr4h5H7ulk8qoLS9XX1SSIGwTUqOBnCb4OfizVKcU9jnJTmA
 3dNBZEYPX6wVGN5JWMKV2i/SXV1exQegO743UkeSCWhDOqKt6GxZOXTgmWUnq3gE0BwLP0AaY8Dd4
 seb4ylCAA==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9LC-0004Hj-ED; Tue, 04 Jun 2019 13:19:04 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIrkc028239;
 Tue, 4 Jun 2019 08:18:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654333;
 bh=3RfvV7ZEVCE0D/QH1puvv34eRoVr5xAL88W1PeCX6A4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lqjILHti8GW+J9yPp0G2kM2m0NZYyrO/BSfrIqPN8c7pyHo1d+TOvideKNaLfh4WW
 QE1pti+R/YsfDiRspBX5/hRgrw5rwaxjTshIUyRxDvBxwCaDvYEgIY1SY8BH5SaYEB
 gX5DqC/pDEPB++4O+vUUISSafhwcpPPycN31ytEA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIraS044727
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:53 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:52 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:52 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGd098972;
 Tue, 4 Jun 2019 08:18:48 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 23/30] of/platform: Export
 of_platform_device_create_pdata()
Date: Tue, 4 Jun 2019 18:45:09 +0530
Message-ID: <20190604131516.13596-24-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141902_707553_EABF12F7 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export of_platform_device_create_pdata() to be used by drivers to
create child devices with the given platform data. This can be used
by platform specific driver to send platform data core driver. For e.g.,
this will be used by TI's J721E SoC specific PCIe driver to send
->start_link() ops and ->is_link_up() ops to Cadence core PCIe driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/of/platform.c       | 9 ++++-----
 include/linux/of_platform.h | 3 +++
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 04ad312fd85b..94e0f733461a 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -169,11 +169,9 @@ EXPORT_SYMBOL(of_device_alloc);
  * Returns pointer to created platform device, or NULL if a device was not
  * registered.  Unavailable devices will not get registered.
  */
-static struct platform_device *of_platform_device_create_pdata(
-					struct device_node *np,
-					const char *bus_id,
-					void *platform_data,
-					struct device *parent)
+struct platform_device *
+of_platform_device_create_pdata(struct device_node *np, const char *bus_id,
+				void *platform_data, struct device *parent)
 {
 	struct platform_device *dev;
 
@@ -203,6 +201,7 @@ static struct platform_device *of_platform_device_create_pdata(
 	of_node_clear_flag(np, OF_POPULATED);
 	return NULL;
 }
+EXPORT_SYMBOL(of_platform_device_create_pdata);
 
 /**
  * of_platform_device_create - Alloc, initialize and register an of_device
diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
index 84a966623e78..0f1f58775086 100644
--- a/include/linux/of_platform.h
+++ b/include/linux/of_platform.h
@@ -70,6 +70,9 @@ extern int of_platform_device_destroy(struct device *dev, void *data);
 extern int of_platform_bus_probe(struct device_node *root,
 				 const struct of_device_id *matches,
 				 struct device *parent);
+extern struct platform_device *
+of_platform_device_create_pdata(struct device_node *np, const char *bus_id,
+				void *platform_data, struct device *parent);
 #ifdef CONFIG_OF_ADDRESS
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

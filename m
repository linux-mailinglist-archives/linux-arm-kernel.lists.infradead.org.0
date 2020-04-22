Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F8A1B3CE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iYOqE/OuP/f/gbeAVWcagwV9wk83uOCWYumEzYILy5o=; b=pEP5xbeGDPBSeM
	4Zbtdf5enAb7I9eVSPkJhO1I8gQRYneNO6SBq0rhwBb0W/KdGtS8PgINDgGIRF7vUwtPZ/PfKdZqW
	hP++C3itnGx6SWIhLuJWpvuLpsiJt+HcJRvtuW21ffGAmYNm2qJIzp4Zg8sB6j828BByNvCzeMMZA
	+fukcAE9kOQav63AAjChPl7ekn7Aa4oH8g5XbUus12AMkP77jsayPHcsFikbUEdNcLQTTn5AKH6mr
	LhwRwfZVgBcce8S6+Y9PEO41W2vij695K6I9O5lmbugaX5NBYA3CKjPMPdkPnGiKnqtX4/HEAZqTM
	uIldGthmc1Uf/k2UNZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCKj-0003zg-Sa; Wed, 22 Apr 2020 10:10:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCKY-0003Gv-9E
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:10:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id u6so1630437ljl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 03:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eVpuV9906kTdH8kjynNF6G4cMp3xW329yIZR2pMpgr4=;
 b=gz85oKIIWH5onOAX7yHN644ZgaDeGOH22z4QW3dFCjsQm4l+4JWTJo7PfmpPjDGFft
 XxBdaYeN7nKECc8t3WmGqFz9zW/uu77kGEPXIXhk0gE8OGEr3yOg7k2tIG7VHqppeC0z
 dHqFUUbvhKyF4nocekpBRtF9JXkOquUcuduNq/gUnjyNc9NYUb2P7lBZJQNoMuUijcTA
 piOcMylf1fKLEnNbPRvbYVUxvcQ58xJqizUGxJ6eTO5JPsQWZqYBk+gmA21gbh8J3Fys
 r0+fdE782jU5LP9EtKfg3RXEWGWp8RrxcyqN1KHxk+RmZ0rKSpm1/5LITPymBGkcKBFb
 U+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eVpuV9906kTdH8kjynNF6G4cMp3xW329yIZR2pMpgr4=;
 b=hirNDn0eBaVCl0jhvz61vobOUfxXqW+KmEefVYthBnyGe1TaellipcN586cIutxc0p
 0ijs8dam68a8D9DXZk+B7Yguq1fEdf/b7heBHwq1Sbsh91TffgB0y15uLK3w6RUPr4DU
 XMlUZ3SWZE1zjd3NnM0lyT8T/wkCU781QBq1p/XlvrqoBtC4vA0R+8WMHDBHP5IT1uDz
 kcNhAPZJ8hkzoggJli9CX2i3bPdHmB2iCj6ZnvaqPBPxeXD0jSCaRJxPmgw75335QWDy
 9xm0IRN+TXf8eIvhPQNltUg/CEokQqHBrCsBJ6ErCh1jtf31WFfNcWnNklqVfNrh4cJ5
 9CqQ==
X-Gm-Message-State: AGi0PuZYWDwIJ7K+5HjMQ56gKqVFNhOtsXaelhN2zg/RiAHSkd6z1x5U
 7ZN/bQmJeNyFH8B0eFtzTywZwb7B/3I=
X-Google-Smtp-Source: APiQypLzg0y5Fg8LOd4XLWjOORnygZbpUDG7xZWJc87sQhB/LR5OrVVWb/3kGnX6Jb5WRwXKr//wGQ==
X-Received: by 2002:a2e:5746:: with SMTP id r6mr15361642ljd.15.1587550208106; 
 Wed, 22 Apr 2020 03:10:08 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id v18sm4649962lfd.0.2020.04.22.03.10.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 03:10:07 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v2 1/2] driver core: platform: Initialize dma_parms for
 platform devices
Date: Wed, 22 Apr 2020 12:09:54 +0200
Message-Id: <20200422100954.31211-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031010_359453_A0C724DB 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 stable@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the platform driver's responsibility to initialize the
pointer, dma_parms, for its corresponding struct device. The benefit with
this approach allows us to avoid the initialization and to not waste memory
for the struct device_dma_parameters, as this can be decided on a case by
case basis.

However, it has turned out that this approach is not very practical.  Not
only does it lead to open coding, but also to real errors. In principle
callers of dma_set_max_seg_size() doesn't check the error code, but just
assumes it succeeds.

For these reasons, let's do the initialization from the common platform bus
at the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

Suggested-by: Christoph Hellwig <hch@lst.de>
Cc: <stable@vger.kernel.org>
Tested-by: Haibo Chen <haibo.chen@nxp.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/base/platform.c         | 2 ++
 include/linux/platform_device.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 5255550b7c34..b27d0f6c18c9 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -380,6 +380,8 @@ struct platform_object {
  */
 static void setup_pdev_dma_masks(struct platform_device *pdev)
 {
+	pdev->dev.dma_parms = &pdev->dma_parms;
+
 	if (!pdev->dev.coherent_dma_mask)
 		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 	if (!pdev->dev.dma_mask) {
diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
index bdc35753ef7c..77a2aada106d 100644
--- a/include/linux/platform_device.h
+++ b/include/linux/platform_device.h
@@ -25,6 +25,7 @@ struct platform_device {
 	bool		id_auto;
 	struct device	dev;
 	u64		platform_dma_mask;
+	struct device_dma_parameters dma_parms;
 	u32		num_resources;
 	struct resource	*resource;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

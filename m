Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06F199E32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAS0B28NRBKEuTInopzqWHG6aqjv7XNEr/aM+c2k1oU=; b=RyEgD1wy+2khSd
	NV2SSZ6+fBDLTXjpnf1NeONN6POn5Wd1o0aWEGECciYVz5IVi58Q8da2s5oKe5EH+kVzUJB8Zauet
	6krRAYd+lbJnlhtXtA5psTpwiHBplW77GVlbYhqTn9VWWKFO1X6MqfKYqr/Fj95w0UndJA3mWOyaT
	MxTKxK1zet8JPF2mNzTxZyDglAUzQBN0qO1u08Wk/+J4WFqspmS6Q8NPBPGtNvRaGsDdnz5uNbLyW
	1CeXTX0EBbZzh7BUcXO1tVBH6limP1zN1ZRx71aS8+e3bw6FU8rphm5UBnEJyiEjE7VIzSIJkCjQQ
	m39YUEvJIRAKnR/FAxlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLnG-0007pC-3X; Tue, 31 Mar 2020 18:39:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLmn-0007dC-31
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:38:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id j17so18170667lfe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ef53u72gwX154C7xAMYz+wCT3OMfVTWwHYstmLaCNlc=;
 b=cW0Tj1W36bWIKjTQK8D9mJ/96C2vkHPZEcGEzeHzqpZy67M9jPUIyXRV5YA1X2DaHZ
 Nzpvr5UpM29BGo6lks/pgSsnJES6sPStXAo9uafNp0/NlfHr3bJpYjCISQ8jc5IydKuv
 iHi7rqNqMiHP+rAsoHJW6SVRpUMNK/RhN1BJmik/agnq4A1zJm38xhfmtxsDxu/c/PYf
 KNl0mzd8Klq3O9ErQheYvhlwcsAQ4RCIuLEvbAx+wakyHiycLj6pt8B00BtM7cBGB0Ac
 wuqLoq169V2kl68TDfQyIlc5tkHPXYmP1QNVQrAI2ij9lp2xx6LLurbGqM9Jaes8Dvlv
 3IgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ef53u72gwX154C7xAMYz+wCT3OMfVTWwHYstmLaCNlc=;
 b=MwqKTmUPv/m+QbohXbEkcGYsV0t+d16Xzb4dn6igi7xcPMA4F/DPB4sNyBL1HXYLyj
 ed1GV06cjWWVP7wMl0YUJuVzWGQTVzf79y/z8n++clhCsT3Pu9ocC96s5ZiPRDFNoEOd
 FKeOKXE+vEitMTnJJRV1U28TW61saXGFLQH5nUVsxUN5ug6QjmlfPNOUyabvx9ivlZdb
 LXVi9D3836dlo0BAD7slaLeKE71a/D1fOsaNHk0RA63xHMPDbU+3Vftu48gYYPqqio8D
 xGltivv8IUanjIV7U25hBxJpxxRzoRDN5Nz6muVECnCMzQ9urzQ0QtxLGVIot2tmhTnB
 OWuQ==
X-Gm-Message-State: AGi0PuaJitRxEHCXMwL83c4nKhBom0TqhQt+gHY14YULbOIIseywlYDU
 6Qy5j/oFk9d0SqqmQgABaN9OLw==
X-Google-Smtp-Source: APiQypJlHBdy85VzPZtpSqUGdPox7hK2Nb2Ow9qHdh0GVGjkZIEzlPooZMXhxhreWPUR3bq6fB+QZA==
X-Received: by 2002:a19:c507:: with SMTP id w7mr11146673lfe.131.1585679930697; 
 Tue, 31 Mar 2020 11:38:50 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b28sm10331849ljp.90.2020.03.31.11.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:38:49 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] driver core: platform: Initialize dma_parms for
 platform devices
Date: Tue, 31 Mar 2020 20:38:43 +0200
Message-Id: <20200331183844.30488-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331183844.30488-1-ulf.hansson@linaro.org>
References: <20200331183844.30488-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113854_540941_3522DFEC 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

---

Changes in v2:
	- Move initialization to setup_pdev_dma_masks(). This means the
	initialization is done also in the OF path.

---
 drivers/base/platform.c         | 2 ++
 include/linux/platform_device.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index b5ce7b085795..c81b68d5d66d 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -361,6 +361,8 @@ struct platform_object {
  */
 static void setup_pdev_dma_masks(struct platform_device *pdev)
 {
+	pdev->dev.dma_parms = &pdev->dma_parms;
+
 	if (!pdev->dev.coherent_dma_mask)
 		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 	if (!pdev->dev.dma_mask) {
diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
index 041bfa412aa0..81900b3cbe37 100644
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

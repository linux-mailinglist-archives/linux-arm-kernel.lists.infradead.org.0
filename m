Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F52192738
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6XekkO+MtBIqfSNpdO5X3+x4xG3wzEYuWelhROrUis=; b=YbVBupZvmppeF5
	U8sRj5gN3dSOtL2Y+UYrgmlDPbohqpsk+HW0F6VuqrwvqR5XyI/cRnJou7lYucKeTJqPXiV4F/CJM
	Hu2INj6rRcgLy+JT9602fUj13Icq8etSY9ql4V+Lk9xv0lEtVJuPK+x+R3idJJ8SXv482381r5roV
	WYbUbAodhygWulIAFzTJNIqSzvNNqiqxFhPPt7jTZjznalhhGR9YoMOZ68yXGn8L9eIQZwvvnVyTa
	dCwIdiAIf1Jl1t56VrhJ7saZNg6cxQMUZtxaum6pU6UbC3+shKm+pmkeWLiivfIZ0Cm9LonWHZJ52
	ig49R/xNuddu2VYfYEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4JE-00067Y-6c; Wed, 25 Mar 2020 11:34:56 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4Io-0005tI-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:34:31 +0000
Received: by mail-lf1-x144.google.com with SMTP id v4so1436865lfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QPegYuSfHcA3EBvl8rBN548IrIHva7Siiqx3+i9i/fk=;
 b=aXIfbdqkfrWHNMJxk7rgpfQnHosJstUgv+nPJg8nxRo+9pKouM26WAI5jitlKG5zYm
 dZx7N6OfzJ8B8lp5AR5Z/nKynJm5BIZo5mfsjpnAouFOVrITTq+MpsKOdTK1TnVZGr6J
 ZXD2xs25UMtjG5Seqi4Yh5xID9TbudX70og/9CFMxinK3V+PWmxJYgvnCCYaBfOylFDU
 sGLI80eAP38UiXXmS6eBcqtzZVijLUoii6AuDKzHfZGoxLxCvXIxIjGTYuwjdAwTyjxy
 RcJsKyFXDpgd4yPdbiI4DwWjQrdAE5T9nhViX9NpC7LDGEGvjepXCx2QLRJr9XWlR41n
 bh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QPegYuSfHcA3EBvl8rBN548IrIHva7Siiqx3+i9i/fk=;
 b=bQ7rAxsn8LTgLWqIO3OjvndnhuTuytCgdS9VpQ+Jgl7eRaF8Zqq7IDyj2jDihJdbbi
 29Oj7oQBdywSZ+TP1yxdE7PbsK3hwqSusRLr12BTLud+1TWJc/zlpxpajqN71GGCQbmq
 58+PVUTf0CHnr53QNloaJWh1OyEcZZE6bgSbeYpb0gaoE8TorEq1y5cWFvTPkVWblaDg
 BJzkmMx1pmY4n280GZD58dA3cEGm3jvecKmSE+ijfsP8SuVZnIup+TcWgO0jq1BBhYr+
 igshVZQ/sViJNHJUp6mdiM6pdhZwn5FIv3DmyKXUt41cpeX4h+bThUG/mKs3rH/DyQj2
 Zj/w==
X-Gm-Message-State: ANhLgQ2fQTMSud7oF0VWwGOtpGaH5uw89DX4liNBOWvCUgDI/f7CvEe3
 XQVVX3B7MSoPW/hos/i1ASVimKI0prY=
X-Google-Smtp-Source: ADFU+vuRSm6/etAQz80VrEgGUDZc5VTTv9FpBEJTzRn3gDVEDfDCfTlInPIezeIUpXLoXiDhoHUYOw==
X-Received: by 2002:a19:4cc2:: with SMTP id z185mr2098414lfa.0.1585136068643; 
 Wed, 25 Mar 2020 04:34:28 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id v22sm3920009ljc.79.2020.03.25.04.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 04:34:28 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] driver core: platform: Initialize dma_parms for platform
 devices
Date: Wed, 25 Mar 2020 12:34:06 +0100
Message-Id: <20200325113407.26996-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325113407.26996-1-ulf.hansson@linaro.org>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_043430_062472_7C088535 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
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
 drivers/base/platform.c         | 1 +
 include/linux/platform_device.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index b5ce7b085795..46abbfb52655 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -512,6 +512,7 @@ int platform_device_add(struct platform_device *pdev)
 		pdev->dev.parent = &platform_bus;
 
 	pdev->dev.bus = &platform_bus_type;
+	pdev->dev.dma_parms = &pdev->dma_parms;
 
 	switch (pdev->id) {
 	default:
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

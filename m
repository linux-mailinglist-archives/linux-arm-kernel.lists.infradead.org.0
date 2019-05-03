Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16313136
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07b1xyL5vUTrI7SbRWLEJZizSRLgfJMqaaMeZzQ2rg4=; b=JvYrtxNVH//FRt
	IDTAjTd9361r5MFk7CfqobFN4sUe6bQYpkqAwrL7DzWU8DU8kzcKCmV/XVc8A4uIMfKv9SHm6lKu4
	F+J85C6LccfiL2UYYquWEpKimkbAsWmTtBGXufFaUuFqC2G7sR6wFhnJcXRaQN2qukEf99gu056RU
	WKWwPJrIzexzTV2hJzoEt625XAi/whAGrQkLvuVBYXgCvh5ruRd++O7qlimrXGkAxrwapQ1Q922JL
	wicKyyKM0WLA1w9W/KzhOF7cLTDPwMQfZ0S9KZV6knkcvcViQJgkD2AnCqrSSQfzclAykBTmRkhGN
	SF8LO+3DIaGhWWoCji3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaAU-0002Va-Na; Fri, 03 May 2019 15:32:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAN-0002TK-Jq
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4613EBD;
 Fri,  3 May 2019 08:32:00 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9AEE13F557;
 Fri,  3 May 2019 08:31:59 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [PATCH 2/4] drm/panfrost: Disable PM on probe failure
Date: Fri,  3 May 2019 16:31:43 +0100
Message-Id: <2487391e7646cabbc52e9b4c20182e39d3f61859.1556195258.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
References: <cover.1556195258.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083203_660253_B45342CE 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure to disable runtime PM again if probe fails after we've enabled
it. Otherwise, any subsequent attempt to re-probe starts triggering
"Unbalanced pm_runtime_enable!" assertions from the driver core.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index af0058ffc1e4..a881e2346b55 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -405,6 +405,7 @@ static int panfrost_probe(struct platform_device *pdev)
 err_out1:
 	panfrost_device_fini(pfdev);
 err_out0:
+	pm_runtime_disable(pfdev->dev);
 	drm_dev_put(ddev);
 	return err;
 }
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D67129A2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xvq1VRZSFRyp0QwIRC0z73BNWKSuGOYeGOqjJHqE5bM=; b=cu7ArZG93MXtAJ4t/sp6pq2y0f
	xm5E7q1VZcdZQ/77ENbDPkzHTxYmR6BuXiRZUMCwCLcBkoBAEgdE2tSwpinKhppNaopCMAlbZbZma
	5fwMMjnmWAihMhGxkuvrUYK/+RdRYsK8ZKgVYcji5lwBlYkB6tCpS73nfatSuzawwUP3nSZZ8lyri
	ZWdDWq6CdyNejMUK4INzkU5DjwoaqIcmKh4qfbW7KladXtXuzO+WpTUZSSVTPRsPGeZMFWthU2A+K
	ZYMXiaSxHqV40l1JP04Xd4k5UmpRVimFXIT4mojyIN/OOxPbxqlfZ9KJpYdOMc/OUo8pDcVyeMO9T
	hPFDJnKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSwC-0002oy-1i; Mon, 23 Dec 2019 19:00:16 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvL-0002Tr-Lk; Mon, 23 Dec 2019 18:59:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s7so153623pjc.0;
 Mon, 23 Dec 2019 10:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=t2pcE/zB/zRFa+D+0DGOcMCSuy9rY9vAk3qxszJwLvo=;
 b=H87+VOrxrVlOydWiSP/CZqoU2QHdFei/jyBu887pLm+G9l7owgyTBs5Yc2xPwbf+cF
 2A/Z2a957FZNCq5ePoWmbgsjUXO3HoS2RterAFvRDcnuiWFq56AITBhwSig4wDQpcjod
 4UmZ3oPM57B75+90Uv4tfswd7l2D+miZNLWKs0PV7rIN2f9huUDrTjekZev4ZwKgAUda
 6IdAK5hLSt1s2wgiIbrUOfWBdEzP2VVYq8u8Y8LmWMrBcEdnkb/nE9GJJn6AL9IGTi9Y
 9UVTNDE1xGhL2hu+PsmhLP30C51H8vCllgDS25vuLUF3UF2qxiMgSIeF5F2AfFw97/ZA
 GdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=t2pcE/zB/zRFa+D+0DGOcMCSuy9rY9vAk3qxszJwLvo=;
 b=cmjVIS2e/fTMIzWAoHBP+ejIGeikGxs9TEH/qCdgvlpptLtSa7Q7NvF4Jmwl4+8WHG
 uzueEFg4OtieaPhpCyxUr08/rpp/c5wwF/WhpgTxgWRGY/5QBOmode08x0o1OTvsN0qx
 hTJOdhtKzazRD+ElHwvKFr6kCGIUl/v2WLcoh3f4HwYEmbn+DYrr7hXGHeBWTZq6xC/I
 jDKNZqufwBybijab+5b/4XpzUzlfLyeug0qB7Q0jaHR+GsGk9NIskLlv1fIvy6LnmEZe
 SnFVnKOCj8AleXSuOj6aiIavhdXwnEYdIaS+mUOLNkyfnQI0F8f8lm1Je9K0BE0/LcoD
 S4Vw==
X-Gm-Message-State: APjAAAVmr9/UBO3aWXTYTCM/UjdcAnDQlBgfjVgsKwPVHzSiSShiz5Ah
 QCToiWaxGyj0+cJI9HYdffU=
X-Google-Smtp-Source: APXvYqxwTeofmvSQXzsVzn9vv5ovtl+Qlq7vr/WZrlMMh2w/A1BzAZFQoZorn2f8/xm484BESZek6A==
X-Received: by 2002:a17:902:7b91:: with SMTP id
 w17mr31189741pll.94.1577127563256; 
 Mon, 23 Dec 2019 10:59:23 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id v8sm24823853pff.151.2019.12.23.10.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:22 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH] virtio-mmio: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:13 +0000
Message-Id: <20191223185918.9877-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105923_711906_1C9A4E9C 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code, which
contains platform_get_resource, devm_request_mem_region and
devm_ioremap.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/virtio/virtio_mmio.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index e09edb5c5e06..97d5725fd9a2 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -531,18 +531,9 @@ static void virtio_mmio_release_dev(struct device *_d)
 static int virtio_mmio_probe(struct platform_device *pdev)
 {
 	struct virtio_mmio_device *vm_dev;
-	struct resource *mem;
 	unsigned long magic;
 	int rc;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!mem)
-		return -EINVAL;
-
-	if (!devm_request_mem_region(&pdev->dev, mem->start,
-			resource_size(mem), pdev->name))
-		return -EBUSY;
-
 	vm_dev = devm_kzalloc(&pdev->dev, sizeof(*vm_dev), GFP_KERNEL);
 	if (!vm_dev)
 		return -ENOMEM;
@@ -554,9 +545,9 @@ static int virtio_mmio_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&vm_dev->virtqueues);
 	spin_lock_init(&vm_dev->lock);
 
-	vm_dev->base = devm_ioremap(&pdev->dev, mem->start, resource_size(mem));
-	if (vm_dev->base == NULL)
-		return -EFAULT;
+	vm_dev->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(vm_dev->base))
+		return PTR_ERR(vm_dev->base);
 
 	/* Check magic value */
 	magic = readl(vm_dev->base + VIRTIO_MMIO_MAGIC_VALUE);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

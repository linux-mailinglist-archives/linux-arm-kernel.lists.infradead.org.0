Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A04A129A3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X9yGZgy9uJU9butjVRZnVM7Y5Zgwg0hcLyQh9w9rTHg=; b=B+tG5W4EnIizwoU4WH+/gelLOL
	j2lwr675nwK08gSg5syfuSBBQGyYdd+kL571jhER+usdRt8VCwY92cFJCv8eBuERqhgTXqMOKe3aH
	P63OU7B7MPSmqANtkW0wakdVnp3GHp7AOZvT+V6L0FML/iMUVi5SJFj7+nyfliL8IgBJK9Ydf0kG/
	uNebZbrI0T4Mn1JSW193KtHB86xDrXDt+ALEz8AEMMuy9e0FZ74zyNzbKS/0vHJA/Y1ZNGLUCkpJP
	gSjR8Nz11WvouqrJjDRxpLBvbfjVYIHZ+J555q01TF9IWYSY4LH1u+zvJmvwxss1MnKudCc9qk4My
	cYsm8JeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSxW-0005Pn-HX; Mon, 23 Dec 2019 19:01:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvW-0002cg-Fd; Mon, 23 Dec 2019 18:59:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id r11so9265321pgf.1;
 Mon, 23 Dec 2019 10:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5ZbWphWmX6hvFuVRk+RWFgQofrZKH9eYm1th2d0tMTE=;
 b=sj3ScPvYKe5RHFI5xmOOMlBPRjGR/tgOjWkESOKIqqPmaDssnIshdfvUqClYJX9tBI
 aWTj09Nymr7gywt/h1PZWcO4ZCSrk4jUIfNb9EczsWNEBsdXnKKNITMxCjyYVu+s19l7
 YAXAq4G5jR40lkSkK0YEvsK99KKl/GnrZZaTiZ3SpESVNG2IP5Ulkq1MmJRItVOmbX6v
 XMrllxsXefXzoO2sZFtT//QIbDgjkg0TqQCyXeh2aZuxSrgKCrkqi5gQmYuZ8AUI75qV
 YnI+G38Iba0W+Ixlv9IzdrnX4eE2J66bcVf5qNE5uqUZPU3l5fAfYo7YPXp3fl8fFIqR
 lw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5ZbWphWmX6hvFuVRk+RWFgQofrZKH9eYm1th2d0tMTE=;
 b=RcIMc6AKsXgYW6nY9iTOBVWmgREfAlzsvLRCvCT1UDIv/E3VF6R/4sRefttktHlNA9
 O07ALcAbLnbiXhGCtto2Qmq8ovER2Ie9l28MhtWcMzDlcYBN33j4wrh75z0kfXaa2U+g
 YGCUTSzF0nHb3vHkupPKEVwVEC8oucFgxdlU1uu3chDXzvbHRMTvUADyEbHvRChSRlmN
 FaUrrXVmXrt3tTlef6UaExjpctDU4hOAW/mSakEUpW1hnQiv0s71RAa1NcuqnrVM46MN
 4Hlesp8jEmAXjqH2fuIVWvt6pqdwLJUBfjoVsPes7dcILsk5vcRLwWa2FTo3kvd58abb
 k+Aw==
X-Gm-Message-State: APjAAAWCD7SbxEMX05+xVd797PUgGpvhyIOa0rY/BFMX95bt0qVjJxjj
 7ncPwq5K4dNiMCfMkGTgPVQ=
X-Google-Smtp-Source: APXvYqyfnDFqyHRd1X6VzN2h1ANIGyik0u9/k4DGw0m2HkGzu2Jgf7Z0vBWv5sTHp/iv1nwqNbTz6Q==
X-Received: by 2002:a63:214f:: with SMTP id s15mr34495783pgm.238.1577127574002; 
 Mon, 23 Dec 2019 10:59:34 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d5sm21091646pfd.107.2019.12.23.10.59.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:33 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH 6/6] iommu/rockchip: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:18 +0000
Message-Id: <20191223185918.9877-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105934_585103_FCA47419 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/rockchip-iommu.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index b33cdd5aad81..c6d50396f4c2 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1138,7 +1138,6 @@ static int rk_iommu_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rk_iommu *iommu;
-	struct resource *res;
 	int num_res = pdev->num_resources;
 	int err, i;
 
@@ -1156,10 +1155,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	for (i = 0; i < num_res; i++) {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		if (!res)
-			continue;
-		iommu->bases[i] = devm_ioremap_resource(&pdev->dev, res);
+		iommu->bases[i] = devm_platform_ioremap_resource(pdev, 0);
 		if (IS_ERR(iommu->bases[i]))
 			continue;
 		iommu->num_mmu++;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

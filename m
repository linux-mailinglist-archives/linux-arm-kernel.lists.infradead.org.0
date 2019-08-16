Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D9290ADB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 00:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alpun+x4a2UPKRQamiGavrw7IrF7AYwSYxF28R8tIB4=; b=JohDcX6tqmSxkx
	pZ3BS8ANC0WLoq1GxFEkBOxsrqcai60snQkEfjn3n+yi0gm+YX6GPkBcNSVxKK/rMXZctJDDpqEr5
	8/dJLl7wS5viLeGYRUIv7gpoh+1H0rhw2JkXk9pnojqwuwruxCFy1OWZdIGXHvijwDGqUZBAZYCze
	KKlvyHdOSrnSSPpOBEwHZL4wUi8aN+lZ3LSCT1Dbyy74avlpij9gHma1HUEIXnu9PzGkezzmDJlFg
	7ctdeAKwQu0pc2ei34n022MgbZuOsKbMWNXWgkersNOmO8LQpKzGpQ+eww1owRlEHTqROPb6XdYKZ
	AUIAjfQMwngtuuGg+bxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hykbp-0004zm-59; Fri, 16 Aug 2019 22:22:09 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hykbd-0004yf-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 22:21:59 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hykbY-0002Yt-Bx; Fri, 16 Aug 2019 22:21:52 +0000
From: Colin King <colin.king@canonical.com>
To: Pankaj Dubey <pankaj.dubey@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH][next] soc: samsung: exynos-chipid: fix memory leak
Date: Fri, 16 Aug 2019 23:21:51 +0100
Message-Id: <20190816222151.11098-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_152158_151855_67D8215A 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently when the call to product_id_to_soc_id fails there
is a memory leak of soc_dev_attr->revision and soc_dev_attr
on the error return path.  Fix this by adding a common error
return path that frees there obects and use this for two
error return paths.

Addresses-Coverity: ("Resource leak")
Fixes: 3253b7b7cd44 ("soc: samsung: Add exynos chipid driver support")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/soc/samsung/exynos-chipid.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 006a95feb618..4e194a97c0fa 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -81,15 +81,15 @@ int __init exynos_chipid_early_init(void)
 	soc_dev_attr->soc_id = product_id_to_soc_id(product_id);
 	if (!soc_dev_attr->soc_id) {
 		pr_err("Unknown SoC\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto err;
 	}
 
 	/* please note that the actual registration will be deferred */
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
-		kfree(soc_dev_attr->revision);
-		kfree(soc_dev_attr);
-		return PTR_ERR(soc_dev);
+		ret = PTR_ERR(soc_dev);
+		goto err;
 	}
 
 	/* it is too early to use dev_info() here (soc_dev is NULL) */
@@ -97,5 +97,11 @@ int __init exynos_chipid_early_init(void)
 		soc_dev_attr->soc_id, product_id, revision);
 
 	return 0;
+
+err:
+	kfree(soc_dev_attr->revision);
+	kfree(soc_dev_attr);
+	return ret;
 }
+
 early_initcall(exynos_chipid_early_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

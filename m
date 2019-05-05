Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2422614087
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 17:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uj5aUMK6KPdbJSIgdrklku/IyycD0D3IrqvasM+XoeU=; b=Jya6Hbh1/C/Zwq
	2+LNU6+0XIV91yF6kuCg2S5ovzDRaYGa5UolZ7VjumFoxiqBK8M+4AxWoukI6KXZh14G0uUDhbiNP
	bj87ftt5ptYhf/FYNFi8Vc9oArpROOu6dm2GcN7g+qbvEvInEIxmfVRlAgDrXSES8CInSFxyd6DUM
	xX8VTsVAOm1KwextgmIfQYvlZkmkn1fqB3jBejiDGHpDS+PYhOONGQ0eAnPgVjCXCofw6en/V7DFb
	Yn+7wbBIBHep7TSfcjfhPDtrMRHBDpOPNC6uq6UG/BF9ba64pUsRUtpte7nCQbBGQxwNOO/wNiMpA
	0rzNInqNtaXOecAKdduA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNInY-0007pv-GM; Sun, 05 May 2019 15:11:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNInS-0007pC-78
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 15:11:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F039B208C0;
 Sun,  5 May 2019 15:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557069078;
 bh=29Ns3mM74Ky+ju6uxOaSJ/6kMwlQ1AH4JKwc3yBAeyc=;
 h=From:To:Subject:Date:From;
 b=Nok77GAegvIzsoGdmcUM0seHVHAUwvH7B4J3o7SzHN9sUReol23cgELFgTcbzaO+M
 A8XRYai5Gn5ExqXsfz8GeCmb3DiGZ2poH+qpAdU4TI9RDKPGOvF+ADdqlN6aUTaOwU
 EZGNXtfB7pQLXTKXPdGUIWvEcfw3P1MKxiDyil60=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] [media] exynos4-is: Add missing of_node_put to fix reference
 leaks
Date: Sun,  5 May 2019 17:11:09 +0200
Message-Id: <20190505151109.4361-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_081122_279424_568F1CF6 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the reference to "parallel-ports" and remote endpoint's parent
nodes obtained previously with of_get_child_by_name() and
of_get_parent() respectively.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/media/platform/exynos4-is/media-dev.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 463f2d84553e..d1d5041cdae5 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -449,6 +449,7 @@ static int fimc_md_parse_port_node(struct fimc_md *fmd,
 		pd->fimc_bus_type = FIMC_BUS_TYPE_ISP_WRITEBACK;
 	else
 		pd->fimc_bus_type = pd->sensor_bus_type;
+	of_node_put(np);
 
 	if (WARN_ON(index >= ARRAY_SIZE(fmd->sensor))) {
 		of_node_put(rem);
@@ -474,7 +475,8 @@ static int fimc_md_parse_port_node(struct fimc_md *fmd,
 static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 {
 	struct device_node *parent = fmd->pdev->dev.of_node;
-	struct device_node *node, *ports;
+	struct device_node *ports = NULL;
+	struct device_node *node;
 	int index = 0;
 	int ret;
 
@@ -523,12 +525,14 @@ static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 		}
 		index++;
 	}
+	of_node_put(ports);
 
 rpm_put:
 	pm_runtime_put(fmd->pmf);
 	return 0;
 
 cleanup:
+	of_node_put(ports);
 	v4l2_async_notifier_cleanup(&fmd->subdev_notifier);
 	pm_runtime_put(fmd->pmf);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

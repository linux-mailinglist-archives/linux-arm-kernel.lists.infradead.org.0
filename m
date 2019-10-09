Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FDBD0E7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ce1MEc4DMebuYN/utJ48dGIufNiJYe0U4LFQI29CJiY=; b=d9xEa2xj/6nFw+
	TPLi7Vw0kiG37Zkrp34Ky03uFm6fQlweCfh7Z9E08KkoXxCSEwt2zsfG1xbS9WibLjBqmReRR6b1D
	5/eAJC83YjD1eJuQkgA21llon5PbAPPAxmaka2ze2bWhVknVCBmJ0sAsqydoBXkaR4TSbfWHVWla3
	4+l1VCuNj9va8/+N2cHfVhv+Q12tLOedgbs+ef8d9oSVaxGlEvWjX7H8mNITetNA9b41CQ5c1u4ct
	6F8DmvBuXXIx9qXs0KQsgudtSgi1sxGYaEH98tKfF4L/diAb3DOiIhfsL1x+0CWjM4oM+g4zjbnIy
	E6Kgjazg1+ub9USB/XYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAs7-0005Dq-Kd; Wed, 09 Oct 2019 12:15:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIArm-0005CV-7g; Wed, 09 Oct 2019 12:14:58 +0000
X-UUID: 97be6ea4fa924cdc8e03bf16f0372df5-20191009
X-UUID: 97be6ea4fa924cdc8e03bf16f0372df5-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 676673703; Wed, 09 Oct 2019 04:14:54 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 05:14:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 19:59:35 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 19:59:34 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>
Subject: [PATCH] memory: mtk-smi: Add PM suspend and resume ops
Date: Wed, 9 Oct 2019 19:59:33 +0800
Message-ID: <1570622373-16413-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_051454_282656_5E4CFB5F 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, ming-fan.chen@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the commit 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback
to enable clocks"), we use pm_runtime callback to enable/disable the smi
larb clocks. It will cause the larb's clock may not be disabled when
suspend. That is because device_prepare will call pm_runtime_get_noresume
which will keep the larb's PM runtime status still is active when suspend,
then it won't enter our pm_runtime suspend callback to disable the
corresponding clocks.

This patch adds suspend pm_ops to force disable the clocks, Use "LATE" to
make sure it disable the larb's clocks after the multimedia devices.

Fixes: 4f0a1a1ae351 ("memory: mtk-smi: Invoke pm runtime_callback to enable clocks")
Signed-off-by: Anan Sun <anan.sun@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
base on v5.4-rc1.
---
 drivers/memory/mtk-smi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 439d7d8..a113e81 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -366,6 +366,8 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 
 static const struct dev_pm_ops smi_larb_pm_ops = {
 	SET_RUNTIME_PM_OPS(mtk_smi_larb_suspend, mtk_smi_larb_resume, NULL)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				     pm_runtime_force_resume)
 };
 
 static struct platform_driver mtk_smi_larb_driver = {
@@ -507,6 +509,8 @@ static int __maybe_unused mtk_smi_common_suspend(struct device *dev)
 
 static const struct dev_pm_ops smi_common_pm_ops = {
 	SET_RUNTIME_PM_OPS(mtk_smi_common_suspend, mtk_smi_common_resume, NULL)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				     pm_runtime_force_resume)
 };
 
 static struct platform_driver mtk_smi_common_driver = {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

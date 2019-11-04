Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB90ED9D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeqrjKcf/wHytIVca7o9Up9hFXORwlEqCnAKuGM8xdo=; b=VP7GBikmtxzYy5
	uG/vzvM3rrNuVAePgXJLLoXnIflh0QudwggFDyvOy6pbC8I+V5/aNEBcJTa3SUy9FW9o6CINLWo4+
	69Al9f+eX1+RaUnLRMXcupz3uL7XYhrB73EKeyVYEVvNXF5HD8ZCbzQsEQVBMuiGmM7qRUtmq2QGh
	4A7aNwAlVnJ2qirkiBLWsFsw6gQoMt1yScamEgLFNrH3yw/TQKCV+MpE/RlQ3Djz89K49FE0NGWxm
	yTvX2kTayCQkFTjWnYRa3y3Sdd5L9G2/kT/k+B21IRhdnQMvxYC+Mh1vClC5zyqBCY0+H62711GVZ
	w/5gsOmmIGE8We2XqUFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWXP-0001g0-V9; Mon, 04 Nov 2019 07:12:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWWq-0001Dk-KY; Mon, 04 Nov 2019 07:11:58 +0000
X-UUID: b22753cd5ec64ddfb52aca65115a0de4-20191103
X-UUID: b22753cd5ec64ddfb52aca65115a0de4-20191103
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 423794240; Sun, 03 Nov 2019 23:11:45 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 3 Nov 2019 23:02:20 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 15:02:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 15:02:17 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v5 7/7] iommu/mediatek: Reduce the tlb flush timeout value
Date: Mon, 4 Nov 2019 15:01:08 +0800
Message-ID: <1572850868-22315-8-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
References: <1572850868-22315-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_231156_720730_EBB1ECF8 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reduce the tlb timeout value from 100000us to 1000us. The original value
would make the kernel stuck for 100 ms with interrupts disabled, which
could have other side effects. The flush is expected to always take much
less than 1 ms, so use that instead.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c2b7ed5..8ca2e99 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -192,7 +192,7 @@ static void mtk_iommu_tlb_flush_range_sync(unsigned long iova, size_t size,
 
 		/* tlb sync */
 		ret = readl_poll_timeout_atomic(data->base + REG_MMU_CPE_DONE,
-						tmp, tmp != 0, 10, 100000);
+						tmp, tmp != 0, 10, 1000);
 		if (ret) {
 			dev_warn(data->dev,
 				 "Partial TLB flush timed out, falling back to full flush\n");
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

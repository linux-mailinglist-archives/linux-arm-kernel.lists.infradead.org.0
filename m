Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00501C6877
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/+eBD3QFZhxGhe33s7q9iZJ1pFbNDsRhJrLjVe6RXR8=; b=egvRCcbxB44SVl
	r4LjYOcxus5UqQPNdcEVr2oFmAwWrYHhpGvabU6nMSTGnb6UjIin9V2zRE7FbpkCX/9PVFsf5gCDv
	lF1L4uab3XGGm/qaCzERFObRUYidY4mUqrB7sHzPwKA8o9NnWzmENqqSKd2GYJVyFHMtFVZEi+qWS
	r862Dkq+zOOePKKJdx3jI6C6lrlOCDL3o18AOioRYxpb/qxNQzO4PdNpPzbeHaugDNg71H5hBX7ub
	pKPpbeFW9X+aGefpDFWlRhV7bN1nyRu8INfIBBmXM1oVKJWB2/RAElGFuwFM2GCz6LAvapRNISqYW
	u7/giiU9s4YBGdyJdWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDRS-0005s2-DJ; Wed, 06 May 2020 06:22:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDR2-0005cL-DX; Wed, 06 May 2020 06:21:37 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E8BFBC046390BB51FE86;
 Wed,  6 May 2020 14:21:28 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Wed, 6 May 2020 14:21:19 +0800
From: Samuel Zou <zou_wei@huawei.com>
To: <nbd@openwrt.org>, <john@phrozen.org>, <sean.wang@mediatek.com>,
 <Mark-MC.Lee@mediatek.com>, <davem@davemloft.net>, <matthias.bgg@gmail.com>
Subject: [PATCH -next] net: ethernet: mediatek: Make mtk_m32 static
Date: Wed, 6 May 2020 14:27:30 +0800
Message-ID: <1588746450-35911-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_232136_619270_B5446D47 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: netdev@vger.kernel.org, Samuel Zou <zou_wei@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

drivers/net/ethernet/mediatek/mtk_eth_soc.c:68:5: warning:
symbol 'mtk_m32' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Samuel Zou <zou_wei@huawei.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 0904710..2822268 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -65,7 +65,7 @@ u32 mtk_r32(struct mtk_eth *eth, unsigned reg)
 	return __raw_readl(eth->base + reg);
 }
 
-u32 mtk_m32(struct mtk_eth *eth, u32 mask, u32 set, unsigned reg)
+static u32 mtk_m32(struct mtk_eth *eth, u32 mask, u32 set, unsigned reg)
 {
 	u32 val;
 
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

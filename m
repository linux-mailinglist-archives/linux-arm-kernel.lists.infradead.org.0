Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB2918EFEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 07:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PY+qorKLEaXldXiCLXXN2sj2/d5WSVli07UU2NKEgpk=; b=brBAyjdMoWqpL+
	qA46yCJLQkqk71uJa1fozK6a1mpFUA+B5FzAZozlvybyqbnlBmWpRmPiVtHrQOP2p0FGyfxjOFR7b
	ICgygML+thkKHuuku1QOCBcOs7YUGPgD74pzew3vNQXlayqVOqoQg/s/jsbKPKY+HidGX71nhQQAs
	FK6GorUr2zjfuQu68fR2F5622j1g+EosYcqDB+ynFo7tILb78PLyAoPe+3UawKsvIZ1QF/pnkhN2r
	lYi4NZXZ+n2neg/ULpf2DP6SyjemsTNnFgJMeSObSgf5UbRHvqXaLB/FJ9Q8qybxr/usUbQAwTOEy
	Ga7SvQGDxjPohDZnE04g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGGt2-0003gW-KW; Mon, 23 Mar 2020 06:48:36 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGGst-0003el-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 06:48:30 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7B578D4A8DDD5F88AC1A;
 Mon, 23 Mar 2020 14:48:11 +0800 (CST)
Received: from huawei.com (10.175.113.25) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Mon, 23 Mar 2020
 14:48:04 +0800
From: Zheng Zengkai <zhengzengkai@huawei.com>
To: <sgoutham@marvell.com>, <rrichter@marvell.com>, <davem@davemloft.net>,
 <ast@kernel.org>
Subject: [PATCH net-next] net: thunderx: remove set but not used variable
 'tail'
Date: Mon, 23 Mar 2020 14:51:16 +0800
Message-ID: <20200323065116.45399-1-zhengzengkai@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_234827_637472_F816D5B0 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, zhengzengkai@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zheng zengkai <zhengzengkai@huawei.com>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/net/ethernet/cavium/thunder/nicvf_queues.c: In function nicvf_sq_free_used_descs:
drivers/net/ethernet/cavium/thunder/nicvf_queues.c:1182:12: warning:
 variable tail set but not used [-Wunused-but-set-variable]

It's not used since commit 4863dea3fab01("net: Adding support for Cavium ThunderX network controller"),
so remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zheng zengkai <zhengzengkai@huawei.com>
---
 drivers/net/ethernet/cavium/thunder/nicvf_queues.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cavium/thunder/nicvf_queues.c b/drivers/net/ethernet/cavium/thunder/nicvf_queues.c
index 4ab57d33a87e..069e7413f1ef 100644
--- a/drivers/net/ethernet/cavium/thunder/nicvf_queues.c
+++ b/drivers/net/ethernet/cavium/thunder/nicvf_queues.c
@@ -1179,13 +1179,12 @@ void nicvf_sq_disable(struct nicvf *nic, int qidx)
 void nicvf_sq_free_used_descs(struct net_device *netdev, struct snd_queue *sq,
 			      int qidx)
 {
-	u64 head, tail;
+	u64 head;
 	struct sk_buff *skb;
 	struct nicvf *nic = netdev_priv(netdev);
 	struct sq_hdr_subdesc *hdr;
 
 	head = nicvf_queue_reg_read(nic, NIC_QSET_SQ_0_7_HEAD, qidx) >> 4;
-	tail = nicvf_queue_reg_read(nic, NIC_QSET_SQ_0_7_TAIL, qidx) >> 4;
 	while (sq->head != head) {
 		hdr = (struct sq_hdr_subdesc *)GET_SQ_DESC(sq, sq->head);
 		if (hdr->subdesc_type != SQ_DESC_TYPE_HEADER) {
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

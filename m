Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34BB12F31
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UERG50daP51oST87ERxVaFhnFHu/VR+DHE2NR2Do1u0=; b=jZr
	+gkUEEBS4uw3AZ6coq5cxG/grAAXH3GQ66KDrNecc6amExuqNhwqERjJnz3d86psBy6ZriRvsoilf
	GGkQJ1pdZf3LyhESir+1Dr7tri3JIco6AdGdUIafNQ/OnIIKz411QI0IC6ao2+9/+h80qFqzEYXh6
	cgAekocnnzXgYsfWIm+OlE2g14Twnz7F1mnMM0wZxV0WT62Bpwn0kRhOlhLRVF5fl5nzI66sILLqS
	MmW9gwblvR4MFA27FFH6ZWFx1/G2oL2FfX7RIpc6ETufUJr4IMYWkmg4opEO1UnCnsZbTD9JM1+NZ
	Y/rtaMo6NjIlG/5hfbeWTvZm04BVS0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYHS-0000w7-4a; Fri, 03 May 2019 13:31:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHD-0000pd-NI
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RYH/YO/RkA4XGJbvLIFo4fWIsBT1IwFt9t25PBtlx3o=; b=puV0KnBBYTozxYOu/Q6xWSu7d
 xDDlwo/YNWZqjlZx1Qz0FSskJypgQocV/WE7LuVCe9p/flyxUmHjE1BtiJvwme+tZn7jIL4QtjDfK
 hySVZi+afiUHpE4VZs6g5NKPwLWDBai4GwLxvBG4fB7wpmc7aHPfrMe1Lwvz5DqAKk4v3lqfnMqZL
 YgVLLOWlT0bJKkH2DxYcqyQnF4hD0tIC3FMlL+7c/7xfg6KjGGddrNerD+x/hyetnJLUpGj5uqXvA
 BApxN5SMixs6ZOYqrWGQVLG27uRyQGqicMU3EcXuVVtq7pAR7V1STUdRKvj4GeHxoQDMaMrWiDzr2
 nQlO1cinQ==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXqP-0006Ee-7q
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:03:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F24EA1A00C7;
 Fri,  3 May 2019 15:03:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E565C1A0029;
 Fri,  3 May 2019 15:03:13 +0200 (CEST)
Received: from fsr-ub1864-101.ea.freescale.net
 (fsr-ub1864-101.ea.freescale.net [10.171.82.13])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5949A205F4;
 Fri,  3 May 2019 15:03:13 +0200 (CEST)
From: laurentiu.tudor@nxp.com
To: netdev@vger.kernel.org, madalin.bucur@nxp.com, camelia.groza@nxp.com,
 leoyang.li@nxp.com
Subject: [PATCH v3] dpaa_eth: fix SG frame cleanup
Date: Fri,  3 May 2019 16:03:11 +0300
Message-Id: <20190503130311.9914-1-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090317_382928_121ACB0C 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Joakim.Tjernlund@infinera.com, linuxppc-dev@lists.ozlabs.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

Fix issue with the entry indexing in the sg frame cleanup code being
off-by-1. This problem showed up when doing some basic iperf tests and
manifested in traffic coming to a halt.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
Cc: <stable@vger.kernel.org>
---
v3:
 - added cc:stable tag (Joakim)
 - pulled from the original patch series and send individually

 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index daede7272768..40420edc9ce6 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -1663,7 +1663,7 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const struct dpaa_priv *priv,
 				 qm_sg_entry_get_len(&sgt[0]), dma_dir);
 
 		/* remaining pages were mapped with skb_frag_dma_map() */
-		for (i = 1; i < nr_frags; i++) {
+		for (i = 1; i <= nr_frags; i++) {
 			WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
 
 			dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

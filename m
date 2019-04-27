Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E69B305
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 09:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gAZoffOKZ3bY7vBnkuWz5aMmrdsNSHPXQto05RUTDF4=; b=MORVYbbSZe9lzO7q9shr219o0E
	HjPgaJD7Jk5e+6juVtgDl8XntyGQ6GO4t0pp213u8xUHO13LKU9NJZzzTtw2PrTS/ddYTUXAIcmgD
	+mGB7w1mckUHmtfHMM9doXcAOnDLd6/Wb14ykOiZfcG5oGJMn79R4GKtSWEb8Gv6BHVCmAbaV62XN
	xh03POVg7x85KC6GFWKXHisp2m+TvG/xnxO+EhKrvJLiIRanC/BgrsJef/WaFq5AtXxertMRfr8eV
	q1p6eVM95VUq1vsl544268QBLnOiTQWVc1DcSN42T7s6Ii156aWEVlBEQMz0BFeBnEPH95pdgF5fK
	hQLM1yXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKHVU-0004DL-Ia; Sat, 27 Apr 2019 07:12:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKHTt-0002Rv-8O
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 07:11:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 11F8B2000A7;
 Sat, 27 Apr 2019 09:10:40 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0443D20005A;
 Sat, 27 Apr 2019 09:10:40 +0200 (CEST)
Received: from fsr-ub1864-101.ea.freescale.net
 (fsr-ub1864-101.ea.freescale.net [10.171.82.13])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 77D9A205ED;
 Sat, 27 Apr 2019 09:10:39 +0200 (CEST)
From: laurentiu.tudor@nxp.com
To: netdev@vger.kernel.org, madalin.bucur@nxp.com, roy.pledge@nxp.com,
 camelia.groza@nxp.com, leoyang.li@nxp.com
Subject: [PATCH v2 8/9] dpaa_eth: fix iova handling for sg frames
Date: Sat, 27 Apr 2019 10:10:30 +0300
Message-Id: <20190427071031.6563-9-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_001041_568720_A2F04729 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

The driver relies on the no longer valid assumption that dma addresses
(iovas) are identical to physical addressees and uses phys_to_virt() to
make iova -> vaddr conversions. Fix this also for scatter-gather frames
using the iova -> phys conversion function added in the previous patch.
While at it, clean-up a redundant dpaa_bpid2pool() and pass the bp
as parameter.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
---
 .../net/ethernet/freescale/dpaa/dpaa_eth.c    | 41 +++++++++++--------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index f17edc80dc37..daede7272768 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -1646,14 +1646,17 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const struct dpaa_priv *priv,
 
 	if (unlikely(qm_fd_get_format(fd) == qm_fd_sg)) {
 		nr_frags = skb_shinfo(skb)->nr_frags;
-		dma_unmap_single(dev, addr,
-				 qm_fd_get_offset(fd) + DPAA_SGT_SIZE,
-				 dma_dir);
 
 		/* The sgt buffer has been allocated with netdev_alloc_frag(),
 		 * it's from lowmem.
 		 */
-		sgt = phys_to_virt(addr + qm_fd_get_offset(fd));
+		sgt = phys_to_virt(dpaa_iova_to_phys(dev,
+						     addr +
+						     qm_fd_get_offset(fd)));
+
+		dma_unmap_single(dev, addr,
+				 qm_fd_get_offset(fd) + DPAA_SGT_SIZE,
+				 dma_dir);
 
 		/* sgt[0] is from lowmem, was dma_map_single()-ed */
 		dma_unmap_single(dev, qm_sg_addr(&sgt[0]),
@@ -1668,7 +1671,7 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const struct dpaa_priv *priv,
 		}
 
 		/* Free the page frag that we allocated on Tx */
-		skb_free_frag(phys_to_virt(addr));
+		skb_free_frag(skbh);
 	} else {
 		dma_unmap_single(dev, addr,
 				 skb_tail_pointer(skb) - (u8 *)skbh, dma_dir);
@@ -1729,14 +1732,14 @@ static struct sk_buff *contig_fd_to_skb(const struct dpaa_priv *priv,
  * The page fragment holding the S/G Table is recycled here.
  */
 static struct sk_buff *sg_fd_to_skb(const struct dpaa_priv *priv,
-				    const struct qm_fd *fd)
+				    const struct qm_fd *fd,
+				    struct dpaa_bp *dpaa_bp,
+				    void *vaddr)
 {
 	ssize_t fd_off = qm_fd_get_offset(fd);
-	dma_addr_t addr = qm_fd_addr(fd);
 	const struct qm_sg_entry *sgt;
 	struct page *page, *head_page;
-	struct dpaa_bp *dpaa_bp;
-	void *vaddr, *sg_vaddr;
+	void *sg_vaddr;
 	int frag_off, frag_len;
 	struct sk_buff *skb;
 	dma_addr_t sg_addr;
@@ -1745,7 +1748,6 @@ static struct sk_buff *sg_fd_to_skb(const struct dpaa_priv *priv,
 	int *count_ptr;
 	int i;
 
-	vaddr = phys_to_virt(addr);
 	WARN_ON(!IS_ALIGNED((unsigned long)vaddr, SMP_CACHE_BYTES));
 
 	/* Iterate through the SGT entries and add data buffers to the skb */
@@ -1756,14 +1758,18 @@ static struct sk_buff *sg_fd_to_skb(const struct dpaa_priv *priv,
 		WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
 
 		sg_addr = qm_sg_addr(&sgt[i]);
-		sg_vaddr = phys_to_virt(sg_addr);
-		WARN_ON(!IS_ALIGNED((unsigned long)sg_vaddr,
-				    SMP_CACHE_BYTES));
 
 		/* We may use multiple Rx pools */
 		dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
-		if (!dpaa_bp)
+		if (!dpaa_bp) {
+			pr_info("%s: fail to get dpaa_bp for sg bpid %d\n",
+				__func__, sgt[i].bpid);
 			goto free_buffers;
+		}
+		sg_vaddr = phys_to_virt(dpaa_iova_to_phys(dpaa_bp->dev,
+							  sg_addr));
+		WARN_ON(!IS_ALIGNED((unsigned long)sg_vaddr,
+				    SMP_CACHE_BYTES));
 
 		count_ptr = this_cpu_ptr(dpaa_bp->percpu_count);
 		dma_unmap_single(dpaa_bp->dev, sg_addr, dpaa_bp->size,
@@ -1835,10 +1841,11 @@ static struct sk_buff *sg_fd_to_skb(const struct dpaa_priv *priv,
 	/* free all the SG entries */
 	for (i = 0; i < DPAA_SGT_MAX_ENTRIES ; i++) {
 		sg_addr = qm_sg_addr(&sgt[i]);
-		sg_vaddr = phys_to_virt(sg_addr);
-		skb_free_frag(sg_vaddr);
 		dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
 		if (dpaa_bp) {
+			sg_addr = dpaa_iova_to_phys(dpaa_bp->dev, sg_addr);
+			sg_vaddr = phys_to_virt(sg_addr);
+			skb_free_frag(sg_vaddr);
 			count_ptr = this_cpu_ptr(dpaa_bp->percpu_count);
 			(*count_ptr)--;
 		}
@@ -2331,7 +2338,7 @@ static enum qman_cb_dqrr_result rx_default_dqrr(struct qman_portal *portal,
 	if (likely(fd_format == qm_fd_contig))
 		skb = contig_fd_to_skb(priv, fd, dpaa_bp, vaddr);
 	else
-		skb = sg_fd_to_skb(priv, fd);
+		skb = sg_fd_to_skb(priv, fd, dpaa_bp, vaddr);
 	if (!skb)
 		return qman_cb_dqrr_consume;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

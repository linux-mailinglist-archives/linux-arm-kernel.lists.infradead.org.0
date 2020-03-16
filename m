Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7537186CF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5wGXiKtcNHt9ydnxjvSNq28U1JQ+NgkSdJk0bKIhwsk=; b=W2y
	isHwYcK3Hy/LDUBDTM9UmlWYmQiBl5+7jQ1rnj9jkew3ou4TJvmXFgUcrHAk22mlY37UyoHsw0wIM
	PUAq8oUWtkXOntOgKSBtL9TnHRcvTqP1wDhmgcmc13rKpmU0CU5MeMAh2D3gPCY3I5FkBtVVYP9Nz
	2t5y4tK9WMclE0PVvdVt69Syh0vujLytsncTroqTiUq4CrpKSc3HUNvDtB6IILWEYp45u1AEpmxZy
	8gfxhYVE6oYieKcHWuVFT48xe2u/OGfCoHsPZzns+uIlIE+zgjOBN0aiGA1Pbh4s3pjokzXHzLreo
	5CQKWtdxrTDegLLrWiWpFqyEvTlwIQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqfK-0002iQ-IO; Mon, 16 Mar 2020 14:24:26 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqfC-0002i1-Pb
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:24:21 +0000
Received: from localhost.localdomain (unknown [58.251.74.226])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id A5C8B664FF8;
 Mon, 16 Mar 2020 22:24:06 +0800 (CST)
From: Zheng Wei <wei.zheng@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jon Mason <jdmason@kudzu.us>, "David S. Miller" <davem@davemloft.net>,
 Yunfeng Ye <yeyunfeng@huawei.com>, Hanjun Guo <guohanjun@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [PATCH] net: vxge: fix wrong __VA_ARGS__ usage
Date: Mon, 16 Mar 2020 22:23:47 +0800
Message-Id: <20200316142354.95201-1-wei.zheng@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VCTktCQkJMSE1MQ05DQllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Phg6PBw4EDg6CjYoCksYAxA5
 UUtPC0hVSlVKTkNPSE1DTU9MT0tJVTMWGhIXVQweElUBEx4VHDsNEg0UVRgUFkVZV1kSC1lBWU5D
 VUlOSlVMT1VJSU1ZV1kIAVlBT0xPSTcG
X-HM-Tid: 0a70e3bafc5a9373kuwsa5c8b664ff8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_072419_367332_5EEF37DC 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel@vivo.com, wenhu.wang@vivo.com, Zheng Wei <wei.zheng@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

printk in macro vxge_debug_ll uses __VA_ARGS__ without "##" prefix,
it causes a build error when there is no variable 
arguments(e.g. only fmt is specified.).

Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
---
 drivers/net/ethernet/neterion/vxge/vxge-config.h |  2 +-
 drivers/net/ethernet/neterion/vxge/vxge-main.h   | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/neterion/vxge/vxge-config.h b/drivers/net/ethernet/neterion/vxge/vxge-config.h
index e678ba379598..077a527bb294 100644
--- a/drivers/net/ethernet/neterion/vxge/vxge-config.h
+++ b/drivers/net/ethernet/neterion/vxge/vxge-config.h
@@ -2045,7 +2045,7 @@ vxge_hw_vpath_strip_fcs_check(struct __vxge_hw_device *hldev, u64 vpath_mask);
 	if ((level >= VXGE_ERR && VXGE_COMPONENT_LL & VXGE_DEBUG_ERR_MASK) ||  \
 	    (level >= VXGE_TRACE && VXGE_COMPONENT_LL & VXGE_DEBUG_TRACE_MASK))\
 		if ((mask & VXGE_DEBUG_MASK) == mask)			       \
-			printk(fmt "\n", __VA_ARGS__);			       \
+			printk(fmt "\n", ##__VA_ARGS__);		       \
 } while (0)
 #else
 #define vxge_debug_ll(level, mask, fmt, ...)
diff --git a/drivers/net/ethernet/neterion/vxge/vxge-main.h b/drivers/net/ethernet/neterion/vxge/vxge-main.h
index 59a57ff5e96a..9c86f4f9cd42 100644
--- a/drivers/net/ethernet/neterion/vxge/vxge-main.h
+++ b/drivers/net/ethernet/neterion/vxge/vxge-main.h
@@ -452,49 +452,49 @@ int vxge_fw_upgrade(struct vxgedev *vdev, char *fw_name, int override);
 
 #if (VXGE_DEBUG_LL_CONFIG & VXGE_DEBUG_MASK)
 #define vxge_debug_ll_config(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_LL_CONFIG, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_LL_CONFIG, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_ll_config(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_INIT & VXGE_DEBUG_MASK)
 #define vxge_debug_init(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_INIT, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_INIT, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_init(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_TX & VXGE_DEBUG_MASK)
 #define vxge_debug_tx(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_TX, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_TX, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_tx(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_RX & VXGE_DEBUG_MASK)
 #define vxge_debug_rx(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_RX, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_RX, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_rx(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_MEM & VXGE_DEBUG_MASK)
 #define vxge_debug_mem(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_MEM, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_MEM, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_mem(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_ENTRYEXIT & VXGE_DEBUG_MASK)
 #define vxge_debug_entryexit(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_ENTRYEXIT, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_ENTRYEXIT, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_entryexit(level, fmt, ...)
 #endif
 
 #if (VXGE_DEBUG_INTR & VXGE_DEBUG_MASK)
 #define vxge_debug_intr(level, fmt, ...) \
-	vxge_debug_ll(level, VXGE_DEBUG_INTR, fmt, __VA_ARGS__)
+	vxge_debug_ll(level, VXGE_DEBUG_INTR, fmt, ##__VA_ARGS__)
 #else
 #define vxge_debug_intr(level, fmt, ...)
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38311F9167
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=savB7BFdhE68j7B54X2Wg0Re880nMVik9QBUwuyXsfw=; b=C7X5N/6eQ/XLFu
	y82ZFwt5PQ9q0oXBO1hWYtSAl0B0VhXCFpHuRVr16qcL9l/WOLwvY/LIdSSzqIbIujU0pG1VRbehK
	j9zPUPfsjusm/u4NBptsn0jHjL2OUjFFYkHfZdzNyG4+Ul7CcjU/v1MgTRqtDNXVcU2RUqrFBBe8j
	9/DlBefIa8uj7t/mUMpqC7+yf2NHhNN7M8ozx/B1DaKFmJypRGPw8tPZE6jWplU7ZB5modt8dD6W7
	UpH+C1aNzmm3zboQf3Ehea2m0QyNFMhtMq0WbglioiX5m5lV2XHne40p2kDsL/ZrfoiC3VJ+1mJbl
	wLPElEqg/TyyMzByjHTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkUh-0000vO-3i; Mon, 15 Jun 2020 08:29:27 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkUZ-0000uR-IX
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:29:20 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jkkUS-0001Hr-70; Mon, 15 Jun 2020 08:29:12 +0000
From: Colin King <colin.king@canonical.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] net: axienet: fix spelling mistake in comment "Exteneded" ->
 "extended"
Date: Mon, 15 Jun 2020 09:29:11 +0100
Message-Id: <20200615082911.7252-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_012919_742405_6BB4EBD3 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a comment. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index fbaf3c987d9c..f34c7903ff52 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -186,7 +186,7 @@
 #define XAE_RAF_TXVSTRPMODE_MASK	0x00000180 /* Tx VLAN STRIP mode */
 #define XAE_RAF_RXVSTRPMODE_MASK	0x00000600 /* Rx VLAN STRIP mode */
 #define XAE_RAF_NEWFNCENBL_MASK		0x00000800 /* New function mode */
-/* Exteneded Multicast Filtering mode */
+/* Extended Multicast Filtering mode */
 #define XAE_RAF_EMULTIFLTRENBL_MASK	0x00001000
 #define XAE_RAF_STATSRST_MASK		0x00002000 /* Stats. Counter Reset */
 #define XAE_RAF_RXBADFRMEN_MASK		0x00004000 /* Recv Bad Frame Enable */
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

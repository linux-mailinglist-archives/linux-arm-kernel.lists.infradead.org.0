Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B8F183C7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPN4kHl6DoU/DRGkL2/qP8ODp/PIqcUEexVTWXoMJzo=; b=VFpgiEouhfivYy
	mJJhAGWiYhUId0PILny72xjBQzYGivCvH7toiquovLDpwUI8QYjRCogBPANLTRXUjPVIbaGD/N81q
	MKQIHXuABa56WXkKD9yLGPSeQMEUkHUduagxz5fU/5SwLwQG2+Vpqx3M8VCmBN1WV+GNC7CP+HfxJ
	YXVrZDK7JlFKpYgQ491WWi4eqGGsGLQJyRe9tVzQLxfJVLFBO4d54DD2mIbf/Hf5bUubW6G8PPDis
	/HCQlSJ3SBNK/NfQfT0ri2WZGUhY0vfDC84fzC9+1xvStI5NS/RjmmkqHD3CuKwG7OViJFploExhq
	0tWGwLojY50HjS7iUsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWKa-0003Tz-Ht; Thu, 12 Mar 2020 22:29:32 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJm-0002l6-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B4CDA1A11AF;
 Thu, 12 Mar 2020 23:28:40 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 76B601A11CD;
 Thu, 12 Mar 2020 23:28:40 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 C9D9740A63; Thu, 12 Mar 2020 15:28:39 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 3/6] soc: fsl: qe: fix sparse warnings for ucc.c
Date: Thu, 12 Mar 2020 17:28:24 -0500
Message-Id: <20200312222827.17409-4-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152842_307431_9F983E56 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following sparse warnings:

drivers/soc/fsl/qe/ucc.c:637:20: warning: incorrect type in assignment (different address spaces)
drivers/soc/fsl/qe/ucc.c:637:20:    expected struct qe_mux *qe_mux_reg
drivers/soc/fsl/qe/ucc.c:637:20:    got struct qe_mux [noderef] <asn:2> *
drivers/soc/fsl/qe/ucc.c:652:9: warning: incorrect type in argument 1 (different address spaces)
drivers/soc/fsl/qe/ucc.c:652:9:    expected void const volatile [noderef] <asn:2> *addr
drivers/soc/fsl/qe/ucc.c:652:9:    got restricted __be32 *
drivers/soc/fsl/qe/ucc.c:652:9: warning: incorrect type in argument 2 (different address spaces)
drivers/soc/fsl/qe/ucc.c:652:9:    expected void volatile [noderef] <asn:2> *addr
drivers/soc/fsl/qe/ucc.c:652:9:    got restricted __be32 *

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/soc/fsl/qe/ucc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
index 90157acc5ba6..d6c93970df4d 100644
--- a/drivers/soc/fsl/qe/ucc.c
+++ b/drivers/soc/fsl/qe/ucc.c
@@ -632,7 +632,7 @@ int ucc_set_tdm_rxtx_sync(u32 tdm_num, enum qe_clock clock,
 {
 	int source;
 	u32 shift;
-	struct qe_mux *qe_mux_reg;
+	struct qe_mux __iomem *qe_mux_reg;
 
 	qe_mux_reg = &qe_immr->qmx;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

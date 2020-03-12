Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFB4183C78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ1qmKuA+bwiRaHhdGRH2+SghdA1aWItO3GcO2NunMc=; b=pYMthW2ktyzZxY
	7Ph8lD7CD2gfZfRFRU2eSDl8OwsgB23Vw6Od3fEghaMo6HvI/KszUiFh0KOSVhgb57uEL6i9Iu59a
	Uxw2AKr9MWurIPwfeLvgpi/NcVlX+ieRpR5Jhw+h/UsT7kAv9tJ6S/nyQO1Cpx5/cXYLGr2ARXOQn
	GC8dxZHkeBQY8/16/g3MTbxSStRZIPaj4BlCLRvBvHDsCdMb9rz5sOZCLaYE8rXYFd/Lx6uhKX+rB
	P/gJ43OEuKChJA2rujjyjcqz2Z2zj3xVohgYGQaN+IeGdBkZ+QVy2XJltcvqabR0syc9g6kjxFVD4
	7EmH58N8PG1sZ9I7Zn/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWJv-0002mW-Ci; Thu, 12 Mar 2020 22:28:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJm-0002l4-3q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 422B81A11C4;
 Thu, 12 Mar 2020 23:28:40 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 072211A11C9;
 Thu, 12 Mar 2020 23:28:40 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 7584D40BCF; Thu, 12 Mar 2020 15:28:39 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 2/6] soc: fsl: qe: fix sparse warning for qe_common.c
Date: Thu, 12 Mar 2020 17:28:23 -0500
Message-Id: <20200312222827.17409-3-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152842_308838_07E2BA76 
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

Fixes the following sparse warning:

drivers/soc/fsl/qe/qe_common.c:75:48: warning: incorrect type in argument 2 (different base types)
drivers/soc/fsl/qe/qe_common.c:75:48:    expected restricted __be32 const [usertype] *addr
drivers/soc/fsl/qe/qe_common.c:75:48:    got unsigned int *

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/soc/fsl/qe/qe_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index a81a1a79f1ca..75075591f630 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -46,7 +46,7 @@ int cpm_muram_init(void)
 {
 	struct device_node *np;
 	struct resource r;
-	u32 zero[OF_MAX_ADDR_CELLS] = {};
+	__be32 zero[OF_MAX_ADDR_CELLS] = {};
 	resource_size_t max = 0;
 	int i = 0;
 	int ret = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

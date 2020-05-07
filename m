Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179451C8397
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OwIDtbsUBpxcK+szSfz5rvfrMAaPmsJwG0fn4fdcYeI=; b=mPMo8vd6WHtaAPrKR3Tsx3GBOK
	7V1Wr7QElzchz5E/Q4V4O+HKvPhk8T/zwF7+IMaWkfhCK4DM07o5a0HxiERbVKUqm1E0eK+fDEkBI
	xvE9nkRg3mty8D0bRkA02Fm6NqdWORDbmsEjoyUBdMYE9rTqRmOtuN9jvwTGDHP2/epeEiIADnoIl
	hA1xXx8m/cRieP7SO2w5rSyqJUbqtr+KwpIIuj/pktLkznODE8koUndKsPotoub4CF2jeX5nAw63X
	aIJUXCdGWmaroVYCVftjBaweSbK+q/Ms24MU+genVzicG+av0Vt41pJGc79vP2KocsYuutFSbnSo0
	zJ1TEGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb5Y-0002Ur-H7; Thu, 07 May 2020 07:37:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4N-0001Y3-FM
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E36FC1A0FD7;
 Thu,  7 May 2020 09:35:44 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D70411A0F14;
 Thu,  7 May 2020 09:35:44 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 88E8C203C5;
 Thu,  7 May 2020 09:35:44 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/12] bus/fsl-mc: Set the QMAN/BMAN region flags
Date: Thu,  7 May 2020 10:34:23 +0300
Message-Id: <20200507073431.2710-5-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003547_651958_23F8C795 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org, leoyang.li@nxp.com,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The QMAN region is memory mapped, so it should be of type
IORESOURCE_MEM. The region flags bits were wrongly used to
pass additional information. Use the bus specific bits for
this purpose.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c     | 7 ++-----
 drivers/bus/fsl-mc/fsl-mc-private.h | 6 ------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index 3a86f5087717..df96f1602361 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -573,11 +573,8 @@ static int fsl_mc_device_get_mmio_regions(struct fsl_mc_device *mc_dev,
 
 		regions[i].end = regions[i].start + region_desc.size - 1;
 		regions[i].name = "fsl-mc object MMIO region";
-		regions[i].flags = IORESOURCE_IO;
-		if (region_desc.flags & DPRC_REGION_CACHEABLE)
-			regions[i].flags |= IORESOURCE_CACHEABLE;
-		if (region_desc.flags & DPRC_REGION_SHAREABLE)
-			regions[i].flags |= IORESOURCE_MEM;
+		regions[i].flags = region_desc.flags & IORESOURCE_BITS;
+		regions[i].flags |= IORESOURCE_MEM;
 	}
 
 	mc_dev->regions = regions;
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index 21ca8c756ee7..c2a688c07ee2 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -358,12 +358,6 @@ int dprc_set_obj_irq(struct fsl_mc_io *mc_io,
 		     int obj_id,
 		     u8 irq_index,
 		     struct dprc_irq_cfg *irq_cfg);
-
-/* Region flags */
-/* Cacheable - Indicates that region should be mapped as cacheable */
-#define DPRC_REGION_CACHEABLE	0x00000001
-#define DPRC_REGION_SHAREABLE	0x00000002
-
 /**
  * enum dprc_region_type - Region type
  * @DPRC_REGION_TYPE_MC_PORTAL: MC portal region
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

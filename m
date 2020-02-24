Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5805916A349
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3DUwMXG2eyQZqsLfPPxMHi3q97/B/RFrGiz42TRXrXc=; b=sk+iozdQ82rfW0dw0U9w+wK91+
	6esZUhyO78s8oXJXwCpXph+Gn0Z++lkuNEYpNtNr7qjPWdzNMrtp3xOhPTL+suTSEMZznaa096Xhz
	pA9aCF6MX+FjX6GvyqICjeCso6NPlOXfASnEnhKa2wBU6sHcvxzk1oLp1fcr8kPznB/NSlQwTSgWv
	mX3ePrCdWQHGMAJXAtXwcMRLTqqTlULvQNerlu994Ye4uk0TcQmhL2m8sGxiTLMTOEcC4oL2suxcQ
	TNsyuVvX426+aWXRvvImVUCtPGqREvbUhfI5KoJLjBdlfKb3Yd+IoRvBBR46tNSfUK2WHWghLtAIE
	VJoFm2rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AUV-0004iX-J8; Mon, 24 Feb 2020 09:57:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AMg-0003VQ-QE
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:49:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A88A1AE2B7;
 Mon, 24 Feb 2020 10:49:23 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 879FA1AE2AD;
 Mon, 24 Feb 2020 10:49:17 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DD0BB402D8;
 Mon, 24 Feb 2020 17:49:10 +0800 (SGT)
From: Sherry Sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com
Subject: [PATCH 2/3] EDAC: synopsys: Reorganizing the output message for CE/UE
Date: Mon, 24 Feb 2020 17:42:36 +0800
Message-Id: <1582537357-10339-3-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
References: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014927_015223_3F05F79B 
X-CRM114-Status: UNSURE (   7.87  )
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
Cc: linux-imx@nxp.com, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The origin way which call sprintf() function two or three times to
output message for CE/UE is incorrect, because it won't output all the
message needed, instead it will only output the last message in
sprintf(). So the simplest and most effective way to fix this problem
is reorganizing all the output message needed for CE/UE into one
sprintf() function.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 drivers/edac/synopsys_edac.c | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/edac/synopsys_edac.c b/drivers/edac/synopsys_edac.c
index 7046b8929522..ef7e907c7956 100644
--- a/drivers/edac/synopsys_edac.c
+++ b/drivers/edac/synopsys_edac.c
@@ -485,20 +485,14 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
 		pinf = &p->ceinfo;
 		if (!priv->p_data->quirks) {
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "DDR ECC error type:%s Row %d Bank %d Col %d ",
-				  "CE", pinf->row, pinf->bank, pinf->col);
-			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "Bit Position: %d Data: 0x%08x\n",
+				 "DDR ECC error type:%s Row %d Bank %d Col %d Bit Position: %d Data: 0x%08x",
+				 "CE", pinf->row, pinf->bank, pinf->col,
 				 pinf->bitpos, pinf->data);
 		} else {
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "DDR ECC error type:%s Row %d Bank %d ",
-				  "CE", pinf->row, pinf->bank);
-			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "BankGroup Number %d Block Number %d ",
-				 pinf->bankgrpnr, pinf->blknr);
-			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "Bit Position: %d Data: 0x%08x\n",
+				 "DDR ECC error type:%s Row %d Bank %d BankGroup Number %d Block Number %d Bit Position: %d Data: 0x%08x",
+				 "CE", pinf->row, pinf->bank,
+				 pinf->bankgrpnr, pinf->blknr,
 				 pinf->bitpos, pinf->data);
 		}
 
@@ -515,10 +509,8 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
 				"UE", pinf->row, pinf->bank, pinf->col);
 		} else {
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "DDR ECC error type :%s Row %d Bank %d ",
-				 "UE", pinf->row, pinf->bank);
-			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "BankGroup Number %d Block Number %d",
+				 "DDR ECC error type :%s Row %d Bank %d BankGroup Number %d Block Number %d",
+				 "UE", pinf->row, pinf->bank,
 				 pinf->bankgrpnr, pinf->blknr);
 		}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

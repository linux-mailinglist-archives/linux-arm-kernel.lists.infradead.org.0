Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F0116A348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/wxFD0Jz7RKfNWBReX9ywDtapLr4/HexvHiw7nNO9Pw=; b=A+VkumuL6E6K4Taa3eLFIdyeyC
	ZShe5yc1yygB7bQFFLmjOIu0XRkviLi0+LhwqdwOzc3KhrboabwdXHQpauX/K3w62EjHhX0SEeZiM
	CzYGyGJfobSqP+C/1p33TRtuO6IrYTRLfj7D3DASY53zXdOiIB/O3QNTfG6gCJx79b0bhohsrQDp6
	evDxqFXOK0mk3TywT67K/eeI0KomwhTHfN3wMM7mR0NXSMVjYwNiih2+CHW8mOQjFWvQ+zC53FBu4
	7vtn1gUFKGHLlf4HVb0O2jlsTgS8BiTIUyBRo2bmOeGgFBzXIw3ES3Xh/st0m96V5C3LzclvSbx6i
	9lf9cUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AUE-0004Lf-Mw; Mon, 24 Feb 2020 09:57:14 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AMa-0003Pv-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:49:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ED8F320DC1A;
 Mon, 24 Feb 2020 10:49:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3335B20DC2E;
 Mon, 24 Feb 2020 10:49:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4BAF2402CA;
 Mon, 24 Feb 2020 17:49:06 +0800 (SGT)
From: Sherry Sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com
Subject: [PATCH 1/3] EDAC: synopsys: Remove pinf->col parameter for ZynqMP and
 i.MX8MP
Date: Mon, 24 Feb 2020 17:42:35 +0800
Message-Id: <1582537357-10339-2-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
References: <1582537357-10339-1-git-send-email-sherry.sun@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014920_975010_45C15760 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Since ZynqMP and i.MX8MP platform both call zynqmp_get_error_info()
function to get ce/ue information. In this function, pinf->col parameter
is not used, this parameter is only used by Zynq platforme. So here
pinf->col should not be called and printed for ZynqMP and i.MX8MP.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 drivers/edac/synopsys_edac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/edac/synopsys_edac.c b/drivers/edac/synopsys_edac.c
index 66c801502212..7046b8929522 100644
--- a/drivers/edac/synopsys_edac.c
+++ b/drivers/edac/synopsys_edac.c
@@ -492,8 +492,8 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
 				 pinf->bitpos, pinf->data);
 		} else {
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "DDR ECC error type:%s Row %d Bank %d Col %d ",
-				  "CE", pinf->row, pinf->bank, pinf->col);
+				 "DDR ECC error type:%s Row %d Bank %d ",
+				  "CE", pinf->row, pinf->bank);
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
 				 "BankGroup Number %d Block Number %d ",
 				 pinf->bankgrpnr, pinf->blknr);
@@ -515,8 +515,8 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
 				"UE", pinf->row, pinf->bank, pinf->col);
 		} else {
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
-				 "DDR ECC error type :%s Row %d Bank %d Col %d ",
-				 "UE", pinf->row, pinf->bank, pinf->col);
+				 "DDR ECC error type :%s Row %d Bank %d ",
+				 "UE", pinf->row, pinf->bank);
 			snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
 				 "BankGroup Number %d Block Number %d",
 				 pinf->bankgrpnr, pinf->blknr);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

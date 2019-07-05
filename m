Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E725F60808
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zXRGv12VvCvEWeG0jzw+qimHsFrWDY+UVwqeRupDc0g=; b=tm8PNaC1U1W58hdJqh1T1CHJfX
	sxyYYQnWkFCT5c0rSdSMYCOuMVqHyevTQpJe2F0eYit823yulg0FyvHCpRj58ab/ThMyplcNlVHVW
	Ht9+6lu/pQIBhvTC2HDaZlShwN4BlZowpII7Eh7urQuscYVAEvg5PWDN2Mdq/flM5PkOx9eU1BUGJ
	J7If/BUEyStyWUxzfmh7q+sjvfznI4cFMvZu25pmvHJDUjNcAaQL1NP8k0OYW+h8uUhzsoG2AtisI
	hPnB/jRjblmbhADDxw/AdPUdG1HUg2bOlEsyB13EGemIIcoJts2j4k3zf8wv1RPpdt4Iz2RYhunB9
	xWpkO/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPNS-0001ZL-Dw; Fri, 05 Jul 2019 14:39:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKE-0006KX-N1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c88fNFs+5FBWoyhqVR2SEPd6ztlLhbQlLL8aqnjmS1k=; b=agOmX3TixFwxeuMqBsy4Z6Im4
 qhxBlG1ziR+tWtQkEg0p9ECdTii6mWRznBnNU0X5vchVq87BSfEPd/d6FVuQpFDB86EoirRbiWaKR
 HeLkJ4XTnlipB+/VjE9yJbW8lE4aLiQ7qk7CoC7+mmmw5Rw/76uxoQ/WBopyiR/TQ6ZEmzJUSFZ1R
 Z3MRXQI5LMD9LfcDZ9NIHlXEW+i0ThUuz55ot1WCL3vH13nzjSp6WLl1xcX27PCN2oFa+2LQRLfmo
 HEMD2OXd4pcU1rZlX7GFBo2i2D7QoRH+e0Ca+PkrrEubO5LYZO8MulZJ3ltpmcVntTCVhgp6MOEc3
 sIDVssKVg==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7x-00022y-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 208CB1A0EB7;
 Fri,  5 Jul 2019 12:07:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 939521A0EA8;
 Fri,  5 Jul 2019 12:07:18 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2064A4032F;
 Fri,  5 Jul 2019 18:07:08 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 15/28] PCI: mobiveil: Revise the MEM/IO outbound window
 initialization
Date: Fri,  5 Jul 2019 17:56:43 +0800
Message-Id: <20190705095656.19191-16-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110737_969706_2854A996 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the resource type check into a if..else block, and only
set up outbound window for MEM and IO resource. No functional
change.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V6:
 - Splited from #2 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 906299b..965f89a 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -565,7 +565,7 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 
 static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
-	u32 value, pab_ctrl, type = 0;
+	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
 
 	/* setup bus numbers */
@@ -617,18 +617,18 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 
 	/* Get the I/O and memory ranges from DT */
 	resource_list_for_each_entry(win, &pcie->resources) {
-		type = 0;
 		if (resource_type(win->res) == IORESOURCE_MEM)
 			type = MEM_WINDOW_TYPE;
-		if (resource_type(win->res) == IORESOURCE_IO)
+		else if (resource_type(win->res) == IORESOURCE_IO)
 			type = IO_WINDOW_TYPE;
-		if (type) {
-			/* configure outbound translation window */
-			program_ob_windows(pcie, pcie->ob_wins_configured,
-					   win->res->start,
-					   win->res->start - win->offset,
-					   type, resource_size(win->res));
-		}
+		else
+			continue;
+
+		/* configure outbound translation window */
+		program_ob_windows(pcie, pcie->ob_wins_configured,
+				   win->res->start,
+				   win->res->start - win->offset,
+				   type, resource_size(win->res));
 	}
 
 	/* fixup for PCIe class register */
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

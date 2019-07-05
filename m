Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A72E609C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ix3B94YYTYVZY5qguJd79br02O8D1uUqOdaHpwfrEis=; b=Vl7kXc6XCBIsGjV6UHDfjGMWAR
	ly5yhw/xKXE65OyyWnm6K7HsIbNrxCqNQ7nc4TNCvJkUmDS1CH3DncphhdCR5QrHUgojzHv6r5i/v
	nYJHzztfUPwIN8GKlZJeKf4M8uugqbWzd3QGun4Scimijn4h/IdMfYEbfIte0cxTmwTJncK66yxr2
	fXneT6JtruRJHlb4bWI1KC7buuBMba+MHhdV69vdt+vgz0CKQrPiZj6rDWqcmGhpCAdL9JBwF0jyB
	MFm1R509MDfFUGTE03+IPbxnmmysy/wszzbq+2E76CJDj1miP/wryMBIfgNoVernoPxxFivTC4u6p
	w9eMO7Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQUE-0006Fz-V7; Fri, 05 Jul 2019 15:50:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQO2-0006CN-2h
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jMclZbYI0z8cPswpzsHCXyiruY7UCl3Gy6Ti75NcLzM=; b=aVmuz5iC9O0vhiIZZQ1nJikby
 IHbfrB/UFQ+KtZ5L0EpWYw+UlYw52PSCcDSKizbZuO4hvZ354zzh3MKPOr8Whb+Fi3/Bhy30k1Pu8
 Jqa7H4B2G8+Zr4y26B8/gObv8D7iq6ei9qA3hhGns6s6qviv+303qefHJXtbQ/0MI4aF4wkiSrySK
 2alot2jE+Uq5aU20G6Iv9OlyrCO33Dcc+iJYxzdX1oUgCCg0VrmDbiG+FhwKlFThiamL2aC3l26xa
 49LxfsMYOVZo2TY8TV7rE7u9rTMGdzErDoKQ0x1NtGXTpiTkLJFjczPljQ+ob9YS+PXaSSomFw1b7
 DcCFDPqLw==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL82-00010P-B4
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 682E12001B2;
 Fri,  5 Jul 2019 12:07:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DF9BB2006F9;
 Fri,  5 Jul 2019 12:07:02 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 779E7402EC;
 Fri,  5 Jul 2019 18:06:50 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 04/28] PCI: mobiveil: Update the resource list traversal
 function
Date: Fri,  5 Jul 2019 17:56:32 +0800
Message-Id: <20190705095656.19191-5-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Code that executes the resource list traversal does not need to
delete any node therefore using the *_safe() API version is
useless.

Replace function resource_list_for_each_entry_safe() with the
resource_list_for_each_entry() counterpart.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Rebased the patch, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 53df317..c359654 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -562,7 +562,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
 	u32 value, pab_ctrl, type = 0;
 	int err;
-	struct resource_entry *win, *tmp;
+	struct resource_entry *win;
 
 	err = mobiveil_bringup_link(pcie);
 	if (err) {
@@ -612,7 +612,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	program_ib_windows(pcie, WIN_NUM_1, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry_safe(win, tmp, &pcie->resources) {
+	resource_list_for_each_entry(win, &pcie->resources) {
 		type = 0;
 		if (resource_type(win->res) == IORESOURCE_MEM)
 			type = MEM_WINDOW_TYPE;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A986098C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Sv/aLLlz66Ub7sMVFXxFlg+//YRD/gXb3S1GXmveoQ=; b=q/JWvCNe9mgcuBsB+wREcat+rJ
	iFmizKanB9SytVxicPtJMjD00DgPUqFEANclqu72YedkZrPjzzeL6qeoM2S06c8BvNXFj6tobfNFi
	fYpTeEbTtCBdWxKa6yAkmur61xvQUBtvaFuM2sXXe3xK+Uxa67QFJslQK4XCDaGvTkc/ohcAD/pn+
	kl+oKuKv3JBWf2T26BdPddL68EECjbqA3vzPA+maeCDAmZkVtKkIDc+Qw9oDzqyjv8CT2sMj5bfz1
	XExybzKrzCLnegRg/DftaHOEAHctfX1qW8P+dz39mdNwFjVZ2QAWwSN0t+CMo8Q3RV2p4RCHKCFyc
	LZJRrdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQPZ-0000Gf-1W; Fri, 05 Jul 2019 15:46:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNN-0005WA-0H
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RJKev7oTCPvjiqRf0dpyj779IM1JpSi5dwL6vku4Zbs=; b=gWRAHxGCtWIPbwk4U+wHGAkRi
 jba74c8BWAoOjSRZbhzm7ol0+8/TvCHeUDywljAWsSapvZTv00LOJg/puvCskA7yxkrE6h3GbOiAz
 Yp4kp1hv70BbzsvcS8w6yqiZ7m2GYxbMtMw1gAyoWBxY+ebR2BHPG/mV/q4Bbc+6afa32AIoTEhxL
 BbuEfB3EQMlsxN89q2KYWqg7W1SDWpkcd9m9IdyDElzBnMuFEazjejSg43arjuknIrclEnak3EpIJ
 J8g5xBUstK/m2QbvcLMSOwtxIfZdI1mPsOVL0467lYKijJ33R7zb90M63stypsuqo1Ciq0kzZmyV4
 IiPp3dzMA==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL81-00010K-Gl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B444D200044;
 Fri,  5 Jul 2019 12:07:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 35BAC2006F8;
 Fri,  5 Jul 2019 12:07:25 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7C75D4030E;
 Fri,  5 Jul 2019 18:07:14 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 19/28] PCI: mobiveil: Fix the valid check for inbound and
 outbound window
Date: Fri,  5 Jul 2019 17:56:47 +0800
Message-Id: <20190705095656.19191-20-Zhiqiang.Hou@nxp.com>
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

Check window index from the parameter instead of the total
number of initialized windows to determine if the specified
window is valid.

Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index ccf9bb1..76653d9 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -458,7 +458,7 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 	u32 value;
 	u64 size64 = ~(size - 1);
 
-	if ((pcie->ib_wins_configured + 1) > pcie->ppio_wins) {
+	if (win_num >= pcie->ppio_wins) {
 		dev_err(&pcie->pdev->dev,
 			"ERROR: max inbound windows reached !\n");
 		return;
@@ -491,7 +491,7 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 {
 	u64 size64 = ~(size - 1);
 
-	if ((pcie->ob_wins_configured + 1) > pcie->apio_wins) {
+	if (win_num >= pcie->apio_wins) {
 		dev_err(&pcie->pdev->dev,
 			"ERROR: max outbound windows reached !\n");
 		return;
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

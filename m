Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A404607FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wHp8xaQhECdwpTBsd1CZ63RN3eDfwu7ZAgjt0Wqkh14=; b=ewRjhV9T+PxtPqwfryoJu1A3Zp
	ERvh6M0CALnmHFlOP0xLLuoxraVy2mUDHqEkOv4/r1wld5K4seO94Hj4ORec5DdcgyKvSoCyWBG5C
	l4Z7anQ/KHPyf9LPphOS+u/708hv3Hn8KggChA3O3/Hzd41t0yOCTIc6Qb94JPs4mjPkjCGIJf/zk
	okI5Kh7nCT34Svva/tKousLjCwEJFzjLjh/kKd7LZbj6hdZ3H+n+j9Pc0PfMzNkiYlSfm9bcSg+0U
	FMION8h9hgCsJq8LZZXOBI4gi+lN8lJDDfMWo4cp3BTHILbkNx1NBAI0DbMcBijNXNz+/othoUxjA
	V6SXDDiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPKn-0006iE-DI; Fri, 05 Jul 2019 14:37:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPJx-00062b-7Q
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UBUIc2ikiY2A5bPPNVBvBy2BGU7cPDVR5lSEHJDH7ho=; b=FZDrrEWav5vnLt91JLaBXi7Z7
 mEHYgWzK4fCd6Nfyhm20g+5uYiQx1KyT8Z21qHzQx//Is1VmCoSl2oTz4qX89buBoiTUChyTJJU3v
 e4ufUR2GxoshcNjIkUwSvv/JEzyEa92aVYvWNeUXg79QyZfsiacTMB9P1vpKLAvO3np05stD5CKw8
 0DD9b41AEbn46lgVOD9LjlzGiGOszFozhCmSI1a7Xpo+4ur6utratzNOf9XxwQRqvnS1vpWgoHs8R
 0hZl9V8xJNWQsV1A5Bh1In1hwzFtQinLbgbDmEu+ebx8Hra6bVL6brKGHgrebnznQH3d7A+54BJV/
 /rkCH4DRw==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7w-00022X-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A2B271A0EB4;
 Fri,  5 Jul 2019 12:07:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 244301A0EA4;
 Fri,  5 Jul 2019 12:07:14 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E7D02402C0;
 Fri,  5 Jul 2019 18:06:59 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 10/28] PCI: mobiveil: Initialize
 Primary/Secondary/Subordinate bus numbers
Date: Fri,  5 Jul 2019 17:56:38 +0800
Message-Id: <20190705095656.19191-11-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110736_353467_05EB36CC 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
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

The reset value of Primary, Secondary and Subordinate bus numbers is
zero which is a broken setup.

Program a sensible default value for Primary/Secondary/Subordinate
bus numbers.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Rebased the patch, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index cdf15cc..8f56130 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -561,6 +561,12 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	u32 value, pab_ctrl, type = 0;
 	struct resource_entry *win;
 
+	/* setup bus numbers */
+	value = csr_readl(pcie, PCI_PRIMARY_BUS);
+	value &= 0xff000000;
+	value |= 0x00ff0100;
+	csr_writel(pcie, value, PCI_PRIMARY_BUS);
+
 	/*
 	 * program Bus Master Enable Bit in Command Register in PAB Config
 	 * Space
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

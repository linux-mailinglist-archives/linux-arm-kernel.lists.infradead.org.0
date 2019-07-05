Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B6609C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K//ZWnO586md/wXGtV9+xCHRzWN1cqATWa8zv97y6ng=; b=jj68UmpVQeAbH2lxD3AFU/GIFE
	eiefu0Ve3zGbFFJFGxFdZ6n9Ee23gIDh+95BSShvh4OrEM5aIIXWonsZ+T6hEg/wXp4hDQYY8m8k9
	IV7zspK5TB3euME28wUJtlU7vCK5v+QmfIwBzqt35XDoSerjKDdmddKzL+dlkI3fPqitp7UabP0nH
	WFwy7oCpTPpZRcDEheOq3d2ReAlbdGABqHlK8+Be0LXh2S4tF4pH4IoI/aTiURVWRZToFLrah2WOu
	ITCKmCwWgBBVQP2aqgXB1Q4s1x5ffsY2SU7P8r2DqZyqfdItjX54gheOz6YCGA2F0dS3+Wlhxvr32
	AJn6G+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQUV-0006XR-NY; Fri, 05 Jul 2019 15:51:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQO4-0006EP-61
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vzlKfpxxJX9na1jV8gGEMeksdhHNlsGB52x30Zhq9VM=; b=yBYyEEv7OEm9Aad68FuFcFQ8j
 XuAbyD9+hYgVu4ZekJ5w8uCNswpv2vuZYlaBnM1np2/NKlTEIeO93+eCg+HUjyY8vzFjFXpaFXbcG
 d/sEWZ9GpfUyf+wgWdr+3sbNOsZNieqm9nUkn9YJnn2yTrIRBgxfSU7sKagq1swksAeoYKgjd9zvh
 jJ2TVVt0Jy0Esq3ji5wkPLuWGfBa8yVf3OIQZudhpLVIf48mVYKA6pAB1wQi25s6xnhhSG/h07hoC
 ztPDHWX5svTGKBg9PUOKdpFvOaWc6EqSA+ZldM3CqQgkTpuVWLAM/0qUhWUPVxTuwNWQNtOcEVXvF
 V3jqhPKDQ==;
Received: from inva020.nxp.com ([92.121.34.13])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL8P-000119-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:08:06 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A79651A0EA8;
 Fri,  5 Jul 2019 12:07:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 249E21A0EAB;
 Fri,  5 Jul 2019 12:07:26 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1820E40326;
 Fri,  5 Jul 2019 18:07:16 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 20/28] PCI: mobiveil: Add the statistic of initialized
 inbound windows
Date: Fri,  5 Jul 2019 17:56:48 +0800
Message-Id: <20190705095656.19191-21-Zhiqiang.Hou@nxp.com>
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code has only statistic for outbound windows initialized,
but lack of inbound windows statistic. This patch is to add the
statistic for inbound windows initialized.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Splited from #9 of v5 patches, no functional change.

 drivers/pci/controller/pcie-mobiveil.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 76653d9..0560344 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -481,6 +481,7 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 
 	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
 	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
+	pcie->ib_wins_configured++;
 }
 
 /*
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

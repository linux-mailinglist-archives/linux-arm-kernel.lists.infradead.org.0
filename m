Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D014748
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tAJ6W5k9nxKEfrs1kqAjWTxG3K20lw72a8Nz/UWSz+U=; b=BmVanCDH9WU5QdyQDV2Cc5lbVv
	wwJUvYDOUK00yNnu8DPbvb0HF6bf6X+DjXre3KpKw6iEqY96LJENOQB2pGF8tfgLVtsNSa4X8u9hw
	j0wA/0naFKy9qY81dkEgSSY310F807WiHmuSi2wLe6iunQ25nPqkwbhvmTmiothBoeFi5vE0PNpAt
	AbQZdZCUJlj2FJTdbcZ1jYzlQxaDFVZYtk+ogn1L8gcGElFlFiCXUvb9MJ5FEUo8JsmhK08RCsND/
	VQX2kOWGlgUA/S/W3eQeuxceeAOdlrlqXzO25hmf4FITh+VL761PhhxXiBXn0HMkUTc+5XjH02N+U
	heBFo/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZfZ-0000YJ-Kv; Mon, 06 May 2019 09:12:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZes-0008Kb-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:11:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D848F1A0017;
 Mon,  6 May 2019 11:11:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EF4DB1A001D;
 Mon,  6 May 2019 11:11:31 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9AD89402EB;
 Mon,  6 May 2019 17:11:25 +0800 (SGT)
From: Peng Ma <peng.ma@nxp.com>
To: vkoul@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 mark.rutland@arm.com, leoyang.li@nxp.com
Subject: [PATCH 4/4] dt-bindings: fsl-qdma: Add LS1028A qDMA bindings
Date: Mon,  6 May 2019 09:03:44 +0000
Message-Id: <20190506090344.37784-4-peng.ma@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190506090344.37784-1-peng.ma@nxp.com>
References: <20190506090344.37784-1-peng.ma@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021138_359208_D1E42AB5 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Peng Ma <peng.ma@nxp.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add LS1028A qDMA controller bindings to fsl-qdma bindings.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
 Documentation/devicetree/bindings/dma/fsl-qdma.txt |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/fsl-qdma.txt b/Documentation/devicetree/bindings/dma/fsl-qdma.txt
index 6a0ff90..da371c4 100644
--- a/Documentation/devicetree/bindings/dma/fsl-qdma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-qdma.txt
@@ -7,6 +7,7 @@ Required properties:
 
 - compatible:		Must be one of
 			 "fsl,ls1021a-qdma": for LS1021A Board
+			 "fsl,ls1028a-qdma": for LS1028A Board
 			 "fsl,ls1043a-qdma": for ls1043A Board
 			 "fsl,ls1046a-qdma": for ls1046A Board
 - reg:			Should contain the register's base address and length.
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

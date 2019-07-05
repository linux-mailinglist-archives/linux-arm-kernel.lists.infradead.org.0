Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9343960815
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QJoMuFHrxzC88QanwILbiqMyge9V5AsOle+GXZKeVgE=; b=Clo
	9NF1ZvriPAM33ktDwf7+RelNCfWF2tOH6nVlqnn+AoUEI//CqHmcnuchZQgk+nOCSp+4LPG5H6Pfw
	Jfjw1uJph0q1HExGHb57WAFGHaq2tjalbk4HLdIeSQzyvhxjc8QQ4Lkrg7KJrOlm4/D3q5gMfTeiT
	3d00umCjuNtyA0zPfrfOp85JlW+5gvcjG47V6bkMYvPl9N5MB4wr8vaQ53uGWRe2uF28XbtvvsBJr
	DLVbz3z3z60v/hXtMV/RupBq/5di+kvC8RGw0c2PPsitpABi4uHfu6MpGmr9Z82J6H1CCLDePNRDj
	2M46GdKu75j6m9rIebMKXnhhi6aPiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPOR-0003l9-Ta; Fri, 05 Jul 2019 14:40:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKK-0006P9-Vb
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1Ef8vAwMRqRS92LSuia3zOpJVQqTutrUxEtrXiN0/8=; b=hrmX4DxV2K/wHypeP6+SuXrUY
 DQ/ioPv0BHxfJHRu5403Wl+TUS6Iu9opuew2HS+BxyO9rcSA9MiYN8txBiTmAKazNkoIYA9ATDdfd
 geWasTBMIkWVleDLfJY/wroVswU1DhoXTzJRaM/LlDhaEr9zJy7ikTMU+APKY3nGUMb6s1I2AXUEY
 1JsZNP9bGAlS1VZzDkNJeac9kGxvXwfiYePSH6eydBxSGuipGw65hakxyCGrIm4pE6h5VOun34PmL
 ubP6dpqsWPuNNGdd9aJn5aEUmAw/1psGE4wHkez6hopV7QuEWFLHEX7PoLzTso3S4LAMF10/qmIlh
 4clPDXMNA==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL7z-00023n-CY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:07:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1AC10200703;
 Fri,  5 Jul 2019 12:07:03 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8F8BF200706;
 Fri,  5 Jul 2019 12:06:54 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 20295402DF;
 Fri,  5 Jul 2019 18:06:44 +0800 (SGT)
From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 l.subrahmanya@mobiveil.co.in, shawnguo@kernel.org, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv6 00/28] PCI: mobiveil: fixes for Mobiveil PCIe Host Bridge IP
 driver
Date: Fri,  5 Jul 2019 17:56:28 +0800
Message-Id: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110739_461014_DF417A2E 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

This patch set is to add fixes for Mobiveil PCIe Host driver.
Splited #2, #3, #9 and #10 of v5 patches.

Hou Zhiqiang (28):
  PCI: mobiveil: Unify register accessors
  PCI: mobiveil: Remove the flag MSI_FLAG_MULTI_PCI_MSI
  PCI: mobiveil: Fix PCI base address in MEM/IO outbound windows
  PCI: mobiveil: Update the resource list traversal function
  PCI: mobiveil: Use WIN_NUM_0 explicitly for CFG outbound window
  PCI: mobiveil: Use the 1st inbound window for MEM inbound
    transactions
  PCI: mobiveil: Fix the Class Code field
  PCI: mobiveil: Move the link up waiting out of mobiveil_host_init()
  PCI: mobiveil: Move IRQ chained handler setup out of DT parse
  PCI: mobiveil: Initialize Primary/Secondary/Subordinate bus numbers
  PCI: mobiveil: Fix devfn check in mobiveil_pcie_valid_device()
  dt-bindings: PCI: mobiveil: Change gpio_slave and apb_csr to optional
  PCI: mobiveil: Reformat the code for readability
  PCI: mobiveil: Make the register updating more readable
  PCI: mobiveil: Revise the MEM/IO outbound window initialization
  PCI: mobiveil: Fix the returned error number
  PCI: mobiveil: Remove an unnecessary return value check
  PCI: mobiveil: Remove redundant var definitions and register read
    operations
  PCI: mobiveil: Fix the valid check for inbound and outbound window
  PCI: mobiveil: Add the statistic of initialized inbound windows
  PCI: mobiveil: Clear the target fields before updating the register
  PCI: mobiveil: Mask out the lower 10-bit hardcode window size
  PCI: mobiveil: Add upper 32-bit CPU base address setup in outbound
    window
  PCI: mobiveil: Add upper 32-bit PCI base address setup in inbound
    window
  PCI: mobiveil: Fix the CPU base address setup in inbound window
  PCI: mobiveil: Move PCIe PIO enablement out of inbound window routine
  PCI: mobiveil: Fix infinite-loop in the INTx process
  PCI: mobiveil: Fix the potential INTx missing problem

 .../devicetree/bindings/pci/mobiveil-pcie.txt      |    2 +
 drivers/pci/controller/pcie-mobiveil.c             |  529 ++++++++++++--------
 2 files changed, 318 insertions(+), 213 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

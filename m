Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E012D716F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=scYEaTXqGRA7NZDmts4AIO3vr3iekW446oppYmiYCWI=; b=h94
	HAb+oEgStLhuMEslxnUlbZDZ7IXEuKzo6fHOYokWmu7/oEemZzjdgikHqk/FC/PjpwopDsjQuHcE/
	Dl5F9gPJ0JCHI9IdtE6paLkIlFeBDJI5kWGOvEioFmBH4XlxJKLh5/9/RA3kJCjrCIcIp3edEmDNu
	ELUbml5V38oydGomoYBvb4uGTJp8gboW1YxaKWcErMkgzc6tYNtRNBa85YV3xuYkx8IP57oBi6iPu
	2fxIntIDY2FIWLeK38d5nRBjJzvnUCjydAtoEJUDLxC/sPkvTdnLrEJz8XNZbtAL/micnQk3TPXxo
	GVmA9RezdEuDrfC7KoBRDXU8wZAOfLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIV8-0003Z8-Nt; Tue, 15 Oct 2019 08:48:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIUw-0003Y8-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:48:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D22B51A07CA;
 Tue, 15 Oct 2019 10:48:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 03A8E1A0460;
 Tue, 15 Oct 2019 10:47:58 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 613E5402B3;
 Tue, 15 Oct 2019 16:47:49 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Add the Mobiveil EP and Layerscape Gen4 EP driver
 support
Date: Tue, 15 Oct 2019 16:36:56 +0800
Message-Id: <20191015083702.21792-1-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014806_780961_C51BC1BB 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set are for adding Mobiveil EP driver and adding PCIe Gen4
EP driver of NXP Layerscape platform.

This patch set depends on:
https://patchwork.kernel.org/project/linux-pci/list/?series=159139

Xiaowei Bao (6):
  PCI: mobiveil: Add the EP driver support
  dt-bindings: Add DT binding for PCIE GEN4 EP of the layerscape
  PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape SoCs
  PCI: mobiveil: Add workaround for unsupported request error
  arm64: dts: lx2160a: Add PCIe EP node
  misc: pci_endpoint_test: Add the layerscape PCIe GEN4 EP device
    support

 .../bindings/pci/layerscape-pcie-gen4.txt          |  27 +-
 MAINTAINERS                                        |   3 +
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  56 ++
 drivers/misc/pci_endpoint_test.c                   |   2 +
 drivers/pci/controller/mobiveil/Kconfig            |  22 +-
 drivers/pci/controller/mobiveil/Makefile           |   2 +
 .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 169 ++++++
 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c | 569 +++++++++++++++++++++
 drivers/pci/controller/mobiveil/pcie-mobiveil.c    |  99 +++-
 drivers/pci/controller/mobiveil/pcie-mobiveil.h    |  72 +++
 10 files changed, 1009 insertions(+), 12 deletions(-)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c

-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

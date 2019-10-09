Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373DCD0B9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTavTYlJ98/1cTeqkjD0CAa9TM94zAufFnzHkG4D5Xk=; b=R/aoXIrvZGxEo2
	Gtep9LkR56Qld5jQ1E91Mu2v8AgfjOtkyqq+mz0iwr42ZhhQjeZK/1hCYsC9xUDgTi6mBM2/64uTr
	OSC8F2qGpfVFJ+a8DRL6MLJL0gGMruq3NdDZF9TWrEFdGAsC242H3EyLRlDSI98yeaTXi0q1q1rZ5
	CWJx/uDKhIxvEgGRck19QtT7HGnZkP47SubckFeqqVAFJq4ZSHk1XcAFE+K17T/m/NWdWsenu6mPM
	5+GKQ0zjvFmmWOdkfpigdAX4HoXF8D9t4krwQRBNz/rqnCjZ+z6CEAwc2vzS/pBJvbrn4cOyBiJ9l
	DrkX8R7MOsO72GM5oG+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8WD-0001Y4-UN; Wed, 09 Oct 2019 09:44:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8W5-0001Wx-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:44:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B74C628;
 Wed,  9 Oct 2019 02:44:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B0F13F68E;
 Wed,  9 Oct 2019 02:44:19 -0700 (PDT)
Date: Wed, 9 Oct 2019 10:44:17 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 0/6] Add the Mobiveil EP and Layerscape Gen4 EP driver
 support
Message-ID: <20191009094416.GO42880@e119886-lin.cambridge.arm.com>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916021742.22844-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_024421_225952_C8E17DB1 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, Minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, bhelgaas@google.com, kishon@ti.com,
 shawnguo@kernel.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:17:36AM +0800, Xiaowei Bao wrote:
> This patch set are for adding Mobiveil EP driver and adding PCIe Gen4
> EP driver of NXP Layerscape platform.
> 
> This patch set depends on:
> https://patchwork.kernel.org/project/linux-pci/list/?series=159139
> 

I've not had any feedback on this earlier series (in your link), I was
planning to review *this* patchset after that.

Thanks,

Andrew Murray

> Xiaowei Bao (6):
>   PCI: mobiveil: Add the EP driver support
>   dt-bindings: Add DT binding for PCIE GEN4 EP of the layerscape
>   PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape SoCs
>   PCI: mobiveil: Add workaround for unsupported request error
>   arm64: dts: lx2160a: Add PCIe EP node
>   misc: pci_endpoint_test: Add the layerscape PCIe GEN4 EP device
>     support
> 
>  .../bindings/pci/layerscape-pcie-gen4.txt          |  28 +-
>  MAINTAINERS                                        |   3 +
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  56 ++
>  drivers/misc/pci_endpoint_test.c                   |   2 +
>  drivers/pci/controller/mobiveil/Kconfig            |  22 +-
>  drivers/pci/controller/mobiveil/Makefile           |   2 +
>  .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 169 ++++++
>  drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c | 568 +++++++++++++++++++++
>  drivers/pci/controller/mobiveil/pcie-mobiveil.c    |  99 +++-
>  drivers/pci/controller/mobiveil/pcie-mobiveil.h    |  72 +++
>  10 files changed, 1009 insertions(+), 12 deletions(-)
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c
> 
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

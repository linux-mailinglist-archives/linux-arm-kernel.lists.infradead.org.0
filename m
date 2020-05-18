Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBE61D7C10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BE+rN4XyOBDlot8gexKHnr6suUblTPaWiAmyd4DAcA=; b=DCMExmiIpkLRxh
	p2Sig+FLJp8+23pg1x9nlf0+9rAklDLQxDXAcc4LX05550iAATEo8To043FJb4JGyJyX3wsjbP8in
	euS567wriRRoFEDmf4GS/ZOwLW/U4uxrpaikwIXcgUGYitNdiSeRVhgA14xzRp/VHmasxB5LfcyIg
	x6FodEhmxDydtRjhR+qMSUEC6i6D28fwHQlRcsrD/3Ud+AMFIq71WL6lsDgH0E6Pc3eTVdSxUcAF7
	o+TvqqWv5rTkmfnWmYnIUiIreTjwq/WUGY8jFRn9X4/gVybHHqNrbkLIJ1TssONrIVxijwUKL9gB8
	2nPEFTj6Byn0DYU19Emg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahEe-0000wR-1V; Mon, 18 May 2020 14:59:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahDY-00005v-7K
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:58:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B9C4101E;
 Mon, 18 May 2020 07:58:08 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.25.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED0463F52E;
 Mon, 18 May 2020 07:58:06 -0700 (PDT)
Date: Mon, 18 May 2020 15:57:59 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 0/4] PCI: cadence: Deprecate inbound/outbound specific
 bindings
Message-ID: <20200518145759.GA19714@red-moon.cambridge.arm.com>
References: <20200508130646.23939-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508130646.23939-1-kishon@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075812_316619_F9FBAB7D 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 06:36:42PM +0530, Kishon Vijay Abraham I wrote:
> This series is a result of comments given by Rob Herring @ [1].
> Patch series changes the DT bindings and makes the corresponding driver
> changes.
> 
> Changes from v2:
> 1) Changed the order of patches (no solid reason. Just save some
> rebasing effort for me)
> 2) Added Acked-by Tom and Rob except for the dma-ranges patch
> 3) Re-worked dma-ranges patch for it do decode multiple dma-ranges
>    and configure BAR0, BAR1 and NO_BAR instead of just NO_BAR [2].
> 
> Changes from v1:
> 1) Added Reviewed-by: Rob Herring <robh@kernel.org> for dt-binding patch
> 2) Fixed nitpick comments from Bjorn Helgaas
> 3) Added a patch to read 32-bit Vendor ID/Device ID property from DT
> 
> [1] -> http://lore.kernel.org/r/20200219202700.GA21908@bogus
> [2] -> http://lore.kernel.org/r/eb1ffcb3-264f-5174-1f25-b5b2d3269840@ti.com
> 
> Kishon Vijay Abraham I (4):
>   dt-bindings: PCI: cadence: Deprecate inbound/outbound specific
>     bindings
>   PCI: cadence: Remove "cdns,max-outbound-regions" DT property
>   PCI: cadence: Fix to read 32-bit Vendor ID/Device ID property from DT
>   PCI: cadence: Use "dma-ranges" instead of "cdns,no-bar-match-nbits"
>     property
> 
>  .../bindings/pci/cdns,cdns-pcie-ep.yaml       |   2 +-
>  .../bindings/pci/cdns,cdns-pcie-host.yaml     |   3 +-
>  .../devicetree/bindings/pci/cdns-pcie-ep.yaml |  25 +++
>  .../bindings/pci/cdns-pcie-host.yaml          |  10 ++
>  .../devicetree/bindings/pci/cdns-pcie.yaml    |   8 -
>  .../controller/cadence/pcie-cadence-host.c    | 151 +++++++++++++++---
>  drivers/pci/controller/cadence/pcie-cadence.h |  23 ++-
>  7 files changed, 182 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml

I have applied patches 1-3 to pci/cadence (that I think are
self-contained), waiting for the dma-ranges discussion to wrap up on
patch 4.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

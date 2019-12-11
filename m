Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C75411C010
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 23:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FifYuswYScasL2aCfc1o4nY0MXeXy0RG1rJD4aJoYG0=; b=HBepjnsaxopZ6C
	qd4xDkn74WuHRFiBCWme5pDs/5DUPnFQBu6LveHLN0U/fGTii6ctLfJXcj7+uM0NnFiO73nMneLHt
	H6X+dV9fvXnpAmAAvDZ6ORe9OlAOOb+vHas+2RhY8wrUmUg6RC1SBOBt19lONYxaLC/wv/Ad5nMwi
	NPPsFUs7JqBDKALIBjMB5NtJXjgA1pbOeszE0+owFPsE+YSS4Yj+IBqw3izGAPThKUhkjpTccOSij
	paChKBKiWI/sfqRdvDch/ONg9gxO/vHb69vioUvyHPmP7N/fWDglJyrQCRipE9PLV+QjidsptusQr
	TRGc9BPDD+6PrwZtfX5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifAkt-0007lT-6E; Wed, 11 Dec 2019 22:46:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifAkj-0007kX-AD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 22:46:42 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 681C620836;
 Wed, 11 Dec 2019 22:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576104400;
 bh=DO7UyfzEBz8p1xfKYT9necVU3BMFfuI27Qs6t3xiY3w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=OnTKLlyWPmJTjY3iUjPJT0/C8AUPYg7+AIsI4GGDlsiPJBnvr4OMAGjBpVvXqflnb
 /oqNzVnkS5LSZu4nbtJS26Gi/oc7tXBWG+5TcMNpdM+M7+yCdXeW524IcSsjnr3Dvg
 IcCcZEpa5rYkE1c8W/kLCNqmx2nsvnKCUPuU8U9A=
Date: Wed, 11 Dec 2019 16:46:36 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 0/4] Redesign MSI-X support in PCIe Endpoint Core
Message-ID: <20191211224636.GA122332@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211124608.887-1-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_144641_373663_170823BB 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 linux-pci@vger.kernel.org, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 06:16:04PM +0530, Kishon Vijay Abraham I wrote:
> Existing MSI-X support in Endpoint core has limitations:
>  1) MSIX table (which is mapped to a BAR) is not allocated by
>     anyone. Ideally this should be allocated by endpoint
>     function driver.
>  2) Endpoint controller can choose any random BARs for MSIX
>     table (irrespective of whether the endpoint function driver
>     has allocated memory for it or not)
> 
> In order to avoid these limitations, pci_epc_set_msix() is
> modified to include BAR Indicator register (BIR) configuration
> and MSIX table offset as arguments. This series also fixed MSIX
> support in dwc driver and add MSI-X support in Cadence PCIe driver.
> 
> The previous version of Cadence EP MSI-X support is @ [1].
> This series is created on top of [2]
> 
> [1] -> https://patchwork.ozlabs.org/patch/971160/
> [2] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com
> 
> Alan Douglas (1):
>   PCI: cadence: Add MSI-X support to Endpoint driver
> 
> Kishon Vijay Abraham I (3):
>   PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
>   PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSIX table
>     address
>   PCI: keystone: Add AM654 PCIe Endpoint to raise MSIX interrupt

Trivial nits:

  - There's a mix of "MSI-X" and "MSIX" in the subjects, commit logs,
    and comments.  I prefer "MSI-X" to match usage in the spec.

  - "Fixes:" tags need not include "commit".  It doesn't *hurt*
    anything, but it takes up space that could be used for the
    subject.

  - Commit references typically use a 12-char SHA1.  Again, doesn't
    hurt anything.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

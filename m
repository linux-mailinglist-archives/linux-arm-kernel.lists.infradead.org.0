Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E172C265D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 21:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ONSXbT35dyeK8FQcezeNRlMfxEJZc+g0seEE/gMf+SQ=; b=csuZa0SN6oj2Kw
	dbcpbHxgCyFwdEm3auJ6+xw5oaZxaF6sU6EqrHecv5x7Sx3N+iXRZWrG+pzYMYSbGtUa6B+NbZ9jX
	VZZ0TlUTwKtId8hGtXq5+oUvIAFUvF4Sx+3wst0atmCa7MX6QfYDu9GetsgPdr8R84Oo9qWJ7aKoO
	QWGKB2T1uP6FBDpbmkNqVtkhXrpfr4EGqFJH8DCxWhauFkm70GC+jhysmZpD5kKuLSQlDNLXlN1V9
	NAnhY4KoHM+i61hUd/ROzoA8aHbcrH7AWEzLWs2wQ/LG97TUL0oyWy6APw7r+hU/MUkSFyu6Tk4Q/
	sfkf3lM0iCiBU5Khr2Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1p6-0001hG-Lu; Mon, 30 Sep 2019 19:59:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1ow-0001gY-Pt
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 19:59:00 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67EDD224D7;
 Mon, 30 Sep 2019 19:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569873536;
 bh=5YkIavbcZo/fLAlcbxRAjN/RrUGTMkGP8SzMSvE3lfY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=eQ2EwAbhTnIoCao80RsHAjyuX0FiFTAlEN6giJaMJlAygtJFtLFebghluVb1IgARK
 QJIQQXZWBQEH68It6VK2j2PAMzsVDbeK0hNpsI8f9l+BsiWY2zGIHPbIo8lDV07B5v
 nuE1LfjWC+uyDHhdEx/TeJU/HbfFo2GBNRL7OTVo=
Date: Mon, 30 Sep 2019 14:58:55 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Denis Efremov <efremov@linux.com>
Subject: Re: [PATCH RESEND v3 00/26] Add definition for the number of
 standard PCI BARs
Message-ID: <20190930195855.GA191519@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927234026.23342-1-efremov@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_125858_882657_11D35888 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org, kvm@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-alpha@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 02:40:26AM +0300, Denis Efremov wrote:
> Code that iterates over all standard PCI BARs typically uses
> PCI_STD_RESOURCE_END, but this is error-prone because it requires
> "i <= PCI_STD_RESOURCE_END" rather than something like
> "i < PCI_STD_NUM_BARS". We could add such a definition and use it the same
> way PCI_SRIOV_NUM_BARS is used. The patchset also replaces constant (6)
> with new define PCI_STD_NUM_BARS where appropriate and removes local
> declarations for the number of PCI BARs.
> 
> Changes in v3:
>   - Updated commits description.
>   - Refactored "< PCI_ROM_RESOURCE" with "< PCI_STD_NUM_BARS" in loops.
>   - Refactored "<= BAR_5" with "< PCI_STD_NUM_BARS" in loops.
>   - Removed local define GASKET_NUM_BARS.
>   - Removed local define PCI_NUM_BAR_RESOURCES.
> 
> Changes in v2:
>   - Reversed checks in pci_iomap_range,pci_iomap_wc_range.
>   - Refactored loops in vfio_pci to keep PCI_STD_RESOURCES.
>   - Added 2 new patches to replace the magic constant with new define.
>   - Splitted net patch in v1 to separate stmmac and dwc-xlgmac patches.
> 
> Denis Efremov (26):
>   PCI: Add define for the number of standard PCI BARs
>   PCI: hv: Use PCI_STD_NUM_BARS
>   PCI: dwc: Use PCI_STD_NUM_BARS
>   PCI: endpoint: Use PCI_STD_NUM_BARS
>   misc: pci_endpoint_test: Use PCI_STD_NUM_BARS
>   s390/pci: Use PCI_STD_NUM_BARS
>   x86/PCI: Loop using PCI_STD_NUM_BARS
>   alpha/PCI: Use PCI_STD_NUM_BARS
>   ia64: Use PCI_STD_NUM_BARS
>   stmmac: pci: Loop using PCI_STD_NUM_BARS
>   net: dwc-xlgmac: Loop using PCI_STD_NUM_BARS
>   ixgb: use PCI_STD_NUM_BARS
>   e1000: Use PCI_STD_NUM_BARS
>   rapidio/tsi721: Loop using PCI_STD_NUM_BARS
>   efifb: Loop using PCI_STD_NUM_BARS
>   fbmem: use PCI_STD_NUM_BARS
>   vfio_pci: Loop using PCI_STD_NUM_BARS
>   scsi: pm80xx: Use PCI_STD_NUM_BARS
>   ata: sata_nv: Use PCI_STD_NUM_BARS
>   staging: gasket: Use PCI_STD_NUM_BARS
>   serial: 8250_pci: Use PCI_STD_NUM_BARS
>   pata_atp867x: Use PCI_STD_NUM_BARS
>   memstick: use PCI_STD_NUM_BARS
>   USB: core: Use PCI_STD_NUM_BARS
>   usb: pci-quirks: Use PCI_STD_NUM_BARS
>   devres: use PCI_STD_NUM_BARS
> 
>  arch/alpha/kernel/pci-sysfs.c                 |  8 ++---
>  arch/ia64/sn/pci/pcibr/pcibr_dma.c            |  4 +--
>  arch/s390/include/asm/pci.h                   |  5 +--
>  arch/s390/include/asm/pci_clp.h               |  6 ++--
>  arch/s390/pci/pci.c                           | 16 +++++-----
>  arch/s390/pci/pci_clp.c                       |  6 ++--
>  arch/x86/pci/common.c                         |  2 +-
>  arch/x86/pci/intel_mid_pci.c                  |  2 +-
>  drivers/ata/pata_atp867x.c                    |  2 +-
>  drivers/ata/sata_nv.c                         |  2 +-
>  drivers/memstick/host/jmb38x_ms.c             |  2 +-
>  drivers/misc/pci_endpoint_test.c              |  8 ++---
>  drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
>  drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  2 +-
>  .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  4 +--
>  .../net/ethernet/synopsys/dwc-xlgmac-pci.c    |  2 +-
>  drivers/pci/controller/dwc/pci-dra7xx.c       |  2 +-
>  .../pci/controller/dwc/pci-layerscape-ep.c    |  2 +-
>  drivers/pci/controller/dwc/pcie-artpec6.c     |  2 +-
>  .../pci/controller/dwc/pcie-designware-plat.c |  2 +-
>  drivers/pci/controller/dwc/pcie-designware.h  |  2 +-
>  drivers/pci/controller/pci-hyperv.c           | 10 +++---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 10 +++---
>  drivers/pci/pci-sysfs.c                       |  4 +--
>  drivers/pci/pci.c                             | 13 ++++----
>  drivers/pci/proc.c                            |  4 +--
>  drivers/pci/quirks.c                          |  4 +--
>  drivers/rapidio/devices/tsi721.c              |  2 +-
>  drivers/scsi/pm8001/pm8001_hwi.c              |  2 +-
>  drivers/scsi/pm8001/pm8001_init.c             |  2 +-
>  drivers/staging/gasket/gasket_constants.h     |  3 --
>  drivers/staging/gasket/gasket_core.c          | 12 +++----
>  drivers/staging/gasket/gasket_core.h          |  4 +--
>  drivers/tty/serial/8250/8250_pci.c            |  8 ++---
>  drivers/usb/core/hcd-pci.c                    |  2 +-
>  drivers/usb/host/pci-quirks.c                 |  2 +-
>  drivers/vfio/pci/vfio_pci.c                   | 11 ++++---
>  drivers/vfio/pci/vfio_pci_config.c            | 32 ++++++++++---------
>  drivers/vfio/pci/vfio_pci_private.h           |  4 +--
>  drivers/video/fbdev/core/fbmem.c              |  4 +--
>  drivers/video/fbdev/efifb.c                   |  2 +-
>  include/linux/pci-epc.h                       |  2 +-
>  include/linux/pci.h                           |  2 +-
>  include/uapi/linux/pci_regs.h                 |  1 +
>  lib/devres.c                                  |  2 +-
>  47 files changed, 112 insertions(+), 115 deletions(-)

Applied to pci/resource for v5.5, thanks!

I ended up squashing these all together because they're all related
and tiny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

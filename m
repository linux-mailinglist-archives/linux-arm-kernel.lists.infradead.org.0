Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4098812041A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vy958q8bpH6D5yX2W/T+5YgK9pmGRTxalL22kiTvO+8=; b=iELCvmINlbmRNw
	UAnrUThetMDhJL/hBJPIbHZVHjyKMOkusLEiXvtKfXUSY/VLYoe0V/Em3PW8TYzRdtKZ0B0WvjIeE
	X8L7PLNfhAw24zaPpw7982mZTthG0VprQezoEBjSN4lxx2Kdy8erGCLRsZTagwal1dWLlKxGzFc/W
	0sLuvTUGuLJxwg7A3KZ86+oJKyUpB3Ojyh08PsTAtsTxaBMxdOOMN+pibxNvJVpmkVRhX5lLDAdhA
	SUfQSTGepztLqGTfZzFBlEg0d2poXPKPS8K9ZPAIXwqo8RG8cFSAxMSUotbKwp96mljUOt8Gz/T/G
	rQFrP+Xrm94E+5Sz4p7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igogN-0006nn-5o; Mon, 16 Dec 2019 11:37:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igogE-0006mn-TM; Mon, 16 Dec 2019 11:36:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBF3B1FB;
 Mon, 16 Dec 2019 03:36:48 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 33F133F6CF;
 Mon, 16 Dec 2019 03:36:48 -0800 (PST)
Date: Mon, 16 Dec 2019 11:36:46 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v5 0/6] Raspberry Pi 4 PCIe support
Message-ID: <20191216113646.GT24359@e119886-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216110113.30436-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_033651_035482_1A2E7E5C 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 12:01:06PM +0100, Nicolas Saenz Julienne wrote:
> This series aims at providing support for Raspberry Pi 4's PCIe
> controller, which is also shared with the Broadcom STB family of
> devices.
> 
> There was a previous attempt to upstream this some years ago[1] but was
> blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
> is something currently not supported by the kernel.  Luckily this is not
> the case for the Raspberry Pi 4.
> 

Hi Nicolas,

This series looks good to me now. Unless there is further feedback I'll ask
Lorenzo to merge this when he returns in the new year.

Thanks for the log2.h efforts - perhaps this can be picked up again one day.

Thanks,

Andrew Murray

> Note the series is based on top of linux next, as the DTS patch depends
> on it.
> 
> [1] https://patchwork.kernel.org/cover/10605933/
> [2] https://patchwork.kernel.org/patch/10605957/
> 
> ---
> 
> Changes since v4:
>   - Rebase DTS patch
>   - Respin log2.h code into it's own series as it's still contentious
>     yet mostly unrelated to the PCIe part
> 
> Changes since v3:
>   - Moved all the log2.h related changes at the end of the series, as I
>     presume they will be contentious and I don't want the PCIe patches
>     to depend on them. Ultimately I think I'll respin them on their own
>     series but wanted to keep them in for this submission just for the
>     sake of continuity.
>   - Addressed small nits here and there.
> 
> Changes since v2:
>   - Redo register access in driver avoiding indirection while keeping
>     the naming intact
>   - Add patch editing ARM64's config
>   - Last MSI cleanups, notably removing MSIX flag
>   - Got rid of all _RB writes
>   - Got rid of all of_data
>   - Overall churn removal
>   - Address the rest of Andrew's comments
> 
> Changes since v1:
>   - add generic rounddown/roundup_pow_two64() patch
>   - Add MAINTAINERS patch
>   - Fix Kconfig
>   - Cleanup probe, use up to date APIs, exit on MSI failure
>   - Get rid of linux,pci-domain and other unused constructs
>   - Use edge triggered setup for MSI
>   - Cleanup MSI implementation
>   - Fix multiple cosmetic issues
>   - Remove supend/resume code
> 
> Jim Quinlan (3):
>   dt-bindings: PCI: Add bindings for brcmstb's PCIe device
>   PCI: brcmstb: Add Broadcom STB PCIe host controller driver
>   PCI: brcmstb: Add MSI support
> 
> Nicolas Saenz Julienne (3):
>   ARM: dts: bcm2711: Enable PCIe controller
>   MAINTAINERS: Add brcmstb PCIe controller
>   arm64: defconfig: Enable Broadcom's STB PCIe controller
> 
>  .../bindings/pci/brcm,stb-pcie.yaml           |   97 ++
>  MAINTAINERS                                   |    4 +
>  arch/arm/boot/dts/bcm2711.dtsi                |   31 +-
>  arch/arm64/configs/defconfig                  |    1 +
>  drivers/pci/controller/Kconfig                |    9 +
>  drivers/pci/controller/Makefile               |    1 +
>  drivers/pci/controller/pcie-brcmstb.c         | 1007 +++++++++++++++++
>  7 files changed, 1149 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>  create mode 100644 drivers/pci/controller/pcie-brcmstb.c
> 
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

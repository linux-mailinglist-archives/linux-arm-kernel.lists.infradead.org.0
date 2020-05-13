Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F811D1100
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41/weHZZLy4b/WR6fNU9CchfXfXDCC0UDPOuYmv0urQ=; b=tf+5c4XtM5ajXW
	A+v86KtFFfCOEHMDTTeacRVG9Ljed6XNsTv+XlJh4zLNhLRQuR45MJnT7PKbV8iPFi/L01ZZTGt8+
	B5yymIwUEsrVcVwNbHITwv09LNW7oceG0L/qz9b/umh1a82Co0gW+7756OGds4wmqw7z/fOgUJm/A
	y90VP0qptrxtL7lXwd2GHnpOvC2qJygIbGyaAInwseTQkIcMmsxgGMPtk5pC5DfRzzgVSHPvFhM/p
	u8vWr323PrpgSKE8x6c58pm0CZfvw96u/SlMUIBgXTah+Wx2mxQE62E5Zk4xiuRSOiMyTaCAMumlJ
	BLqh2eQ5LXE8xZW0HfMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpOL-0000Lx-U7; Wed, 13 May 2020 11:17:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpOA-0000Kz-My; Wed, 13 May 2020 11:17:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9309830E;
 Wed, 13 May 2020 04:17:24 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8C9C3F71E;
 Wed, 13 May 2020 04:17:22 -0700 (PDT)
Date: Wed, 13 May 2020 12:17:17 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 0/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Message-ID: <20200513111717.GA32365@e121166-lin.cambridge.arm.com>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_041726_836901_1E63E29B 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 wahrenst@gmx.net, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 06:13:13PM +0200, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> co-processor, VideoCore. This series adds support for the later.
> 
> Note that there are a set of constraints we have to consider:
>  - We need to make sure the VideoCore firmware interface is up and
>    running before running the VL805 firmware load call.
> 
>  - There is no way to discern RPi4's VL805 chip from other platforms',
>    so we need the firmware load to happen *before* running
>    quirk_usb_handoff_xhci(). Failure to do so results in an unwarranted
>    5 second wait while the fixup code polls xHC's non-existing state.
> 
> By Florian's suggestion I've been spending some time exploring the device
> link[1] API in order to see if that could save us from explicitly creating
> probe dependencies between pcie-brcmstb and firmware/raspberrypi (patch #3).
> Technically these dependencies could be inferred from DT. It turns out Saravana
> Kannan has been looking at this already. A new boot mechanism, activated with
> fw_devlink=on takes care of the device probe ordering on devices with
> consumer/supplier relationships. For now this relationship is created based on
> the usage of generic DT properties, but has no support for vendor-specifc DT
> properties, which we'd be forced to use in order to create a relationship
> between our two devices since our setup is highly non generic. There will
> probably be at some point support for such properties, and we will then be able
> to revisit some of this code.
> 
> All this is based on the work by Tim Gover in RPi's downstream
> kernel[2].
> 
> [1] https://www.kernel.org/doc/html/v4.13/driver-api/device_link.html
> [2] https://github.com/raspberrypi/linux/commit/9935b4c7e360b4494b4cb6e3ce797238a1ab78bd
> 
> ---
> 
> Changes since v7:
>  - Address Stefan's comments
> 
> Changes since v6:
>  - Make rpi_firmware_init_vl805() more robust
>  - Rewrite comments and patch descriptions to be more accessible to non RPi
>    fluent people
>  - Removed Florian's Reviewed-by in patch #2 as function changed
>    substantially
>  - Tested with/witout u-boot
> 
> Changes since v5:
>  - Fix issues reported by Kbuild test robot
> 
> Changes since v4:
>  - Addressed Sergei's comments
>  - Fix potential warning in patch #2
> 
> Changes since v3:
>  - Addressed Greg's comments
> 
> There was no v2, my bad.
> 
> Changes since v1:
>  - Addressed Floarians comments
> 
> Nicolas Saenz Julienne (4):
>   soc: bcm2835: Add notify xHCI reset property
>   firmware: raspberrypi: Introduce vl805 init routine
>   PCI: brcmstb: Wait for Raspberry Pi's firmware when present
>   USB: pci-quirks: Add Raspberry Pi 4 quirk
> 
>  drivers/firmware/Kconfig                   |  3 +-
>  drivers/firmware/raspberrypi.c             | 61 ++++++++++++++++++++++
>  drivers/pci/controller/pcie-brcmstb.c      | 17 ++++++
>  drivers/usb/host/pci-quirks.c              | 16 ++++++
>  include/soc/bcm2835/raspberrypi-firmware.h |  9 +++-
>  5 files changed, 104 insertions(+), 2 deletions(-)

Hi Nicolas,

should I queue this series via the PCI tree ? Just let me know, most of
the changes are not in the PCI tree, asking in order to
minimize/simplify conflicts handling if possible.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CA6D7735
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 15:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6C71zw9uFtw8FHae5ZDN8lQg8lqfHyitBvsK+xqDXA=; b=KVL7ouKtchtEUE
	afJRWUGh3UK526++vSo0bP/sTtopF5fv5wtt+QiOYGJSXLb1l6DqjdFWc6R80WL8OBY/ihbitLEQd
	rT47vlEE1FzSbAgo4haN3kEfces3+ibmD5CWokMGG/dhl2n28P7I0l2w31MsiISJHNwXboQ1/yQQL
	wPsGI8+0+LTlL0+QwmLCtfDcffdTjevGYKbIxEkPbuaSETYVl0mi8szGMWtmYYbzgDaY3q12fh2nZ
	HToOpafFIOE/HS9EHBRcfHGHHCHIzRbWJf8bDWW2LVESbvpLO9ibEUvy8Zkk+kDQXelfVxslI06Bb
	1rKTTEuNF1BNw9JHvf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMer-0004Pe-Hk; Tue, 15 Oct 2019 13:14:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMeh-0004NP-AB; Tue, 15 Oct 2019 13:14:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E359337;
 Tue, 15 Oct 2019 06:14:26 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1A333F718;
 Tue, 15 Oct 2019 06:14:24 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:14:19 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 0/6] arm64: dts: meson-g12: add support for PCIe
Message-ID: <20191015131419.GA12343@e121166-lin.cambridge.arm.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_061427_440901_51E95486 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: maz@kernel.org, gouwa@khadas.com, khilman@baylibre.com, nick@khadas.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 repk@triplefau.lt, andrew.murray@arm.com, bhelgaas@google.com,
 linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:50:16PM +0200, Neil Armstrong wrote:
> This patchset :
> - updates the Amlogic PCI bindings for G12A
> - reworks the Amlogic PCIe driver to make use of the
> G12a USB3+PCIe Combo PHY instead of directly writing in
> the PHY register
> - adds the necessary operations to the G12a USB3+PCIe Combo PHY driver
> - adds the PCIe Node for G12A, G12B and SM1 SoCs
> - adds the commented support for the S922X, A311D and S905D3 based
> VIM3 boards.
> 
> The VIM3 schematic can be found at [1].
> 
> This patchset is dependent on Remi's "Fix reset assertion via gpio descriptor"
> patch at [2].

Merged in pci/meson; however, I am not sure what should be done on
Remi's patch, I would like to queue it up too otherwise it looks
to me that merging this series is not right.

Lorenzo

> This patchset has been tested in a A311D VIM3 and S905D3 VIM3L using a
> 128Go TS128GMTE110S NVMe PCIe module.
> 
> For indication, here is a bonnie++ run as ext4 formatted on the VIM3:
>      ------Sequential Output------ --Sequential Input- --Random-
>      -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
> Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP /sec %CP
>   4G 93865  99 312837  96 194487  23 102808  97 415501 21 +++++ +++
> 
> and the S905D3 VIM3L version:
>      ------Sequential Output------ --Sequential Input- --Random-
>      -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
> Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP  /sec %CP
>   4G 52144  95 71766  21 47302  10 57078  98 415469  44 +++++ +++
> 
> Changes since v1 at [3]:
>  - Collected Andrew's and Rob's Reviewed-by tags
>  - Added missing calls to phy_init/phy_exit
>  - Fixes has_shared_phy handling for MIPI clock
>  - Add comment in the DT concerning firmware setting the right properties
>  - Added SM1 Power Domain to PCIe node
> 
> [1] https://docs.khadas.com/vim3/HardwareDocs.html
> [2] https://patchwork.kernel.org/patch/11125261/
> [3] https://patchwork.kernel.org/cover/11136927/
> 
> Neil Armstrong (6):
>   dt-bindings: pci: amlogic,meson-pcie: Add G12A bindings
>   PCI: amlogic: Fix probed clock names
>   PCI: amlogic: meson: Add support for G12A
>   phy: meson-g12a-usb3-pcie: Add support for PCIe mode
>   arm64: dts: meson-g12a: Add PCIe node
>   arm64: dts: khadas-vim3: add commented support for PCIe
> 
>  .../bindings/pci/amlogic,meson-pcie.txt       |  12 +-
>  .../boot/dts/amlogic/meson-g12-common.dtsi    |  33 +++++
>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  |  25 ++++
>  .../amlogic/meson-g12b-s922x-khadas-vim3.dts  |  25 ++++
>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |   4 +
>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  25 ++++
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |   4 +
>  drivers/pci/controller/dwc/pci-meson.c        | 132 ++++++++++++++----
>  .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    |  70 ++++++++--
>  9 files changed, 292 insertions(+), 38 deletions(-)
> 
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

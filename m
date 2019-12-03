Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D52110252
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qg1IOkCQGcwAqOhGTQedb1k5tAgCBnWYbcLR1OXTRtE=; b=O04ONKUUjjAI6YLH2C/6SRD3N
	H24Afau9B8U17q3YRej3DUyMSg+9z4ttudCPwTKTndBq7yiZ+qeCEDIM5NhWDAP0dulCNrt2sl83E
	npJWGz9ODVO5nFmX6fxvja4Kn10Yxv9XdgSKxp00qdT3h74DSBlmGE6+Q7txiu0PCX6hvSsCBhjMl
	ptVRRCWKfxelWYFkAF6b+ZC8a+pOA9rkbwF/WoMsb28SeYHX10pU8kMZzocITD3m0b7nGL0mRjaVk
	Rzssi8W+DxBc3Nwiql7TvycXjXWVhC6ApghnKqIXEzvzZGg7BKFJrAwm0aCbB4eClz/u7TLik+clT
	yHJfyVi9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icB5g-0001zA-Kz; Tue, 03 Dec 2019 16:31:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icB5Z-0001yG-72; Tue, 03 Dec 2019 16:31:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 081E231B;
 Tue,  3 Dec 2019 08:31:46 -0800 (PST)
Received: from [192.168.122.164] (U201426.austin.arm.com [10.118.28.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7F7A3F52E;
 Tue,  3 Dec 2019 08:31:45 -0800 (PST)
Subject: Re: [PATCH v3 4/7] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, andrew.murray@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Eric Anholt
 <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-5-nsaenzjulienne@suse.de>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <ddab6abd-68fb-543d-bb8e-057d92ac15ed@arm.com>
Date: Tue, 3 Dec 2019 10:31:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191126091946.7970-5-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_083149_342028_9C6A2651 
X-CRM114-Status: GOOD (  19.51  )
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
Cc: mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/26/19 3:19 AM, Nicolas Saenz Julienne wrote:
> From: Jim Quinlan <james.quinlan@broadcom.com>
> 
> This adds a basic driver for Broadcom's STB PCIe controller, for now
> aimed at Raspberry Pi 4's SoC, bcm2711.
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v2:
>    - Correct rc_bar2_offset sign
>    - Invert IRQ clear and masking in setup code
>    - Use bitfield.h, redo all register ops while keeping the register
>      names intact
>    - Remove all SHIFT register definitions
>    - Get rid of all _RB writes
>    - Get rid of of_data
>    - Don't iterate over inexisting dma-ranges
>    - Add comment regarding dma-ranges validation
>    - Small cosmetic cleanups
>    - Fix license mismatch
>    - Set driver Kconfig tristate
>    - Didn't add any comment about the controller not being I/O coherent
>      for now as I wait for Jeremy's reply

I guess its fine.. In answer to the original query. It seems that this 
PCIe bridge requires explicit cache operations for DMA from PCIe 
endpoints. This wasn't obvious to me at first reading because I was 
assuming the custom DMA ops were strictly to deal with the stated DMA 
limits.

So if you end up respinning, it still might be worthy mentioning 
somewhere that this is a non-coherent PCIe implementation. I still hold 
much of my original reservations about pieces of this driver. 
Particularly, how it might look if someone wanted to boot the RPi using 
ACPI on linux. But, I was shown a clever bit of AML recently, which 
solves those problems for the RPi and the attached XHCI.

So, given how much time I've looked at the root port configuration/etc 
sections of this driver and I've not found a serious bug:

Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>

> 
> Changes since v1:
>    - Fix Kconfig
>    - Remove pci domain check
>    - Remove all MSI related code
>    - Remove supend/resume code
>    - Simplify link state wait routine
>    - Prefix all functions
>    - Use of_device_get_match_data()
>    - Use devm_clk_get_optional()
>    - Get rid of irq variable
>    - Use STB all over the driver
>    - Simplify map_bus() function
>    - Fix license mismatch
>    - Remove unused register definitions
>    - Small cleanups, spell errors
> 
> This is based on Jim's original submission[1] but adapted and tailored
> specifically to bcm2711's needs (that's the Raspberry Pi 4). Support for
> the rest of the brcmstb family will soon follow once we get support for
> multiple dma-ranges in dma/direct.
> 
> [1] https://patchwork.kernel.org/patch/10605959/
> 
>   drivers/pci/controller/Kconfig        |   8 +
>   drivers/pci/controller/Makefile       |   1 +
>   drivers/pci/controller/pcie-brcmstb.c | 753 ++++++++++++++++++++++++++
>   3 files changed, 762 insertions(+)
>   create mode 100644 drivers/pci/controller/pcie-brcmstb.c
> 

Thanks,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

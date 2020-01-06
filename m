Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9394E130CF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXefTeoaeL2tL0HMu3TjYpJWMbNf/1/6l2ExAMbV+8M=; b=jaS5YJxNRDZpo+
	n1ammQfMUGTaqE00ayYvyBHWNX50LtJmyWYdxWRBAtK+1CDipb7p8iROh1kQPexrnVI7xsRHqxTB5
	LJPdlH773A1/JMxBF5M3SXobd1y3BOucwG63KRJ8I9s+T3hAXOfMC/RXVbZRyTM1k4astTI4KmCkq
	8JsNE4RvXswhvYjVlKMsvW0N56UTinnPpx2n8o3XQxKKlUEDQwIbbT9o14vjKwF9PnuMSL616HtU/
	AgmHK60/3LnPaNnImB9ud2dKZoH0cVvNydbzSv/zMA6nXdSN+g4wBPHusWmaFavTO3Y3v4nGtnuyn
	wmiFMe/J7jVytp9x+F7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioKri-0000fj-FV; Mon, 06 Jan 2020 05:23:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioKra-0000fJ-CL
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 05:23:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0065NTJd030572;
 Sun, 5 Jan 2020 23:23:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578288209;
 bh=rTz3tg0hukG6B7Zkj7d+S6fA37E2Q8Ph5uLJXD8dxww=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Z8VCJpO4Wx34j08zAwzjmyhePKALEpr4bj3GwgpRjcRFPVp76bd559eS49h8VZxmS
 4U1Ho4mtD6bMRORY1fxKDFpheE9ys9SEpOCSR1Hha/WVIWU7zMJdDnnXKILPuPH6pM
 41CKR/CFZ7kNK1wEh+Fct/bmbHghJNsdH+2xFZ94=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0065NT2p076205;
 Sun, 5 Jan 2020 23:23:29 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 5 Jan
 2020 23:23:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 5 Jan 2020 23:23:28 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0065NPAk105709;
 Sun, 5 Jan 2020 23:23:26 -0600
Subject: Re: [PATCH v4 00/13] phy: usb: Updates to Broadcom STB USB PHY driver
To: Al Cooper <alcooperx@gmail.com>, <linux-kernel@vger.kernel.org>
References: <20200103181811.22939-1-alcooperx@gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <76cf24f1-4d72-2dec-ef80-36d6d3744ebe@ti.com>
Date: Mon, 6 Jan 2020 10:55:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_212338_541928_EA244001 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Srinath Mannam <srinath.mannam@broadcom.com>, "maintainer:BROADCOM BCM7XXX ARM
 ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/01/20 11:47 PM, Al Cooper wrote:
> This patchset contains various updates to the Broadcom STB USB Driver.
> The updates include:
> - Add support for 7216 and 7211 Broadcom SoCs which use the new
>   Synopsys USB Controller.
> - Add support for USB Wake
> - Add various bug fixes.

merged, thanks!

-Kishon
> 
> 
> v4 - Fix mispelling, change Synopsis to Synopsys. Also add
>      "Reviewed-by: Rob Herring" to bindings patch. There are no
>      functional code changes in v4.
> 
> v3 - Rebase to v5.5-rc1
> 
> v2 - Changes based on review feedback
>    - Add vendor prefix to DT property "syscon-piarbctl"
>    - Use standard "wakeup" instead of "wake" for DT "interrupt-names"
> 
> Al Cooper (13):
>   phy: usb: EHCI DMA may lose a burst of DMA data for 7255xA0 family
>   phy: usb: Get all drivers that use USB clks using correct
>     enable/disable
>   phy: usb: Put USB phys into IDDQ on suspend to save power in S2 mode
>   phy: usb: Add "wake on" functionality
>   phy: usb: Restructure in preparation for adding 7216 USB support
>   dt-bindings: Add Broadcom STB USB PHY binding document
>   phy: usb: Add support for new Synopsys USB controller on the 7216
>   phy: usb: Add support for new Synopsys USB controller on the 7211b0
>   phy: usb: fix driver to defer on clk_get defer
>   phy: usb: PHY's MDIO registers not accessible without device installed
>   phy: usb: bdc: Fix occasional failure with BDC on 7211
>   phy: usb: USB driver is crashing during S3 resume on 7216
>   phy: usb: Add support for wake and USB low power mode for 7211 S2/S5
> 
>  .../bindings/phy/brcm,brcmstb-usb-phy.txt     |  69 ++-
>  drivers/phy/broadcom/Makefile                 |   2 +-
>  .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 414 ++++++++++++++++++
>  drivers/phy/broadcom/phy-brcm-usb-init.c      | 226 +++++-----
>  drivers/phy/broadcom/phy-brcm-usb-init.h      | 148 ++++++-
>  drivers/phy/broadcom/phy-brcm-usb.c           | 269 ++++++++++--
>  6 files changed, 943 insertions(+), 185 deletions(-)
>  create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

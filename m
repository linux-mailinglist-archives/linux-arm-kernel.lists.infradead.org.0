Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B66E1B36BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 07:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J3/xQMd3HanL0SIGK77zZSxZNJpTLHQx7LYgbt69X5w=; b=B8uxou1aTgTuoYcEE8fa+mTUw
	phNTeObI/0ZKvuNXNTkde2Vad54evzSCENKW5R+IdaWwJAcX6BKWtH0WUaq+vxUdb1p8whd3Vc0zk
	Xl5/a60vOl6M4Ov/6K5HbldV1DdvuVklISvaICuBOeSwVT4EvEATbOFLVISaDYe1LZ6zdropN/eD/
	JSUiEnDwssuA1MrrxHutt4ZAo4FBt+NQCBnL/1tyCN4d2ptZwlTr2jLC2JR88OlIxO7V3uFHlOc7x
	PFaCD5Jb/xRsZ6G0j2kAPYspnfuPW1HiYE6Lc+QYEgmXJ47k6DriRwIxqj4kw1lzGjrGoLnPCTv83
	f0q+u1MvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR7hI-0000bA-7P; Wed, 22 Apr 2020 05:13:20 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR7h9-0000Zo-Tm
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 05:13:13 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 22 Apr 2020 14:13:09 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 14A4760057;
 Wed, 22 Apr 2020 14:13:09 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 22 Apr 2020 14:13:09 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 923B11A12D0;
 Wed, 22 Apr 2020 14:13:08 +0900 (JST)
Received: from [10.213.29.177] (unknown [10.213.29.177])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 5C7BF120131;
 Wed, 22 Apr 2020 14:13:07 +0900 (JST)
Subject: Re: [PATCH v3 0/2] PCI: Add new UniPhier PCIe endpoint driver
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <18cf881e-1d80-76bc-8c91-2fa9fa633558@socionext.com>
Date: Wed, 22 Apr 2020 14:13:06 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_221312_079439_A24FFE0E 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/03/23 18:40, Kunihiko Hayashi wrote:
> This series adds PCIe endpoint controller driver for Socionext UniPhier
> SoCs. This controller is based on the DesignWare PCIe core.
> 
> This driver supports Pro5 SoC only, so Pro5 needs multiple clocks and
> resets in devicetree node.
> 
> Changes since v2:
> - dt-bindings: Add clock-names, reset-names, and fix example for Pro5
> - Remove 'is_legacy' indicating that the compatible is for legacy SoC
> - Use pci_epc_features instead of defining uniphier_soc_data
> - Remove redundant register read access
> - Clean up return code on uniphier_add_pcie_ep()
> - typo: intx -> INTx
> 
> Changes since v1:
> - dt-bindings: Add Reviewed-by line
> - Fix register value to set EP mode
> - Add error message when failed to get phy
> - Replace INTx assertion time with macro
> 
> Kunihiko Hayashi (2):
>    dt-bindings: PCI: Add UniPhier PCIe endpoint controller description
>    PCI: uniphier: Add Socionext UniPhier Pro5 PCIe endpoint controller
>      driver
> 
>   .../devicetree/bindings/pci/uniphier-pcie-ep.txt   |  53 +++
>   MAINTAINERS                                        |   4 +-
>   drivers/pci/controller/dwc/Kconfig                 |  13 +-
>   drivers/pci/controller/dwc/Makefile                |   1 +
>   drivers/pci/controller/dwc/pcie-uniphier-ep.c      | 380 +++++++++++++++++++++
>   5 files changed, 447 insertions(+), 4 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
>   create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c
> 

Gentle ping.
Are there any comments about changes since v2?
v2: https://www.spinics.net/lists/linux-pci/msg92429.html

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A285E21B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRBBPoJS4MX4b7JjirLT2g3yfqJlt9CGsVLYbfeGuhs=; b=jnmse71QCNobdT
	qHlmEEXmYsgrmBdvO6DIO8UBfwPHjTV9U9NHtY7IkMPpL0jDA1jCQPl4349AZyTUKB9yf2gk6TAhL
	SKYNSsIHz8uVI7ha7LOmn4asEn3izRnUY0kPQp0PEta5jbCqSxfvjXr6tmTZDnrwVXOdXymHQ6C4G
	EzYyYwTnxbIY1FLYBrpOyzkg05sqszo36kpAkXCY4vPocePbzj5sff9mz9PoCsB1hVrBrXqdWDlP5
	zBC6YThKEg4UsdYaGyCUxJnQGE5thQIBZ2nSQ7AOr+y6DYCs5CMDTi+9ehXuWZvD65dywjWjXT5FF
	fpx2vQ34U1mUmxD02PmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hica8-0000BX-29; Wed, 03 Jul 2019 10:33:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hicZu-0000AQ-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:33:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07DC2344;
 Wed,  3 Jul 2019 03:33:28 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 052843F246;
 Wed,  3 Jul 2019 03:33:25 -0700 (PDT)
Date: Wed, 3 Jul 2019 11:33:19 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 00/20] PCI: mobiveil: fixes for Mobiveil PCIe Host
 Bridge IP driver
Message-ID: <20190703103319.GA26804@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_033330_836113_B7195381 
X-CRM114-Status: GOOD (  14.59  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:35:11AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> This patch set is to add fixes for Mobiveil PCIe Host driver.
> And these patches are splited from the thread below:
> http://patchwork.ozlabs.org/project/linux-pci/list/?series=96417
> 
> Hou Zhiqiang (20):
>   PCI: mobiveil: Unify register accessors
>   PCI: mobiveil: Format the code without functionality change
>   PCI: mobiveil: Correct the returned error number
>   PCI: mobiveil: Remove the flag MSI_FLAG_MULTI_PCI_MSI
>   PCI: mobiveil: Correct PCI base address in MEM/IO outbound windows
>   PCI: mobiveil: Replace the resource list iteration function
>   PCI: mobiveil: Use WIN_NUM_0 explicitly for CFG outbound window
>   PCI: mobiveil: Use the 1st inbound window for MEM inbound transactions
>   PCI: mobiveil: Correct inbound/outbound window setup routines
>   PCI: mobiveil: Fix the INTx process errors
>   PCI: mobiveil: Correct the fixup of Class Code field
>   PCI: mobiveil: Move the link up waiting out of mobiveil_host_init()
>   PCI: mobiveil: Move IRQ chained handler setup out of DT parse
>   PCI: mobiveil: Initialize Primary/Secondary/Subordinate bus numbers
>   PCI: mobiveil: Fix the checking of valid device
>   PCI: mobiveil: Add link up condition check
>   PCI: mobiveil: Complete initialization of host even if no PCIe link
>   PCI: mobiveil: Disable IB and OB windows set by bootloader
>   PCI: mobiveil: Add 8-bit and 16-bit register accessors
>   dt-bindings: PCI: mobiveil: Change gpio_slave and apb_csr to optional
> 
>  .../devicetree/bindings/pci/mobiveil-pcie.txt |   2 +
>  drivers/pci/controller/pcie-mobiveil.c        | 578 +++++++++++-------
>  2 files changed, 368 insertions(+), 212 deletions(-)

I am putting together a branch with the patches I would like
to queue, for the ones I requested to split please wait for
me, I will publish the branch and will ask you to rebase
on top of it.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

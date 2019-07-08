Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A593761DD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 13:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvWJjk9uDV4Dn4hovx0FvQx1j43t1wHst10IBWZyZW0=; b=VXk8rfzhqKj77Z
	KBpSAvseDDsykXmYiXBTYuWT67x1L969QlgxlcI2S8XQIqjdrbyw3nifr0o98yMI92JxQ7ylojssk
	k/zNPgqMifC2jBXV0j2WhO7ipf/fohlYMk9uSNq4o94LEdVEUciRr7IfleQi2UOvKeRHN0wxWxAgo
	AG72SvBpMp+GkUqx+D/j9HeMYPnMxA02pg8Y2ejvbZUrdPjYh7qebKIDcZrIDsq2ROuRXjm8d+Npy
	JLnz54FsmCWpk66mQGTHAXL1ySzJehYaVvglhAlTBiZ9h5ERl84xjRw3HAbyEN6FPXhR7H+FPRZiU
	BfdU9p5aZqf4VB4dFVvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRvc-0005WN-Ie; Mon, 08 Jul 2019 11:35:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRvQ-0005UZ-Tz
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 11:35:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88589360;
 Mon,  8 Jul 2019 04:35:10 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 83AEF3F738;
 Mon,  8 Jul 2019 04:35:08 -0700 (PDT)
Date: Mon, 8 Jul 2019 12:35:03 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv6 00/28] PCI: mobiveil: fixes for Mobiveil PCIe Host
 Bridge IP driver
Message-ID: <20190708113503.GA21942@e121166-lin.cambridge.arm.com>
References: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705095656.19191-1-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_043517_059456_1ACCC178 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Xiaowei.Bao@nxp.com,
 linux-pci@vger.kernel.org, l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, catalin.marinas@arm.com,
 bhelgaas@google.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 05:56:28PM +0800, Hou Zhiqiang wrote:
> This patch set is to add fixes for Mobiveil PCIe Host driver.
> Splited #2, #3, #9 and #10 of v5 patches.
> 
> Hou Zhiqiang (28):
>   PCI: mobiveil: Unify register accessors
>   PCI: mobiveil: Remove the flag MSI_FLAG_MULTI_PCI_MSI
>   PCI: mobiveil: Fix PCI base address in MEM/IO outbound windows
>   PCI: mobiveil: Update the resource list traversal function
>   PCI: mobiveil: Use WIN_NUM_0 explicitly for CFG outbound window
>   PCI: mobiveil: Use the 1st inbound window for MEM inbound
>     transactions
>   PCI: mobiveil: Fix the Class Code field
>   PCI: mobiveil: Move the link up waiting out of mobiveil_host_init()
>   PCI: mobiveil: Move IRQ chained handler setup out of DT parse
>   PCI: mobiveil: Initialize Primary/Secondary/Subordinate bus numbers
>   PCI: mobiveil: Fix devfn check in mobiveil_pcie_valid_device()
>   dt-bindings: PCI: mobiveil: Change gpio_slave and apb_csr to optional
>   PCI: mobiveil: Reformat the code for readability
>   PCI: mobiveil: Make the register updating more readable
>   PCI: mobiveil: Revise the MEM/IO outbound window initialization
>   PCI: mobiveil: Fix the returned error number
>   PCI: mobiveil: Remove an unnecessary return value check
>   PCI: mobiveil: Remove redundant var definitions and register read
>     operations
>   PCI: mobiveil: Fix the valid check for inbound and outbound window
>   PCI: mobiveil: Add the statistic of initialized inbound windows
>   PCI: mobiveil: Clear the target fields before updating the register
>   PCI: mobiveil: Mask out the lower 10-bit hardcode window size
>   PCI: mobiveil: Add upper 32-bit CPU base address setup in outbound
>     window
>   PCI: mobiveil: Add upper 32-bit PCI base address setup in inbound
>     window
>   PCI: mobiveil: Fix the CPU base address setup in inbound window
>   PCI: mobiveil: Move PCIe PIO enablement out of inbound window routine
>   PCI: mobiveil: Fix infinite-loop in the INTx process
>   PCI: mobiveil: Fix the potential INTx missing problem
> 
>  .../devicetree/bindings/pci/mobiveil-pcie.txt      |    2 +
>  drivers/pci/controller/pcie-mobiveil.c             |  529 ++++++++++++--------
>  2 files changed, 318 insertions(+), 213 deletions(-)
> 

OK, I rewrote most of commit logs, dropped patch 25 since I do not
understand the commit log, pushed to pci/mobiveil tentatively for
v5.3.

Having said that, you should improve commit logs writing it took
me too much time to check them all and rewrite them.

Never ever again post a massive series like this mixing refactoring
fixes and clean-ups it was painful to review/rebase, please split
patch series into small chunks to make my life much easier.

Please check my pci/mobiveil branch and report back if something
is not in order.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

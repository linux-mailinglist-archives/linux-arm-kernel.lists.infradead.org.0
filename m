Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0010D80D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 16:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1QwLRWQfzXudEKgvBI0pAuHtasiO2OByhjIAxomDis=; b=qGKJnKfhoK7I6Z
	BhBZAfxeGUpmXTIiKqA1kTXeiuNCsgTmd4Ge3ls6kbvsK84d+BzG5nGCj7CwaCTQH0kazr5z+Nj2t
	gJ3zBviE23EvOe0wQlw7bpvBZZGdVc9szFWFQRN4K3TA8RAV0ink4s2TJC6BNM9cTGZV32ySEpV+3
	3MoXz1JDnrNDdGdhZYxRpiXp9T8juMrn6FuprzSfTOoZDv5W5VZSYZJIq1QLjX9E5vezZVymDUfRw
	9/jLy4EcRwQQwObqCK4cNVQFKFazFhSpkJk99ik6OAv8rH/+E2XhjpPCs0t5XJl13NCQXBL7d0AVF
	PEDTnKVRT7hSQceIG/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaiTl-0004Jj-D8; Fri, 29 Nov 2019 15:46:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaiTc-0004Ib-25; Fri, 29 Nov 2019 15:46:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A832C30E;
 Fri, 29 Nov 2019 07:46:32 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 214B93F68E;
 Fri, 29 Nov 2019 07:46:31 -0800 (PST)
Date: Fri, 29 Nov 2019 15:46:30 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 5/7] PCI: brcmstb: add MSI capability
Message-ID: <20191129154629.GF43905@e119886-lin.cambridge.arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-6-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126091946.7970-6-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_074636_145364_E8856DEA 
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 10:19:43AM +0100, Nicolas Saenz Julienne wrote:
> From: Jim Quinlan <james.quinlan@broadcom.com>
> 
> This adds MSI support to the Broadcom STB PCIe host controller. The MSI
> controller is physically located within the PCIe block, however, there
> is no reason why the MSI controller could not be moved elsewhere in the
> future. MSIX is not supported by the HW.
> 
> Since the internal Brcmstb MSI controller is intertwined with the PCIe
> controller, it is not its own platform device but rather part of the
> PCIe platform device.
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Marc Zyngier <maz@kernel.org>
> 
> ---
> 
> Changes since v2 (kept Marc's Reviewed-by as changes didn't affect irq
> subsystem stuff or seem petty enough):
>   - Use standard APIs on register operations
>   - Get rid of revision code

Do any RPI4's have a HW revision of less than 33?


>   - Update rules to msi_target_addr selection
>   - Remove unwarranted MSI_FLAG_PCI_MSIX
>   - Small cosmetic changes
> 
> Changes since v1:
>   - Move revision code and some registers to this patch
>   - Use PCIE_MSI_IRQ_DOMAIN in Kconfig
>   - Remove redundant register read from ISR
>   - Fail probe on MSI init error
>   - Get rid of msi_internal
>   - Use bitmap family of functions
>   - Use edge triggered setup
>   - Add comment regarding MultiMSI
>   - Simplify compose_msi_msg to avoid reg read
> 
> This is based on Jim's original submission[1] with some slight changes
> regarding how pcie->msi_target_addr is decided.
> 
> [1] https://patchwork.kernel.org/patch/10605955/
> 
>  drivers/pci/controller/Kconfig        |   1 +
>  drivers/pci/controller/pcie-brcmstb.c | 261 +++++++++++++++++++++++++-
>  2 files changed, 261 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 27504f108ee5..918e283bbff1 100644


> +
> +static void brcm_msi_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
> +{
> +	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
> +
> +	msg->address_lo = lower_32_bits(msi->target_addr);
> +	msg->address_hi = upper_32_bits(msi->target_addr);
> +	msg->data = 0x6540 | data->hwirq;

NIT: Perhaps this 0x6540 can be a define - just in the same way we have a define
for PCIE_MISC_MSI_DATA_CONFIG_VAL.

Thanks,

Andrew Murray

> +}
> +
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

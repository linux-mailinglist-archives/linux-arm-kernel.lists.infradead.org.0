Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FA532B21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=797DQZCzXkbe9Yk77UlelqOMLKZR9FTtkmZN86WY9OY=; b=jHz/KK1BTCqeq0
	ZxDnIDdgDaK2RZYD155Z1L3mrWj7/AQMtIh4ANYjL/aUZFBJ7vvH1XERQciQ9gexy7kG7fpsu4p/f
	hGBnPvhQj4G9f9CZdzGF0Z7EO44GW2XqUmSvSNAZqXJyGF0S0WBadRtaqADsi6SHX7I9EP6xxFSrV
	svLihk9Jnw9ow327qILa2e4L8Ad3pxHia2WR3KpgA/Frl4UBrNy0mAYGo5jtsMaVjFssQSIc2dpnh
	F5x1j+psL3KA1pPsjQMZmTno53kSLh8mn2H8gQ6DRnYJ+jKw0TxlhyB9Mnr3HCrxbG479ID8mn56H
	v062fUaD3rsQkI341tgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXifW-0005a9-RY; Mon, 03 Jun 2019 08:50:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXif5-000520-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:50:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD4AA374;
 Mon,  3 Jun 2019 01:49:44 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 982DD3F690; Mon,  3 Jun 2019 01:49:43 -0700 (PDT)
Subject: Re: [PATCH v3] PCI: xilinx-nwl: Fix Multi MSI data programming
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
References: <1559133469-11981-1-git-send-email-bharat.kumar.gogada@xilinx.com>
 <20190531160956.GB9356@redmoon>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <5de53585-e90f-77d2-bd96-025e1b39a573@arm.com>
Date: Mon, 3 Jun 2019 09:49:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531160956.GB9356@redmoon>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_014948_685884_630DD050 
X-CRM114-Status: GOOD (  28.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, rgummal@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/05/2019 17:09, Lorenzo Pieralisi wrote:
> [+Marc]
> 
> On Wed, May 29, 2019 at 06:07:49PM +0530, Bharat Kumar Gogada wrote:
>> The current Multi MSI data programming fails if multiple end points
>> requesting MSI and multi MSI are connected with switch, i.e the current
>> multi MSI data being given is not considering the number of vectors
>> being requested in case of multi MSI.
>> Ex: Two EP's connected via switch, EP1 requesting single MSI first,
>> EP2 requesting Multi MSI of count four. The current code gives
>> MSI data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits
>> due to which EP2 also sends interrupt with MSI data 0x0 which results
>> in always invoking virq of EP1 due to which EP2 MSI interrupt never
>> gets handled.
> 
> If this is a problem it is not the only driver where it should be fixed
> it seems. CC'ed Marc in case I have missed something in relation to MSI
> IRQs but AFAIU it looks like HW is allowed to toggled bits (according to
> bits[6:4] in Message Control for MSI) in the MSI data, given that the
> data written is the hwirq number (in this specific MSI controller)
> it ought to be fixed.

Yeah, it looks like a number of MSI controllers could be quite broken
in this particular area.

> 
> The commit log and patch should be rewritten (I will do that) but
> first I would like to understand if there are more drivers to be
> updated.
> 
> Lorenzo
> 
>> Fix Multi MSI data programming with required alignment by
>> using number of vectors being requested.
>>
>> Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
>> Host Controller")
>> Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
>> ---
>> V3:
>>  - Added example description of the issue
>> ---
>>  drivers/pci/controller/pcie-xilinx-nwl.c | 11 ++++++++++-
>>  1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
>> index 81538d7..8efcb8a 100644
>> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
>> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
>> @@ -483,7 +483,16 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
>>  	int i;
>>  
>>  	mutex_lock(&msi->lock);
>> -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
>> +
>> +	/*
>> +	 * Multi MSI count is requested in power of two
>> +	 * Check if multi msi is requested
>> +	 */
>> +	if (nr_irqs % 2 == 0)
>> +		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
>> +					 nr_irqs, nr_irqs - 1);
>> +	else
>> +		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
>>  					 nr_irqs, 0);
>>  	if (bit >= INT_PCI_MSI_NR) {
>>  		mutex_unlock(&msi->lock);
>> -- 
>> 2.7.4
>>

This doesn't look like the best fix. The only case where nr_irqs is not 
set to 1 is when using Multi-MSI, so the '% 2' case actually covers all 
cases. Now, and in the interest of consistency, other drivers use a 
construct such as:

offset = bitmap_find_free_region(bitmap, bitmap_size,
				 get_count_order(nr_irqs));

which has the advantage of dealing with the bitmap setting as well.

I'd suggest something like this (completely untested):

diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index 3b031f00a94a..8b9b58909e7c 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -482,15 +482,13 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
 	int i;
 
 	mutex_lock(&msi->lock);
-	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
-					 nr_irqs, 0);
-	if (bit >= INT_PCI_MSI_NR) {
+	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
+				      get_count_order(nr_irqs));
+	if (bit < 0) {
 		mutex_unlock(&msi->lock);
 		return -ENOSPC;
 	}
 
-	bitmap_set(msi->bitmap, bit, nr_irqs);
-
 	for (i = 0; i < nr_irqs; i++) {
 		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
 				domain->host_data, handle_simple_irq,
@@ -508,7 +506,7 @@ static void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
 	struct nwl_msi *msi = &pcie->msi;
 
 	mutex_lock(&msi->lock);
-	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
+	bitmap_release_region(msi->bitmap, data->hwirq, get_count_order(nr_irqs));
 	mutex_unlock(&msi->lock);
 }
 

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

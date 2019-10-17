Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5862DDA9AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mFROAXvsWi4wfkdb/bOPIbXlXaCnVeho6PeaidB92w=; b=aS2K0TP9wG3gMs
	YPpatfi2x7meJk3a01mkWIJeetWhUYFZ6be4Bd/hPMzixefOU0uWTxtths8AJDEt3NTt9hFCm9ZGD
	+06urK5TAVfL1lBQcTAmeIyKvkbrPg6zen9cdWoe10tSnfZJo4VqLl2aiVVa19W24F3t965xXgItf
	2q9vZK1PVZturgYxHaPZ8lzVPwup5pXlkjFulS+ww4HsLzGtMdK8Ultxr3piaFIdZrdxFU/khIb9y
	CO/6pELReWNSYRhX9nO2aiP/wUbmpvLO5NJ3NvXJgWD91IEfNz0TDCcj/22AC0v30uMjyySnjKvcm
	vJ3PgNmECmdMc96TNVRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2rZ-0000lV-Hj; Thu, 17 Oct 2019 10:18:33 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2rN-0000iH-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:18:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 867E91BB2;
 Thu, 17 Oct 2019 03:18:10 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E4093F718;
 Thu, 17 Oct 2019 03:18:09 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:18:07 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] PCI: mvebu: make mvebu_pci_bridge_emul_ops static
Message-ID: <20191017101806.GB9589@e121166-lin.cambridge.arm.com>
References: <20191015160930.22899-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015160930.22899-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_031822_097925_2B099AF5 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-kernel@lists.codethink.co.uk, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 05:09:30PM +0100, Ben Dooks (Codethink) wrote:
> The mvebu_pci_bridge_emul_ops is not exported outside
> of the driver, so make it static to avoid the following
> sparse warning:
> 
> drivers/pci/controller/pci-mvebu.c:557:28: warning: symbol 'mvebu_pci_bridge_emul_ops' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/pci/controller/pci-mvebu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/misc, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
> index d3a0419e42f2..ed032e9a3156 100644
> --- a/drivers/pci/controller/pci-mvebu.c
> +++ b/drivers/pci/controller/pci-mvebu.c
> @@ -554,7 +554,7 @@ mvebu_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
>  	}
>  }
>  
> -struct pci_bridge_emul_ops mvebu_pci_bridge_emul_ops = {
> +static struct pci_bridge_emul_ops mvebu_pci_bridge_emul_ops = {
>  	.write_base = mvebu_pci_bridge_emul_base_conf_write,
>  	.read_pcie = mvebu_pci_bridge_emul_pcie_conf_read,
>  	.write_pcie = mvebu_pci_bridge_emul_pcie_conf_write,
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

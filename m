Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599568B4EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d23pmrBYDTjjkPIyyTPSKbLf+mSdn3bqmXGoZ4VWvzE=; b=rZZTDyPpWlgEvq
	AZppjWOIBCzh4EdokgdDSORq14gjeDYlyujzDQdFORURa3qnNOpk7lrgBlNYgMWKUhyVLG/0XL0cq
	N/xsEH/SGg08tj4pJAtHYiboRgTws4QTjOrpQiOy54eF7udwvUKp0Po3TYuddFKsT/aDOlIzsoHuF
	1utKRKIF76XRXKYu76SI2CbKltxIIeqwOVQiGSsXmze5ixwQp9uTKxYr/fR0vQ+tVKF3N9PfqZbmF
	O/a7dzOdtrjjLLLYmuIaiVCzVo/14GdWXbx484bnfQADFedM2uW8CwiQsd7+KRM0OkQhtpjoMbfkq
	lRhyIpInyHr8rqPt4gig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTf6-0007Iu-Mc; Tue, 13 Aug 2019 10:04:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTet-0007Hg-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:04:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A0511570;
 Tue, 13 Aug 2019 03:04:02 -0700 (PDT)
Received: from red-moon (red-moon.cambridge.arm.com [10.1.197.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CCC683F774;
 Tue, 13 Aug 2019 03:03:59 -0700 (PDT)
Date: Tue, 13 Aug 2019 11:04:09 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv5 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
Message-ID: <20190813100409.GB10070@red-moon>
References: <20190813062840.2733-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813062840.2733-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_030403_495735_CEA6A84C 
X-CRM114-Status: GOOD (  15.91  )
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
Cc: linux-arm-kernel@lists.infradead.org, roy.zang@nxp.com,
 leonard.crestez@nxp.com, hayashi.kunihiko@socionext.com,
 andrew.smirnov@gmail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, yue.wang@amlogic.com, kishon@ti.com,
 minghuan.Lian@nxp.com, dwmw@amazon.co.uk, jonnyc@amazon.com,
 bhelgaas@google.com, tpiepho@impinj.com, linuxppc-dev@lists.ozlabs.org,
 mingkai.hu@nxp.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

git log --oneline --follow drivers/pci/controller/dwc/pci-layerscape.c

Do you see any commit with a $SUBJECT ending with a period ?

There is not. So remove it from yours too.

On Tue, Aug 13, 2019 at 02:28:39PM +0800, Xiaowei Bao wrote:
> The PCIe controller of layerscape just have 4 BARs, BAR0 and BAR1
> is 32bit, BAR2 and BAR4 is 64bit, this is determined by hardware,
> so set the bar_fixed_64bit with 0x14.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - Replace value 0x14 with a macro.
> v3:
>  - No change.
> v4:
>  - send the patch again with '--to'.
> v5:
>  - fix the commit message.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 1 +
>  1 file changed, 1 insertion(+)

scripts/get_maintainer.pl -f drivers/pci/controller/dwc/pci-layerscape-ep.c
Now, with the output you get justify all the people you send this email
to.

So, again, trim the CC list and it is the last time I tell you.

Before sending patches on mailing lists use git --dry-run to check
the emails you are sending.

Thanks,
Lorenzo

> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index be61d96..ca9aa45 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> @@ -44,6 +44,7 @@ static const struct pci_epc_features ls_pcie_epc_features = {
>  	.linkup_notifier = false,
>  	.msi_capable = true,
>  	.msix_capable = false,
> +	.bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
>  };
>  
>  static const struct pci_epc_features*
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

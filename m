Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E6C59950
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEKWYkLOpFDcPtRnEDfwFe99xj1b8uzEj258E+1Vm38=; b=hoMnKZj0WgzCmz
	+IPXVxiimnL323wrcmZXIH7VmIJYFV0Oo1NBgy2tXK1dwGWhSORMSgTtsvxNop1fc/jCozmFM9uUM
	k+o29jjr09iPBg5tL6bHDhE8uomfoPB74/X3irzjNzhfYju+Tat54Vqb1YT/l/lASqZCvsSdb4B0K
	AOSbOI0zDSFI8rm5G9OQUryRVRKr+6dlbRox36zI0m4tqf7xVHhS+x80hFvIYRFv6ATiaCBlaUjZe
	usCHrKegthpnNe0KFO7NFWMn5lK3ob9fzjiVkv+ks7vH1TfSDCU4KH86xsKpuDLxq7uDPnn/R9VmV
	URBu95r+hRQqu5cZLoTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgpB0-0008Rn-L1; Fri, 28 Jun 2019 11:36:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgpAl-0008R6-77
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 036A728;
 Fri, 28 Jun 2019 04:36:04 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F40DC3F718;
 Fri, 28 Jun 2019 04:36:01 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:35:55 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Message-ID: <20190628113555.GA21829@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-5-Zhiqiang.Hou@nxp.com>
 <20190611165935.GA22836@redmoon>
 <AM0PR04MB67383023B81AEB33DAF9C35584EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
 <20190612130813.GA15747@redmoon>
 <AM0PR04MB6738B93C7F1B5BE433753CF584E90@AM0PR04MB6738.eurprd04.prod.outlook.com>
 <20190617093337.GD18020@e121166-lin.cambridge.arm.com>
 <AM6PR04MB67425792524FBA1C773F137984EB0@AM6PR04MB6742.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB67425792524FBA1C773F137984EB0@AM6PR04MB6742.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_043607_350728_042B434D 
X-CRM114-Status: GOOD (  21.39  )
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

On Mon, Jun 17, 2019 at 10:34:35AM +0000, Z.q. Hou wrote:

[...]

> > There is nothing obvious. Write what you are fixing in the commit log and I will
> > apply the patch, I won't write the commit log for you. Anyone should be able
> > to understand why a patch was needed by reading the commit log, it is as
> > important as writing the code itself.
> 
> With the flag MSI_FLAG_MULTI_PCI_MSI, when the Endpoint allocates
> multiple MSI, it will trigger the "WARN_ON(nr_irqs != 1);" in
> mobiveil_irq_msi_domain_alloc(), this is the issue this patch want to
> fix. 

And that's wrong. Marc explained why this controller does not support
Multi MSI and that's what should go in the commit log, triggering
a WARN_ON is the least of the problems (and the WARN_ON can even
be removed after this patch is applied), if it was used as a bandaid
to prevent allocating Multi MSI it is even more broken.

Lorenzo

> Thanks,
> Zhiqiang
> 
> > 
> > Thanks,
> > Lorenzo
> > 
> > > Thanks,
> > > Zhiqiang
> > >
> > > >
> > > > Lorenzo
> > > >
> > > > > Subbu, did you test with Endpoint supporting multi MSI?
> > > > >
> > > > > Thanks,
> > > > > Zhiqiang
> > > > >
> > > > > >
> > > > > > Thanks,
> > > > > > Lorenzo
> > > > > >
> > > > > > > Fixes: 1e913e58335f ("PCI: mobiveil: Add MSI support")
> > > > > > > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > > > > > > Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> > > > > > > ---
> > > > > > > V5:
> > > > > > >  - Corrected the subject.
> > > > > > >
> > > > > > >  drivers/pci/controller/pcie-mobiveil.c | 2 +-
> > > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > >
> > > > > > > diff --git a/drivers/pci/controller/pcie-mobiveil.c
> > > > > > > b/drivers/pci/controller/pcie-mobiveil.c
> > > > > > > index 563210e731d3..a0dd337c6214 100644
> > > > > > > --- a/drivers/pci/controller/pcie-mobiveil.c
> > > > > > > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > > > > > > @@ -703,7 +703,7 @@ static struct irq_chip
> > > > > > > mobiveil_msi_irq_chip = {
> > > > > > >
> > > > > > >  static struct msi_domain_info mobiveil_msi_domain_info = {
> > > > > > >  	.flags	= (MSI_FLAG_USE_DEF_DOM_OPS |
> > > > > > MSI_FLAG_USE_DEF_CHIP_OPS |
> > > > > > > -		   MSI_FLAG_MULTI_PCI_MSI | MSI_FLAG_PCI_MSIX),
> > > > > > > +		   MSI_FLAG_PCI_MSIX),
> > > > > > >  	.chip	= &mobiveil_msi_irq_chip,
> > > > > > >  };
> > > > > > >
> > > > > > > --
> > > > > > > 2.17.1
> > > > > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

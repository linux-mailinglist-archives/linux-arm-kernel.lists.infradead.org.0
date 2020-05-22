Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E71DE388
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qONJIMlDPq94Ch1KBp2nLntbphVOl2CLCESnZ0xg0bw=; b=bn7xgwNcSkImN5
	W8ySh+lS7CTtnbkzcAmw6KxMD7Tai+P4XdyxBZCvbWzckDEnRw7G7ICH23e99/QesjG5/dIcF28n1
	LjsKXwoj6ihZBG6F72ddicVWjkvQzbNctVPOnL/+Z36mwgRUMoVgYuQMont1I9WKwgwbyHhPe5Ss0
	YLe1S0/CDCe+upmihTaEkv8j0lCstrwJZelZWv6y60yVLhgaLPLdW1tvncEIfxLnmnvqcK9NZts9z
	HeNElwVGVHSdwQwEjy6uYs2tVapxqknXJkkMOC2OsPqX1BViE9Dc0FVnXwdW0CGrh48aFkIyQPjA2
	DrsB5j1M6Sey3s2RO+VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4Mk-00064p-UH; Fri, 22 May 2020 09:53:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4Mb-00064E-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:53:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95F79D6E;
 Fri, 22 May 2020 02:53:10 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCEDC3F305;
 Fri, 22 May 2020 02:53:07 -0700 (PDT)
Date: Fri, 22 May 2020 10:53:02 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Makarand Pawagi <makarand.pawagi@nxp.com>
Subject: Re: [PATCH 12/12] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200522095301.GA11785@e121166-lin.cambridge.arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-13-lorenzo.pieralisi@arm.com>
 <3045acd5-0bcf-40c1-e65f-0b740200b2e0@nxp.com>
 <AM6PR04MB49847931D51AD92057043D92EBB40@AM6PR04MB4984.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB49847931D51AD92057043D92EBB40@AM6PR04MB4984.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_025313_705791_CE7FA06D 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "Diana Madalina Craciun \(OSS\)" <diana.craciun@oss.nxp.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 05:32:02AM +0000, Makarand Pawagi wrote:

[...]

> > Subject: Re: [PATCH 12/12] bus: fsl-mc: Add ACPI support for fsl-mc
> > 
> > Hi Lorenzo,
> > 
> > On 5/21/2020 4:00 PM, Lorenzo Pieralisi wrote:
> > > From: Diana Craciun <diana.craciun@oss.nxp.com>
> > >
> > > Add ACPI support in the fsl-mc driver. Driver parses MC DSDT table to
> > > extract memory and other resources.
> > >
> > > Interrupt (GIC ITS) information is extracted from the MADT table by
> > > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> > >
> > > IORT table is parsed to configure DMA.
> > >
> > > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> > > Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> > > Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > ---
> > 
> > The author of this patch should be Makarand. I think I accidentaly broke it when
> > we exchanged the patches. Very sorry about it.
> > 
>  
> Will you be able to correct this or should I post another patch?

I will update it.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

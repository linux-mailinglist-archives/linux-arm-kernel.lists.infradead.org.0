Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEB3164270
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQ/lYjg6DoSZX0jTLws6QG8T3JBj45a/yZFL1pze7Wc=; b=KMl3ZVrkNaxMx8
	1UbJcNKatVBgXV4h3xbvSuYjaLqQHFBjC+MGPDW4IL0xWLd/JKMrTmm48q61QMlHmdjA7zEHHznoP
	SiFpTMAqaTpd0lt6EW+/1RucQwAs8xsfiibN72OGR1zOBN8XPexv2BI7EgSzyEBbN9lttWpaDZjOf
	t2O0mB3U8xqj3fRg226jXR4jwf9IqLc78BILpUG6KFHAFRhUPjLkdgiQ0KTpeD8bin19euG2lGI28
	WIHov2bgMwMkWT8Lmt+KTauhSo0OCBVGkQLvh5TaWeOrRw6rehuy4pD7v1GDKlfQXtHdBH493Sjwj
	xDZgzrxCtviO3SGQixaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Mot-0006e7-ED; Wed, 19 Feb 2020 10:43:07 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Moi-0006d5-0H
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:42:57 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C31CF36C; Wed, 19 Feb 2020 11:42:45 +0100 (CET)
Date: Wed, 19 Feb 2020 11:42:44 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 00/10] PCI/ATS: Device-tree support and other improvements
Message-ID: <20200219104244.GD1961@8bytes.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_024256_197689_AF6EF7C3 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, will@kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org,
 dwmw2@infradead.org, rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
 sudeep.holla@arm.com, baolu.lu@linux.intel.com, robin.murphy@arm.com,
 amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean-Philippe,


On Thu, Feb 13, 2020 at 05:50:38PM +0100, Jean-Philippe Brucker wrote:
> Jean-Philippe Brucker (11):
>   dt-bindings: PCI: generic: Add ats-supported property
>   PCI: Add ats_supported host bridge flag
>   PCI: OF: Check whether the host bridge supports ATS
>   ACPI/IORT: Check ATS capability in root complex node
>   PCI/ATS: Gather checks into pci_ats_supported()
>   iommu/amd: Use pci_ats_supported()
>   iommu/arm-smmu-v3: Use pci_ats_supported()
>   iommu/vt-d: Use pci_ats_supported()
>   ACPI/IORT: Drop ATS fwspec flag
>   arm64: dts: fast models: Enable PCIe ATS for Base RevC FVP
>   Documentation: Generalize the "pci=noats" boot parameter 

Nice patch-set! Thanks for the consolidation work. I can take it into
the iommu-tree, given that the non-iommu parts get the necessary Acks.


Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

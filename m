Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42AD10CCEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6xTPh9NIH2/0Ovmx0EV+QQC6udz7uYQVP9zwvdhd4w=; b=Vx990Pv0PyhfW/
	OR+Iv0UB1MALBoD02jtSAu34S/tPsYtTNh/Tirc3istEsVTzeZ4Jqi4VV9RvYfb9Fle73GtOuVt2O
	HrWSMq84OA4ft9AtO0vmbprgjb5WmKEfADnTp+GaEGSbOnd83VdeEM9vWY3sbaiWF3FRRGJqCNlC3
	IYc0IYCalDg0fJrYCTXnU8fdwErY1mgB/cGyJpOIyofGHoVpy+jWHGoG6KP9u6IckQWaTVJG16Loh
	WsI8OFzmGuIt+HLtnhJQSjWp7kf1RFK9dnct3VlXDI753VN2fPw3Ox/F6Yu4zcWGcgyHrMR19os5i
	1EaikcXvv0QyhFpPZDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMqL-00017y-Hv; Thu, 28 Nov 2019 16:40:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMqA-00017Q-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:40:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFDF11FB;
 Thu, 28 Nov 2019 08:40:25 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB5A33F6C4;
 Thu, 28 Nov 2019 08:40:24 -0800 (PST)
Date: Thu, 28 Nov 2019 16:40:22 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] Revert "arm64: dts: juno: add dma-ranges property"
Message-ID: <20191128164022.GB28000@bogus>
References: <20191126165355.6696-1-sudeep.holla@arm.com>
 <20191128154242.1035-1-sudeep.holla@arm.com>
 <1e0ad966-031a-1343-a83e-8536a678341c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e0ad966-031a-1343-a83e-8536a678341c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_084026_717141_ABE16635 
X-CRM114-Status: GOOD (  14.81  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 03:58:28PM +0000, Robin Murphy wrote:
> On 28/11/2019 3:42 pm, Sudeep Holla wrote:
> > This reverts commit 193d00a2b35ee3353813b4006a18131122087205.
> >
> > Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
> > reworked the logic such that of_dma_get_range() works correctly
> > starting from a bus node containing "dma-ranges".
> >
> > Since on Juno we don't have a SoC level bus node and "dma-ranges" is
> > present only in the root node, we get the following error:
> >
> > OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
> > OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
> > ...
> > OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> > OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
> >
> > So let's fix it by dropping the "dma-ranges" property for now. We can
> > add it later with a proper SoC bus node and moving all the devices that
> > belong there along with the "dma-ranges" if required.
>
> Acked-by: Robin Murphy <robin.murphy@arm.com>
>

Thanks.

> As mentioned before, this is fine since it doesn't represent any kind of
> device-visible restriction; it was only there for completeness, and we've
> since given in to the assumption that missing "dma-ranges" implies a 1:1
> mapping anyway.
>

Agreed.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

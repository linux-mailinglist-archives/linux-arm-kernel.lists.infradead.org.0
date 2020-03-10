Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62441805AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBRdfT8LVH5ER+RXd5B2XCkRJYdrwJbwCRv+O1OIbIo=; b=JurnRwGbHj0GUx
	XNe1MLxh/Lb4T2cq8fpenLBgSibsVciVBxbtImLCSwmhCCNX28T3O8jgU8X8DY1HhxojXQbZk+nyC
	Ihh4WlF7xh1Rl9FJzOAH6QIme4wdbHgoUwo43zM2p/iVX3gUFZTOFhGPvm6HEg+SQLHjnQXjAc2Lz
	JVysz3xaaIcAgchnJ13zrRXAGe8/QJ5zrE+pWoBxEGG5eY+ABAWdy4tOSdkvZ3DuwEy4hs++v31SR
	tqQBXO3QO//gHgkJjWspVmquez22weWHcbUc5rbCcTp5Vr8De5ii6uCLQL/5RWHF+umqmF2QQ2ia4
	3PQi9V6xTTZm+L/UVpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBj9a-0004lc-JL; Tue, 10 Mar 2020 17:58:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBj9P-0004km-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:58:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D482A30E;
 Tue, 10 Mar 2020 10:58:39 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D70C93F534;
 Tue, 10 Mar 2020 10:58:37 -0700 (PDT)
Date: Tue, 10 Mar 2020 17:58:28 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200310175820.GA13909@e121166-lin.cambridge.arm.com>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303170103.GA9641@e121166-lin.cambridge.arm.com>
 <d1e3a42f-c179-fd03-fac0-7cd449580e5b@nvidia.com>
 <b47de9cd-be18-1672-d72c-de4169fb90e5@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b47de9cd-be18-1672-d72c-de4169fb90e5@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_105843_416443_DCE944B2 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 11:12:35PM +0530, Vidya Sagar wrote:
> 
> 
> On 3/3/2020 11:43 PM, Vidya Sagar wrote:
> > 
> > 
> > On 3/3/2020 10:31 PM, Lorenzo Pieralisi wrote:
> > > External email: Use caution opening links or attachments
> > > 
> > > 
> > > On Tue, Mar 03, 2020 at 04:24:13PM +0530, Vidya Sagar wrote:
> > > > Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that
> > > > can operate
> > > > either in root port mode or in end point mode but only in one
> > > > mode at a time.
> > > > Platform P2972-0000 supports enabling endpoint mode for C5
> > > > controller. This
> > > > patch series adds support for PCIe endpoint mode in both the
> > > > driver as well as
> > > > in DT.
> > > > This patch series depends on the changes made for Synopsys
> > > > DesignWare endpoint
> > > > mode subsystem that are recently accepted.
> > > > @ https://patchwork.kernel.org/project/linux-pci/list/?series=202211
> > > > which in turn depends on the patch made by Kishon
> > > > @ https://patchwork.kernel.org/patch/10975123/
> > > > which is also under review.
> > > > 
> > > > V4:
> > > > * Started using threaded irqs instead of kthreads
> > > 
> > > Hi Vidya,
> > > 
> > > sorry for the bother, may I ask you to rebase the series (after
> > > answering Thierry's query) on top of my pci/endpoint branch please ?
> > > 
> > > Please resend it and I will merge patches {1,2,5} then.
> > Sure.
> > I just sent V5 series rebasing patches on top of your pci/endpoint branch.
> Hi,
> Sorry to bother you again.
> Could you please take a look at V5 series?

I will merge it tomorrow, apologies.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

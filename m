Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A43C1779CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:02:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlYzO/48AfUHitiwDluy+RRAGx/QiR+zorocb3EXwnY=; b=pwS/g+3cG3ucbQ
	Ro8E7Q9dXNg38v8DiGxE9S+I1DGJBkbtQEGaoLRxIs1r/29MaHKolJlh60v1VtBDxccBPQBjRUTjY
	ecOemYQAEnbhuxi2etjGi/gpIQTH7tPnw7/MgCGjHkDymLZ0oHFoqecjhkbNhAPI7tWrXCpoEQEwT
	ho1yPYmsufiC4UDC4mTe8w6vJblNYn3cHFNFP2LPcPUErZjY73OrC8bNAg1oMthbXsEHA/ekCZypx
	6nqWEvq4q/pY81IASWpBsX3TB5V2YYfQ6N7QhjSJGiNxh7P14BgopbgQ4klvxC2zXuRZFlCO3vEHv
	2wOZ5V67iVeJGm21i7DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j993z-0002Nd-6N; Tue, 03 Mar 2020 15:02:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j993s-0002MZ-4q
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:02:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49A8AFEC;
 Tue,  3 Mar 2020 07:02:17 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DE6E3F6C4;
 Tue,  3 Mar 2020 07:02:15 -0800 (PST)
Date: Tue, 3 Mar 2020 15:02:09 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200303150209.GA6334@e121166-lin.cambridge.arm.com>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303134053.GC2854899@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303134053.GC2854899@ulmo>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070220_227722_27EF78C3 
X-CRM114-Status: GOOD (  18.63  )
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
 gustavo.pimentel@synopsys.com, Vidya Sagar <vidyas@nvidia.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 02:40:53PM +0100, Thierry Reding wrote:
> On Tue, Mar 03, 2020 at 04:24:13PM +0530, Vidya Sagar wrote:
> > Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can operate
> > either in root port mode or in end point mode but only in one mode at a time.
> > Platform P2972-0000 supports enabling endpoint mode for C5 controller. This
> > patch series adds support for PCIe endpoint mode in both the driver as well as
> > in DT.
> > This patch series depends on the changes made for Synopsys DesignWare endpoint
> > mode subsystem that are recently accepted.
> > @ https://patchwork.kernel.org/project/linux-pci/list/?series=202211
> > which in turn depends on the patch made by Kishon
> > @ https://patchwork.kernel.org/patch/10975123/
> > which is also under review.
> > 
> > V4:
> > * Started using threaded irqs instead of kthreads
> > 
> > V3:
> > * Re-ordered patches in the series to make the driver change as the last patch
> > * Took care of Thierry's review comments
> > 
> > V2:
> > * Addressed Thierry & Bjorn's review comments
> > * Added EP mode specific binding documentation to already existing binding documentation file
> > * Removed patch that enables GPIO controller nodes explicitly as they are enabled already
> > 
> > Vidya Sagar (5):
> >   soc/tegra: bpmp: Update ABI header
> >   dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
> >   arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
> >   arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
> >     platform
> >   PCI: tegra: Add support for PCIe endpoint mode in Tegra194
> 
> Hi Lorenzo,
> 
> I've acked patches 1, 2 and 5 of the series. I think you're going to
> need to apply patch 1 in order to satisfy a build-time dependency from
> patch 5. I can apply patches 3 and 4 to the Tegra tree since they're
> only adding device tree content that may conflict with some other
> patches that I have in the Tegra tree.
> 
> Does that sound reasonable?

Sure, that's absolutely fine by me, I will do.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

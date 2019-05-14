Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7591C2B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs6MYjQSVMpRbhbik9suerZOTZLlUE3Yp10pOCf6E8k=; b=fGm6+NI7U+prcv
	/bdzndww2iy8UT0hWqsEJoM+laLGOeXKht0z1GPw4g0/iuOW1GdEUurGuBYmo4pSEv2e84EYONOlo
	QCQQPOpwUivcFqXKd2VqF9j8JOV0KBsyNZ1QFpDMeipNXj6RPrS/+a+tIcehl2/EncrOW7gvahfFs
	Qb9fO66HVpIo89S4h3EhZt2uX1SMUyWqUcDYToYQ3BjG+ps9UrUhE2Eism/SDMDjYaDg04t5sRlZY
	gxrVV+v5w08ABG8tBmFIXQyBtIAs/kLnurQkUhk/1GuGlTUXV5LFWetHvnMpXkhep2PRWWWDLWdMP
	I3z5iaQd4UyuWTCpI2DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQWH-0003hZ-Qu; Tue, 14 May 2019 06:02:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hQQWB-0003hG-L2; Tue, 14 May 2019 06:02:27 +0000
Date: Mon, 13 May 2019 23:02:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Message-ID: <20190514060227.GA7625@infradead.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, kthota@nvidia.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 09:00:19AM +0530, Vidya Sagar wrote:
> There is nothing broken in Tegra194 root port as such, rather,  this is more
> of software configuration choice and we are going with legacy interrupts than
> MSI interrupts (as Tegra194 doesn't support raising PME interrupts through MSI
> and please note that this doesn't mean root port is broken).

It seems odd at least and probably broken if it adverises MSI interrupts,
but than doesn't actually support them fully.

> Since Tegra194 has
> only Synopsys DesignWare core based host controllers and not any other hosts, I
> think it is fine to call this API in driver. Also, since this is a global setting,
> calling this APIs from anywhere (be it from quirk or from driver) would have the
> same effect, or did I miss anything here?

Maybe in your current particular case this is true, but in general
we see more and more systems with different kind of root ports, and
having a driver set a global variable due to its own hardwares quirk
defeats that.  So the right thing here is to replace the global
flag with a per-device one first before setting it for a driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

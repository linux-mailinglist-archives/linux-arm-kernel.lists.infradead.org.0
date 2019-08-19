Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3E79231B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cz2sxhLicvCVpNv5ZxbWaSy33/QHCnrdjhrVffoyMD4=; b=q4JbqwfHCIJfPQ
	fDyA7DeMDlAulkY/oCDrlMhDF1sqp5wiZrOdHuRpEwCfVoBcAMe2qD7zVqNc3Ddgk3r48aztEWW6I
	EzVk9fIAvOMRC/+/HHxKjgvzgInuZ9luzdMmbNNo91dFDq4ejm1a+d80R42SS+eBNTFO1TYJDSa1q
	QAFLLXzaOyumtRaejNOyqcPs4KybYFeOq8HKHvjFp8AZbYxBbYRZhRJZ77J9wYqFOX7uaHFd9wTeO
	VjUw/VUr2pEmyxdxa8HmILmk/H9Tf9Ctkv7e4ku4pqvR5DBHwFVtVZ1fGKNZruGaGjqioJ/S/3R4U
	0I5SBjsm/Kwg/LXkcTsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgTZ-0001Bp-U9; Mon, 19 Aug 2019 12:09:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgTS-0001BS-Tw
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:09:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FE4220851;
 Mon, 19 Aug 2019 12:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566216562;
 bh=NFJ3y2FRyz/Sijca+X82/cihiNZBB6vZUHePSvZesEI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jdzAoDkBBiO4MM+szC1VLu2M/TLylR63JiaMC69yS4bzIlTPQ2wBZ6ysvGzRJmm3z
 c1qu1xGEm+CQ462UgIQ6S/+Ef57RC5xyGMMyUrFIWCideHRBO3VrhagOua/GP1xDWs
 24g61s6REcFUpyFg/6LB2g9vpqCjEgiMOrWKhTTc=
Date: Mon, 19 Aug 2019 13:09:18 +0100
From: Will Deacon <will@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
Message-ID: <20190819120917.hysyc6l3ckkwcx25@willie-the-truck>
References: <20190301192017.39770-1-dianders@chromium.org>
 <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo>
 <94cf6d56-5dcb-051a-06da-5edfacde1655@arm.com>
 <20190819112856.GA28102@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819112856.GA28102@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_050922_982999_4800FE1B 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 01:28:56PM +0200, Thierry Reding wrote:
> Perhaps an alternative would be to add a property to the SMMU node that
> lists a set of stream IDs for which to enable bypass by default. We
> could let the firmware set that when the display hardware has been set
> up. That way when the kernel boots we can keep scanning from the
> reserved memory and the ARM SMMU driver would not disable bypass for the
> display hardware. Only when the display hardware is actually attached to
> the IOMMU domain, and the 1:1 mappings have been created would bypass be
> disabled, and at that point there should be no SMMU faults anymore, so
> we have cleanly transitioned to the kernel.
> 
> Any thoughts?

There is currently an extension to IORT under discussion which should
address this problem, so it would make a lot of sense for the DT solution
to follow the same approach. I think it will end up being along the lines
that you suggest, although we won't just enable bypass because that leaves
memory wide open if the device driver doesn't probe and it also creates
an issue because device attach typically happens before the endpoint
driver has probed.

So the flow would look something like:

	- Firmware describes a physical region of memory which must be
	  reserved by the OS.

	- Additionally, firmware describes a master -> reserved memory
	  linkage as part of the IOMMU description.

	- When the IOMMU probes, these reserved memory regions will be
	  mapped 1:1 for the relevant master.

This is similar to RMRR on x86, except that the mappings are intended to
be less rigid and can be torn down if the endpoint driver decides to do
that or for things like device passthrough.

If we get that working, we should update our booting.txt so that DMA is
allowed during boot in the limited cases which this covers.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

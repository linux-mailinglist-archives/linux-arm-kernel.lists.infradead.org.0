Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89EE20847
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqHe1aDAc/Zu+fsHo7es7sF4W2x8R2RuO+lU2ZzgOCs=; b=DKVFyPRAMfe7Mc
	jF3W03ut9njCu/Wb294jVQf8RzO78X7uwvLPdSxw1FRTe0HR3/BnsZR5PGKby4Sfe36k5asANMOOS
	rFkcO08rvWPt/4IKdv2XYoe+OJazVhZPVK6y9pF0B04k2v0KVOhaEcTGDmaLGatc5li+NqhuuxpeS
	BXwOG8XyKWezibgvC6yThZ5latbNmLodYnI1KhtIJjdRGMDM8cOMBqyxsB05qnY099M5h0pWMGanp
	nrmyvUR3eZZSFbz5B6G2LrhvzgdXagCpp4OKBd9eK8mIBPjL3XYBKNvInvKqkFdwgPTng6LbKJ9hY
	RYdavxiXUw9oOdtukbxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGWp-00058I-EA; Thu, 16 May 2019 13:34:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGWh-00057l-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:34:28 +0000
Received: from localhost (50-82-73-190.client.mchsi.com [50.82.73.190])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E6EB2082E;
 Thu, 16 May 2019 13:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558013667;
 bh=PBPZzcKd0Z8uWoCgQKHE0hud8HInbi5Qz300gJ1ZCa8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ev7849NFKxRx5zGJKMpGlDGI4a4fgEQWXOAnjyB15r1743IVrj/AqKQhSAOJzrRdv
 TRKLOZKNE2WUkVzKU9wboToh/XPA1fFvCSt6qaEpn64neel1l9y4eff4ImEzwN61N0
 vEEPb0jY5bWsnzmxfKOLHMdHuyTgYlJYHjflOvts=
Date: Thu, 16 May 2019 08:34:26 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Message-ID: <20190516133426.GC101793@google.com>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_063427_796041_9859B904 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, kthota@nvidia.com,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 09:00:19AM +0530, Vidya Sagar wrote:
> On 5/13/2019 12:55 PM, Christoph Hellwig wrote:
> > On Mon, May 13, 2019 at 10:36:13AM +0530, Vidya Sagar wrote:
> > > Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
> > > using these APIs be able to build as loadable modules.
> > 
> > But this is a global setting.  If you root port is broken you need
> > a per-rootport quirk instead.
> > 
> There is nothing broken in Tegra194 root port as such, rather, this
> is more of software configuration choice and we are going with
> legacy interrupts than MSI interrupts (as Tegra194 doesn't support
> raising PME interrupts through MSI and please note that this doesn't
> mean root port is broken).

I think the port *is* broken.  PCIe r4.0, sec 6.1.6, says

  If the Root Port is enabled for edge-triggered interrupt signaling
  using MSI or MSI-X, an interrupt message must be sent every time the
  logical AND of the following conditions transitions from FALSE to
  TRUE:

    * The associated vector is unmasked (not applicable if MSI does
      not support PVM).

    * The PME Interrupt Enable bit in the Root Control register is set
      to 1b.

    * The PME Status bit in the Root Status register is set.

The Tegra194 root port advertises MSI support, so the above should
apply.

> Since Tegra194 has only Synopsys DesignWare core based host
> controllers and not any other hosts, I think it is fine to call this
> API in driver.

It's fine to add a per-device quirk to set pdev->no_msi or something
similar.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

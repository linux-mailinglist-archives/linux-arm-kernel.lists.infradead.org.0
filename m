Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E7D9FEA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieLBg6ZldKJvv84nkfj9vdJOxDNB0OTZYkAzo+wDPLM=; b=OMHlYKTMjTcj21
	6jzpnV7w3tA2Mm/47aBqSobnVLVjprKMGKJ9viWKuxOBN5RwFcD8KuVYyRTdMT/sqBLD23Eom4HCK
	LZUUHBIboWCEYAMDx+qpWlWRb0pGBl+HhEzBKBL8JShd5QqoDPNzamsIWg1l02orMSPxKfZSDU8L0
	G+cVSRBh8tGZ/Tvm6TwTAhqXvB5nY3KuCkwHf8e5BWHrw0Raqz3jFYS/tM8mN411FiVu7dBgsBUSX
	OFaQijgaEFVYCWX03gBA1p5bhV7cheeUadppwvjjtMEB4RsEvtAa5gSP4ZRL1F+T/6oXDq/SJqmI2
	GKALOaD4fxnLuywkWTfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uOh-0007ya-AY; Wed, 28 Aug 2019 09:37:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uOV-0007xp-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 09:37:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1004337;
 Wed, 28 Aug 2019 02:37:33 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CC133F59C;
 Wed, 28 Aug 2019 02:37:33 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:37:31 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 6/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190828093731.GT14582@e119886-lin.cambridge.arm.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190826073143.4582-7-vidyas@nvidia.com>
 <20190827154725.GP14582@e119886-lin.cambridge.arm.com>
 <91f8914a-22a9-8b7c-bc00-c309a21d83db@nvidia.com>
 <20190827171333.GQ14582@e119886-lin.cambridge.arm.com>
 <20190828090757.GA2917@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828090757.GA2917@ulmo>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_023735_410668_8AC2423D 
X-CRM114-Status: GOOD (  32.07  )
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, Vidya Sagar <vidyas@nvidia.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 11:07:57AM +0200, Thierry Reding wrote:
> On Tue, Aug 27, 2019 at 06:13:34PM +0100, Andrew Murray wrote:
> > On Tue, Aug 27, 2019 at 09:54:17PM +0530, Vidya Sagar wrote:
> > > On 8/27/2019 9:17 PM, Andrew Murray wrote:
> > > > On Mon, Aug 26, 2019 at 01:01:43PM +0530, Vidya Sagar wrote:
> > > > > Add support to get regulator information of 3.3V and 12V supplies of a PCIe
> > > > > slot from the respective controller's device-tree node and enable those
> > > > > supplies. This is required in platforms like p2972-0000 where the supplies
> > > > > to x16 slot owned by C5 controller need to be enabled before attempting to
> > > > > enumerate the devices.
> > > > > 
> > > > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > > > ---
> > > > >   drivers/pci/controller/dwc/pcie-tegra194.c | 65 ++++++++++++++++++++++
> > > > >   1 file changed, 65 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> > > > > index 8a27b25893c9..97de2151a738 100644
> > > > > --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> > > > > +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> > > > > @@ -278,6 +278,8 @@ struct tegra_pcie_dw {
> > > > >   	u32 aspm_l0s_enter_lat;
> > > > >   	struct regulator *pex_ctl_supply;
> > > > > +	struct regulator *slot_ctl_3v3;
> > > > > +	struct regulator *slot_ctl_12v;
> > > > >   	unsigned int phy_count;
> > > > >   	struct phy **phys;
> > > > > @@ -1047,6 +1049,59 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
> > > > >   	}
> > > > >   }
> > > > > +static void tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
> > > > > +{
> > > > > +	pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
> > > > > +	if (IS_ERR(pcie->slot_ctl_3v3))
> > > > > +		pcie->slot_ctl_3v3 = NULL;
> > > > > +
> > > > > +	pcie->slot_ctl_12v = devm_regulator_get_optional(pcie->dev, "vpcie12v");
> > > > > +	if (IS_ERR(pcie->slot_ctl_12v))
> > > > > +		pcie->slot_ctl_12v = NULL;
> > > > 
> > > > Do these need to take into consideration -EPROBE_DEFER?
> > > Since these are devm_* APIs, isn't it taken care of automatically?
> > 
> > devm_regulator_get_optional can still return -EPROBE_DEFER - for times when
> > "lookup could succeed in the future".
> > 
> > It's probably helpful here for your driver to distinguish between there not
> > being a regulator specified in the DT, and there being a regulator but there
> > is no device for it yet. For the latter case - your driver would probe but
> > nothing would enumerate.
> > 
> > See pcie-rockchip-host.c for an example of where this is handled.
> > 
> > Of course if, for whatever reason it is unlikely you'll ever get -EPROBE_DEFER
> > then maybe it's OK as it is.
> 
> Let's not assume that. We've just recently encountered a case where we
> did not handle -EPROBE_DEFER because we had assumed too much, and that
> turned into a bit of a hassle to fix.
> 
> Vidya, I think what Andrew is saying is that you need to propagate the
> -EPROBE_DEFER error to the caller (i.e. the ->probe() callback) so that
> the PCI controller driver can be properly added to the defer queue in
> case the regulator isn't ready yet.

Indeed.

> 
> I think what we want here is something like:
> 
> 	pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
> 	if (IS_ERR(pcie->slot_ctl_3v3)) {
> 		if (PTR_ERR(pcie->slot_ctl_3v3) != -ENODEV)
> 			return PTR_ERR(pcie->slot_ctl_3v3);
> 
> 		pcie->slot_ctl_3v3 = NULL;
> 	}
> 
> Andrew, I'm not sure the handling in rockchip_pcie_parse_host_dt() is
> correct. It singles out -EPROBE_DEFER, which I think is the wrong way
> around. We should be special-casing -ENODEV, because regulator_get()
> can return a wide array of error cases, not all of which we actually
> want to consider successes. For example we could be getting -ENOMEM,
> which, I would argue, is something that we should propagate.

Yes I completely agree, given that the regulator is optional: we only want
to proceed if we find the regulator or if a regulator wasn't specified in the
DT. We should fail upon any other error, in case a regulator was specified
but the error prevented it from being returned.

> I think
> it'd be very confusing to take that as meaning "optional regulator
> wasn't specified", because in that case the DTS file would've had the
> regulator hooked up (we have to assume that it is needed in that case)
> but we won't be enabling it, so it's unlikely that devices will
> enumerate.

Thanks,

Andrew Murray

> 
> Thierry



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

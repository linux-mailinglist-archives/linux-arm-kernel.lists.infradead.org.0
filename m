Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E2E92E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=qtV81uK4ofSRZJi/ZTiLMlekKcX+xNhusJAUjit24kc=; b=ecv/qAWBJI2eoc
	qq3bf4V87NIQxQ+9Xr55iAlFtTbPO8z6/WaDmff0pcs5b878kml0eyKBvK9HqmkQm9+ZYQdj67UCJ
	xNcvW8gc4Oc4bo8/MAh2+yKX00xnjoczzHoemjOtvxnyQC6eljcJpMbx0jm/FtgeqABSEIQkPm5Sz
	TpHQJl/e+gNWgTz20y7JCtdUa4PvZhB+NcF1a7jaBAFX/dOT35Hv2Qbrpp8VwKVQov2Ym1ealaGbg
	W2cHBynhQJwRcll66gTrBJXpJoaqJ5E34x1LvjYqc88N5FlJfs19Sb4LazOPgTT3wJaBT4Z8pEvGK
	UmJv6ZNUvyiBwBBoYVUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZjP-0000Ky-Q3; Tue, 29 Oct 2019 22:12:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZj2-0000AO-M4; Tue, 29 Oct 2019 22:12:30 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DFA92054F;
 Tue, 29 Oct 2019 22:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572387146;
 bh=yEsO971/WTtVJLXlhquhSunZEYk3y36yVtfl9IyRQc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=JQxF2ReJIJ7HE+ov3dSB9pHFT4qEi+2+PRmzDYx/wE97ofUZJlW9AL3HMlRzQ534u
 3INp7qC4QAwRRUAO0VGQTijuKTP3jKlSyVc2yKtF5bUgCIK3Y3FeNYPGxWXM2SjaNl
 djqjvmJIiduYTwavBL4KBL29ax5z4eFrsCgHSXDM=
Date: Tue, 29 Oct 2019 17:12:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v3 19/25] PCI: of: Add inbound resource parsing to helpers
Message-ID: <20191029221224.GA117069@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_151228_816719_3B536F0B 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 11:07:51AM +0000, Lorenzo Pieralisi wrote:
> On Mon, Oct 28, 2019 at 11:32:50AM -0500, Rob Herring wrote:
> > Extend devm_of_pci_get_host_bridge_resources() and
> > pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> > addresses from DT 'dma-ranges' and populate a resource list with the
> > translated addresses. This will help ensure 'dma-ranges' is always
> > parsed in a consistent way.
> > 
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Toan Le <toan@os.amperecomputing.com>
> > Cc: Ley Foon Tan <lftan@altera.com>
> > Cc: Tom Joseph <tjoseph@cadence.com>
> > Cc: Ray Jui <rjui@broadcom.com>
> > Cc: Scott Branden <sbranden@broadcom.com>
> > Cc: bcm-kernel-feedback-list@broadcom.com
> > Cc: Ryder Lee <ryder.lee@mediatek.com>
> > Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> > Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > Cc: Simon Horman <horms@verge.net.au>
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Michal Simek <michal.simek@xilinx.com>
> > Cc: rfi@lists.rocketboards.org
> > Cc: linux-mediatek@lists.infradead.org
> > Cc: linux-renesas-soc@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com> # for AArdvark
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> >  - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
> > ---
> >  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
> >  drivers/pci/controller/pci-aardvark.c         |  2 +-
> >  drivers/pci/controller/pci-ftpci100.c         |  3 +-
> >  drivers/pci/controller/pci-host-common.c      |  2 +-
> >  drivers/pci/controller/pci-v3-semi.c          |  3 +-
> >  drivers/pci/controller/pci-versatile.c        |  3 +-
> >  drivers/pci/controller/pci-xgene.c            |  3 +-
> >  drivers/pci/controller/pcie-altera.c          |  2 +-
> >  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
> >  drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
> >  drivers/pci/controller/pcie-mediatek.c        |  2 +-
> >  drivers/pci/controller/pcie-mobiveil.c        |  3 +-
> >  drivers/pci/controller/pcie-rcar.c            |  3 +-
> >  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
> >  drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
> >  drivers/pci/controller/pcie-xilinx.c          |  3 +-
> >  drivers/pci/of.c                              | 45 ++++++++++++++++++-
> >  drivers/pci/pci.h                             |  8 +++-
> >  include/linux/pci.h                           |  9 ++--
> >  19 files changed, 82 insertions(+), 23 deletions(-)
> 
> Hi Bjorn,
> 
> please let me know if you are OK with this patch, the series is
> ready to go upstream IMO.

Yep, looks good to me.  If you want it:

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDF11070E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 12:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuqvU54YHQWSBmfiCOKJTMukNvbipkNWXp1zg9y9X5U=; b=s/jtvT+yAzSeJS
	XNHvHLNzLDO9YHZpURFM292/MsDFTiD/BzHi7drW5gDrOUOMUz5OiSUS2HHDL1ZkI1wpuGb+efzAa
	cMcEh2fN73kMoe01H7ppsEIFH8GVWYLnilrbVxwTZwYCTcKgshJ10c7nKqcZsqYw1ok+m/BtfBn6T
	CAXfLj94W1ZXHmDM7YnYKPaixoB3j2BolLq4OBugWM0vPszgRpW/jXqHqEFod7NPSpUWsxiRmHYDW
	j/++je2dh0rJCovuqt542xpeA4xZq//vZHYIeGcxc2Zu3q8tPvF9m26cBgT/Ds08/i3ooOQhpVigl
	csN2V6lhGk+rOZwmXXJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLmeq-0006J1-U5; Wed, 01 May 2019 10:40:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmek-0005rq-3J
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 10:40:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A01EE80D;
 Wed,  1 May 2019 03:40:04 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76D6F3F719;
 Wed,  1 May 2019 03:40:02 -0700 (PDT)
Date: Wed, 1 May 2019 11:39:56 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH v4 00/11] i.MX6, DesignWare PCI improvements
Message-ID: <20190501103956.GA3100@e121166-lin.cambridge.arm.com>
References: <20190415004632.5907-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190415004632.5907-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_034006_157310_E804CF09 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "A.s. Dong" <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, Bjorn Helgaas <bhelgaas@google.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 14, 2019 at 05:46:21PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This is the series containing various small improvements that I made
> while reading the code and researching commit history of pci-imx6.c
> and pcie-designware*.c files. All changes are optional, so commits
> that don't seem like an improvement can be easily dropped. Hopefully
> each patch is self-explanatory.
> 
> I tested this series on i.MX6Q, i.MX7D and i.MX8MQ.

Applied with Lucas' tags to pci/imx, hopefully we can squeeze this
in for the v5.2 merge window.

Lorenzo

> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> Chagnes since [v3]:
> 
>     - Collected Reviewed-by from Lucas for most of the patches
> 
>     - Converted "PCI: imx6: Replace calls to udelay() with
>       usleep_range()" to "PCI: imx6: Use usleep_range() in
>       imx6_pcie_enable_ref_clk()"
>       
>     - Converted "PCI: imx6: Remove redundant debug tracing" to "PCI:
>       imx6: Drop imx6_pcie_wait_for_link()"
>       
>     - Converted all of the callers of pcie_phy_poll_ack() to use
>       true/false in "PCI: imx6: Simplify pcie_phy_poll_ack()"
> 
> Changes since [v2]:
> 
>     - All non i.MX6 patches dropped, since they were accepted as a
>       seprarte series
>       
>     - Series rebased on latest 'dwc-pci' branch of PCI tree
>     
>     - Patches "PCI: imx6: Use flags to indicate support for suspend"
>       and "PCI: imx6: Replace calls to udelay() with usleep_range()"
>       added to the series
> 
> Changes since [v1]:
> 
>   - Dropped "PCI: imx6: Drop imx6_pcie_link_up()" due to the matter
>     already having been addressed by "PCI: imx6: Fix link training
>     status detection in link up check" from Trent Piepho
> 
>   - Changed "designware" -> "dwc" for all subject lines
> 
>   - Collected Acked-by's from Gustavo Pimentel
> 
> [v3] lkml.kernel.org/r/20190401042547.14067-1-andrew.smirnov@gmail.com
> [v2] lkml.kernel.org/r/20190104174925.17153-1-andrew.smirnov@gmail.com
> [v1] lkml.kernel.org/r/20181221072716.29017-1-andrew.smirnov@gmail.com
> 
> Andrey Smirnov (11):
>   PCI: imx6: Simplify imx7d_pcie_wait_for_phy_pll_lock()
>   PCI: imx6: Drop imx6_pcie_wait_for_link()
>   PCI: imx6: Return -ETIMEOUT from imx6_pcie_wait_for_speed_change()
>   PCI: imx6: Remove PCIE_PL_PFLR_* constants
>   PCI: dwc: imx6: Share PHY debug register definitions
>   PCI: imx6: Make use of BIT() in constant definitions
>   PCI: imx6: Simplify bit operations in PHY functions
>   PCI: imx6: Simplify pcie_phy_poll_ack()
>   PCI: imx6: Restrict PHY register data to 16-bit
>   PCI: imx6: Use flags to indicate support for suspend
>   PCI: imx6: Use usleep_range() in imx6_pcie_enable_ref_clk()
> 
>  drivers/pci/controller/dwc/pci-imx6.c        | 143 ++++++++-----------
>  drivers/pci/controller/dwc/pcie-designware.c |  12 +-
>  drivers/pci/controller/dwc/pcie-designware.h |   3 +
>  3 files changed, 62 insertions(+), 96 deletions(-)
> 
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12971B7605
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENAzi4r9yXfXIomW2ridAb+i6eZY+1uTq5KGd+iLaT8=; b=L9BWwRw5CYXikj
	De4rJWVjAQ+Ghnu8wddc6LxsmsLPWOAQseXto9AaKyPpQxmNclhg4MDY5loLID7cEM6W81yg3Q4Ht
	On1432AW+kToH9V239V87QgcPtsuwVJPsHW0qWgM8JwBADG6BOC/WCm32L7C25GucDgCTuZuZ3sNs
	meNfH0kO0spjvk/JtAkh7GIw36/lOC0JUG1kQYtoL6jTfgZI/uPER0to3c3NOPC0e7B7UqO9RJ/Ee
	BH+Ulv/li4DUuajEhEmH5z2KJZuvcAhCieP/nF+/NvJU6AlyCPRU8SMeLgTqfivVKCjZmmLo5pQk9
	9URC3lRiidImL6s2skgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsYn-00056p-Tr; Thu, 19 Sep 2019 09:17:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsY6-00055w-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gcackV6/ntk25fLVDg+/3GMlkOdJHRaLK52EuisvhNw=; b=O7KxtSuypM80Sg1q+Y+IupZwf
 lJoPW423/CXcVb21ifRT1VV/t2uaPRoChymSJv935sEjHfmAbWS6UfX+pC/aAW/qM2KDLuN3Hr6mU
 mKNjO3YiUw9XxBHWz/yh+kmr2C+SuwNo0DkQ7CBYm2NtKU0aC9R+UFJaMyzo7IXjjeDg+uO5gBrE+
 Ep18aBBYayjQJLfvTkq5nF0CExRE/chQHOykryvtNBLgBTxGLQeW4YFozwe/MOvCIJQvDDTkStaE8
 PcK6wrkT5SycS95riJHP7EzH29vgu3SHjdN7GA/ZIqWNm3abgLjXmNA563nOTjlvedwq1y/0iyuiI
 pKwGdxH3A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33876)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAsXo-0005CO-JQ; Thu, 19 Sep 2019 10:16:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAsXh-00038v-Rk; Thu, 19 Sep 2019 10:16:01 +0100
Date: Thu, 19 Sep 2019 10:16:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>, "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190919091601.GH25745@shell.armlinux.org.uk>
References: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <c12e21c3-6bef-38ed-3693-b958be17d555@arm.com>
 <20190917134947.GS25745@shell.armlinux.org.uk>
 <ab90e9a4-052d-5a7b-bfae-f2f02f17f1b7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab90e9a4-052d-5a7b-bfae-f2f02f17f1b7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_021626_163164_1B6C66A1 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dann frazier <dann.frazier@canonical.com>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Will Deacon <will.deacon@arm.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:03:29PM +0100, Robin Murphy wrote:
> On 17/09/2019 14:49, Russell King - ARM Linux admin wrote:
> > As already replied, v4 mode is not documented as being available on
> > the LX2160A - the bit in the control register is marked as "reserved".
> > This is as expected as it is documented that it is using a v3.00 of
> > the SDHCI standard, rather than v4.00.
> > 
> > So, sorry, enabling "v4 mode" isn't a workaround in this scenario.
> > 
> > Given that v4 mode is not mandatory, this shouldn't be a work-around.
> > 
> > Given that it _does_ work some of the time with the table >4GB, then
> > this is not an addressing limitation.
> 
> Yes, that's what "something totally different" usually means.
> 
> > > However, the other difference between getting a single page directly from
> > > the page allocator vs. the CMA area is that accesses to the linear mapping
> > > of the CMA area are probably pretty rare, whereas for the single-page case
> > > it's much more likely that kernel tasks using adjacent pages could lead to
> > > prefetching of the descriptor page's cacheable alias. That could certainly
> > > explain how reverting that commit manages to hide an apparent coherency
> > > issue.
> > 
> > Right, so how do we fix this?
> 
> By describing the hardware correctly in the DT.

It would appear that it _is_ correctly described given the default
hardware configuration, but the driver sets a bit in a control
register that enables cache snooping.

Adding "dma-coherent" to the DT description does not seem to be the
correct solution, as we are reliant on the DT description and driver
implementation both agreeing, which is fragile.

From what I can see, there isn't a way for a driver to say "I've made
this device is coherent now" and I suspect making the driver set the
DMA snoop bit depending on whether "dma-coherent" is present in DT or
not will cause data-corrupting regressions for other people.

So, we're back to where we started - what is the right solution to
this problem?

The only thing I can think is that the driver needs to do something
like:

	WARN_ON(!dev_is_dma_coherent(dev));

in esdhc_of_enable_dma() as a first step, and ensuring that the snoop
bit matches the state of dev_is_dma_coherent(dev)?  Is it permitted to
use dev_is_dma_coherent() in drivers - it doesn't seem to be part of
the normal DMA API?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

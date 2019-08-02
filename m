Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76827F56F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/MeOdfY12668Z39gHT1Lv2JwOpT/IglVCFBIKgjCug=; b=PV7eYQskA4ez9D
	93VdvdOr5rGk50llWvs1Lk7pVH4PtLoR9stMyyAd+1aAEyQdnOh5p30IGYq2OEV286HFU8NJ6rJJ/
	M04+mU7650VdaGu49U5hr1Tx10IoE/pC3gYDrVmKjHyRAvQmsQXQR5vAwsCXjG/5tFFwTs8yZbGfK
	7z7Ptg2yXbg9hzO2AbZmuO53rQ1JizU4EMhFFuoqI6wJKsKG9QLVIX1ceus31ltNKtDtf4AaS7bsF
	2CylvhqiDjCu8rWRXH5UPOXDo2AA88bxn3GpEOQp2cqhz9j00PnJycOO3NaWVTDdDAKS7oGRT2AOH
	FIdyNw4dOhv2RaY/ymHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htV58-0007zJ-Ru; Fri, 02 Aug 2019 10:46:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htV52-0007yV-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:46:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 412262087E;
 Fri,  2 Aug 2019 10:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564742795;
 bh=/Xo8pj+jLNFZr+k58OkpgJ6361PxmCXwjaJe76ZgvQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bguPlqmbZheY1d41/TUOJypiEzni5SdqGWSfXCyvcy+41ffeFMZs7DlxzidPFbVDg
 lNEM1JV5n0kaBfZ8Zk5BlH+xkYzf5X28x7CKgTqlP93I0FsxJiuqB/EPEYyxOrWnFb
 eaYAOGHAUm+aLPpqIKkhug+DzWGzJ2ImmL2AUZyc=
Date: Fri, 2 Aug 2019 12:46:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
Message-ID: <20190802104633.GA14823@kroah.com>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
 <20190731131045.GB147138@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731131045.GB147138@dtor-ws>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_034636_564473_5434A9A1 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, linux-input@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Darren Hart <dvhart@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Gong <richard.gong@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 06:10:45AM -0700, Dmitry Torokhov wrote:
> On Wed, Jul 31, 2019 at 02:43:39PM +0200, Greg Kroah-Hartman wrote:
> > This patch originally started out just as a way for platform drivers to
> > easily add a sysfs group in a race-free way, but thanks to Dmitry's
> > patch, this series now is for all drivers in the kernel (hey, a unified
> > driver model works!!!)
> > 
> > I've only converted a few platform drivers here in this series to show
> > how it works, but other busses can be converted after the first patch
> > goes into the tree.
> > 
> > Here's the original 00 message, for people to get an idea of what is
> > going on here:
> > 
> > If a platform driver wants to add a sysfs group, it has to do so in a
> > racy way, adding it after the driver is bound.  To resolve this issue,
> > have the platform driver core do this for the driver, making the
> > individual drivers logic smaller and simpler, and solving the race at
> > the same time.
> > 
> > All of these patches depend on the first patch.  I'll take the first one
> > through my driver-core tree, and any subsystem maintainer can either ack
> > their individul patch and I will be glad to also merge it, or they can
> > wait until after 5.4-rc1 when the core patch hits Linus's tree and then
> > take it, it's up to them.
> 
> Maybe make an immutable branch off 5.2 with just patch 1/10 so that
> subsystems (and the driver core tree itself) could pull it in at their
> leisure into their "*-next" branches and did not have to wait till 5.4
> or risk merge clashes?

I have now done this with patch 1/10.  Here's the pull info if any
subsystem maintainer wants to suck this into their tree to provide the
ability for drivers to add/remove attribute groups easily.

This is part of my driver-core tree now, and will go to Linus for
5.4-rc1, along with a few platform drivers that have been acked by their
various subsystem maintainers that convert them to use this new
functionality.

If anyone has any questions about this, please let me know.

thanks,

greg k-h

-------------------

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tags/dev_groups_all_drivers

for you to fetch changes up to 23b6904442d08b7dbed7622ed33b236d41a3aa8b:

  driver core: add dev_groups to all drivers (2019-08-02 12:37:53 +0200)

----------------------------------------------------------------
dev_groups added to struct driver

Persistent tag for others to pull this branch from

This is the first patch in a longer series that adds the ability for the
driver core to create and remove a list of attribute groups
automatically when the device is bound/unbound from a specific driver.

See:
	https://lore.kernel.org/r/20190731124349.4474-2-gregkh@linuxfoundation.org
for details on this patch, and examples of how to use it in other
drivers.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Dmitry Torokhov (1):
      driver core: add dev_groups to all drivers

 drivers/base/dd.c      | 14 ++++++++++++++
 include/linux/device.h |  3 +++
 2 files changed, 17 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

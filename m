Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C281D289E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsrNTH66pY/X+72Tbx3RUSGisQa0DZfnsV4e0QV76kI=; b=o/mHzJQ29+9DK7
	hMYgAafnW7S9jvhwRiKB3FA0mjvZCXr1P1xZ+d9JCZwkcJoDf+jdTOEMX2jE3tLDzkgKv+zMJ5tQI
	X7p3YAXHZR9hj4qUlbnw1HjLMUTUxfAtIA6h9wJ9F+HaJTWIQd9j4xqZ49lwA8XnHgCrNKY0pfTtj
	6YtBAAcpo9BL/zsNR0+mxWyfGxR5Kol6Yaibiz5yUDrAXZAJZu/Y3hqIUfJtOwX47ApbfWf8tArzi
	12ZV5vv2yJigrtyILXp6o5HZBJWnIEQf5hNBG1+7ANo8DlMXf1K/LN5h/Aufqf/H+u94DnIyvq9Fq
	/eYL+CySvatPN7YRYFhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ86l-0005eP-JB; Thu, 14 May 2020 07:16:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ86d-0005du-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:16:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80546206B6;
 Thu, 14 May 2020 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589440594;
 bh=x6XY+w06HhJq6OnCryR2C8r+d8634pKZTzl7OEtJ84I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fsVHPsSugeuQaqh74KM3vTh5YlMixAmucxuZV15thPoJJMrucj9GTrX+4SfuldnhB
 9l1LHA1eD+XBDjopMaSSsjMf2YIDC55sDJofhKonyQwyNCXX2L9+6xLEwnVOYrkmJu
 HPyLWUmcgMwI4jj/qfiwZg1D0JFjzHw6/eb6nNR8=
Date: Thu, 14 May 2020 09:16:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
Message-ID: <20200514071631.GA1566388@kroah.com>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
 <20190731131045.GB147138@dtor-ws>
 <20190802104633.GA14823@kroah.com>
 <CACvgo52+Uqx4GJFwadJoFzzt5EMc69HcW-+K9uxv9t25TtSDBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo52+Uqx4GJFwadJoFzzt5EMc69HcW-+K9uxv9t25TtSDBg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_001635_590115_7EA80D4A 
X-CRM114-Status: GOOD (  26.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: platform-driver-x86@vger.kernel.org,
 linux-fbdev <linux-fbdev@vger.kernel.org>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Borislav Petkov <bp@alien8.de>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, LAKML <linux-arm-kernel@lists.infradead.org>,
 Richard Gong <richard.gong@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:18:15PM +0100, Emil Velikov wrote:
> Hi Greg,
> 
> On Fri, 2 Aug 2019 at 11:46, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> 
> >
> > I have now done this with patch 1/10.  Here's the pull info if any
> > subsystem maintainer wants to suck this into their tree to provide the
> > ability for drivers to add/remove attribute groups easily.
> >
> > This is part of my driver-core tree now, and will go to Linus for
> > 5.4-rc1, along with a few platform drivers that have been acked by their
> > various subsystem maintainers that convert them to use this new
> > functionality.
> >
> > If anyone has any questions about this, please let me know.
> >
> > thanks,
> >
> > greg k-h
> >
> > -------------------
> >
> > The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> >
> >   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tags/dev_groups_all_drivers
> >
> > for you to fetch changes up to 23b6904442d08b7dbed7622ed33b236d41a3aa8b:
> >
> >   driver core: add dev_groups to all drivers (2019-08-02 12:37:53 +0200)
> >
> > ----------------------------------------------------------------
> > dev_groups added to struct driver
> >
> > Persistent tag for others to pull this branch from
> >
> > This is the first patch in a longer series that adds the ability for the
> > driver core to create and remove a list of attribute groups
> > automatically when the device is bound/unbound from a specific driver.
> >
> > See:
> >         https://lore.kernel.org/r/20190731124349.4474-2-gregkh@linuxfoundation.org
> > for details on this patch, and examples of how to use it in other
> > drivers.
> >
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > ----------------------------------------------------------------
> > Dmitry Torokhov (1):
> >       driver core: add dev_groups to all drivers
> >
> >  drivers/base/dd.c      | 14 ++++++++++++++
> >  include/linux/device.h |  3 +++
> >  2 files changed, 17 insertions(+)
> > _______________________________________________
> 
> Was planning to re-spin DRM a series which uses .dev_groups, although
> I cannot see the core patch.
> Did the it get reverted or simply fell though the cracks?

Nope, it's in there:
	23b6904442d0 ("driver core: add dev_groups to all drivers")
which showed up in the 5.4 kernel release.

Lots of other subsystems have already been converted to use this, do you
not see it in your tree?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

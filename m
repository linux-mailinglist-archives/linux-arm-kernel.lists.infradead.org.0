Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D167A8683
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZ8uox5CibacdVx6OHaVLmr2UAPurn6U0TZ1QYTQgP8=; b=bFhPYvoaFwFDNq
	patGEII23oZ01CfWrI5NOg5cbHZZIij2vSp+Js3BHeJK61UB6DkfWo1bGMsH8mM/l9lsi7PF5Irr6
	syDksON6tk3Ophh2BlucvGMKklQVg8125LNq1+wZeBFc6OxqAN1yL5c8I0tObVJBqoKUPixswWGPe
	alZ3Gyc9fj+L3xenDfJNS1b7cXP7KacTeGO2yGGjNZxhqQpOxSUcbwQaVEVkesXFv+TUaSg9L6v+q
	ehfmCM5JPVjv1B/Hy9K+quZ5HCPQpQVkfHzIVeHLjP7sPAGWyDZEmPxyCM0yd7vSVdUogpHwQVx0x
	mcb31ERBUkJEQvQwEIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xym-0004N9-KU; Wed, 04 Sep 2019 16:17:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XyW-0004M5-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:17:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FA5521670;
 Wed,  4 Sep 2019 16:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567613860;
 bh=PrSi2ibHZgZSkJmHetTy+766/nLwL4tOkYmbPtMEER0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SZrIovPrfpx5iAPrdV/I8ro1AynIDDflLbO8u64LP+oLzB/40AMLskh4qVlIJ4znx
 1HPojvyBGTZ1d6qpI0cxstL6+jso3XM5Jt39eI3tlcte8qiUF656pOhURstZGVBuah
 yaYJ6YAU3oFzPQ5Ta+1vNW/4aYfx5kTCqcnmgdoU=
Date: Wed, 4 Sep 2019 18:17:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for
 sysfs features added.
Message-ID: <20190904161737.GA20662@kroah.com>
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
 <20190903195951.GA25008@kroah.com>
 <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
 <20190904054809.GB4511@kroah.com>
 <CANLsYkySX_3fGi4WLKHr7bv2=_j2UMyaTXCrwHSnzR-oH1V_ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkySX_3fGi4WLKHr7bv2=_j2UMyaTXCrwHSnzR-oH1V_ZQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091740_837129_03ED8DB1 
X-CRM114-Status: GOOD (  28.41  )
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
Cc: Jon Corbet <corbet@lwn.net>, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 10:05:51AM -0600, Mathieu Poirier wrote:
> On Tue, 3 Sep 2019 at 23:48, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Sep 03, 2019 at 04:51:40PM -0600, Mathieu Poirier wrote:
> > > On Tue, 3 Sep 2019 at 13:59, Greg KH <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> > > > > Update document to include the new sysfs features added during this
> > > > > patchset.
> > > > >
> > > > > Updated to reflect the new sysfs component nameing schema.
> > > > >
> > > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > > > ---
> > > > >  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
> > > > >  1 file changed, 115 insertions(+), 68 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > index 36258bc1b473..112c50ae9986 100644
> > > > > --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > @@ -1,4 +1,4 @@
> > > > > -What:                /sys/bus/coresight/devices/<memory_map>.etm/enable_source
> > > > > +What:                /sys/bus/coresight/devices/etm<N>/enable_source
> > > >
> > > > You are renaming sysfs directories that have been around since:
> > > >
> > > > >  Date:                April 2015
> > > >
> > > > ???
> > > >
> > > > Really?
> > > >
> > > > That's brave.
> > >
> > >
> > > When I worked on the coresight sysfs ABI a while back I specifically
> > > added it at the "testing" level as I was well aware that things could
> > > change in the future.  According to the guidelines in the
> > > documentation userspace can rely on it which was accurate since the
> > > interface didn't change for 4 years.  But the guidelines also mention
> > > that changes can occur before the interfaces are move to stables, and
> > > that programs are encouraged to manifest their interest by adding
> > > their name to the "users" field.
> > >
> > > The interface was changed in 5.2 to support coresight from ACPI and
> > > make things easier to understand for users.  It is a lot more
> > > intuitive to associate an ETM tracer with the CPU it belongs to by
> > > referring to the CPU number than the memory mapped address.  Given the
> > > "testing" status of the interface and the absence of registered users
> > > I decided to move forward with the change.  If "testing" is too strict
> > > for that I suggest to add an "experimental" category where it would be
> > > more acceptable to change things as subsystems mature.
> >
> > "testing" is not really "testing" if you have userspace tools/programs
> > assuming the location and contents of specific files in sysfs.
> >
> > You can change things in sysfs by creating new files, but to do
> > wholesale renaming like you did here can be very dangerous as you might
> > be breaking things.
> 
> Yes, something I have definitely considered.
> 
> > Usually new files are created, not existing ones
> > moved.
> 
> In this case it would have meant a new symbolic link for every
> coresight device, so twice a many entries under
> $(SYS)/bus/coresight/device/.  That would have been a lot of clutter
> and an increasing source of problems as the number of CPU and sinks
> increases.  To me, and given the permissive definition of "testing"
> found in the documentation, a clean break was a better option.

Well, "testing" doesn't really matter in the end, if a tool/user relies
on it, we have to keep it working properly.

> > What tools use these today?  What is going to break?
> 
> Other than local shell scripts I am not aware of any tools using these
> today.  I am certainly open to discuss a better alternative but right
> now, I just don't see one.

Be aware that you might have to change this back if there is any
objections.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

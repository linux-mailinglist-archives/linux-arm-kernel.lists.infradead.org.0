Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAE0A7AF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 07:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RuEhEAnUN0jXQV5TcVjs5i7BDfK5ubJt3JGDQ+PpRk=; b=kpKrYZWK2/7Xbl
	heM8C/o1NKHx3iIGuveO/yqZlhx9is3UJSa6wcJNU1Opdba/hMQWa89i5604pgqEkC8YXWzvnuQgZ
	gXVIitY8Wcg5CMYxJn3Z4/5tC12IROP93El7yIxem2KUcOhYFknH3CJe9PVSPsKPiZ+nX3RgFwq3+
	dBHYLrlKqtTFY3rOHr7Nu+yebFWcIFcj98GxCIEmmpiO/2LVNOdhWDCIxXijrjyYvAysQ7lzo+M/X
	S+uYQv4W1Z+i79iyJUST0VdZtZ7hJyENZfqNLXABa+bNo2vA9V5A7EDycTED5Q8fxa/gzpZCKJIfV
	smPI5WZB7uGfvz/24m6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5O9X-0006o4-5m; Wed, 04 Sep 2019 05:48:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5O9M-0006na-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 05:48:13 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED9EF2341D;
 Wed,  4 Sep 2019 05:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567576091;
 bh=62m/BaM2YlXpmhbO43sigHiSBNsLNfopQ+9alrBU8Ww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=caFw/CP6kgw8MfCH1kbcN+WHvs6pfPT9ZtQw39wOSGIorocqZRYE0OcBZNa0sN4JU
 d9JZMRlOge964dSm1wDiVndNArHIykNg5LkYfGsodxb1HJmge+XF2RmrpRWtr8BTYJ
 qhIVtxwWj1WapFbegav98S/iOkBXB2ZW2XF8ADZ0=
Date: Wed, 4 Sep 2019 07:48:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for
 sysfs features added.
Message-ID: <20190904054809.GB4511@kroah.com>
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
 <20190903195951.GA25008@kroah.com>
 <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_224812_351900_95946BA4 
X-CRM114-Status: GOOD (  19.99  )
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

On Tue, Sep 03, 2019 at 04:51:40PM -0600, Mathieu Poirier wrote:
> On Tue, 3 Sep 2019 at 13:59, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> > > Update document to include the new sysfs features added during this
> > > patchset.
> > >
> > > Updated to reflect the new sysfs component nameing schema.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > ---
> > >  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
> > >  1 file changed, 115 insertions(+), 68 deletions(-)
> > >
> > > diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > index 36258bc1b473..112c50ae9986 100644
> > > --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > @@ -1,4 +1,4 @@
> > > -What:                /sys/bus/coresight/devices/<memory_map>.etm/enable_source
> > > +What:                /sys/bus/coresight/devices/etm<N>/enable_source
> >
> > You are renaming sysfs directories that have been around since:
> >
> > >  Date:                April 2015
> >
> > ???
> >
> > Really?
> >
> > That's brave.
> 
> 
> When I worked on the coresight sysfs ABI a while back I specifically
> added it at the "testing" level as I was well aware that things could
> change in the future.  According to the guidelines in the
> documentation userspace can rely on it which was accurate since the
> interface didn't change for 4 years.  But the guidelines also mention
> that changes can occur before the interfaces are move to stables, and
> that programs are encouraged to manifest their interest by adding
> their name to the "users" field.
> 
> The interface was changed in 5.2 to support coresight from ACPI and
> make things easier to understand for users.  It is a lot more
> intuitive to associate an ETM tracer with the CPU it belongs to by
> referring to the CPU number than the memory mapped address.  Given the
> "testing" status of the interface and the absence of registered users
> I decided to move forward with the change.  If "testing" is too strict
> for that I suggest to add an "experimental" category where it would be
> more acceptable to change things as subsystems mature.

"testing" is not really "testing" if you have userspace tools/programs
assuming the location and contents of specific files in sysfs.

You can change things in sysfs by creating new files, but to do
wholesale renaming like you did here can be very dangerous as you might
be breaking things.  Usually new files are created, not existing ones
moved.

What tools use these today?  What is going to break?

thanks,
greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

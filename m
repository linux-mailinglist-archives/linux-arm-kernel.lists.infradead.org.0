Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48151A928E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 21:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Hv7ThrHKTrgNZKMiJytsoMaV8qgxkz3XOPPneGWx5I=; b=H0w4EkBy36ltLk
	JgCNznrIdxwvOsXAmAsjDyg7CWjjdFjtNoynuXYIykW4iqAxcVVcF7jAZiX7RHjTbZDcdOb/GQlz/
	9MYoUEOGmUK/pNuSYy0Mcbz+NW76sdJgOd+GaUdL6LvwosIHB9QWI8Aum3nY8rs4lLK2brXnvkOee
	CbBTdZlDZCE8SQtxYQvzs7CkzGS/90Wgtm5dtScczZ0scs9FBdHomnrfqdRPbVQCDTvob1oKoUJAW
	N5mOVXrUL1nRddPB644th5Gh/j4FUfP4rojsD/e55v5gB/cEYur2KM6uVr+LKZYEDN29ZzKlmyZAj
	sF2WaSg44ShLIWWW887A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bGJ-0006iO-RR; Wed, 04 Sep 2019 19:48:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bG6-0006hO-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 19:48:08 +0000
Received: by mail-io1-xd43.google.com with SMTP id r4so31764459iop.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 12:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wvuud4zA0aelxuvnRUobLyqJekSvD1KYW4Jzg0u/ZQc=;
 b=Y0NOuo8bEuOroTj6m+/5EzJE3VAcUssNmVi+ZRKTlXHcWNd5foeOvxWu35e9TX3J5r
 7zBbLds+FE/dAiQnhG5iY1jU6Vj2t6r2dorZLcTHbaPO1lPHNY6qkr+bR4UDDMhd0Zh3
 8s+pLldygOTQ2MKr6a83xa6m0hCfyBAATJd09oKV0MdZ/6ENxaeIKgLJwng3FJsh/5S5
 jHV1ewitJX72Rcu0SUgy1NK31qZA69TVfjskyyxC38775GWGvq/ojyUwO5/c433eF+7I
 UYagQKo+VXxhVYfT78JAutHRyftID48DlYHE6ogvWI6Kz1TEN8LuLoXEPCrcqE7yR4/y
 wmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wvuud4zA0aelxuvnRUobLyqJekSvD1KYW4Jzg0u/ZQc=;
 b=VdkedwPcm6yCrR13fM2x3sguaaxyfIdem4WdIL1+OKA3yAQyXXzZnyFT1VsGSvy0ae
 0K/rwSTNlRVOwJ23nFiEvaTNUbvJeimdStYz8hlJBDbyJMNQUVMoICQCFuqk9TbjljfX
 U8EhoBY5Oju6uOm3o0RUf7KQYmgMuKirB7k77JL3H9JGW+7GZvgx5jLnFDpexoAdOsOQ
 x2HqNIq7lAmOd+N1Eu+IUT62sB/fKZnYp8Ykvtntn9CsGu3AlUw9UUmLK7fmNeQ7Zrnd
 UEbB2JA1TTNSkPJWac9+dCVZ4oUJnRA8YclpNz99Trj9gJ7223eMym7+W5CmFaY2WXoD
 8G7Q==
X-Gm-Message-State: APjAAAXRBM39ShGTAHV1mBai3mjECXxY44VCSzvy1Xl0eg2mUzdx/tdI
 jOpWNQjRRSpbTnrka0mJ4TDlIeraG/rBQ2TT43tCGw==
X-Google-Smtp-Source: APXvYqzztImVgWfrY2RxM4IHFkQgBnx8FXE9py5dRz7xEOiF8hgk4S+nwn54/rqC1bitfrf3hoU2+K8SFwEHu7NpO5M=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr2085148ion.237.1567626480311; 
 Wed, 04 Sep 2019 12:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
 <20190903195951.GA25008@kroah.com>
 <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
 <20190904054809.GB4511@kroah.com>
 <CANLsYkySX_3fGi4WLKHr7bv2=_j2UMyaTXCrwHSnzR-oH1V_ZQ@mail.gmail.com>
 <20190904161737.GA20662@kroah.com>
In-Reply-To: <20190904161737.GA20662@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Sep 2019 13:47:49 -0600
Message-ID: <CANLsYkwGJKu3Ub55oP6br0yVaP5wy7F2Au4p1kCh0d7Ljzuxnw@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for sysfs
 features added.
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_124802_463812_726D75E5 
X-CRM114-Status: GOOD (  29.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jon Corbet <corbet@lwn.net>, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 10:17, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 04, 2019 at 10:05:51AM -0600, Mathieu Poirier wrote:
> > On Tue, 3 Sep 2019 at 23:48, Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Tue, Sep 03, 2019 at 04:51:40PM -0600, Mathieu Poirier wrote:
> > > > On Tue, 3 Sep 2019 at 13:59, Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> > > > > > Update document to include the new sysfs features added during this
> > > > > > patchset.
> > > > > >
> > > > > > Updated to reflect the new sysfs component nameing schema.
> > > > > >
> > > > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > > > > ---
> > > > > >  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
> > > > > >  1 file changed, 115 insertions(+), 68 deletions(-)
> > > > > >
> > > > > > diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > > index 36258bc1b473..112c50ae9986 100644
> > > > > > --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > > +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > > > @@ -1,4 +1,4 @@
> > > > > > -What:                /sys/bus/coresight/devices/<memory_map>.etm/enable_source
> > > > > > +What:                /sys/bus/coresight/devices/etm<N>/enable_source
> > > > >
> > > > > You are renaming sysfs directories that have been around since:
> > > > >
> > > > > >  Date:                April 2015
> > > > >
> > > > > ???
> > > > >
> > > > > Really?
> > > > >
> > > > > That's brave.
> > > >
> > > >
> > > > When I worked on the coresight sysfs ABI a while back I specifically
> > > > added it at the "testing" level as I was well aware that things could
> > > > change in the future.  According to the guidelines in the
> > > > documentation userspace can rely on it which was accurate since the
> > > > interface didn't change for 4 years.  But the guidelines also mention
> > > > that changes can occur before the interfaces are move to stables, and
> > > > that programs are encouraged to manifest their interest by adding
> > > > their name to the "users" field.
> > > >
> > > > The interface was changed in 5.2 to support coresight from ACPI and
> > > > make things easier to understand for users.  It is a lot more
> > > > intuitive to associate an ETM tracer with the CPU it belongs to by
> > > > referring to the CPU number than the memory mapped address.  Given the
> > > > "testing" status of the interface and the absence of registered users
> > > > I decided to move forward with the change.  If "testing" is too strict
> > > > for that I suggest to add an "experimental" category where it would be
> > > > more acceptable to change things as subsystems mature.
> > >
> > > "testing" is not really "testing" if you have userspace tools/programs
> > > assuming the location and contents of specific files in sysfs.
> > >
> > > You can change things in sysfs by creating new files, but to do
> > > wholesale renaming like you did here can be very dangerous as you might
> > > be breaking things.
> >
> > Yes, something I have definitely considered.
> >
> > > Usually new files are created, not existing ones
> > > moved.
> >
> > In this case it would have meant a new symbolic link for every
> > coresight device, so twice a many entries under
> > $(SYS)/bus/coresight/device/.  That would have been a lot of clutter
> > and an increasing source of problems as the number of CPU and sinks
> > increases.  To me, and given the permissive definition of "testing"
> > found in the documentation, a clean break was a better option.
>
> Well, "testing" doesn't really matter in the end, if a tool/user relies
> on it, we have to keep it working properly.
>
> > > What tools use these today?  What is going to break?
> >
> > Other than local shell scripts I am not aware of any tools using these
> > today.  I am certainly open to discuss a better alternative but right
> > now, I just don't see one.
>
> Be aware that you might have to change this back if there is any
> objections.
>

We have an agreement.

Regards,
Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

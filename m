Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB5EA8656
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgR0l0TtNx4KP6pS/1U0oXCT+MhWpDjHEGA4vkceptM=; b=c4bx3k1J2fA22g
	DHX5yekNkqrxVDstiu+EsoN0+3RdpoKuG1TjQ2ERcjiRZrhnogDH8nG0eQCMqEyDlmVPDU9nCyiP1
	DYUP3T3d1GiOdYEc6I+xz0335gVqtu9+aZfsbSoMEYRvIkO0tiKMDepvu5W5I6ILBu8zid9ZQOiaG
	yV/yk7Xat9iho19AiEKd34hJBnY9LLRlCnFgl+GgnLNUm0GUgf2frXVuy2wkzEbmZEB88TH55ujOW
	jVJMllPKm4THHW3Y+gTcXyouTLVQHl9Zb6Gsc0yZDXKPEZ+fVWd0Q+mjHh+yw0H+VqpX1glMWHF37
	sC8zdrFjdhefb6zg8vyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XnX-00063m-7A; Wed, 04 Sep 2019 16:06:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XnH-000635-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:06:05 +0000
Received: by mail-io1-xd41.google.com with SMTP id b10so45439312ioj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5lhWafqYFmhotqOeEvQEWgPd+ZPMMqTqg3Hle4q+xhU=;
 b=CHLprMwQX4fDdOh9+SC0j0oKqhpRV5SxjXmh82FD18bndq7o9RVQv3xwg1LlxDAY44
 LHMcYBPRJESuihYLmkWujLc9RW4n6/POEmyeQJQMWa4nxbe334mV63xyugLbOowTvPvY
 mblFSd9J/wgEeV2yeFxP7I+FL+xUs7diHC+xH5JLi/ZbgTa0xW6G5TrQ3aY7aMdivj/H
 fJwyuCjddPAENUptyq951q8DPWi767SWU7TrIgd9KuvKSOm+02Yrhj+XlwiiLVkQvo63
 piPY0o5VxYy9OFGvwB7GC6avakut7yxVQiAvZIm6568lpuf3mP5SbEFIUmguCQqzT/WJ
 oRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5lhWafqYFmhotqOeEvQEWgPd+ZPMMqTqg3Hle4q+xhU=;
 b=cOdw3Y/cDckr3Fapv5uBJRlarPsygw8ypPB9QeYIGloCgOQDDBhLMrxuAN69GFFNBD
 zbmD1KEqdIQEitKjZ9q+9/TEh0KzK3dUZyx0N4IOXt6j3785sRO94hk32FruFvFlwRh1
 D/Vf2qqh5HEMEcBQhOGVlIiZflb4EUt3yGoob1Y/zD7W3IlDG1eRLIP8wc40yQSd5bny
 lPfYWOSO/eFNTO7ic0R0duaYT/9w6QhrlMhBac1OAJWmkqI0uvR3FubmLm4DM/jk3U+q
 EcQTwn/Cg7wo+JMOZMymBl1WFUVBsR++HB1KMxRjpVbHOcoagzVDu7S0bzIfJcPPfu2o
 JyeQ==
X-Gm-Message-State: APjAAAXkant/vrh8yaSg8BAiX73V/aGOP+lcgehxabd5ac4I+7IF4zg1
 dIskSBeI0xuTptGryOd8mabHf1e5aSXV2JOnTTwnqw==
X-Google-Smtp-Source: APXvYqz4yu3QVTFmHphFpeszsph5mwZpIGJqJee0ZteodLoeZweGPlU1B4ldAcZ9Edn8Xfx0kYtihi/V2VCWYezetpI=
X-Received: by 2002:a6b:b213:: with SMTP id b19mr4404471iof.58.1567613162647; 
 Wed, 04 Sep 2019 09:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
 <20190903195951.GA25008@kroah.com>
 <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
 <20190904054809.GB4511@kroah.com>
In-Reply-To: <20190904054809.GB4511@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Sep 2019 10:05:51 -0600
Message-ID: <CANLsYkySX_3fGi4WLKHr7bv2=_j2UMyaTXCrwHSnzR-oH1V_ZQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for sysfs
 features added.
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_090603_607069_6D884390 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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

On Tue, 3 Sep 2019 at 23:48, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Sep 03, 2019 at 04:51:40PM -0600, Mathieu Poirier wrote:
> > On Tue, 3 Sep 2019 at 13:59, Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> > > > Update document to include the new sysfs features added during this
> > > > patchset.
> > > >
> > > > Updated to reflect the new sysfs component nameing schema.
> > > >
> > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > > ---
> > > >  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
> > > >  1 file changed, 115 insertions(+), 68 deletions(-)
> > > >
> > > > diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > index 36258bc1b473..112c50ae9986 100644
> > > > --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > > > @@ -1,4 +1,4 @@
> > > > -What:                /sys/bus/coresight/devices/<memory_map>.etm/enable_source
> > > > +What:                /sys/bus/coresight/devices/etm<N>/enable_source
> > >
> > > You are renaming sysfs directories that have been around since:
> > >
> > > >  Date:                April 2015
> > >
> > > ???
> > >
> > > Really?
> > >
> > > That's brave.
> >
> >
> > When I worked on the coresight sysfs ABI a while back I specifically
> > added it at the "testing" level as I was well aware that things could
> > change in the future.  According to the guidelines in the
> > documentation userspace can rely on it which was accurate since the
> > interface didn't change for 4 years.  But the guidelines also mention
> > that changes can occur before the interfaces are move to stables, and
> > that programs are encouraged to manifest their interest by adding
> > their name to the "users" field.
> >
> > The interface was changed in 5.2 to support coresight from ACPI and
> > make things easier to understand for users.  It is a lot more
> > intuitive to associate an ETM tracer with the CPU it belongs to by
> > referring to the CPU number than the memory mapped address.  Given the
> > "testing" status of the interface and the absence of registered users
> > I decided to move forward with the change.  If "testing" is too strict
> > for that I suggest to add an "experimental" category where it would be
> > more acceptable to change things as subsystems mature.
>
> "testing" is not really "testing" if you have userspace tools/programs
> assuming the location and contents of specific files in sysfs.
>
> You can change things in sysfs by creating new files, but to do
> wholesale renaming like you did here can be very dangerous as you might
> be breaking things.

Yes, something I have definitely considered.

> Usually new files are created, not existing ones
> moved.

In this case it would have meant a new symbolic link for every
coresight device, so twice a many entries under
$(SYS)/bus/coresight/device/.  That would have been a lot of clutter
and an increasing source of problems as the number of CPU and sinks
increases.  To me, and given the permissive definition of "testing"
found in the documentation, a clean break was a better option.

>
> What tools use these today?  What is going to break?

Other than local shell scripts I am not aware of any tools using these
today.  I am certainly open to discuss a better alternative but right
now, I just don't see one.

>
> thanks,
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

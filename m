Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336661BE63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JMRlua4cczoxjCkSzB5+YY6gmELS9MtCQbURwjI3Yo=; b=FqnDr/Thrc+t3n
	5QUqG4AIy3aM7X+Kx9B20HTozBiZNEuPK/Ab0ZmOQjvas72eUkynBcbT9bj9lf3x8FzCsIiCeMqnM
	nRl2e7tVcEy4xl8ZEEI+fLc2NJvjh1hl2JiH8qPWRlt1/cBNmV7Fn4cHeOo+6fdc+/H7cK9nGWSey
	fvgD7CK8+ZjSD2Db+SH3904LrpXXgDgRDR0UHcITuh7uFl6vdJK1E3eqRptU5ddJ9tnQVwHp+3EQb
	H5tTC3mL+dF725es4fNhhaEu5cxS0u0CYj04ZAIHn4Y0l7ulK5g+YGrIypKaTzM7Q8Q20XH5jgvyb
	5OTmMDia+3aNsnPXDEIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHJl-0004dg-7O; Mon, 13 May 2019 20:13:01 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHJd-0004dM-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:12:55 +0000
Received: by mail-io1-xd42.google.com with SMTP id g16so11119835iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3h+qDpyjcVnfO7OEpbf5yuyujTS7iKeHk+36x1kfdwk=;
 b=GQJuxgDjq5R4+SjzmA4m/9ki1MdBMr6zR5PPoLH0AKFRo+iAwYv2Ow8bAdZcGXf+Tv
 eP5d1nAKO/0h2sagpHB+Ma9nQo4Qbs/flKbq/+PuukmPfwkIBBcI4oEtYkaCeh+mtzrL
 fwP7WwHdB/EOrV978Ds8LZkr2reaz63yFmTt54RM0DkSp6tPagBq39iI9NdrEq0KTrR3
 qJU5+eAvLJL0Hx2tww0/tQ5l5G88CdXI1Q6BZZUwVnOTCPVNp+79geBl11TyqPUAd9nI
 iMPua1Qf4b2QnCec6F5t9v8DF46dJDdG/XAfypeIGqUhmCPpkbpIumCeDhl28AzSp8YS
 t9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3h+qDpyjcVnfO7OEpbf5yuyujTS7iKeHk+36x1kfdwk=;
 b=SggpvRaQfZdrfcBCw+qbLqNBlN5se4bACbSL40LqRKybs3GyYw+pKQPGw74QsfyStv
 HN2HiHGHKZ5LGL9yz3ug48gDtfWl859+1Il9q0gyglYfG/wOTaQ54KZ2ifjc02oH0WiI
 i6f1HbTAUOk2xhOKyokZZgIf8/9gGlSk+5NT/vRVvHuZjMBgNiAiIHQ1cjbUqtX+dJgJ
 z8hI1JKIxdmOsR4X4NgvSdcCS8cnkygHYQErVz4Q/Nj29Sbc5bA39smKyDMvDfzCbD+f
 qdIOVnGHkLznqeUmJTQFvd3cpH0paT7vjG69vwaWdEcDmYmfQyT7uMmJFTpaTpWpfdYa
 k6yQ==
X-Gm-Message-State: APjAAAU32da7GANIz+OvFEWGIy9eGAeqwxrAd+0YTDiejyuPgjPOtCYM
 x+zm2mt59Zvi1S6HlvGw1bIHwPP9l4XCH0xplEGeOBmr
X-Google-Smtp-Source: APXvYqyF97JLoLB2k4AvwZmbzw37f2tqH372MIMBt6biwly5tvnDFNSLc/w+Yyk30a9lxbOdpBDGEiaJBaH5nxYG+pc=
X-Received: by 2002:a6b:5814:: with SMTP id m20mr16941675iob.293.1557778373035; 
 Mon, 13 May 2019 13:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-6-mathieu.poirier@linaro.org>
 <20190511073229.GA18064@leoy-ThinkPad-X240s>
 <77e437ed-99b2-670e-7e29-33be584f2bd0@arm.com>
 <20190513111615.GA32010@leoy-ThinkPad-X240s>
 <CANLsYkwq39ZS65KvHPjJoyPiHzd7vqB2A7j=ZhFeMHfWazLz5Q@mail.gmail.com>
In-Reply-To: <CANLsYkwq39ZS65KvHPjJoyPiHzd7vqB2A7j=ZhFeMHfWazLz5Q@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 13 May 2019 14:12:42 -0600
Message-ID: <CANLsYkwNJKQD8e6SvH7QOtvhekLbP5VqGs+2CRP3fEwvMrPH9A@mail.gmail.com>
Subject: Re: [PATCH 5/5] docs: coresight: Document snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_131253_903155_603E478E 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jon Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mike Leach <Mike.leach@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 at 14:01, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Mon, 13 May 2019 at 05:16, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Hi Suzuki,
> >
> > On Mon, May 13, 2019 at 09:37:01AM +0100, Suzuki K Poulose wrote:
> > > Hi,
> > >
> > > On 11/05/2019 08:32, Leo Yan wrote:
> > > > On Wed, May 01, 2019 at 11:50:52AM -0600, Mathieu Poirier wrote:
> > > >
> > > > [...]
> > > >
> > > > > +2.2) Snapshot mode:
> > > > > +
> > > > > +Using perf's built-in snapshot mode with CoreSight tracers is supported - to
> > > > > +do so the '-S' command line option needs to be specified.  Since current sink
> > > > > +devices are used in double-buffer mode when operated from the perf interface,
> > > > > +the size of the perf ring buffer needs to be adjusted to match the size of the
> > > > > +buffer used by the CoreSight sinks.  From the perf command line it is possible
> > > > > +to specify the number of pages to use for a session using the '-m,X' option,
> > > > > +where X is the amount of pages.
> > > > > +
> > > > > +The system memory buffer used by ETR devices is automatically adjusted
> > > > > +to match the size of the perf ring buffer and as such does not need to be
> > > > > +modified on the perf command line.  For ETB and ETF devices the perf ring
> > > > > +buffer size need to be adjusted to match the size of the internal buffer.
> > > > > +
> > > > > +The following examples assume a system page size of 4096 byte:
> > > > > +
> > > > > + # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> > > > > + 0x2000
> > > > > + # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> > > >
> > > > In this case it shows the usage for etb, thus should:
> > > > s/20010000.etf/20010000.etb/
> > > >
> > > > BTW, the user needs to convert the rdp to byte size with multiplying 4,
> > > > it's good to explain for this in the doc or give related info in the
> > > > driver warning log.
> > >
> > > If at all we want to match the aux space size with that of the device buffer,
> > > I recommend exposing this via a new "buf_pages" attribute under the sysfs to
> > > help the user.
> >
> > Agree, I also saw you suggested in another email.  Using "buf_pages"
> > is directive and consistent for different sink devices.
>
> I've been thinking about this.  Both ETR and ETF have a 'buffer_size"
> entry in sysfs and ETB does not.  The first thing I suggest is to add
> a "buffer_size" entry to the ETB driver so that all sink devices look
> the same.  From there enhance the current information carried by
> "buffer_size" to include pages. For example:
>
> $cat 20070000.etr/buffer_size
> 0x100000 0x100
>
> $ cat 20010000.etf/buffer_size
> 0x10000 0x10
>
> $ cat 20010000.etb/buffer_size
> 0x8000 0x8
>
> That way we have the information we need without adding more entries
> to sysfs - all we need to do is update the documentation (which we'd
> have to do anyway).  Let me know what you think.

What I did forget to mention is that my next revision of the feature
does not mandate to make the ring buffer match the size of the
internal buffer memories.  The above reply was in the context of
letting users know how to make the size of the buffers match should
they want to.  But so far I haven't found a use case where doing so
would be beneficial.

>
> Mathieu
>
>
> >
> > Thanks,
> > Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

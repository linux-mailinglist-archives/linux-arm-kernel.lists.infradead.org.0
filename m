Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DA11BE4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4LXDKuRUUTi0Yrem9B8iET7gzpmsBc50IYp36MjlFo=; b=LukcQyQpx4taot
	jmo3bykSlYncMcHEDYsEKC18dKWQOIXB9RUY14TNAg6qe9KqtMNL+7VAoX8a1PB9C91Y4GHtUPwm3
	XYNqWJBa7McrcH2Lbh5Pq0Z1BR/cTn4RIrbitlVWhdQOJ5h81BL+MyyYKKOd4iTLYg+KVgRMft8NQ
	Q5U3ToBOwoAVZXLDuZ2ihVocIuAznmJF83VwSpfTu3j+BOYrexRMa5F8PfhnzRupcI5MfR3MVXe5V
	FCVh1FxqtDi2RYvG/d/qRoppAck/HRL1ppGZwE32j1U2kDEaKNaPDHgvCa3yRMAIYFoiioRlJoKOn
	OTuWdjX4igBDjlsRM5Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQH8g-0001Eg-34; Mon, 13 May 2019 20:01:34 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQH8Y-0001EE-Kg
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:01:28 +0000
Received: by mail-it1-x143.google.com with SMTP id u186so1116779ith.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pm12sRZ0ekOWodPAW0CCBaqRrcMi0kklzS4eVBwaS1A=;
 b=oNhJs+TUQX1iSHCWKYlkPMVAIYhvyR3sy9LlAybXNzlbk+6mmMbC+dh1bxBJFLb7Xm
 cuQk9ool7atfGeQa+z6GT4PAo5fEn+MxV6tGHnjtuN9j6MTogSQBrBjvwJiEGgbGIVzG
 UNbToBGcMyT6r0HJXewZFBmeF/KPgzNLq8HUFQWcyNV3H1XWAFPjlehOy6Yq4trGw7/A
 fZ9sf/aPCYPa3+bzCAWN9LWmaCfOKCl4U5mZEzgrMyR/BLYxCik7I6NnJOmj8IFhbkqH
 sEa0CwdtZiOuzWLDTCfvXUXs0pXnDjaMEX3tYBPVxptudGhF8VUqNGk2NQIm2VInreIJ
 jPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pm12sRZ0ekOWodPAW0CCBaqRrcMi0kklzS4eVBwaS1A=;
 b=tpKX9mQecSxBF3JvYdvFk0CUEnd73PHxiLrzUQW320akslmVAnJr9d9rgCGG6BxLpx
 xjoNA+4d0rOkuOl9qeIFjOdIYXponT6rr9LpD00mcFbtPgvQB2pNHlaA9RkfOv2Wpu6F
 12lW32Sepwf/Ss3AgqZ8G3DIv3FT6E/SJ+VE2CYN+nNeoQ8ahmFoOtvzj1uB0OSBZk4H
 wjZhmyWApzs04TAgS+oqSVbpj5etWq+jesqhV55atpVNqJiWuFS150EusGzYgczdAS0g
 x3qfFYR+CgMBcR8RrPfxzckBFATh7M2PaXR1d0XURgpuLe/hBfAWBkMwddWs53l9jqCr
 ny0A==
X-Gm-Message-State: APjAAAXOmWbRg5ed9YREZdfiCfXHvUmOp6YlHGU09W+u8yFvEnpBlO5i
 B9PWoszWHTVYZJLGvBTf6PhixsQ1d1V7yAy3rZ9ia9nlbkU=
X-Google-Smtp-Source: APXvYqwP4tY2XCWZxWaJjf5ro1rMNpaf/rvCUBoptEPq+2V217U8m9GYgIjNXYQpkC5TE60hq0K9Xw2L25FJYmI75CU=
X-Received: by 2002:a05:660c:50:: with SMTP id
 p16mr743161itk.146.1557777684664; 
 Mon, 13 May 2019 13:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-6-mathieu.poirier@linaro.org>
 <20190511073229.GA18064@leoy-ThinkPad-X240s>
 <77e437ed-99b2-670e-7e29-33be584f2bd0@arm.com>
 <20190513111615.GA32010@leoy-ThinkPad-X240s>
In-Reply-To: <20190513111615.GA32010@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 13 May 2019 14:01:13 -0600
Message-ID: <CANLsYkwq39ZS65KvHPjJoyPiHzd7vqB2A7j=ZhFeMHfWazLz5Q@mail.gmail.com>
Subject: Re: [PATCH 5/5] docs: coresight: Document snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_130126_689769_27A51D8B 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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

On Mon, 13 May 2019 at 05:16, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Suzuki,
>
> On Mon, May 13, 2019 at 09:37:01AM +0100, Suzuki K Poulose wrote:
> > Hi,
> >
> > On 11/05/2019 08:32, Leo Yan wrote:
> > > On Wed, May 01, 2019 at 11:50:52AM -0600, Mathieu Poirier wrote:
> > >
> > > [...]
> > >
> > > > +2.2) Snapshot mode:
> > > > +
> > > > +Using perf's built-in snapshot mode with CoreSight tracers is supported - to
> > > > +do so the '-S' command line option needs to be specified.  Since current sink
> > > > +devices are used in double-buffer mode when operated from the perf interface,
> > > > +the size of the perf ring buffer needs to be adjusted to match the size of the
> > > > +buffer used by the CoreSight sinks.  From the perf command line it is possible
> > > > +to specify the number of pages to use for a session using the '-m,X' option,
> > > > +where X is the amount of pages.
> > > > +
> > > > +The system memory buffer used by ETR devices is automatically adjusted
> > > > +to match the size of the perf ring buffer and as such does not need to be
> > > > +modified on the perf command line.  For ETB and ETF devices the perf ring
> > > > +buffer size need to be adjusted to match the size of the internal buffer.
> > > > +
> > > > +The following examples assume a system page size of 4096 byte:
> > > > +
> > > > + # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> > > > + 0x2000
> > > > + # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> > >
> > > In this case it shows the usage for etb, thus should:
> > > s/20010000.etf/20010000.etb/
> > >
> > > BTW, the user needs to convert the rdp to byte size with multiplying 4,
> > > it's good to explain for this in the doc or give related info in the
> > > driver warning log.
> >
> > If at all we want to match the aux space size with that of the device buffer,
> > I recommend exposing this via a new "buf_pages" attribute under the sysfs to
> > help the user.
>
> Agree, I also saw you suggested in another email.  Using "buf_pages"
> is directive and consistent for different sink devices.

I've been thinking about this.  Both ETR and ETF have a 'buffer_size"
entry in sysfs and ETB does not.  The first thing I suggest is to add
a "buffer_size" entry to the ETB driver so that all sink devices look
the same.  From there enhance the current information carried by
"buffer_size" to include pages. For example:

$cat 20070000.etr/buffer_size
0x100000 0x100

$ cat 20010000.etf/buffer_size
0x10000 0x10

$ cat 20010000.etb/buffer_size
0x8000 0x8

That way we have the information we need without adding more entries
to sysfs - all we need to do is update the documentation (which we'd
have to do anyway).  Let me know what you think.

Mathieu


>
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

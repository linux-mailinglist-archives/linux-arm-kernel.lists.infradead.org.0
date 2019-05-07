Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E816914
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHX/g6+UGIR9X5aK69xjt8c/dlrKuqhvBR64nwXh+Fs=; b=THzPN3pdtM+bBv
	eGeGUT5MavpAaaCY4FlWbxT73iJg4uRG0CvBrT0Qx5u6gGMFVXAVuAQfw1PHBvlhR/YJgBolvlciU
	B4XFefMys2pnc81r+EKB438V/d8GJFQfdqmCPiU9V1yK6JcLOtTNFYIJkfqRa2AzmzvOBGQvkLMpA
	UtzTYmM67y+82oXUu5e92HThgGMgM40jtMhVuTuS+PsP1RINZ2aN0x6Vkf8XZGWo5N6SCxBt7FFk/
	jn8LRkPJmwVD0wCaFQAUgZEpSgJjAylf00hYuZ42eSZcNkpSBE8h3XL0w9Q2Myjm0H6n9XlU0amAc
	0GtrILbR7ECPusLY6FhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3pT-0001CZ-7I; Tue, 07 May 2019 17:24:35 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3pL-0001Ai-7X
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:24:28 +0000
Received: by mail-it1-x144.google.com with SMTP id g71so11980287ita.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HONFpPtiDs4UVacoodUA1hGz7s+nisbBaCNCTeyz+wk=;
 b=TCJc9IeYr/9W5vv29elNTC8ScENgOUmBWAthvyQ68SUnd7MZ5J7IIkzfQzXG9V+6PN
 kzvy1MG6wZWMTp3WV0PBtewUz4oXx4ci0uTrlmF8yEVbXtMnKlH6FfjCIsjTFeOoHVuC
 k8UXvHy6QhSL7g6F5K8DunX1bjGEWWUFDYNK8Dxz3ZCMD/O1ib3OA5U8YOJ7c/uoJRto
 whY9ocDZFSGwBcYQDGFDNLf7IJ0ArGQ5WCde904XFb7akRdRM6eU8Re2mcBpoOjguIZJ
 LOS9F8hax6Cu+QVzTmfWa3kWLSxXD9wj2ZJvfqP/Pq8KVAqY61NLIu13SJO+RNS2nxZo
 rSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HONFpPtiDs4UVacoodUA1hGz7s+nisbBaCNCTeyz+wk=;
 b=Ti3LySdqbZngRljPDRTdsM0uWjSDUFg6UywBlw1RsI0XSIgG83HXKIhn6jSBjAKH6j
 A9akjsAKp49xd++NiA3zKjsxPUd1SS+uPoLE/GZFYR1H+OpxfDOW+k8+/D0q+5K27WqA
 DdgGqbtUYmN52+7o2DD+bRmvDI96ahBcygWzfo3KMqXejcyvy3X+BNusOBAVjaJ4UMNQ
 Wb1XKLZCBgTpQyco0Sqy+N/DrPDy2NwW9uGFPKpIqhGV2oBobhuHdDNL0oXRK4gt9JuJ
 aDWqpB6ofY0Yx/kzW9Jb0rNF1Wmg+BpMIAZGC+qT7Av0En/r95KzC2CUb4Elr/O6e+BV
 FHNg==
X-Gm-Message-State: APjAAAV1ogYHDd4DozPkSgJ9i+TRgZKZe1Xu053LH23ox4DaidE9RfZS
 HpX8zy3Dr9hXcE5q7+Suo6SBbgUj+G3v1uQ4qC1cSQ==
X-Google-Smtp-Source: APXvYqzGFCjFO//SlAfTWBc/FIry5CH4+OE3WeMo0q8GWKC++EsOnqmYN8l2TfRJkRuc9GBwu7UOZf2OgC6jxeLf/rE=
X-Received: by 2002:a24:de41:: with SMTP id d62mr21762533itg.175.1557249866232; 
 Tue, 07 May 2019 10:24:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-2-mathieu.poirier@linaro.org>
 <20190507073850.GA21730@leoy-ThinkPad-X240s>
In-Reply-To: <20190507073850.GA21730@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 7 May 2019 11:24:15 -0600
Message-ID: <CANLsYkyo-kho=7=V8qtik+-6bMf3hrcA2CyVYawDhu00hfOPjQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] coresight: Fix buffer size in snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102427_273912_66F52AF8 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mike Leach <mike.leach@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 01:39, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Wed, May 01, 2019 at 11:50:48AM -0600, Mathieu Poirier wrote:
> > In snapshot mode the buffer used by the sink devices need to be
> > equal to the ring buffer size in order for the user space mechanic
> > to work properly.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-etb10.c | 23 +++++++++++++++++++
> >  .../hwtracing/coresight/coresight-tmc-etf.c   | 20 ++++++++++++++++
> >  .../hwtracing/coresight/coresight-tmc-etr.c   |  8 +++++--
> >  3 files changed, 49 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> > index 4ee4c80a4354..0764647b92bc 100644
> > --- a/drivers/hwtracing/coresight/coresight-etb10.c
> > +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> > @@ -374,7 +374,30 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
> >                             int nr_pages, bool overwrite)
> >  {
> >       int node, cpu = event->cpu;
> > +     u32 capacity;
> >       struct cs_buffers *buf;
> > +     struct etb_drvdata *drvdata;
> > +
> > +     /*
> > +      * In snapsot mode the size of the perf ring buffer needs to be equal
> > +      * to the size of the device's internal memory if we want to reuse the
> > +      * generic AUX buffer management mechanic.
> > +      *
> > +      * For example (assuming 4096 byte page size):
>
> Here is delibrately to write as '4096 byte'?  Though I think should be
> '4096 bytes' but I am not confident which is right ...

Well, English isn't my first language either but I think it is correct
since I am referring to "the" page size and "4096 byte" is an
adjective of it.

>
> > +      *
> > +      *    # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> > +      *    0x2000
> > +      *    # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> > +      *
> > +      */
> > +     drvdata = dev_get_drvdata(csdev->dev.parent);
> > +     capacity = drvdata->buffer_depth * ETB_FRAME_SIZE_WORDS;
> > +
> > +     if (overwrite &&
> > +         ((nr_pages << PAGE_SHIFT) != capacity)) {
> > +             dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
> > +             return NULL;
> > +     }
> >
> >       if (cpu == -1)
> >               cpu = smp_processor_id();
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > index 2527b5d3b65e..7694833b13cb 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > @@ -380,6 +380,26 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
> >  {
> >       int node, cpu = event->cpu;
> >       struct cs_buffers *buf;
> > +     struct tmc_drvdata *drvdata;
> > +
> > +     /*
> > +      * In snapsot mode the size of the perf ring buffer needs to be equal
> > +      * to the size of the device's internal memory if we want to reuse the
> > +      * generic AUX buffer management mechanic.
> > +      *
> > +      * For example (assuming 4096 byte page size):
> > +      *
> > +      *    # cat /sys/bus/coresight/devices/20010000.etf/buffer_size
> > +      *    0x10000
> > +      *    # perf record -e cs_etm/@20010000.etf/ -S -m,16 --per-thread $APP
> > +      *
> > +      */
> > +     drvdata = dev_get_drvdata(csdev->dev.parent);
> > +     if (overwrite &&
> > +         ((nr_pages << PAGE_SHIFT) != drvdata->size)) {
> > +             dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
> > +             return NULL;
> > +     }
> >
> >       if (cpu == -1)
> >               cpu = smp_processor_id();
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > index df6e4b0b84e9..b9881d6d41ba 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > @@ -1188,9 +1188,13 @@ alloc_etr_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
> >
> >       /*
> >        * Try to match the perf ring buffer size if it is larger
> > -      * than the size requested via sysfs.
> > +      * than the size requested via sysfs.  In snapsot mode the size
> > +      * of the perf ring buffer needs to be equal to the allocated
> > +      * size if we want to reuse the generic AUX buffer management
> > +      * mechanic.
> >        */
> > -     if ((nr_pages << PAGE_SHIFT) > drvdata->size) {
> > +     if (snapshot ||
> > +         (nr_pages << PAGE_SHIFT) > drvdata->size) {
> >               etr_buf = tmc_alloc_etr_buf(drvdata, (nr_pages << PAGE_SHIFT),
> >                                           0, node, NULL);
> >               if (!IS_ERR(etr_buf))
>
> If tmc_alloc_etr_buf() returns failure then it's possible to run into
> the below sequence to allocate smaller buffer size for snapshot mode;
> which is not expected for snapshot mode.
>
> So here if tmc_alloc_etr_buf() fails to allocate buffer for snapshot
> mode, should directly bail out with error code.

You are quite right - I need to fix this.

>
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

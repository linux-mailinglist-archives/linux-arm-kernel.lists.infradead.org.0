Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5290F33B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qShL3te1aXBSLMuD8FFLEgUVa8S9Qvv+2OF+tbSGJxI=; b=SnnhKBdm47QVho
	4wzUJz2QouebpMHiG/G+Y5ZPACDmwpDbH1Z0NgB8/USgE8fNka1HLcsz7J2HQsavMAFComTRHqoCu
	dcUVplDbT4HDGHzgTMHqll7243wx4lpzoRCxNTykG6TA7vMyZO52wDlcPqK8mx0N/vIHVXrIhNa8p
	xNTweSfKgJlNxmtEeYY3s+MvwAJJ7n1KOyoS44HuuPhVgnVe6NJd4MyDZer4OjF3Tir+++Da1NUYI
	v9ePyV1mAgdI1qLKhgedt4ku/OwQ35BasRxfv9hDnSgNSbet7Xl/xujcq8ew4HV4/Kla6yTQXysWV
	Huw0xlLbbyz5edU8fPcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjyS-0008Hw-59; Thu, 07 Nov 2019 15:45:28 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjyK-0008HW-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:45:21 +0000
Received: by mail-yb1-xb41.google.com with SMTP id r201so1085996ybc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 07:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aBmDW367ezY0BrZwRlImNYpPUfZdn90ATxc3j+zJm30=;
 b=JKiaOjQ8TzP09p3M2cZAk6u6sBMOJTVhK+SFIoX2eblEYJN7ISl31fVJEjhyKCqgts
 WeYUc/O2s0kTmLaGomztgYsXen3MSvpTZhqh0UpzkQlRLm9/vRgya1Ez/otNM/yCMpeB
 QBeimtb23jgePWPyTIOUBBVJljio9xk8q9xdsQx6+UHuEBULlKIT6HoDPhyOWQVFUahc
 ll1bKe6DiFW3P0sc2QVRxqmNKR/4h9/U4YxL8VF3GDj/h3Ns1nPdJ9CR40tA6fzMhbuS
 GmtkmdoS4IWu8ztNMOEOCZMzqqhabCVqnKPY4lOpm6ebaXKJOpjhuAzUZd+kSNup310M
 zYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aBmDW367ezY0BrZwRlImNYpPUfZdn90ATxc3j+zJm30=;
 b=mFmpXZnNrxziOUy+RIt+lUH71jXDeNGzfutFSz72ilIdIkfVIrQ0lSI+FDPxOrWnZB
 wrVjM5gKDY7r9w9D9d0+7OsAyzzJl3ll7X3drW48F4kWKMafdEYMMQWkknQ3Novp9+iY
 kIIVYMoAH6mDGQyT67336z4GZXyHMhSkdQ/1Frkv2m8Qr/foXlnyeQYc8IbhlGBtsV8T
 yAwA2Lo8XW7mI6EJfga65Laaoe3m8FO8y+z/E8IAOxYbpaDxnoT9slrnZmsiGZE0tti+
 sib1jgVX0/TlAUq42d2RId27QUTWO3F0U0JjqOAxjPQYEMnOzlKqkkYAE0XLj8NEY0v8
 cP4A==
X-Gm-Message-State: APjAAAXV18Z2ZfxCcdcx7gK1ZOOhUXowPtDMSz5tZtGNxTf4x9XxIw3L
 TUk/Qyx6O4+zBNfVEA64NC6c8hVVAGjZXjyZ13k=
X-Google-Smtp-Source: APXvYqwyubiCYdkp0wkVQciI245UgQvGVkHbhs94SRmToAzx6pJzULhB7lalNs2zsag4B/pA0r3B5sVmCmSB1I7uRqw=
X-Received: by 2002:a25:c781:: with SMTP id w123mr3986907ybe.509.1573141518579; 
 Thu, 07 Nov 2019 07:45:18 -0800 (PST)
MIME-Version: 1.0
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
 <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
 <20191107145213.GB6888@lakrids.cambridge.arm.com>
In-Reply-To: <20191107145213.GB6888@lakrids.cambridge.arm.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Thu, 7 Nov 2019 07:45:07 -0800
Message-ID: <CAKTKpr70=hFdwq43SBM-1jmbNxc1suyn3XouQhsj2m4tM+jeUg@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_074520_048169_56A9BA52 
X-CRM114-Status: GOOD (  26.70  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 6:52 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Nov 06, 2019 at 03:28:46PM -0800, Ganapatrao Kulkarni wrote:
> > Hi Peter, Mark,
> >
> > On Wed, Nov 6, 2019 at 3:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> > > > When PMUs are registered, perf core enables event multiplexing
> > > > support by default. There is no provision for PMUs to disable
> > > > event multiplexing, if PMUs want to disable due to unavoidable
> > > > circumstances like hardware errata etc.
> > > >
> > > > Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> > > > to allow PMUs to explicitly disable event multiplexing.
> > >
> > > Even without multiplexing, this PMU activity can happen when switching
> > > tasks, or when creating/destroying events, so as-is I don't think this
> > > makes much sense.
> > >
> > > If there's an erratum whereby heavy access to the PMU can lockup the
> > > core, and it's possible to workaround that by minimzing accesses, that
> > > should be done in the back-end PMU driver.
> >
> > As said in errata,  If there are heavy access to memory like stream
> > application running and along with that if PMU control registers are
> > also accessed frequently, then CPU lockup is seen.
>
> Ok. So the issue is the frequency of access to those registers.
>
> Which registers does that apply to?

The control register which are used to start, stop the counter and the
register which is used to set the event type.
>
> Is this the case for only reads, only writes, or both?

It is write  issue, the h/w block has limited write buffers and
overflow getting hardware in weird state, when memory transactions are
high.

>
> Does the frequency of access actually matter, or is is just more likely
> that we see the issue with a greater number of accesses? i.e the
> increased frequency increases the probability of hitting the issue.

This is one scenario.
Any higher access to PMU register, when memory is busy needs to be controlled.

>
> I'd really like a better description of the HW issue here.
>
> > I ran perf stat with 4 events of thuderx2 PMU as well as with 6 events
> > for stream application.
> > For 4 events run, there is no event multiplexing, where as for 6
> > events run the events are multiplexed.
> >
> > For 4 event run:
> > No of times pmu->add is called: 10
> > No of times pmu->del is called: 10
> > No of times pmu->read is called: 310
> >
> > For 6 events run:
> > No of times pmu->add is called: 5216
> > No of times pmu->del is called: 5216
> > No of times pmu->read is called: 5216
> >
> > Issue happens when the add and del are called too many times as seen
> > with 6 event case.
>
> Sure, but I can achieve similar by creating/destroying events in a loop.
> Multiplexing is _one_ way to cause this behaviour, but it's not the
> _only_ way.

I agree, there may be other use cases also, however i am trying to fix
the common use case.

>
> > The PMU hardware control registers are programmed when add and del
> > functions are called.
> > For pmu->read no issues since no h/w issue with the data path.
>
> As above, can you please describe the hardware conditions more
> thoroughly?
>
> > This is UNCORE driver, not sure context switch has any influence on this?
>
> I believe that today it's possible for this to happen for cgroup events,
> as non-sensical as it may be to have a cgroup-bound uncore PMU event.
>
> > Please suggest me, how can we fix this in back-end PMU driver without
> > any perf core help?
>
> In order to do so, I need a better explanation of the underlying
> hardware issue.

I will try to put more explanation to erratum, however please let me
know, if you have any specific questions.

>
> Thanks,
> Mark.

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE8B1E46E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPhbg6x2oMyLO+KNAq2Jip5YrzwJM5WMlxxI/8TRjrs=; b=tdR73Zln8HITV8
	e/rV4r57OWcdcwZbqWApNOGqryIFGHg4iEGn6PmZJPmq1poz16rkZkfjjCZpz7tapuhhmN1TzPKGp
	SKUVuemzniYTGIyBme6uHjP6OhhvRmz1XK05JsBy+RtRagdZcLvNZFSWON8Gavv9hC0uHa4dIW4XC
	aBc7D1vw3hVdBowpYFsFQTy1Kit0YVNbbDZVR+GMRwQrFxsdrsREPJhI0zt8oo75aYkKSLwTwCJ/O
	xr+yo9m06SKi3dB2AgWpskVzHLPMjv0ZrDgGs5md+BkmCU0PUG4i1Rblu4o1St7QJL+HsFLKFouXu
	Kc7vjPJe9KOx+XUn3ryQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxbb-0008SE-6g; Wed, 27 May 2020 15:04:31 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxbB-0008Hw-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:04:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id c3so19349840otr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 08:04:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Vx58Hq7sHLXBsQGSYl+3QZFOqiNWHmAX7GPof+o7eQ=;
 b=g+HgY4r86+l1mWDrdFFw5TGkpOFYjQ2TaPnYlnrxm4UXUwsoPPRH0mDlos/hSKvf6F
 SGNKZhXnFZGRNlUR1E2vQBKVIN+M1TDpkuT0s5AcEHF9zCwqBmKmbkRVW6c6fvZRbk/l
 aKY6fSQ3jKLox/dKqYY8gso+LMdTlC28mYFv0Q8OzAplf8T028ISrZw4nj5eJfx/KnHC
 QnZwNb2LczUiEbmGnYrNTPsefyOlVT23WkgY+LvQGN9a4XOGz/oG/u2YPU40+v7V1CNt
 eKBFq0A4GCsD619Ial8zIXSBV44ZudlEpA97D4cbnVOImNJtCrLaI/VZwgiO0j7/k85g
 x+LA==
X-Gm-Message-State: AOAM5333+dcEQBGLbc5INIsHhpf8scJOse+cYweDNA73bQ/MPMhbV6XU
 lpJCrG9s7hhw/TMg73kWMzJTyr4i5u0XLcjFClk=
X-Google-Smtp-Source: ABdhPJzwMPGSTgdrUYctj0XU40med+NR1Bq/ddfSHu6e0BLAm4f5O93pxTTndqvUHsxmhkX1InI0IHrV5NKDuiWzbv8=
X-Received: by 2002:a9d:4713:: with SMTP id a19mr4711281otf.167.1590591844210; 
 Wed, 27 May 2020 08:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
 <CAKfTPtBt6Ju-CnETnn6_FkgR0CAJ+jYnySz9OHP9X2hmxWHM7w@mail.gmail.com>
 <51917583-f8ff-3933-7783-2eedc91484a4@st.com>
 <fe69390f-ea8c-b6e3-7610-d6bd73e8500d@st.com>
In-Reply-To: <fe69390f-ea8c-b6e3-7610-d6bd73e8500d@st.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 27 May 2020 17:03:52 +0200
Message-ID: <CAJZ5v0h17aPe69KbZ6xVV4RiUKwSHWOQLycUFFNCprg5XPpN4g@mail.gmail.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_080405_573643_A76606D1 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "len.brown@intel.com" <len.brown@intel.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 4:54 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
>
> On 5/27/20 2:48 PM, Benjamin GAIGNARD wrote:
> >
> >
> > On 5/27/20 2:22 PM, Vincent Guittot wrote:
> >> On Wed, 27 May 2020 at 13:17, Benjamin GAIGNARD
> >> <benjamin.gaignard@st.com> wrote:
> >>>
> >>>
> >>> On 5/27/20 12:09 PM, Valentin Schneider wrote:
> >>>> Hi Benjamin,
> >>>>
> >>>> On 26/05/20 16:16, Benjamin Gaignard wrote:
> >>>>> A first round [1] of discussions and suggestions have already be
> >>>>> done on
> >>>>> this series but without found a solution to the problem. I resend
> >>>>> it to
> >>>>> progress on this topic.
> >>>>>
> >>>> Apologies for sleeping on that previous thread.
> >>>>
> >>>> So what had been suggested over there was to use uclamp to boost the
> >>>> frequency of the handling thread; however if you use threaded IRQs you
> >>>> get RT threads, which already get the max frequency by default (at
> >>>> least
> >>>> with schedutil).
> >>>>
> >>>> Does that not work for you, and if so, why?
> >>> That doesn't work because almost everything is done by the hardware
> >>> blocks
> >>> without charge the CPU so the thread isn't running. I have done the
> >>> tests with schedutil
> >>> and ondemand scheduler (which is the one I'm targeting). I have no
> >>> issues when using
> >>> performance scheduler because it always keep the highest frequencies.
> >> IMHO, the only way to ensure a min frequency for anything else than a
> >> thread is to use freq_qos_add_request() just like cpufreq cooling
> >> device but for the opposite QoS. This can be applied only on the
> >> frequency domain of the CPU which handles the interrupt.
> > I will give a try with this idea.
> > Thanks.
>
> Adding freq_qos_add_request(FREQ_QOS_MIN) when starting streaming frames
> solve my problem. I remove the request at the end of the streaming to
> restore
> the default value.

You may as well add the request once at the init time with the request
value set to PM_QOS_MIN_FREQUENCY_DEFAULT_VALUE initially and update
it as needed going forward.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

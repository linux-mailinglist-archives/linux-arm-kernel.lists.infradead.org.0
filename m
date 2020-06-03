Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF36D1ED31D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+nc2USaGkaro7SpQisTPwBlpPIaa/TXGv+l4S/JhrQ=; b=AE9Z2hmSdwHoNq
	4vdSW6QElm7eXRSM5X9XltrOF2FtTsU90eNu7TSBMDLHL1xWIWdf99lIjj1SOmOlmKGdReSygcC5A
	ZylwdeHQ/IWpQKjNrY1jOJhzBzZ7XItltLAoJ5xyNDOciJIaz6JL2Y5SZr1CIOvXlw77cbViljQv5
	RCK4mHKsGs3MYlG96VPMKxaKYBUgY//+6sCzYZ83hmMjdANAdPCVEDL8Aut2C9Pg0MCYEyofwPxK/
	/OT2I5jd1HHUHGOh2t4jV624tJ2XlDRJmuHr0R9P41fWQRSCgPSsS5sDSw3Dj0PLeMAbNe+cxMdyn
	7+yQBOb6/A/RlYRGSQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV5c-00031t-1U; Wed, 03 Jun 2020 15:14:00 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgV5K-0002rp-Q0; Wed, 03 Jun 2020 15:13:44 +0000
Received: by mail-oi1-f194.google.com with SMTP id 25so1185177oiy.13;
 Wed, 03 Jun 2020 08:13:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cz2BiX6d4n6x62rcneWGjZMN7VkN9rwUibKP2R8rjL8=;
 b=jgylyYZWXHH7p8I4aGOxbD42l9DvJXfX7ARRo4vaAFgoicDX38Uq/y366QtAh4krSZ
 btTPX86EgXfPZuyn/hq9RjBzEObM/ZjVqqNiXj60U9NFaCmZF1+7wm9XFsffur5CV0ms
 xOSYgjTBbgYsCECCXfTNOpFQf80+xIvbaypsaPiVIWvusbikHpXF6QjJxOu1rlzxtVKp
 WzX1/RxRCkZxT2aKvw/P5+1AITnuKBPCpBePZ7DhAorB1LUzwXYGtlsfjloNnNOF0ceE
 8N8BMTptfWF75PlGEGH6xeA0Aa7tH6Yx5eBRMkX+6aTUR2v+rwZhPt+bHJcnZykEPSVr
 1tkA==
X-Gm-Message-State: AOAM530/2DIBr5IEzCEGHTLopYvX4/hdd5GKlCWmKYq6NtqEwpguSUY4
 9nUwiScGs3OFZSPFskh265lTl98j5GePbhFfPVQ=
X-Google-Smtp-Source: ABdhPJwl2C6njoLHvec0+7Z+pvFglKeo2x6xe974h+nkdR52l4Zy34+b5UkPp73bI+Pl0F3UJP8s0n7smqKuM+QPGx4=
X-Received: by 2002:aca:ad88:: with SMTP id w130mr122356oie.103.1591197220440; 
 Wed, 03 Jun 2020 08:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-5-lukasz.luba@arm.com>
 <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
 <7201e161-6952-6e28-4036-bd0f0353ec30@arm.com>
In-Reply-To: <7201e161-6952-6e28-4036-bd0f0353ec30@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Jun 2020 17:13:29 +0200
Message-ID: <CAJZ5v0jwoNSYOz3nGqNshd=5btsLxOp-di-Dot+cHqAQZEQVRw@mail.gmail.com>
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_081342_939776_29051206 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nishanth Menon <nm@ti.com>, Juri Lelli <juri.lelli@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Benjamin Segall <bsegall@google.com>, alyssa.rosenzweig@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Rob Herring <robh@kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Andy Gross <agross@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, steven.price@arm.com,
 Chanwoo Choi <cw00.choi@samsung.com>, Ingo Molnar <mingo@redhat.com>,
 dl-linux-imx <linux-imx@nxp.com>, "Zhang, Rui" <rui.zhang@intel.com>,
 Mel Gorman <mgorman@suse.de>, orjan.eide@arm.com,
 Daniel Vetter <daniel@ffwll.ch>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Quentin Perret <qperret@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 patrick.bellasi@matbug.net, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 1:31 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Hi Daniel,
>
> On 6/1/20 10:44 PM, Daniel Lezcano wrote:
> > On 27/05/2020 11:58, Lukasz Luba wrote:
> >> Add support for other devices than CPUs. The registration function
> >> does not require a valid cpumask pointer and is ready to handle new
> >> devices. Some of the internal structures has been reorganized in order to
> >> keep consistent view (like removing per_cpu pd pointers).
> >>
> >> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> >> ---
> >
> > [ ... ]
> >
> >>   }
> >>   EXPORT_SYMBOL_GPL(em_register_perf_domain);
> >> +
> >> +/**
> >> + * em_dev_unregister_perf_domain() - Unregister Energy Model (EM) for a device
> >> + * @dev             : Device for which the EM is registered
> >> + *
> >> + * Try to unregister the EM for the specified device (but not a CPU).
> >> + */
> >> +void em_dev_unregister_perf_domain(struct device *dev)
> >> +{
> >> +    if (IS_ERR_OR_NULL(dev) || !dev->em_pd)
> >> +            return;
> >> +
> >> +    if (_is_cpu_device(dev))
> >> +            return;
> >> +
> >> +    mutex_lock(&em_pd_mutex);
> >
> > Is the mutex really needed?
>
> I just wanted to align this unregister code with register. Since there
> is debugfs dir lookup and the device's EM existence checks I thought it
> wouldn't harm just to lock for a while and make sure the registration
> path is not used. These two paths shouldn't affect each other, but with
> modules loading/unloading I wanted to play safe.
>
> I can change it maybe to just dmb() and the end of the function if it's
> a big performance problem in this unloading path. What do you think?

I would rather leave the mutex locking as is.

However, the question to ask is what exactly may go wrong without that
locking in place?  Is there any specific race condition that you are
concerned about?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

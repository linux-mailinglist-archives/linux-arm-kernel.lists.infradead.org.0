Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4FEDA5FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/Y+EzZ/1laKZZ2lazEYd57Yb1nVc2pKLEgdt96yikk=; b=p2rGZMlU9g8jXK
	+oo73bg7cQ9K/EF/u6JEaG2cpY14yBJu5BTDgljuwMlVR9iep3vxmgJYUnLkEeHo0sSWh9milqjmr
	/uoJ7sbJCxxLmoajHjEIeyba1D5Y1kTutcUK1TZKdq6KgnQwXU5ijrweyUih59VNInijD13mVTIMS
	s72J9uXPvmAP9wL7Z5hmponIN1Sa2mEXzki2vzL/+MsOOVCQbwFJsdAkR6G6nwdlSZ88u0hDWAT3E
	jow8MKgTv7J4kIJfeIun+uiMXKmZIJ7vKuV/8gT9BtS1nhZXUAMS7/2j+oj14PL5SXqrX3gfPODfh
	gzmAvibEcRRW2iHF0eiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzuM-0007nt-KV; Thu, 17 Oct 2019 07:09:14 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzuB-0007nO-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:09:05 +0000
Received: by mail-yb1-xb42.google.com with SMTP id t4so385414ybk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 00:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DSbs0/QEEgmADy+uvB3J9WS3y0uYupAbV9G4/iwiKTo=;
 b=LKlUZivU99zESLkGMI4JigSZDHVXf8KBTGUnS+U1uFPat0D3OT1MwJOwYZUWLm0I8P
 41kYKpLKDPZLs3S3PtA7ic/FpWRtuK31GovU6OdTLakp/FFghd4f0QeNAcC335X1DwIF
 opMr6lRO/YvMQJZAm7++BU5wj6k7YBXmgCRuQoGLm7rwVYgE/NKs/JPX6NEC4gzgyEVY
 +0Q2B2sGjs0DCNxNnSsbKT/wQZVPtw1uPD4oHYQm+ozDCHyqodf1D/WrA9k+JoWIje6A
 fO33TBNz4pLp+qIkBEWsKZw+RMEhpmh8ryTi2Of5HYyaAeP60Tq7is+U/jobPYV8tnZV
 yBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DSbs0/QEEgmADy+uvB3J9WS3y0uYupAbV9G4/iwiKTo=;
 b=cDH+Y6hNbwgmJxvqhLh9C7HtIEOPbVovgBkMCHWs9BCULjTiVXrqWp2tRbgDes3L4i
 wU0MvXWWYvSDxBHTV9tJ4aDkjUzuT46WFM3sH1mf8LNj8yp8rAIkW88FFJDiL54JWsc5
 5d/vQbccslV8DylCKChqMUnYbUhHpz7xTrpRYJs3iLw9vFWeISs75o71+Zfs7Ls/0TX+
 hlw1HcEaqUPvxb8Z0xozAED71FCaZSjO0Sggd12N/dPnVPhza8ZwkYAjkyimv0geeucl
 o+dkW7/Ln2zpvKpWgF3l0WhOxo73cyP07De0efQfpydi5hTmSFB44+ce394snw7VvC4s
 TdSg==
X-Gm-Message-State: APjAAAVx8Pb+pa5X5SOdipJ0AaY9Jzh1QbxBA0JfUQ59/w3LDdXX0GLH
 0OHQYMJUHXoqdELPrZ5BfGJqi4yDnY2XEMzRvRQ=
X-Google-Smtp-Source: APXvYqwjLzRLqMjo02al4Z+VnHPSrn7zqUYHshfSiH2OnhimoSV01IJH6/02ZYbLhTr3tj67kX/r3rImnNB2kLiwcg8=
X-Received: by 2002:a5b:788:: with SMTP id b8mr1075528ybq.509.1571296142395;
 Thu, 17 Oct 2019 00:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
 <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
In-Reply-To: <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Thu, 17 Oct 2019 12:38:51 +0530
Message-ID: <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_000904_055845_E0FAC432 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On Wed, Oct 16, 2019 at 7:01 PM John Garry <john.garry@huawei.com> wrote:
>
>
> > +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
> > +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
> > +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
> > +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
> > +
> > +static struct attribute *ccpi2_pmu_events_attrs[] = {
> > +     &tx2_pmu_event_attr_req_pktsent.attr.attr,
> > +     &tx2_pmu_event_attr_snoop_pktsent.attr.attr,
> > +     &tx2_pmu_event_attr_data_pktsent.attr.attr,
> > +     &tx2_pmu_event_attr_gic_pktsent.attr.attr,
> > +     NULL,
> > +};
>
> Hi Ganapatrao,
>
> Have you considered adding these as uncore pmu-events in the perf tool?
>
At the moment no, since the number of events exposed/listed are very few.

> Some advantages I see:
> - perf list is not swamped with all these uncore events per PMU
> For the Hisi uncore events, we get 100s of events (>600 on the board I
> just tested, which is crazy)
> - can add more description in the JSON files
> - less stuff in the kernel
>
> > +
> >  static const struct attribute_group l3c_pmu_events_attr_group = {
> >       .name = "events",
> >       .attrs = l3c_pmu_events_attrs,
> > @@ -174,6 +240,11 @@ static const struct attribute_group dmc_pmu_events_attr_group = {
> >       .attrs = dmc_pmu_events_attrs,
> >  };
>
> [...]
>
> >               tx2_pmu->attr_groups = l3c_pmu_attr_groups;
> >               tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
> >                               "uncore_l3c_%d", tx2_pmu->node);
> > @@ -665,10 +846,13 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
> >               tx2_pmu->stop_event = uncore_stop_event_l3c;
> >               break;
> >       case PMU_TYPE_DMC:
> > -             tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
> > +             tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
> > +             tx2_pmu->counters_mask = 0x3;
> >               tx2_pmu->prorate_factor = TX2_PMU_DMC_CHANNELS;
> >               tx2_pmu->max_events = DMC_EVENT_MAX;
> > +             tx2_pmu->events_mask = 0x1f;
> >               tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
> > +             tx2_pmu->hrtimer_callback = tx2_hrtimer_callback;
> >               tx2_pmu->attr_groups = dmc_pmu_attr_groups;
> >               tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
> >                               "uncore_dmc_%d", tx2_pmu->node);
> > @@ -676,6 +860,21 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
> >               tx2_pmu->start_event = uncore_start_event_dmc;
> >               tx2_pmu->stop_event = uncore_stop_event_dmc;
> >               break;
> > +     case PMU_TYPE_CCPI2:
> > +             /* CCPI2 has 8 counters */
> > +             tx2_pmu->max_counters = TX2_PMU_CCPI2_MAX_COUNTERS;
> > +             tx2_pmu->counters_mask = 0x7;
> > +             tx2_pmu->prorate_factor = 1;
> > +             tx2_pmu->max_events = CCPI2_EVENT_MAX;
> > +             tx2_pmu->events_mask = 0x1ff;
> > +             tx2_pmu->attr_groups = ccpi2_pmu_attr_groups;
> > +             tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
> > +                             "uncore_ccpi2_%d", tx2_pmu->node);
>
> Do you need to check this for name == NULL?
>
> > +             tx2_pmu->init_cntr_base = init_cntr_base_ccpi2;
> > +             tx2_pmu->start_event = uncore_start_event_ccpi2;
> > +             tx2_pmu->stop_event = uncore_stop_event_ccpi2;
> > +             tx2_pmu->hrtimer_callback = NULL;
> > +             break;
> >       case PMU_TYPE_INVALID:
> >               devm_kfree(dev, tx2_pmu);
> >               return NULL;
> > @@ -744,7 +943,9 @@ static int tx2_uncore_pmu_offline_cpu(unsigned int cpu,
> >       if (cpu != tx2_pmu->cpu)
> >               return 0;
> >
> > -     hrtimer_cancel(&tx2_pmu->hrtimer);
> > +     if (tx2_pmu->hrtimer_callback)
> > +             hrtimer_cancel(&tx2_pmu->hrtimer);
> > +
> >       cpumask_copy(&cpu_online_mask_temp, cpu_online_mask);
> >       cpumask_clear_cpu(cpu, &cpu_online_mask_temp);
> >       new_cpu = cpumask_any_and(
> >
>
> Thanks,
> John
>
>

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

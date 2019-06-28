Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF97B596ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oGFPOMIcJm7iCNlEOpOk/x+0Og/L0iInQpD8A9nOF8=; b=HGsYvXK+9DcNIO
	sc6C+bcKXqni02vrPNxIll9XPfyrBnMUbGhDncjjleMhjMjbe7LNHflB4QgtWKiqvcjs5CXtL6hmq
	BidXXbpMu834eFBCOfrLDNFLddz9DMiQ+td/u+I1U7a2y1bpr+huCIFkREG++5kiDv3zyNv/JVbBI
	LX4Rnp+psQ93dYkg+mGRbsoNBLaDLDhPCXJCj+av2rKcl5SVIV6dAeequCzkH+6ur3VhDQUsOMTJL
	v4BRgdLecIS4as/wAJnKKi+CLDtaUnRoOwiLhQ9IhAE9xwycQM+XHD0dXjPSXH/e8lviTYyFZwfMy
	Iyj4u9HIUD/SXp63HSwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmsq-0007XN-N1; Fri, 28 Jun 2019 09:09:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmsG-0007WL-46
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:08:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59C08208CB;
 Fri, 28 Jun 2019 09:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561712931;
 bh=Qibb5cHDh93A09zMK1z8VLBtdEagC8Bss71IgS2q6T8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Anw5BxsSdhuy+YQas/z6oihpG1mRsxLO8wlKwR9qAcC9tfe+Z1QVCkcDn5PRSmWtQ
 GMhoNAEAKyrBjfWX8XysBJhxVHoM77JmPY3o3hNeCNIA3XsukgNhYqfi1/iA3Wq4J9
 pXWa/1DX3J0PyIjW6hAIWIfgYKlARmoeTjsnBkx4=
Date: Fri, 28 Jun 2019 10:08:46 +0100
From: Will Deacon <will@kernel.org>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Message-ID: <20190628090845.rv6urqwfcwz4xxce@willie-the-truck>
References: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
 <1560534144-13896-3-git-send-email-gkulkarni@marvell.com>
 <20190627095730.nf5kkataptfobzue@willie-the-truck>
 <CAKTKpr7PXFzQBHrJt+Ko=JaB+-5FdpNu+ByfkWmAm8OeiPem3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr7PXFzQBHrJt+Ko=JaB+-5FdpNu+ByfkWmAm8OeiPem3w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_020852_201959_EDB525AF 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, jglauber@marvell.com,
 "corbet@lwn.net" <corbet@lwn.net>, "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 rrichter@marvell.com, jnair@marvell.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi again, Ganapat,

Thanks for the quick reply.

On Fri, Jun 28, 2019 at 11:09:33AM +0530, Ganapatrao Kulkarni wrote:
> On Thu, Jun 27, 2019 at 3:27 PM Will Deacon <will@kernel.org> wrote:
> > On Fri, Jun 14, 2019 at 05:42:46PM +0000, Ganapatrao Kulkarni wrote:
> > > CCPI2 is a low-latency high-bandwidth serial interface for connecting
> > > ThunderX2 processors. This patch adds support to capture CCPI2 perf events.
> > >
> > > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > > ---
> > >  drivers/perf/thunderx2_pmu.c | 179 ++++++++++++++++++++++++++++++-----
> > >  1 file changed, 157 insertions(+), 22 deletions(-)
> > >
> > > diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> > > index 43d76c85da56..3791ac9b897d 100644
> > > --- a/drivers/perf/thunderx2_pmu.c
> > > +++ b/drivers/perf/thunderx2_pmu.c
> > > @@ -16,7 +16,9 @@
> > >   * they need to be sampled before overflow(i.e, at every 2 seconds).
> > >   */
> > >
> > > -#define TX2_PMU_MAX_COUNTERS         4
> > > +#define TX2_PMU_DMC_L3C_MAX_COUNTERS 4
> >
> > I find it odd that you rename this...
> 
> i am not sure, how to avoid this since dmc/l3c have 4 counters and ccpi2 has 8.
> i will try to make this better in v2.
> >
> > > +#define TX2_PMU_CCPI2_MAX_COUNTERS   8
> > > +
> > >  #define TX2_PMU_DMC_CHANNELS         8
> > >  #define TX2_PMU_L3_TILES             16
> > >
> > > @@ -28,11 +30,22 @@
> > >    */
> > >  #define DMC_EVENT_CFG(idx, val)              ((val) << (((idx) * 8) + 1))
> > >
> > > +#define GET_EVENTID_CCPI2(ev)                ((ev->hw.config) & 0x1ff)
> > > +/* bits[3:0] to select counters, starts from 8, bit[3] set always. */
> > > +#define GET_COUNTERID_CCPI2(ev)              ((ev->hw.idx) & 0x7)
> > > +#define CCPI2_COUNTER_OFFSET         8
> >
> >
> > ... but leave GET_EVENTID alone, even though it only applies to DMC/L3C
> > events. Saying that, if you have the event you can figure out its type,
> > so could you avoid the need for additional macros entirely and just use
> > the correct masks based on the corresponding PMU type? That might also
> > avoid some of the conditional control flow you're introducing elsewhere.
> 
> sure, i will add mask as argument to macro.
> >
> > >  #define L3C_COUNTER_CTL                      0xA8
> > >  #define L3C_COUNTER_DATA             0xAC
> > >  #define DMC_COUNTER_CTL                      0x234
> > >  #define DMC_COUNTER_DATA             0x240
> > >
> > > +#define CCPI2_PERF_CTL                       0x108
> > > +#define CCPI2_COUNTER_CTL            0x10C
> > > +#define CCPI2_COUNTER_SEL            0x12c
> > > +#define CCPI2_COUNTER_DATA_L         0x130
> > > +#define CCPI2_COUNTER_DATA_H         0x134
> > > +
> > >  /* L3C event IDs */
> > >  #define L3_EVENT_READ_REQ            0xD
> > >  #define L3_EVENT_WRITEBACK_REQ               0xE
> > > @@ -51,9 +64,16 @@
> > >  #define DMC_EVENT_READ_TXNS          0xF
> > >  #define DMC_EVENT_MAX                        0x10
> > >
> > > +#define CCPI2_EVENT_REQ_PKT_SENT     0x3D
> > > +#define CCPI2_EVENT_SNOOP_PKT_SENT   0x65
> > > +#define CCPI2_EVENT_DATA_PKT_SENT    0x105
> > > +#define CCPI2_EVENT_GIC_PKT_SENT     0x12D
> > > +#define CCPI2_EVENT_MAX                      0x200
> > > +
> > >  enum tx2_uncore_type {
> > >       PMU_TYPE_L3C,
> > >       PMU_TYPE_DMC,
> > > +     PMU_TYPE_CCPI2,
> > >       PMU_TYPE_INVALID,
> > >  };
> > >
> > > @@ -73,8 +93,8 @@ struct tx2_uncore_pmu {
> > >       u32 max_events;
> > >       u64 hrtimer_interval;
> > >       void __iomem *base;
> > > -     DECLARE_BITMAP(active_counters, TX2_PMU_MAX_COUNTERS);
> > > -     struct perf_event *events[TX2_PMU_MAX_COUNTERS];
> > > +     DECLARE_BITMAP(active_counters, TX2_PMU_CCPI2_MAX_COUNTERS);
> > > +     struct perf_event *events[TX2_PMU_DMC_L3C_MAX_COUNTERS];
> >
> > Hmm, that looks very odd. Why are they now different sizes?
> 
> events[ ] is used to hold reference to active events to use in timer
> callback, which is not applicable to ccpi2, hence 4.
> active_counters is set to max of both. i.e, 8. i will try to make it
> better readable in v2.

Thanks. I suspect renaming the field would help a lot, or perhaps reworking
your data structures so that you have a union of ccpi2 and dmc/l2c
structures where necessary.

> > >       struct device *dev;
> > >       struct hrtimer hrtimer;
> > >       const struct attribute_group **attr_groups;
> > > @@ -92,7 +112,21 @@ static inline struct tx2_uncore_pmu *pmu_to_tx2_pmu(struct pmu *pmu)
> > >       return container_of(pmu, struct tx2_uncore_pmu, pmu);
> > >  }
> > >
> > > -PMU_FORMAT_ATTR(event,       "config:0-4");
> > > +#define TX2_PMU_FORMAT_ATTR(_var, _name, _format)                    \
> > > +static ssize_t                                                               \
> > > +__tx2_pmu_##_var##_show(struct device *dev,                          \
> > > +                            struct device_attribute *attr,           \
> > > +                            char *page)                              \
> > > +{                                                                    \
> > > +     BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);                     \
> > > +     return sprintf(page, _format "\n");                             \
> > > +}                                                                    \
> > > +                                                                     \
> > > +static struct device_attribute format_attr_##_var =                  \
> > > +     __ATTR(_name, 0444, __tx2_pmu_##_var##_show, NULL)
> > > +
> > > +TX2_PMU_FORMAT_ATTR(event, event, "config:0-4");
> > > +TX2_PMU_FORMAT_ATTR(event_ccpi2, event, "config:0-9");
> >
> > This doesn't look right. Can perf deal with overlapping fields? It seems
> > wrong that we'd allow the user to specify both, for example.
> 
> I am not sure what is the issue here? both are different PMUs
> root@SBR-26> cat /sys/bus/event_source/devices/uncore_dmc_0/format/event
> config:0-4
> root@SBR-26> cat /sys/bus/event_source/devices/uncore_ccpi2_0/format/event
> config:0-9

Ah, sorry about that. I got _var and _name the wrong way around and thought
you were introducing a file called event_ccpi2! What you have looks fine.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

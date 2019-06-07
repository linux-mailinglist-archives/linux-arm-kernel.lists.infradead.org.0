Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB93946B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0VCD2/g0xIB8NNJqcOpHeOYCu4X2eSyvvwy3Bb/UHw=; b=L+I4vBice8OKIZ
	QBvtNboUk6iketbos16PWdo8rInNwlbIAgV6mA/g6k/s58tvLJhBYUNglPss4jEGEcM/opgT7dpB2
	vqvfUQgZJyi7cXHO5xY9gIyLuhgWdL89T0Yy+m+/zp+xlBF2U++yzjtG68CR6OnEmcMRPX2s6cv3O
	c0f4KdmWMWK6pMMDIGdWnKq317SducUeQztV6Vhkb2+RqqsFOWHYaUSwU/q+AmnGSCKO3yUSr4w0t
	WftOpfRSVF44ABFgmvIoZ44paQi9HIarGvDUL6zZMDdWguGVEGR646rZhgomzcfltO24oF72B+c61
	byxTHN0zi8Nc2tvB1Z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJhM-0007lz-BH; Fri, 07 Jun 2019 18:34:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJhH-0007lt-6j
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Jun 2019 18:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8FTavkhD/U3nEQ58jCZ6nyHW3BIZ3uQK2evEJdGyByI=; b=gT+vkwvwOp1nwsTQ9+8MSC+q/
 DlEJZRgsGjdpov4kvJpPCWkJ/ssGRVVJ/oUfmfYmd2KDh2Hayb5uBUUyEptCjPvSEQHyw3gULRPDJ
 RwPW9/NopoMfX2S9oo7fc1OtN416wc9N+WIlSqpHHSnHuB3puB9bpbPe10F11F5xkpTbggRtgOsiZ
 pTmr2eDCH7PxrE61C2YV2Ey9zvvv/6a8FCqY9soskrTlYPAhpCJY/AK/ECAuJiT054lTWqRKNERdR
 ItzBwS2ip7/4jL0UZ6/8jQiWCoi1EEw8CtrNgMYpPoom7AeoKudNG3kr7ocY2HcqqMmFQXE8wCqCn
 meMjLZXHg==;
Received: from 187-26-97-17.3g.claro.net.br ([187.26.97.17]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJhE-0004uE-Tg; Fri, 07 Jun 2019 18:34:37 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id D4DD441149; Fri,  7 Jun 2019 15:34:34 -0300 (-03)
Date: Fri, 7 Jun 2019 15:34:34 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 02/17] perf tools: Configure timestsamp generation in
 CPU-wide mode
Message-ID: <20190607183434.GO21245@kernel.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-3-mathieu.poirier@linaro.org>
 <c1507e8b-9ec8-a5c4-a398-20dcc47acaa8@arm.com>
 <CANLsYkx6o9xgxTh4s-o7tVxKKLu_SQc5CLtoHzHK=8WtNK4dbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkx6o9xgxTh4s-o7tVxKKLu_SQc5CLtoHzHK=8WtNK4dbQ@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 07, 2019 at 11:46:32AM -0600, Mathieu Poirier escreveu:
> On Fri, 7 Jun 2019 at 03:41, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> >
> >
> >
> > On 24/05/2019 18:34, Mathieu Poirier wrote:
> > > When operating in CPU-wide mode tracers need to generate timestamps in
> > > order to correlate the code being traced on one CPU with what is executed
> > > on other CPUs.
> > >
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > ---
> > >   tools/perf/arch/arm/util/cs-etm.c | 57 +++++++++++++++++++++++++++++++
> > >   1 file changed, 57 insertions(+)
> > >
> > > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > > index 3912f0bf04ed..be1e4f20affa 100644
> > > --- a/tools/perf/arch/arm/util/cs-etm.c
> > > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > > @@ -99,6 +99,54 @@ static int cs_etm_set_context_id(struct auxtrace_record *itr,
> > >       return err;
> > >   }
> > >
> > > +static int cs_etm_set_timestamp(struct auxtrace_record *itr,
> > > +                             struct perf_evsel *evsel, int cpu)
> > > +{
> > > +     struct cs_etm_recording *ptr;
> > > +     struct perf_pmu *cs_etm_pmu;
> > > +     char path[PATH_MAX];
> > > +     int err = -EINVAL;
> > > +     u32 val;
> > > +
> > > +     ptr = container_of(itr, struct cs_etm_recording, itr);
> > > +     cs_etm_pmu = ptr->cs_etm_pmu;
> > > +
> > > +     if (!cs_etm_is_etmv4(itr, cpu))
> > > +             goto out;
> > > +
> > > +     /* Get a handle on TRCIRD0 */
> > > +     snprintf(path, PATH_MAX, "cpu%d/%s",
> > > +              cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR0]);
> > > +     err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
> > > +
> > > +     /* There was a problem reading the file, bailing out */
> > > +     if (err != 1) {
> > > +             pr_err("%s: can't read file %s\n",
> > > +                    CORESIGHT_ETM_PMU_NAME, path);
> > > +             goto out;
> > > +     }
> > > +
> > > +     /*
> > > +      * TRCIDR0.TSSIZE, bit [28-24], indicates whether global timestamping
> > > +      * is supported:
> > > +      *  0b00000 Global timestamping is not implemented
> > > +      *  0b00110 Implementation supports a maximum timestamp of 48bits.
> > > +      *  0b01000 Implementation supports a maximum timestamp of 64bits.
> > > +      */
> > > +     val &= GENMASK(28, 24);
> > > +     if (!val) {
> > > +             err = -EINVAL;
> > > +             goto out;
> > > +     }
> > > +
> > > +     /* All good, let the kernel know */
> > > +     evsel->attr.config |= (1 << ETM_OPT_TS);
> > > +     err = 0;
> > > +
> > > +out:
> > > +     return err;
> > > +}
> > > +
> > >   static int cs_etm_set_option(struct auxtrace_record *itr,
> > >                            struct perf_evsel *evsel, u32 option)
> > >   {
> > > @@ -118,6 +166,11 @@ static int cs_etm_set_option(struct auxtrace_record *itr,
> > >                       if (err)
> > >                               goto out;
> > >                       break;
> > > +             case ETM_OPT_TS:
> > > +                     err = cs_etm_set_timestamp(itr, evsel, i);
> > > +                     if (err)
> > > +                             goto out;
> > > +                     break;
> > >               default:
> > >                       goto out;
> > >               }
> > > @@ -343,6 +396,10 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
> > >               err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
> > >               if (err)
> > >                       goto out;
> > > +
> > > +             err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS);
> > > +             if (err)
> > > +                     goto out;
> >
> > nit: Could we not do this in one shot, say :
> >
> >         cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS | ETM_OPT_CTXTID) ?
> >
> > rather than iterating over the per-CPU events twice ? The cs_etm_set_option()
> > could simply replace the switch() to :
> >
> >         if (option & ETM_OPT_1)
> >                 do_something_for_1()
> >         if (option & ETM_OPT_2)
> >                 do_something_for_2();
> >         if (option & ~(ETM_OPT_1 | ETM_OPT_2 |...))
> >                 /* do unsupported option */
> >
> 
> Yes, that is a good optimization.
> 
> Arnaldo, do you prefer a new set or another patch on top of this one?

On top of it, as this isn't a fix just an optimization, so no need to go
back and fix history to avoid bisection, etc.

Put it in your next set, no need to hurry.

- Arnaldo
 
> Thanks,
> Mathieu
> 
> >
> > Cheers
> > Suzuki

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

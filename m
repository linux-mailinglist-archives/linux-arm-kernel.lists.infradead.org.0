Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF723939F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 19:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NTKdNXySsLHVvy4aHXxSzwDKod+KukZ8l0LD417ZIo=; b=YWl246xTVpfJME
	pN13kM9ZLouP+bNvmejihMrWDAwlzHinWbOshVlknVmbeiwQXQVmbZ3IhKbKdw+N5YUqXYfrpfcJQ
	m73saHdWYDU0HorYeJLz6ETlpfHaLin/ZSKQ6rig8SAeSLzD3NxgsIYmB0dmtwnteeZ6ms+8doVB7
	eox1V/9+CmF15i9hZEPFXBdQVv/BLmPCS8aD9AGZ4TnNvFKdfw3ZKVEaiv8ycBK2yHiDeMRvgWDI/
	1+QV6IsjvAa2fqp999ykaOXUYaN5TZJJsMV+OR+qsm+/SgTDFg+4ewgATk0YBABs+zCFOl6zEnUmP
	ykEVjWL3tZ28Sc/Jkx9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZIx3-0008UG-5k; Fri, 07 Jun 2019 17:46:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZIwv-0008TZ-9L
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 17:46:46 +0000
Received: by mail-io1-xd44.google.com with SMTP id w25so2049916ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 10:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OGmBbbRWFo234O0ByoHzH5djRqtJUP/+gKNDjfi0ktg=;
 b=XSGfcj1IOPYQbpqtlN+cMfxYHMJGXzTsP7R2SENjFD5r+ZZSMN2L7x2ee0FXcNEldO
 Rt88V2mbBhXKwecz/KlFLfUKszcmNPPAL09D2sYuxcNhgCdSjn7jZAucRGy9vlFAwNjq
 oxWyov48Y4hATJrDHadH0u9gUvH5/XFySKG56cOI5Z11wp+mCKyVO02j1BPrREdYthAL
 iy6oBZs/H1ppEFG6pM1vY0ZronAHPbDe95sorgybDhwmG+et7L1OysCqtwlp4Ng21MgG
 VrNT+mM7esgI3iK4tyURZwYeE/MQV7y5XHK7PyBDa+U++Ye/+7YW96FY/ypVO37vSbV5
 vo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OGmBbbRWFo234O0ByoHzH5djRqtJUP/+gKNDjfi0ktg=;
 b=cPJl+ugZmFTdsIu8MpKM5pShcbk1GIgu5d3KYytwtuN74HKNKqKHWR31ICcUKndtH0
 Hssxk4VPa47vTZSTpTFMvB33h7+wL/FlNz4b/f1VgCrW7kpSYcjHsUNQXhuHm3BOfcCT
 3H2A4UQfS9+SRDOAvO5x+ksQyjArsvMnwFZbJSydKFOc1n6nS2Dlqsp/CgbfE5LvdPAa
 l0O3ZQnjNcgJsSY3cA7OQvqxsK+x7FdSIwNNujzjp53keXKk11rFcbIAYk1An5ODFyRF
 QTgLSeEnSnnjj4Vp0PWwWYrwfWru54Ihsdky/Yc2XIhAMLl1Sq19JLD/oYzf+VpGmlb2
 HNMQ==
X-Gm-Message-State: APjAAAVl6XcCyP39AoupkCEx5KMhFHicrCHCFl1geEG3JB906AxQ9TMb
 M9as7puPwk7gU9naNqo/ZVVNfpWHU57pgy+rJdjMTw==
X-Google-Smtp-Source: APXvYqzcojG7IhnLk8f2hB3YsMsOg6cYvCD99jIIpOf/uzmSkn3NO8EuVgnxxOq/xMVendXgc7HudOQRbCab/mMtcP4=
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr19471049ios.57.1559929603835; 
 Fri, 07 Jun 2019 10:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-3-mathieu.poirier@linaro.org>
 <c1507e8b-9ec8-a5c4-a398-20dcc47acaa8@arm.com>
In-Reply-To: <c1507e8b-9ec8-a5c4-a398-20dcc47acaa8@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 7 Jun 2019 11:46:32 -0600
Message-ID: <CANLsYkx6o9xgxTh4s-o7tVxKKLu_SQc5CLtoHzHK=8WtNK4dbQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/17] perf tools: Configure timestsamp generation in
 CPU-wide mode
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_104645_332953_E2C368C2 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 03:41, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
>
>
> On 24/05/2019 18:34, Mathieu Poirier wrote:
> > When operating in CPU-wide mode tracers need to generate timestamps in
> > order to correlate the code being traced on one CPU with what is executed
> > on other CPUs.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   tools/perf/arch/arm/util/cs-etm.c | 57 +++++++++++++++++++++++++++++++
> >   1 file changed, 57 insertions(+)
> >
> > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > index 3912f0bf04ed..be1e4f20affa 100644
> > --- a/tools/perf/arch/arm/util/cs-etm.c
> > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > @@ -99,6 +99,54 @@ static int cs_etm_set_context_id(struct auxtrace_record *itr,
> >       return err;
> >   }
> >
> > +static int cs_etm_set_timestamp(struct auxtrace_record *itr,
> > +                             struct perf_evsel *evsel, int cpu)
> > +{
> > +     struct cs_etm_recording *ptr;
> > +     struct perf_pmu *cs_etm_pmu;
> > +     char path[PATH_MAX];
> > +     int err = -EINVAL;
> > +     u32 val;
> > +
> > +     ptr = container_of(itr, struct cs_etm_recording, itr);
> > +     cs_etm_pmu = ptr->cs_etm_pmu;
> > +
> > +     if (!cs_etm_is_etmv4(itr, cpu))
> > +             goto out;
> > +
> > +     /* Get a handle on TRCIRD0 */
> > +     snprintf(path, PATH_MAX, "cpu%d/%s",
> > +              cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR0]);
> > +     err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
> > +
> > +     /* There was a problem reading the file, bailing out */
> > +     if (err != 1) {
> > +             pr_err("%s: can't read file %s\n",
> > +                    CORESIGHT_ETM_PMU_NAME, path);
> > +             goto out;
> > +     }
> > +
> > +     /*
> > +      * TRCIDR0.TSSIZE, bit [28-24], indicates whether global timestamping
> > +      * is supported:
> > +      *  0b00000 Global timestamping is not implemented
> > +      *  0b00110 Implementation supports a maximum timestamp of 48bits.
> > +      *  0b01000 Implementation supports a maximum timestamp of 64bits.
> > +      */
> > +     val &= GENMASK(28, 24);
> > +     if (!val) {
> > +             err = -EINVAL;
> > +             goto out;
> > +     }
> > +
> > +     /* All good, let the kernel know */
> > +     evsel->attr.config |= (1 << ETM_OPT_TS);
> > +     err = 0;
> > +
> > +out:
> > +     return err;
> > +}
> > +
> >   static int cs_etm_set_option(struct auxtrace_record *itr,
> >                            struct perf_evsel *evsel, u32 option)
> >   {
> > @@ -118,6 +166,11 @@ static int cs_etm_set_option(struct auxtrace_record *itr,
> >                       if (err)
> >                               goto out;
> >                       break;
> > +             case ETM_OPT_TS:
> > +                     err = cs_etm_set_timestamp(itr, evsel, i);
> > +                     if (err)
> > +                             goto out;
> > +                     break;
> >               default:
> >                       goto out;
> >               }
> > @@ -343,6 +396,10 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
> >               err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
> >               if (err)
> >                       goto out;
> > +
> > +             err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS);
> > +             if (err)
> > +                     goto out;
>
> nit: Could we not do this in one shot, say :
>
>         cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS | ETM_OPT_CTXTID) ?
>
> rather than iterating over the per-CPU events twice ? The cs_etm_set_option()
> could simply replace the switch() to :
>
>         if (option & ETM_OPT_1)
>                 do_something_for_1()
>         if (option & ETM_OPT_2)
>                 do_something_for_2();
>         if (option & ~(ETM_OPT_1 | ETM_OPT_2 |...))
>                 /* do unsupported option */
>

Yes, that is a good optimization.

Arnaldo, do you prefer a new set or another patch on top of this one?

Thanks,
Mathieu

>
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

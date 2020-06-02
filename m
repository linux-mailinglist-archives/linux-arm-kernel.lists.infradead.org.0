Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39441EC091
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMzC6I3v0ByZSOOtAKHnuOUgxcfLtnt7PA2k+/Z+9Zw=; b=lfRmB9OOkZU9qm
	1xoKWor4n5yRfL3vTq8KVnTHpw/Y+NyCa3xY2czZEflxlKf/OBCluQde8FF+UJesgxb1KXc/M7Bpf
	SWiI07N7IC0VldeF8BcZul5whrEdp6xLrLDGM9bE8Q5GGYvuhJelaKfwqCmcjiKZouLGxI1NLx5Ms
	XwPie+nFEVq/fH7cQDMJveXv/D2ZttUQ2rf7utxu8goxuPzAr3DvjaPCuF7vQf3DoQRXddCotJHOf
	dr2qMIVYK/JSXXINrY2SDeHIUfYgKn8/LmyqaiurQvflrwadcADQ0L4nj0ZnjYe0LWxsYp+rnJc/B
	IOAWZ2p6WRc2mZTXe9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAG0-0003Uw-OO; Tue, 02 Jun 2020 16:59:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAFu-0003UW-OK
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:59:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id b5so2469725pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 09:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=16jZGz5HeCRUjCYyloUczj2FL6h1K+Rrxj3gfU/xoBI=;
 b=R+8slVM2MgJ29SjUSHUmT2hHO1Nf/LpJm9Da8zFO29wbg3QleF8kmZSaOLJ//8oKGg
 S5yfIxYr7DDoXr3c4VsOXCYq02orh7dubm+AlRNiqpbV3es0JX1gnHChRxAiUR+SHkjb
 mg5ePACUJSw7Kkv2vrCBgYPBdShWF9SXzCG9Pk5ordnjq4bbQ7vbPDX5oJdK8nWw+XL2
 oN1qjsMnST6q9J/vZO0/BHO0okw5mCNqW/7tXWCBKd8v7SYDH4BoyWCk5z71FAkWK8ff
 eVqi1JYdjSkCfrIb3pGEJnnwGnA2Fdnyk6zslESIJ9n+3LPlSscrSvqIVwyHOlYEQl/0
 M/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=16jZGz5HeCRUjCYyloUczj2FL6h1K+Rrxj3gfU/xoBI=;
 b=RYs53rZu1KBu79GllopVxiUlWfIsj0GekL0CYRJcolGQQAiXeApeqqqRkxdGw7zFX/
 87LfsjKN+68oJWOUcmTJ8QKp3+PqbnRxrh0ejKpwhqI/XPuG23TZZVQWj5/UI1znj/ME
 +d5Om+r6yuGRwQLCQXt4wkDs9bRrk3OA34z4W1r9PQYgroWqoBCPNYVIQO3zOliHhiDK
 RtLiNsPttkqQ8hHld81ts5Tf5pFyq2Bh4Uc/mfWhLb9DtoaOqvULAIG31gOxMBB+9cNG
 ZXrFnFuM8a6xq0lLY81G759x+lAU9eO1/YkbtLSVIAKy6WcwUu4h9pXjEn02S5rB9ul3
 EwHw==
X-Gm-Message-State: AOAM5330e+arOnQVCOtLcIkxgJivygMEr8gtF1AiUpgafh0QIkTLw/ju
 qXNicBmWKgOKAAHhokaghxYlXQ==
X-Google-Smtp-Source: ABdhPJwHCjZYlgTtsLeiErje7e8V86JZj0IW6BUvDKDg0v4wkjLXs4bZ0N9cwfPh1ROAObLHX+8ZhQ==
X-Received: by 2002:a62:5ac1:: with SMTP id o184mr26058890pfb.97.1591117154046; 
 Tue, 02 Jun 2020 09:59:14 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id hb3sm2909457pjb.57.2020.06.02.09.59.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 09:59:13 -0700 (PDT)
Date: Tue, 2 Jun 2020 10:59:11 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection
 to etm perf
Message-ID: <20200602165911.GA23450@xps15>
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-5-mike.leach@linaro.org>
 <51fcc1b5-a4ab-04d1-e395-95df9f4745f7@arm.com>
 <CAJ9a7ViUVAttf3-Mb4zVeJ6+Ty=4yxg3MZeGPcGDc0UMVY_Xtg@mail.gmail.com>
 <73ce6741-0361-7443-6714-56e8d64d49e1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73ce6741-0361-7443-6714-56e8d64d49e1@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_095914_822617_7ABB9CF1 
X-CRM114-Status: GOOD (  33.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, acme@kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 02:29:30PM +0100, Suzuki K Poulose wrote:
> On 06/02/2020 02:12 PM, Mike Leach wrote:
> > Hi Suzuki,
> > 
> > On Tue, 2 Jun 2020 at 12:40, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> > > 
> > > On 05/26/2020 11:46 AM, Mike Leach wrote:
> > > > Add default sink selection to the perf trace handling in the etm driver.
> > > > Uses the select default sink infrastructure to select a sink for the perf
> > > > session, if no other sink is specified.
> > > > 
> > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > 
> > > This patch looks fine to me as such. But please see below for some
> > > discussion on the future support for other configurations.
> > > 
> > > 
> > > > ---
> > > >    .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
> > > >    1 file changed, 14 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > index 84f1dcb69827..1a3169e69bb1 100644
> > > > --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > @@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> > > >                sink = coresight_get_enabled_sink(true);
> > > >        }
> > > > 
> > > > -     if (!sink)
> > > > -             goto err;
> > > > -
> > > >        mask = &event_data->mask;
> > > > 
> > > >        /*
> > > > @@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> > > >                        continue;
> > > >                }
> > > > 
> > > > +             /*
> > > > +              * No sink provided - look for a default sink for one of the
> > > > +              * devices. At present we only support topology where all CPUs
> > > > +              * use the same sink [N:1], so only need to find one sink. The
> > > > +              * coresight_build_path later will remove any CPU that does not
> > > > +              * attach to the sink, or if we have not found a sink.
> > > > +              */
> > > > +             if (!sink)
> > > > +                     sink = coresight_find_default_sink(csdev);
> > > > +
> > > 
> > > While we are here, should we remove the "find enabled sink" if the csink
> > > is not specified via config. ? That step is problematic, as the user may
> > > not remember which sinks were enabled. Also, we can't hit that with
> > > perf tool as it prevents any invocation without sink (until this change).

Old version of perf tools will take sinks selected on the perf command line and
use the sysfs to communicate that to the kernel.  Granted there may not be that
many (if any), removing coresight_get_enabled_sink() will break those
implementation. 

The real question is if keeping the functionatlity around so troublesome that it
overweighs the drawbacks of removing it. 

> > > 
> > > So may be this is a good time to get rid of that ?
> > > 
> > 
> > You are correct - the  'sink = coresight_get_enabled_sink(true);' was
> > dead code until this patch.
> > However - if someone has set up their system using sysfs to enable
> > sinks, then should we not respect that rather than assume they made a
> > mistake?
> 
> If someone really wants to use a specific sink, then they could always
> specify it via the config attribute and it will be honoured. We need not
> carry along this non-intuitive hinting.
> 
> > 
> > Thinking about N:M topologies mentioned below - one method of handling
> > this is to enable relevant sinks and then let perf trace on any cores
> > that might use them.
> > 
> > > Also, we may need to do special handling for cases where there multiple
> > > sinks (ETRS) and the cpus in the event mask has different preferred
> > > sink. We can defer it for now as we don't claim to support such
> > > configurations yet.
> > 
> > Yes - the newer topologies will need some changes - beyond what we are
> > handling here.
> > However - especially for 1:1 -  the best way may be to always use the
> > default sink - as specifying multiple sinks on the perf command line
> > may be problematical.
> > 
> > > When we do, we could either :
> > > 
> > > 1) Make sure the event is bound to a single CPU, in which case
> > > the sink remains the same for the event.
> > > 
> > > OR
> > > 
> > > 2) All the different "preferred" sinks (ETRs selected by the ETM) have
> > > the same capabilitiy. i.e, we can move around the "sink" specific
> > > buffers and use them where we end up using.
> > 
> > If here by "capabilities" we are talking about buffer vs system memory
> > type sinks then I agree. We may need in future to limit the search
> 
> Not necessarily. e.g, if we ever get two different types of system
> memory sinks, (e.g, a global ETR and a dedicate "new" sink for a
> cluster), we can't keep switching between the two sinks depending on how
> they use the buffers. (i.e, direct buffer vs double copy)
> 
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

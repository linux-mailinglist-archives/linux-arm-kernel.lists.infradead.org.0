Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881C3153F56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kugZo58WUjAutmN6IZ9HXqGCvGckK27tEpYZxTKeYw=; b=B6rObSE0xeZ+rH
	X4k+Y1Q6iF+Qq6qwdIm9YB24JHoxim2UY6ChYJRAtc3E9l8KBCdZomYcbxk4DaWWYqgHnx8J6z18f
	/zBXfXsGNswUwAKlZYfsqsmK+oPvksA7tV+lVoQqQZbEnl2LAEL7+JWR39b84WjHYJpU1rq0Dw5QI
	JXGKeZl1WqaPg1pGawagzn4b7T1WISXD7Wu+3hiAk/UXoB0ASMewE3bjdjtA9OYmhrmWZFzeBP6/8
	0GNU9+EpjYq83pY9dOWx4PgCq3ylvSB93bZQIf4MTIx+ICUUBS4P3vm8HBYYQ2zWXMqiCbF8xT3JI
	4uR9vaJN2seQSgpbixew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izbpF-0001w9-T3; Thu, 06 Feb 2020 07:43:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izbp9-0001vJ-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:43:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id n7so2656893pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 23:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IU1zrteb9q+Qt87k2K0GIgQjA5wXyPQA9EPoT65IZsE=;
 b=F7+oO+0rmHQnZXx5qo4M6gUPD90ZCwVtW6dOyJM5XSuOIog9Bu3zsjHkBe0w6DXcCO
 82uqeIqlTLCbllWjGTACIBCr/U9DFnUng1yRc4i+lSB2FRn6uO+ewSeVDETOlwqVif4Z
 2nX8DlroOtLjXfrASsa51BBcKatHOiKx1HOxYECYm24QNGxx/5cm6cP+ntnxiu3klTqR
 U3uzVuBOqHl5b3SJpDzibDEhoURymeOgJ/SDb3taVMEY1Iq1oNMBGFvpeJYgxZK03v/P
 XuDVcA0kx4dxSGqrkIYVG56Tqk6GLSXVP2+Wt98SMKFSkzvhboxolaISLYLH5SjTbext
 WG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IU1zrteb9q+Qt87k2K0GIgQjA5wXyPQA9EPoT65IZsE=;
 b=O0ZTfRTybe9H/cmDNS/95NZOXkT6zPBMBbNzx9RjmhYoTxpyt+CYRf+PQHW5O+VmiW
 64ePcvPwc+ZSvpKhO+U4KXV3cISibNOVV+segTVmMpM+3JoJCRYTU0b5g4YuL+ggvGvN
 UnR6SI59jt7qpzlh69VAkloQ3sP5bOKlr7N966BC+q/TnyywkgAK76+yZI/w4cgL1YQW
 gH/bjG0BFztH8nyNm9ScssERyHLG93Yt0+PKKzTN+/VcNkYldNWiylUePbz/KPkEySPx
 Kq5UHvIzYpFbmzqb5C1iSEziRqslUgKdCSdvpmAzRL0I9/lSZVa+sNJ11kDrELz3ML76
 bjyA==
X-Gm-Message-State: APjAAAVYSx4pbTlTKoqm566KIN4nNRr/kxPs6wnb8+EEfSaELE2UYANJ
 WIyBHl0snEHfoVs0BxPJlmNpvg==
X-Google-Smtp-Source: APXvYqyggvyitnBhwNK0z3DaPYbBaIbTbJQVIpI0bKqkZe37c5XbYnm7i2P+U4r0TGh5mc/iAuXcYQ==
X-Received: by 2002:a63:d0c:: with SMTP id c12mr2222616pgl.173.1580975022391; 
 Wed, 05 Feb 2020 23:43:42 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:32da])
 by smtp.gmail.com with ESMTPSA id z64sm2090028pfz.23.2020.02.05.23.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Feb 2020 23:43:41 -0800 (PST)
Date: Thu, 6 Feb 2020 15:43:28 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 1/5] perf cs-etm: Swap packets for instruction samples
Message-ID: <20200206074328.GA3807@leoy-ThinkPad-X240s>
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-2-leo.yan@linaro.org>
 <CAJ9a7VgFL24gWGGJ-Wn2YycsW1DzKgu29_HaHtE=OJ0Fz3oNcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7VgFL24gWGGJ-Wn2YycsW1DzKgu29_HaHtE=OJ0Fz3oNcA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_234343_658528_A8676F6F 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Wed, Feb 05, 2020 at 03:59:40PM +0000, Mike Leach wrote:
> Hi Leo
> 
> On Mon, 3 Feb 2020 at 01:52, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > If use option '--itrace=iNNN' with Arm CoreSight trace data, perf tool
> > fails inject instruction samples; the root cause is the packets are
> > only switched for branch samples and last branches but not for
> > instruction samples, so the new coming packets cannot be properly
> > handled for only synthesizing instruction samples.
> >
> > To fix this issue, this patch switches packets for instruction samples.
> >
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 5471045ebf5c..3dd5ba34a2c2 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1404,7 +1404,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >                 }
> >         }
> >
> > -       if (etm->sample_branches || etm->synth_opts.last_branch) {
> > +       if (etm->sample_branches || etm->synth_opts.last_branch ||
> > +           etm->sample_instructions) {
> >                 /*
> >                  * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
> >                  * the next incoming packet.
> > @@ -1476,7 +1477,8 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
> >         }
> >
> >  swap_packet:
> > -       if (etm->sample_branches || etm->synth_opts.last_branch) {
> > +       if (etm->sample_branches || etm->synth_opts.last_branch ||
> > +           etm->sample_instructions) {
> >                 /*
> >                  * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
> >                  * the next incoming packet.
> > --
> > 2.17.1
> >
> if is worth putting the 'if <options> { swap packet }' into a separate
> function as it appears twice in identical form? Might help if more
> options for swap packet are needed later.

Makes sense.  Will factor out a new function for this.

Thanks for reviewing!
Leo

> Either way
> 
> Reviewed by: Mike Leach <mike.leach@linaro.org>
> 
> 
> -- 
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

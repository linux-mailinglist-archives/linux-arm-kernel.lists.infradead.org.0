Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB15DFB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1i0bkF3dzNiRjZkxdETYJ/URE24fzzGQCVt9nRF270=; b=swrNhvLldac8y4
	WOOxxU3YFE3M71lsChkokYk6XYumsIU1mGtMjy+ynmDyabfd55JgZrdbOEWaNuq9tXSmdKs3GDr+T
	bMvQy2NFImcng8ueG97xcVSI1sCltarbwNujXiit26YTKHzBBrPcOfL8aBIo/5yFZvlAeDXpsn7J5
	wZ7lwWoiCa35X6JoZ/pCsbwD5btjZzWN07DjJg6UGH1YDKKtNyReY4BdC7qDRx+W03SlkgBLtC0+M
	AF/kk9PWpTk5wDhCygiV9tD/FlIkFRUAaR5NgCzBPgdsaG9pcQoCxnqg6/D9Iu4Aou7jujCCe8g6a
	NgjsJAEQRyhjbsxNCuOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaYF-0007p8-6b; Wed, 03 Jul 2019 08:23:39 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaXo-0007o0-Cb
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:23:13 +0000
Received: by mail-oi1-x244.google.com with SMTP id v186so1364638oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=59xd1lKzTm7Rgf6PBY/uVBKcWbMFs5zQzD0EjdvmWzk=;
 b=bindf1ZA6lXjnWIAj6gU/mMOzjIeC34kEuzIN9HG9ndu6frBFLAne/lS6eFkZbM7RN
 oodY/TdXzdO8LD0FjWlbcGnsS2KfNutRD2pOwpwjmBkX25Sx9UkBvlL4UWbr/NNxZUY/
 WGyNMAxaC4J1pyq+VWiEjgUPY420FoGnr9ORkAFCOumbUy2NMOubNWuz7J+/LnfZSdaX
 Af4ektvIX7IQuCI6o0Vz0WHCqPKz1g7wg1DWTekBIELTjU0laIk0qBU1iPI+pIn2PHXR
 EDtkj7J4YO2rBCiGy1R0hdOwKGfKDZ16pyL+9I3viqjM7T3YPVukWvH+W0cX58Gu6H+B
 c6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=59xd1lKzTm7Rgf6PBY/uVBKcWbMFs5zQzD0EjdvmWzk=;
 b=T5vZwBeASTzlMYX01cY9Q4RG0hIbdD2GpxF6E9NWnw2TwsZqlq/r0wQA10/Qea441s
 Xbcr8CG/kBqxqJljKsxC28t5AuAUFZICNYnqGGltXocdyAj1MRPSeK6r4yLr+GwLGHQW
 YXcF0VG25E90g9KEbt96+2paFsHnkvpAd2nLO6x13mUXeaFNiJ3qV4P2MAxTNf7zfwus
 9hIV7m97H3b3ZOFUn8/delVhTK+QxMObR6GBvL01+AMNtxQIKvhBTvjYhFkffHsgCWvG
 JHtS5Db/N2Q2UJQUNRfUT3HF55V4h9YsCjatGJDBgZ3ag+AjRGHDzMIaE2wqYSm/OeKO
 DvXQ==
X-Gm-Message-State: APjAAAUygapEoUoV98DQ3Yg0ejm6/tMHzwd8SSEGdXRLCLjmAuf72LHH
 3kHNcKjNWwrlmDwW/DtbNAifWA==
X-Google-Smtp-Source: APXvYqzdBVgLY85ufOO7r5DeopTWB5eKB5gQm+LyVUdJ4MJWWXGYkKamvI78vcqP759Q+MhWNNEzWA==
X-Received: by 2002:aca:d7d5:: with SMTP id o204mr6353477oig.16.1562142188072; 
 Wed, 03 Jul 2019 01:23:08 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id h60sm636627otb.29.2019.07.03.01.22.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 01:23:07 -0700 (PDT)
Date: Wed, 3 Jul 2019 16:22:55 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 11/11] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190703082255.GE6852@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-12-leo.yan@linaro.org>
 <20190702170306.GA17808@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702170306.GA17808@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_012312_437696_D1433E3B 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Tue, Jul 02, 2019 at 11:03:06AM -0600, Mathieu Poirier wrote:
> Hi Leo,
> 
> On Tue, Jul 02, 2019 at 06:34:20PM +0800, Leo Yan wrote:
> > Based on the following report from Smatch, fix the potential
> > NULL pointer dereference check.
> > 
> >   tools/perf/util/cs-etm.c:2545
> >   cs_etm__process_auxtrace_info() error: we previously assumed
> >   'session->itrace_synth_opts' could be null (see line 2541)
> > 
> > tools/perf/util/cs-etm.c
> > 2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > 2542                 etm->synth_opts = *session->itrace_synth_opts;
> > 2543         } else {
> > 2544                 itrace_synth_opts__set_default(&etm->synth_opts,
> > 2545                                 session->itrace_synth_opts->default_no_sample);
> >                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > 2546                 etm->synth_opts.callchain = false;
> > 2547         }
> > 
> > To dismiss the potential NULL pointer dereference, this patch validates
> > the pointer 'session->itrace_synth_opts' before access its elements.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 0c7776b51045..b79df56eb9df 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -2540,7 +2540,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> >  
> >  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> >  		etm->synth_opts = *session->itrace_synth_opts;
> > -	} else {
> > +	} else if (session->itrace_synth_opts) {
> 
> This will work but we end up checking session->itrace_synth_opts twice.  I
> suggest to check it once and then process with the if/else if valid:
> 
>         if (session->itrace_synth_opts) {
>                 if (session->itrace_synth_opts->set) {
>                         ...
>                 } else {
>                         ...
>                 }
>         }

Thanks for reviewing.

As discussed with Adrian in another email for intel-pt, it's safe to
remove NULL checking for session->itrace_synth_opts after I reviewed the
code for report/script/inject.  So I'm planning to apply the same change
for cs-etm code.

If you have concern for this, please let me know.

Thanks,
Leo Yan

> >  		itrace_synth_opts__set_default(&etm->synth_opts,
> >  				session->itrace_synth_opts->default_no_sample);
> >  		etm->synth_opts.callchain = false;
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

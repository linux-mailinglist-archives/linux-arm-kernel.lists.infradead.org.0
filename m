Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA3D5D4FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 19:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hXFWCUzPpUhgAb9yyJ6mdmxPU+Wf1AvN0T6tLphUL0=; b=Q5aaewdLBfQbG2
	PqTTLT06oUSEWaj26NsuD4qld24N9TzJ97Dml5I+68NqK9qSvkjN42cNYkWzM/herDn60mx2xlDIu
	qjrw4a372bN615weQmrIjuZBUDTRiTDao/+USxfQ5lqXExypCWCThFMqRdTLAQLOJI91/+hS7jM18
	qUpcz5BBPYPFzOnOU7hgUByTowrXFF3UlfH/xayw6e/IUsvT1m/hwi/iNjmEu6YfjQe2cWFsa14lM
	YzpmRLOvEaw74hVJZGg6pG67LRNQffEdi+RS2LxIKXcXMMBowDYx09lg4ZQ4NWY0p6eIZ6eLrGJus
	4iLQut344qwB64qf6wSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiMBf-0005Ov-CQ; Tue, 02 Jul 2019 17:03:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiMBS-0005Ns-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 17:03:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id c85so8568733pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 10:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lTLYMlpcH/Ck5QvMOobX90tbMZ5kb5L0afZG0WmLSGo=;
 b=p+i1lO63uPwwxxUgqmTVzm1WiK1WXGsGwDGLuVemP8EcKFdGTIHWouZlQbgXqIZgah
 mA4qnp4JbyWA9v0vF6RyGNR0JhNeablrCY4YyyZYcrCuxijfNHYtZbZZRyfTipKQiAp0
 r/UJrcRIG5l+DCTUgmIbrKlmj5xjOyWnZ1k8ummciV1phZm7XVgGjlnhUBU+H1vvt0mR
 U0noy43NQH2D81U2uZ11wP46/JMzGrkFMrdtkgPsRX3Wu0OgzM8npvhLwrFhJ9G7Ts2H
 bSaQaQX+WEBiOA636GPQy/r+CjxtNjNd2Cpkpcr+mNAMVuWXiehHrFWgNF2+DhhJwi6Q
 7xAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lTLYMlpcH/Ck5QvMOobX90tbMZ5kb5L0afZG0WmLSGo=;
 b=qrP1BYsYpWqqCxncajXJMhrroRsD8arnTgM4kwa4Ml+TWzwFywvn6g+0xIIufYn2oo
 3wneM/tAseS5a8x3GvwZItFUZhFMz+/b2HSZfZXl/9Rc21JOr5pWsNxl1Sz4UUS0QLf/
 MdmCdxtGLqgVgTifG4MMnBcsNQUOjI6ToWA3TAZDCgWB9NHBHRovIzLm7AhW0XdTK+M3
 aliSR/NpN9aIghgdjovkmC4FmnYTEu5kybdZnrd3ZswzmDrc27kdrFT5vhS/E7RQw0yQ
 oW9MruV1BMrtVXRWfkjuiBNWBMdZAXTb1R60XJxRH5qLB/icJIdsRX6aDkdbmaTwOs3x
 KX9Q==
X-Gm-Message-State: APjAAAX6kbVmvwwUVP8boX+zxqAQ7A+CSQ+oX2hYil1gbthLCp98ZxMp
 PWO1PotNDYXzKsg7U05K0QbzqA==
X-Google-Smtp-Source: APXvYqwEhCFzfzATrdcqpX0KuUrx3AMmN6ORxbbB4sdtC5j3wQvdl7pLHPd3KWy/rduZZAoLOa/CSA==
X-Received: by 2002:a63:c14c:: with SMTP id p12mr31877632pgi.138.1562086989931; 
 Tue, 02 Jul 2019 10:03:09 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k16sm14111163pfa.87.2019.07.02.10.03.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jul 2019 10:03:09 -0700 (PDT)
Date: Tue, 2 Jul 2019 11:03:06 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 11/11] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190702170306.GA17808@xps15>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-12-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-12-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_100310_948200_5E5205D6 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Hi Leo,

On Tue, Jul 02, 2019 at 06:34:20PM +0800, Leo Yan wrote:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
>   tools/perf/util/cs-etm.c:2545
>   cs_etm__process_auxtrace_info() error: we previously assumed
>   'session->itrace_synth_opts' could be null (see line 2541)
> 
> tools/perf/util/cs-etm.c
> 2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> 2542                 etm->synth_opts = *session->itrace_synth_opts;
> 2543         } else {
> 2544                 itrace_synth_opts__set_default(&etm->synth_opts,
> 2545                                 session->itrace_synth_opts->default_no_sample);
>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> 2546                 etm->synth_opts.callchain = false;
> 2547         }
> 
> To dismiss the potential NULL pointer dereference, this patch validates
> the pointer 'session->itrace_synth_opts' before access its elements.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 0c7776b51045..b79df56eb9df 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -2540,7 +2540,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>  
>  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
>  		etm->synth_opts = *session->itrace_synth_opts;
> -	} else {
> +	} else if (session->itrace_synth_opts) {

This will work but we end up checking session->itrace_synth_opts twice.  I
suggest to check it once and then process with the if/else if valid:

        if (session->itrace_synth_opts) {
                if (session->itrace_synth_opts->set) {
                        ...
                } else {
                        ...
                }
        }

Thanks,
Mathieu

>  		itrace_synth_opts__set_default(&etm->synth_opts,
>  				session->itrace_synth_opts->default_no_sample);
>  		etm->synth_opts.callchain = false;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

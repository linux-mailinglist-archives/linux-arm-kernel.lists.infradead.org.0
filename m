Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A82CDF69B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEE7f3FXn3MgL0R2eNNHSyXioWFDAMJ1tIngimYU6SQ=; b=aFCINrbO2KTz/7
	XoFEueft/sml2pclVYo05vHb/B4ECNL+5cqvSJsAai+ymLhTE6O47ZL5xUB+GJBbBfI2hYVRkiHPa
	8yNUg1uvvSNFtN4HjWNF6GEPOVqlmjQ6TctONExg3ufwLtSXHSd2baujhYgAxkTmHze4CbUKLPMG2
	YfRRTv/D2gsqxvaTZxhopH+Utp3xLGuB/k3F43UTkTOZk73nYWwBgH9j4L6bd34yXt/BR8snlD76n
	2EEQ0Ca5dCOPLibdJRI+KXnJ7U77qw8Q5+kb5zH63L8k1zWIr+LOb57sLu+No60fjTwhXx4v3mTDp
	6HHWhbbdw2JnOoVnHCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMe8Q-0007Vh-9j; Mon, 21 Oct 2019 20:18:34 +0000
Received: from 187-26-105-39.3g.claro.net.br ([187.26.105.39]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMe8I-0007Up-9G; Mon, 21 Oct 2019 20:18:26 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id AF2704035B; Mon, 21 Oct 2019 17:18:19 -0300 (-03)
Date: Mon, 21 Oct 2019 17:18:19 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] perf cs-etm: Fix definition of macro TO_CS_QUEUE_NR
Message-ID: <20191021201819.GK1797@kernel.org>
References: <20191021074808.25795-1-leo.yan@linaro.org>
 <CANLsYkyvDKw4E7=+fsq7W41iS0P57Rau3fxJffrg8cEScyOOBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyvDKw4E7=+fsq7W41iS0P57Rau3fxJffrg8cEScyOOBw@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
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

Em Mon, Oct 21, 2019 at 11:42:21AM -0600, Mathieu Poirier escreveu:
> On Mon, 21 Oct 2019 at 01:48, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Macro TO_CS_QUEUE_NR definition has a typo, which uses 'trace_id_chan'
> > as its parameter, this doesn't match with its definition body which uses
> > 'trace_chan_id'.  So renames the parameter to 'trace_chan_id'.
> >
> > It's luck to have a local variable 'trace_chan_id' in the function
> > cs_etm__setup_queue(), even we wrongly define the macro TO_CS_QUEUE_NR,
> > the local variable 'trace_chan_id' is used rather than the macro's
> > parameter 'trace_id_chan'; so the compiler doesn't complain for this
> > before.
> >
> > After renaming the parameter, it leads to a compiling error due
> > cs_etm__setup_queue() has no variable 'trace_id_chan'.  This patch uses
> > the variable 'trace_chan_id' for the macro so that fixes the compiling
> > error.
> >
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 4ba0f871f086..f5f855fff412 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -110,7 +110,7 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq);
> >   * encode the etm queue number as the upper 16 bit and the channel as
> >   * the lower 16 bit.
> >   */
> > -#define TO_CS_QUEUE_NR(queue_nr, trace_id_chan)        \
> > +#define TO_CS_QUEUE_NR(queue_nr, trace_chan_id)        \
> >                       (queue_nr << 16 | trace_chan_id)
> >  #define TO_QUEUE_NR(cs_queue_nr) (cs_queue_nr >> 16)
> >  #define TO_TRACE_CHAN_ID(cs_queue_nr) (cs_queue_nr & 0x0000ffff)
> > @@ -819,7 +819,7 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
> >          * Note that packets decoded above are still in the traceID's packet
> >          * queue and will be processed in cs_etm__process_queues().
> >          */
> > -       cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
> > +       cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
> >         ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
> >  out:
> >         return ret;
> 
> Really good catch - Arnaldo please consider.
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD1A38D78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/dQ3kotV1HZZP+1sfGHlRZWRBrin78dYpy4/4vISic=; b=gKzTeT+U0wUeMA
	ahzzOaq/8ENqO074zTdFyuxQIyEQvKcq2BXQEfzEAgFrz284qQg5w6uoz+n+5MNv4XuBYx84l7EUW
	qc/3nz4MxiFyWUgDQ79tv/gQvYz5iVzqvq++s2E25NtyhivQ/sJAIZoMjQ3cbFDnhySIk/7v4sF3s
	+x8lA68jO9bNlXrKJQjlV9qdeYS6Te68LTCEd8ge4r/xVDvteex2f4FNx4qAWfoliwts1JmvslG1Y
	DgT0ZMZnmL8lZ2Kte6A+Z25eLgaNfJ9bVv8i9uYun/Of7dCe4gp3YJhtdVYc70l/chaEv39RtL/QX
	18Dc4t3r1cL7KwaMmuzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZG0q-000585-06; Fri, 07 Jun 2019 14:38:36 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG0g-00057f-LC
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:38:28 +0000
Received: by mail-it1-x141.google.com with SMTP id r135so3078403ith.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x4IvJD5wl0/Va/bh68OafugDO9O9oIx7NttPLnF+KiU=;
 b=ATkrI226diywqadU/h0yjLcx4W4kMidc2NM0vlecoWiBLTE4ydzolMtRSsA9Qgi9wk
 ttoVxWgoglmLDby4ZiKibt89B7bVO92Erx54DLRJF6g/xdWkwEeQtqBsNX2io8/nZ1Ko
 8wnhPqUkY5I1YifA9hVNRoKdrN4cLeTFQM1ISmqLvk6prR161D2V2d3Ru/nfuESngb1x
 t9kpLUCJPtic8Ampg6FhRY3a3o9P7y0sYlFBT2Zv3/JmWXIV+bBqMFqWivmKOiCuLRCM
 cSaCbjVz3OGFQfXF6DI7M3CnYPVr9doHqJDzOw6OmDFNuQbBIuJqTsLhT4NCfmnJbcoO
 uIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x4IvJD5wl0/Va/bh68OafugDO9O9oIx7NttPLnF+KiU=;
 b=tcnFMdz9uSWy0ZoJ/vLonYujPyCqEouwOsCOhE6zwTsJ7R+CFHy6iVnfs8qporZuiZ
 0hXmbOPtkC4gIF7CwiNNwnpQCWHFBKkGm76aICb4tmFoDfd7DQR2cb0m+vnac/hF6VGS
 HBbMcszmL3PucNSvfTntNW8j+T4MYAzTxQonBY9F6gx1FTBkNVorwBlHTvcIQh8bjRK4
 rhuW786CIeeks3KWFQ4FLkvwuceFihe+yid8Zag2GeveuCmaBuw8GIHCnaaba0/RCPKK
 1qrZRemsdjVQumj1QOApaOPMWg/ZRCZ3NPEvuGmq7S7eqT22NgW9iB8oZOsG/W7DBN9k
 YCOg==
X-Gm-Message-State: APjAAAWyrqlu7T1fQ98+ONGQssrjFBKsCTF15ehbQ3FAbJiqymArLVx4
 Um6TqzEYHT9x/Xbcz9dMM+x11aL6kHuGcnCLnk+CIQ==
X-Google-Smtp-Source: APXvYqwCvEAgiab4nQjI1BgAhGyC5gMN7snPR1CvNWUG53UzpwdghPtvTSQIs2o0qmTOZxLaDm88ALqXhAjnLzuX14k=
X-Received: by 2002:a05:6638:29a:: with SMTP id
 c26mr1043127jaq.98.1559918305560; 
 Fri, 07 Jun 2019 07:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-17-mathieu.poirier@linaro.org>
 <20190606185027.GF21245@kernel.org>
In-Reply-To: <20190606185027.GF21245@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 7 Jun 2019 08:38:14 -0600
Message-ID: <CANLsYkxpYk0garBfd3sFdNEKz4fwpAvnLV1zCOp_P2NndnXEjQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] perf tools: Add notion of time to decoding code
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073826_707984_AA1782F9 
X-CRM114-Status: GOOD (  29.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
Cc: "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
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

On Thu, 6 Jun 2019 at 12:50, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Fri, May 24, 2019 at 11:35:07AM -0600, Mathieu Poirier escreveu:
> > This patch deals with timestamp packets received from the decoding library
> > in order to give the front end packet processing loop a handle on the time
> > instruction conveyed by range packets have been executed at.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  .../perf/util/cs-etm-decoder/cs-etm-decoder.c | 112 +++++++++++++++++-
> >  tools/perf/util/cs-etm.c                      |  19 +++
> >  tools/perf/util/cs-etm.h                      |  17 +++
> >  3 files changed, 144 insertions(+), 4 deletions(-)
> >
> > diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > index ce85e52f989c..33e975c8d11b 100644
> > --- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > +++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > @@ -269,6 +269,76 @@ cs_etm_decoder__create_etm_packet_printer(struct cs_etm_trace_params *t_params,
> >                                                    trace_config);
> >  }
> >
> > +static ocsd_datapath_resp_t
> > +cs_etm_decoder__do_soft_timestamp(struct cs_etm_queue *etmq,
> > +                               struct cs_etm_packet_queue *packet_queue,
> > +                               const uint8_t trace_chan_id)
> > +{
> > +     /* No timestamp packet has been received, nothing to do */
> > +     if (!packet_queue->timestamp)
> > +             return OCSD_RESP_CONT;
> > +
> > +     packet_queue->timestamp = packet_queue->next_timestamp;
> > +
> > +     /* Estimate the timestamp for the next range packet */
> > +     packet_queue->next_timestamp += packet_queue->instr_count;
> > +     packet_queue->instr_count = 0;
> > +
> > +     /* Tell the front end which traceid_queue needs attention */
> > +     cs_etm__etmq_set_traceid_queue_timestamp(etmq, trace_chan_id);
> > +
> > +     return OCSD_RESP_WAIT;
> > +}
> > +
> > +static ocsd_datapath_resp_t
> > +cs_etm_decoder__do_hard_timestamp(struct cs_etm_queue *etmq,
> > +                               const ocsd_generic_trace_elem *elem,
> > +                               const uint8_t trace_chan_id)
> > +{
> > +     struct cs_etm_packet_queue *packet_queue;
> > +
> > +     /* First get the packet queue for this traceID */
> > +     packet_queue = cs_etm__etmq_get_packet_queue(etmq, trace_chan_id);
> > +     if (!packet_queue)
> > +             return OCSD_RESP_FATAL_SYS_ERR;
> > +
> > +     /*
> > +      * We've seen a timestamp packet before - simply record the new value.
> > +      * Function do_soft_timestamp() will report the value to the front end,
> > +      * hence asking the decoder to keep decoding rather than stopping.
> > +      */
> > +     if (packet_queue->timestamp) {
> > +             packet_queue->next_timestamp = elem->timestamp;
> > +             return OCSD_RESP_CONT;
> > +     }
> > +
> > +     /*
> > +      * This is the first timestamp we've seen since the beginning of traces
> > +      * or a discontinuity.  Since timestamps packets are generated *after*
> > +      * range packets have been generated, we need to estimate the time at
> > +      * which instructions started by substracting the number of instructions
> > +      * executed to the timestamp.
> > +      */
> > +     packet_queue->timestamp = elem->timestamp -
> > +                                             packet_queue->instr_count;
>
> No need to break lines like that, in this case it even wouldn't pass the
> width used for the comments right above it :-)
>
> I'm fixing it up this time.
>
> Something else, all the patches in this series, so far, needed to have
> as the subject prefix "perf cs-etm: ...", not the generic one "perf
> tools: ...". I'm fixing it up as well, no need to resend.

Got that - thanks
Mathieu

>
> - Arnaldo
>
> > +     packet_queue->next_timestamp = elem->timestamp;
> > +     packet_queue->instr_count = 0;
> > +
> > +     /* Tell the front end which traceid_queue needs attention */
> > +     cs_etm__etmq_set_traceid_queue_timestamp(etmq, trace_chan_id);
> > +
> > +     /* Halt processing until we are being told to proceed */
> > +     return OCSD_RESP_WAIT;
> > +}
> > +
> > +static void
> > +cs_etm_decoder__reset_timestamp(struct cs_etm_packet_queue *packet_queue)
> > +{
> > +     packet_queue->timestamp = 0;
> > +     packet_queue->next_timestamp = 0;
> > +     packet_queue->instr_count = 0;
> > +}
> > +
> >  static ocsd_datapath_resp_t
> >  cs_etm_decoder__buffer_packet(struct cs_etm_packet_queue *packet_queue,
> >                             const u8 trace_chan_id,
> > @@ -310,7 +380,8 @@ cs_etm_decoder__buffer_packet(struct cs_etm_packet_queue *packet_queue,
> >  }
> >
> >  static ocsd_datapath_resp_t
> > -cs_etm_decoder__buffer_range(struct cs_etm_packet_queue *packet_queue,
> > +cs_etm_decoder__buffer_range(struct cs_etm_queue *etmq,
> > +                          struct cs_etm_packet_queue *packet_queue,
> >                            const ocsd_generic_trace_elem *elem,
> >                            const uint8_t trace_chan_id)
> >  {
> > @@ -365,6 +436,23 @@ cs_etm_decoder__buffer_range(struct cs_etm_packet_queue *packet_queue,
> >
> >       packet->last_instr_size = elem->last_instr_sz;
> >
> > +     /* per-thread scenario, no need to generate a timestamp */
> > +     if (cs_etm__etmq_is_timeless(etmq))
> > +             goto out;
> > +
> > +     /*
> > +      * The packet queue is full and we haven't seen a timestamp (had we
> > +      * seen one the packet queue wouldn't be full).  Let the front end
> > +      * deal with it.
> > +      */
> > +     if (ret == OCSD_RESP_WAIT)
> > +             goto out;
> > +
> > +     packet_queue->instr_count += elem->num_instr_range;
> > +     /* Tell the front end we have a new timestamp to process */
> > +     ret = cs_etm_decoder__do_soft_timestamp(etmq, packet_queue,
> > +                                             trace_chan_id);
> > +out:
> >       return ret;
> >  }
> >
> > @@ -372,6 +460,11 @@ static ocsd_datapath_resp_t
> >  cs_etm_decoder__buffer_discontinuity(struct cs_etm_packet_queue *queue,
> >                                    const uint8_t trace_chan_id)
> >  {
> > +     /*
> > +      * Something happened and who knows when we'll get new traces so
> > +      * reset time statistics.
> > +      */
> > +     cs_etm_decoder__reset_timestamp(queue);
> >       return cs_etm_decoder__buffer_packet(queue, trace_chan_id,
> >                                            CS_ETM_DISCONTINUITY);
> >  }
> > @@ -404,6 +497,7 @@ cs_etm_decoder__buffer_exception_ret(struct cs_etm_packet_queue *queue,
> >
> >  static ocsd_datapath_resp_t
> >  cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
> > +                     struct cs_etm_packet_queue *packet_queue,
> >                       const ocsd_generic_trace_elem *elem,
> >                       const uint8_t trace_chan_id)
> >  {
> > @@ -417,6 +511,12 @@ cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
> >       if (cs_etm__etmq_set_tid(etmq, tid, trace_chan_id))
> >               return OCSD_RESP_FATAL_SYS_ERR;
> >
> > +     /*
> > +      * A timestamp is generated after a PE_CONTEXT element so make sure
> > +      * to rely on that coming one.
> > +      */
> > +     cs_etm_decoder__reset_timestamp(packet_queue);
> > +
> >       return OCSD_RESP_CONT;
> >  }
> >
> > @@ -446,7 +546,7 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
> >                                                           trace_chan_id);
> >               break;
> >       case OCSD_GEN_TRC_ELEM_INSTR_RANGE:
> > -             resp = cs_etm_decoder__buffer_range(packet_queue, elem,
> > +             resp = cs_etm_decoder__buffer_range(etmq, packet_queue, elem,
> >                                                   trace_chan_id);
> >               break;
> >       case OCSD_GEN_TRC_ELEM_EXCEPTION:
> > @@ -457,11 +557,15 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
> >               resp = cs_etm_decoder__buffer_exception_ret(packet_queue,
> >                                                           trace_chan_id);
> >               break;
> > +     case OCSD_GEN_TRC_ELEM_TIMESTAMP:
> > +             resp = cs_etm_decoder__do_hard_timestamp(etmq, elem,
> > +                                                      trace_chan_id);
> > +             break;
> >       case OCSD_GEN_TRC_ELEM_PE_CONTEXT:
> > -             resp = cs_etm_decoder__set_tid(etmq, elem, trace_chan_id);
> > +             resp = cs_etm_decoder__set_tid(etmq, packet_queue,
> > +                                            elem, trace_chan_id);
> >               break;
> >       case OCSD_GEN_TRC_ELEM_ADDR_NACC:
> > -     case OCSD_GEN_TRC_ELEM_TIMESTAMP:
> >       case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
> >       case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
> >       case OCSD_GEN_TRC_ELEM_EVENT:
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 17adf554b679..91496a3a2209 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -80,6 +80,7 @@ struct cs_etm_queue {
> >       struct cs_etm_decoder *decoder;
> >       struct auxtrace_buffer *buffer;
> >       unsigned int queue_nr;
> > +     u8 pending_timestamp;
> >       u64 offset;
> >       const unsigned char *buf;
> >       size_t buf_len, buf_used;
> > @@ -133,6 +134,19 @@ int cs_etm__get_cpu(u8 trace_chan_id, int *cpu)
> >       return 0;
> >  }
> >
> > +void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
> > +                                           u8 trace_chan_id)
> > +{
> > +     /*
> > +      * Wnen a timestamp packet is encountered the backend code
> > +      * is stopped so that the front end has time to process packets
> > +      * that were accumulated in the traceID queue.  Since there can
> > +      * be more than one channel per cs_etm_queue, we need to specify
> > +      * what traceID queue needs servicing.
> > +      */
> > +     etmq->pending_timestamp = trace_chan_id;
> > +}
> > +
> >  static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
> >  {
> >       int i;
> > @@ -942,6 +956,11 @@ int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
> >       return 0;
> >  }
> >
> > +bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
> > +{
> > +     return !!etmq->etm->timeless_decoding;
> > +}
> > +
> >  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> >                                           struct cs_etm_traceid_queue *tidq,
> >                                           u64 addr, u64 period)
> > diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
> > index b2a7628620bf..33b57e748c3d 100644
> > --- a/tools/perf/util/cs-etm.h
> > +++ b/tools/perf/util/cs-etm.h
> > @@ -150,6 +150,9 @@ struct cs_etm_packet_queue {
> >       u32 packet_count;
> >       u32 head;
> >       u32 tail;
> > +     u32 instr_count;
> > +     u64 timestamp;
> > +     u64 next_timestamp;
> >       struct cs_etm_packet packet_buffer[CS_ETM_PACKET_MAX_BUFFER];
> >  };
> >
> > @@ -183,6 +186,9 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> >  int cs_etm__get_cpu(u8 trace_chan_id, int *cpu);
> >  int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
> >                        pid_t tid, u8 trace_chan_id);
> > +bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq);
> > +void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
> > +                                           u8 trace_chan_id);
> >  struct cs_etm_packet_queue
> >  *cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id);
> >  #else
> > @@ -207,6 +213,17 @@ static inline int cs_etm__etmq_set_tid(
> >       return -1;
> >  }
> >
> > +static inline bool cs_etm__etmq_is_timeless(
> > +                             struct cs_etm_queue *etmq __maybe_unused)
> > +{
> > +     /* What else to return? */
> > +     return true;
> > +}
> > +
> > +static inline void cs_etm__etmq_set_traceid_queue_timestamp(
> > +                             struct cs_etm_queue *etmq __maybe_unused,
> > +                             u8 trace_chan_id __maybe_unused) {}
> > +
> >  static inline struct cs_etm_packet_queue *cs_etm__etmq_get_packet_queue(
> >                               struct cs_etm_queue *etmq __maybe_unused,
> >                               u8 trace_chan_id __maybe_unused)
> > --
> > 2.17.1
>
> --
>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06E19268F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jX6MgkD96kibxaPwhJ83XckNKEBdWVZ1Gfu3zlx+Mo=; b=Z8MBvYVWxvmX3F
	hQoUakisOYzdLuCvUZJlvuHdBfnSH/BUHSqBFC47tUTe/7g1ANtQUVOElmpfqZZCNRSqDx9ovJnXs
	N0rVzZBxg3jt8uKGtZpTLR/ayGpzSA9SA8W0yjIgZH1CrBtqIbwoLNixgZEpn2a28zE92ZfzuaCuE
	nhT6rHYF1p7pXqklLvHrz9MawW8poYais239Zr4UzgpSszIxTnLK+CF+JZGjWK9gQO/WfORFiC6Uv
	7TOZFt7fj5JcqWuEqTDMDKMj462qOZ7sYs7tsKCxHbcNTl+n02tHbcnVPlF0dsFe27ijKAh0hhX2A
	72qxpg6ciS4zbbD/B4Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziZL-0006a6-EA; Mon, 19 Aug 2019 14:23:35 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziZC-0006a0-Ez
 for linux-arm-kernel@bombadil.infradead.org; Mon, 19 Aug 2019 14:23:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NoobpusK4yG5cX6tMUa8vsNXDOHEAtCqla6w11qGBeg=; b=JnPppkqUjMqM/zzoFHnGkePNH
 oF3V3Im2/IdcNdYVSpJ6mPmwAFm3PSomhmmfTyMsscKRHXsNtPSRjVLGFwpiPE0GtzQ40cX2+EeIV
 HCSI9o/gtwm8FHzHeI/Vj22QvgB7yqmCFL6V78QQRhFGQuaQ1xrC4K44pjzlA848jwM6obbvOV8hG
 SD5DOu0wbGkec4gzhJBW8rre0vMPnUh2e6PYFcwziTYiiIez8aZkfqlN2Y+JTO/QuFMM8k0T544Bh
 QZq0CptGAX6eehNteK6O3tm4BpaIJ8b747DbhwIrhQHgqd4H8DlklDVoK6JkNZ7C5o7asrhPuks+P
 AmX9PeiVw==;
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hziZA-0008Ib-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:23:24 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 732DB40340; Mon, 19 Aug 2019 11:23:21 -0300 (-03)
Date: Mon, 19 Aug 2019 11:23:21 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
Message-ID: <20190819142321.GB29674@kernel.org>
References: <20190815082854.18191-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815082854.18191-1-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Namhyung Kim <namhyung@kernel.org>, Robert Walker <robert.walker@arm.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu, Aug 15, 2019 at 04:28:54PM +0800, Leo Yan escreveu:
> The synthetic branch and instruction samples are missed to set
> instruction related info, thus perf tool fails to display samples with
> flags '-F,+insn,+insnlen'.
> 
> CoreSight trace decoder has provided sufficient information to decide
> the instruction size based on the isa type: A64/A32 instruction are
> 32-bit size, but one exception is the T32 instruction size, which might
> be 32-bit or 16-bit.
> 
> This patch handles for these cases and it reads the instruction values
> from DSO file; thus can support flags '-F,+insn,+insnlen'.

Mathieu, can I have your Acked-by/Reviewed-by?

- Arnaldo
 
> Before:
> 
>   # perf script -F,insn,insnlen,ip,sym
>                 0 [unknown] ilen: 0
>      ffff97174044 _start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
> 
>   [...]
> 
> After:
> 
>   # perf script -F,insn,insnlen,ip,sym
>                 0 [unknown] ilen: 0
>      ffff97174044 _start ilen: 4 insn: 2f 02 00 94
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> 
>   [...]
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
> Cc: Mike Leach <mike.leach@linaro.org>
> Cc: Robert Walker <robert.walker@arm.com>
> Cc: coresight@lists.linaro.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index ed6f7fd5b90b..b3a5daaf1a8f 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1076,6 +1076,35 @@ bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
>  	return !!etmq->etm->timeless_decoding;
>  }
>  
> +static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> +			      u64 trace_chan_id,
> +			      const struct cs_etm_packet *packet,
> +			      struct perf_sample *sample)
> +{
> +	/*
> +	 * It's pointless to read instructions for the CS_ETM_DISCONTINUITY
> +	 * packet, so directly bail out with 'insn_len' = 0.
> +	 */
> +	if (packet->sample_type == CS_ETM_DISCONTINUITY) {
> +		sample->insn_len = 0;
> +		return;
> +	}
> +
> +	/*
> +	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> +	 * cs_etm__t32_instr_size().
> +	 */
> +	if (packet->isa == CS_ETM_ISA_T32)
> +		sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> +							  sample->ip);
> +	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +	else
> +		sample->insn_len = 4;
> +
> +	cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
> +			   sample->insn_len, (void *)sample->insn);
> +}
> +
>  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>  					    struct cs_etm_traceid_queue *tidq,
>  					    u64 addr, u64 period)
> @@ -1097,9 +1126,10 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>  	sample.period = period;
>  	sample.cpu = tidq->packet->cpu;
>  	sample.flags = tidq->prev_packet->flags;
> -	sample.insn_len = 1;
>  	sample.cpumode = event->sample.header.misc;
>  
> +	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
> +
>  	if (etm->synth_opts.last_branch) {
>  		cs_etm__copy_last_branch_rb(etmq, tidq);
>  		sample.branch_stack = tidq->last_branch;
> @@ -1159,6 +1189,9 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
>  	sample.flags = tidq->prev_packet->flags;
>  	sample.cpumode = event->sample.header.misc;
>  
> +	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->prev_packet,
> +			  &sample);
> +
>  	/*
>  	 * perf report cannot handle events without a branch stack
>  	 */
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

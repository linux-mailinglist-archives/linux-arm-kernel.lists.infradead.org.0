Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE85D48E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 22:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzoK+iICrNkLRT3DtFwgW27ZaaHjux82gF62uE2eYYs=; b=osYgot9IfxfyoC
	EfCM8gSSXR5pqDvI/3W8UHfcSDtptqWipQD2pZbAXkwRfY9+UJ9hU4EzUK5n6PErTyWcQAVAxz6lp
	sgdEmaiByCLmEtVsTbKpyspupHaawTTaNRgipwNnxP8beM7FLrryxdabor3rnNIKNZ5+5krc42g4f
	HwijqDlxC3aLkq+hXQAWJoQD1JFTddtO5OyGyKsilwqt5A2PEF3arC/oi2KUo9g0dD3Bd5JCkyfxV
	cidkJl+i52R64uSpdsuuqs4Kc5KMH9oBtOa4bQaaEt/kA3fnL7qJZUr2a7Wr+/ilPbAtl3Lb1PIJQ
	dUwLFkNUJfduMGldberA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ1Kl-0008OC-VV; Fri, 11 Oct 2019 20:16:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ1Kd-0008NL-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 20:16:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so6738547pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 13:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PR46YI2RMcoiv8IfiEatQgc8ZaD0QWUbng9pxbLKT2g=;
 b=Jy+yz6cspKP36E2xWln+kXX+hRDBKhLWAYgzxCz734kBlvsoc9VIusa25mAMklPTjM
 CGRVYpf1ioSv9f7+fT+hvhHdxgmGqXO2cPhAPSGNWvTKcevKLlnFxEh8pHT5m/v28oXj
 /n8h7fnbtr0/Y0NfSf5uIU8H6FWYq2NKn2mK9pg+fZ0e6fxC4taVdvdiMQrJb9NukCaL
 tEYoPdH7J8Pxtx9jcKLwf5U1f53BePopdUr8SwpV/rGTlKek88ROJ562DmbUKQ+E0qN2
 7X4+XA73UIIcxTJDul1+A5OjLyPlQsmc0g5IEuSz5U/v67gMJK4fVmS8DQa2p9JVKGot
 7F1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PR46YI2RMcoiv8IfiEatQgc8ZaD0QWUbng9pxbLKT2g=;
 b=mKsbwOeKjJtMWxB/0D6zOGk4O7BAlmLfpmxog64PapWyGySWJI9wt7tgNs0lHHcU8C
 JKj/wuLggwhUS+pcItmcYnQo1wbBqj8rWK2HfiKYwD1TNI8je+hsomHDK5kqHsNooZsz
 kockuXdwQa0rSAreXMPNihZWNFGGEtEMz5/+hNkLvH5SK2L74mE8t2S3viZBLjWHLctD
 ee+86CGuRD7UMex56mllSMQ4S9jjaWp830eK6dSE2HVDbLMyFpkR7VTlxz4XzSpiUmBD
 bfem5oHtmeDmHdEYAUCxdpQX1jYr9Fokli7dmePy7uy3zc0hHigqCoIRmZVHzZIcrD9T
 X8cg==
X-Gm-Message-State: APjAAAWS4+/jpcTTvOyyrzYDy2BptJFW+D50i6IeElGQQxxCrIxhZ7fQ
 aCcdoAYk8P1EHG26I8OIzDqq4w==
X-Google-Smtp-Source: APXvYqwEyiiUYWnxVo/iZMPv/NTiwhPMmTvQy5U8FMYGFAVmjoSfpr6Hd/ZFZ7xV8nl12xFAS0bILA==
X-Received: by 2002:a17:90a:1aa9:: with SMTP id
 p38mr20418659pjp.142.1570824969192; 
 Fri, 11 Oct 2019 13:16:09 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a13sm15525313pfg.10.2019.10.11.13.16.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 13:16:08 -0700 (PDT)
Date: Fri, 11 Oct 2019 14:16:06 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v3 1/6] perf cs-etm: Fix unsigned variable comparison to
 zero
Message-ID: <20191011201606.GC13688@xps15>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-2-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005091614.11635-2-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_131611_434093_F4E87AE7 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 05:16:09PM +0800, Leo Yan wrote:
> If the u64 variable 'offset' is a negative integer, comparison it with
> bigger than zero is always going to be true because it is unsigned.
> Fix this by using s64 type for variable 'offset'.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 4ba0f871f086..4bc2d9709d4f 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -940,7 +940,7 @@ u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
>  static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
>  				     u64 trace_chan_id,
>  				     const struct cs_etm_packet *packet,
> -				     u64 offset)
> +				     s64 offset)

In Suzuki's reply there was two choices, 1) move the while(offset > 0) to
while (offset) or change the type of @offset to an s64.  Here we know offset
can't be negative because of the 
        tidq->period_instructions >= etm->instructions_sample_period 

in function cs_etm__sample().  As such I think option #1 is the right way to
deal with this rather than changing the type of the variable.

Mathieu

>  {
>  	if (packet->isa == CS_ETM_ISA_T32) {
>  		u64 addr = packet->start_addr;
> @@ -1372,7 +1372,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>  		 * sample is reported as though instruction has just been
>  		 * executed, but PC has not advanced to next instruction)
>  		 */
> -		u64 offset = (instrs_executed - instrs_over - 1);
> +		s64 offset = (instrs_executed - instrs_over - 1);
>  		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
>  					      tidq->packet, offset);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

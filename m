Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B293848F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 08:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mP+OuUZjXkY/KIU3PUSNnYReKuCiO+2LOr+jm6brTNI=; b=ewwGwrLTYbiUtn
	uH3LsXnTUzRbLymLl+ORKLeIJKrkWLes63udaHGqoWjf+ngR4Q+a8ftRUUmIFqa9wkRFLZa8/R3rL
	gHZR8flUN/ATVLScFj3zItK8rZfTxiFBSCo1dYh1ulgR7wYeerRwnfzQ8WzEbmIdNrJ+yuS5FNlUD
	e8dRrjQ0bt/UcxwPBMHNZmXeS9DInYvlkXA7IhYAO5/dwQCxA53lvFa9R4mYhSdJO2UL/wYci/Yom
	+T5pobLGMtsNE5jixFMLZJFUOOclfbNcBbIoFBkiDwae6M1j6Z7eh05muiGpsFkLxYJBjaZzRNEZ0
	UPlZbelv7sZW2y+UNYGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8cK-0006ct-4h; Fri, 07 Jun 2019 06:44:48 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8c6-0006cH-UB
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 06:44:36 +0000
Received: by mail-yw1-xc44.google.com with SMTP id k128so316642ywf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 23:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iFhT8liOalqkQhykuttRe8yLU3IavzSomEkEekLlsnY=;
 b=ByrD0tV/Hxjb3oer9FyKqjVTDHRG9yBaOrPEzhNWnerouMDdM+5XcBU+FUa4wpPXMd
 ZJZBOwwbnYq8UY5H9rlSnbKvq1H4eZu3agdEIveNKdj4PDVl6PhhP/z99YTUECPRwdJJ
 fwx2IrBE9zoOuhQKp+AwwOvRPD7RoZ3gUl9CpoiDLqGyXJNUeeZ7Hv16qtkPmdTfLcwM
 XaT9DNGxMTBIHUvasgsaggQTXtkOV4TbEA/lvTjV+nIfRVl9hlivWvBnnLDu3Q70xyFm
 EI6pYMcYebOkq7sbKe/s2I36fUI2qCWSpmsv3YTjEuOa6aBz6NbiTz/XWugTuyWv0oCL
 n1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iFhT8liOalqkQhykuttRe8yLU3IavzSomEkEekLlsnY=;
 b=UE9aVxBnumy30shnXXraI1hIvriE3yjKl/6Y8x1PjAWfuKAorCqFVZBgutzFMyd8Jp
 p8LN5NnBpAS9rWc4o/97/fkdUdnQbwYNgP4CDr1V9k2a1mq+PxNwONiYy4t7l5j91CJD
 oYKbxjYurcv5I2zPUImXUf7EL336SM3p6+7y/+4b5mH6tGKduJAzJbj0VhiuBCZsg45w
 Gaklgl7tbjIFqnbAiQb782yz5VTWReBlrS9BvXUOYVJv5ThY2/rAFaaegLuQaW/sSrLN
 aIYq60zKILLnUgMezXZBF5m/ROInMJL54s0/nS5ZcACV8yH4qtUKNtBR/e6LHigoDxkY
 OINg==
X-Gm-Message-State: APjAAAWppRcinEUTp/Pg11WturJT/CfxHjyL0XrgI5nF+DmwOUFO3+SZ
 lo57xgxmWTqbkzh+j1SXxJqBYg==
X-Google-Smtp-Source: APXvYqyfMSvDnA1Zsun0qnTQcBGUtSCXs21mhTzYxINWS3oNSabOJCKdIAjrYQwaKqoemyVuPx3BFw==
X-Received: by 2002:a81:5747:: with SMTP id l68mr13390457ywb.180.1559889873710; 
 Thu, 06 Jun 2019 23:44:33 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id c140sm329922ywb.45.2019.06.06.23.44.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 23:44:33 -0700 (PDT)
Date: Fri, 7 Jun 2019 14:44:25 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH] perf tools: Properly set the value of 'old' and 'head'
 in snapshot mode
Message-ID: <20190607064425.GF5970@leoy-ThinkPad-X240s>
References: <20190605161633.12245-1-mathieu.poirier@linaro.org>
 <20190606201056.GJ21245@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606201056.GJ21245@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_234435_007919_62C03C53 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, suzuki.poulose@arm.com,
 peterz@infradead.org, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 05:10:56PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Wed, Jun 05, 2019 at 10:16:33AM -0600, Mathieu Poirier escreveu:
> > This patch adds the necessay intelligence to properly compute the value
> > of 'old' and 'head' when operating in snapshot mode.  That way we can get
> > the latest information in the AUX buffer and be compatible with the
> > generic AUX ring buffer mechanic.
> 
> Leo, have you had the chance to test/review this one? Suzuki?

Sure.  I applied this patch on the perf/core branch (with latest
commit 3e4fbf36c1e3 'perf augmented_raw_syscalls: Move reading
filename to the loop') and passed testing with below steps:

# perf record -e cs_etm/@tmc_etr0/ -S -m,64 --per-thread ./sort &
[1] 19097
Bubble sorting array of 30000 elements

# kill -USR2 19097
# kill -USR2 19097
# kill -USR2 19097
[ perf record: Woken up 4 times to write data ]
[ perf record: Captured and wrote 0.753 MB perf.data ]

FWIW:

Tested-by: Leo Yan <leo.yan@linaro.org>

> I also changed the subject to:
> 
>   [PATCH] perf cs-etm: Properly set the value of 'old' and 'head' in snapshot mode
> 
> So that when looking at a 'git log --oneline' one can have the proper
> context and know that its about cs-etm.
> 
> - Arnaldo
>  
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  tools/perf/arch/arm/util/cs-etm.c | 127 +++++++++++++++++++++++++++++-
> >  1 file changed, 123 insertions(+), 4 deletions(-)
> > 
> > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > index 911426721170..0a278bbcaba6 100644
> > --- a/tools/perf/arch/arm/util/cs-etm.c
> > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > @@ -31,6 +31,8 @@ struct cs_etm_recording {
> >  	struct auxtrace_record	itr;
> >  	struct perf_pmu		*cs_etm_pmu;
> >  	struct perf_evlist	*evlist;
> > +	int			wrapped_cnt;
> > +	bool			*wrapped;
> >  	bool			snapshot_mode;
> >  	size_t			snapshot_size;
> >  };
> > @@ -536,16 +538,131 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
> >  	return 0;
> >  }
> >  
> > -static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> > +static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
> > +{
> > +	bool *wrapped;
> > +	int cnt = ptr->wrapped_cnt;
> > +
> > +	/* Make @ptr->wrapped as big as @idx */
> > +	while (cnt <= idx)
> > +		cnt++;
> > +
> > +	/*
> > +	 * Free'ed in cs_etm_recording_free().  Using realloc() to avoid
> > +	 * cross compilation problems where the host's system supports
> > +	 * reallocarray() but not the target.
> > +	 */
> > +	wrapped = realloc(ptr->wrapped, cnt * sizeof(bool));
> > +	if (!wrapped)
> > +		return -ENOMEM;
> > +
> > +	wrapped[cnt - 1] = false;
> > +	ptr->wrapped_cnt = cnt;
> > +	ptr->wrapped = wrapped;
> > +
> > +	return 0;
> > +}
> > +
> > +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> > +				      size_t buffer_size, u64 head)
> > +{
> > +	u64 i, watermark;
> > +	u64 *buf = (u64 *)buffer;
> > +	size_t buf_size = buffer_size;
> > +
> > +	/*
> > +	 * We want to look the very last 512 byte (chosen arbitrarily) in
> > +	 * the ring buffer.
> > +	 */
> > +	watermark = buf_size - 512;
> > +
> > +	/*
> > +	 * @head is continuously increasing - if its value is equal or greater
> > +	 * than the size of the ring buffer, it has wrapped around.
> > +	 */
> > +	if (head >= buffer_size)
> > +		return true;
> > +
> > +	/*
> > +	 * The value of @head is somewhere within the size of the ring buffer.
> > +	 * This can be that there hasn't been enough data to fill the ring
> > +	 * buffer yet or the trace time was so long that @head has numerically
> > +	 * wrapped around.  To find we need to check if we have data at the very
> > +	 * end of the ring buffer.  We can reliably do this because mmap'ed
> > +	 * pages are zeroed out and there is a fresh mapping with every new
> > +	 * session.
> > +	 */
> > +
> > +	/* @head is less than 512 byte from the end of the ring buffer */
> > +	if (head > watermark)
> > +		watermark = head;
> > +
> > +	/*
> > +	 * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> > +	 */
> > +	watermark >>= 3;
> > +	buf_size >>= 3;
> > +
> > +	/*
> > +	 * If we find trace data at the end of the ring buffer, @head has
> > +	 * been there and has numerically wrapped around at least once.
> > +	 */
> > +	for (i = watermark; i < buf_size; i++)
> > +		if (buf[i])
> > +			return true;
> > +
> > +	return false;
> > +}
> > +
> > +static int cs_etm_find_snapshot(struct auxtrace_record *itr,
> >  				int idx, struct auxtrace_mmap *mm,
> > -				unsigned char *data __maybe_unused,
> > +				unsigned char *data,
> >  				u64 *head, u64 *old)
> >  {
> > +	int err;
> > +	bool wrapped;
> > +	struct cs_etm_recording *ptr =
> > +			container_of(itr, struct cs_etm_recording, itr);
> > +
> > +	/*
> > +	 * Allocate memory to keep track of wrapping if this is the first
> > +	 * time we deal with this *mm.
> > +	 */
> > +	if (idx >= ptr->wrapped_cnt) {
> > +		err = cs_etm_alloc_wrapped_array(ptr, idx);
> > +		if (err)
> > +			return err;
> > +	}
> > +
> > +	/*
> > +	 * Check to see if *head has wrapped around.  If it hasn't only the
> > +	 * amount of data between *head and *old is snapshot'ed to avoid
> > +	 * bloating the perf.data file with zeros.  But as soon as *head has
> > +	 * wrapped around the entire size of the AUX ring buffer it taken.
> > +	 */
> > +	wrapped = ptr->wrapped[idx];
> > +	if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
> > +		wrapped = true;
> > +		ptr->wrapped[idx] = true;
> > +	}
> > +
> >  	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
> >  		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
> >  
> > -	*old = *head;
> > -	*head += mm->len;
> > +	/* No wrap has occurred, we can just use *head and *old. */
> > +	if (!wrapped)
> > +		return 0;
> > +
> > +	/*
> > +	 * *head has wrapped around - adjust *head and *old to pickup the
> > +	 * entire content of the AUX buffer.
> > +	 */
> > +	if (*head >= mm->len) {
> > +		*old = *head - mm->len;
> > +	} else {
> > +		*head += mm->len;
> > +		*old = *head - mm->len;
> > +	}
> >  
> >  	return 0;
> >  }
> > @@ -586,6 +703,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
> >  {
> >  	struct cs_etm_recording *ptr =
> >  			container_of(itr, struct cs_etm_recording, itr);
> > +
> > +	zfree(&ptr->wrapped);
> >  	free(ptr);
> >  }
> >  
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

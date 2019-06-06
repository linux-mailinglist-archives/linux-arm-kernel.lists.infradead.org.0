Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D785B37DDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 22:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JanLwKudOMVaVqon6i15Y5wHCAiO3IK7knvqZFWy3aw=; b=hzO/xDx/XL5XF2
	K/Pth7Sc6ssc84YrBy0ofnaGTBwT0zGZ6lY7qqhzvAknQ83K0qt35EseNfKKbaA/DD/GKh/rBMiU5
	AG4BLOgd7gFm02Ik94UwaR1zGstpeKSGBGMK5lHtoUq0mqIAGgtOBYB/EmVYgPEeKlvB8/bw977NL
	2t4Dq/CrWgF0yiCX1ubGaj39AkqKQEMZ8uT+KsxMxm6uStsdaIjAxapF493wnc40xp6TB0fRT7lAF
	8FhFiWNTeMs/TUgAFiEuC1iJTVxx3fI4RP5nPtWlg7f9oSZTdvIN4Iy8AkjbxFPtLbbdBM2vLVqG5
	zeIp4VT0ozzDtFNoqZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyj5-0006NF-FO; Thu, 06 Jun 2019 20:11:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyiz-0006N2-P9
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Jun 2019 20:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=duYNpd7u6NCsl3zgH8XpP5ZaEHzH4usCoWirRor+tVo=; b=IjqYZZYq4+dfV/Anc1w3bBTif
 vGYMzDp6qJw2FWqFuUqwWCaHyoC4nHVXNffavdi6mEulkmqFQ530Q0zIvcT3RHKXxuzycyeBQoZBk
 L8Td/uVDlFIvOfI3i7zsncwVFYae/1Q9hrs7V6HoYoUX5dVfs4hl0fReghgGEHtP9B6uFfLJd2QbD
 DIVrz8C/s24DYZa6KrlYV6BWNdCtQzkXNhKXHfG9RnU/N4FTD1PXuCwCTFKcvcvoI4Rgk0ISG5toq
 yZXvXgpKrX7Wqfmw03NHF2saq2hE/PMdXaL7Gp6UNH3FLURl1tY1ZA3RgkRGgB48VInykFwkfIrXL
 qPeqLLF/Q==;
Received: from [190.15.121.82] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyix-0005fj-EY; Thu, 06 Jun 2019 20:10:59 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 0A63E41149; Thu,  6 Jun 2019 17:10:57 -0300 (-03)
Date: Thu, 6 Jun 2019 17:10:56 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] perf tools: Properly set the value of 'old' and 'head'
 in snapshot mode
Message-ID: <20190606201056.GJ21245@kernel.org>
References: <20190605161633.12245-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605161633.12245-1-mathieu.poirier@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: suzuki.poulose@arm.com, peterz@infradead.org, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, leo.yan@linaro.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Jun 05, 2019 at 10:16:33AM -0600, Mathieu Poirier escreveu:
> This patch adds the necessay intelligence to properly compute the value
> of 'old' and 'head' when operating in snapshot mode.  That way we can get
> the latest information in the AUX buffer and be compatible with the
> generic AUX ring buffer mechanic.

Leo, have you had the chance to test/review this one? Suzuki?

I also changed the subject to:

  [PATCH] perf cs-etm: Properly set the value of 'old' and 'head' in snapshot mode

So that when looking at a 'git log --oneline' one can have the proper
context and know that its about cs-etm.

- Arnaldo
 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 127 +++++++++++++++++++++++++++++-
>  1 file changed, 123 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 911426721170..0a278bbcaba6 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -31,6 +31,8 @@ struct cs_etm_recording {
>  	struct auxtrace_record	itr;
>  	struct perf_pmu		*cs_etm_pmu;
>  	struct perf_evlist	*evlist;
> +	int			wrapped_cnt;
> +	bool			*wrapped;
>  	bool			snapshot_mode;
>  	size_t			snapshot_size;
>  };
> @@ -536,16 +538,131 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
>  	return 0;
>  }
>  
> -static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> +static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
> +{
> +	bool *wrapped;
> +	int cnt = ptr->wrapped_cnt;
> +
> +	/* Make @ptr->wrapped as big as @idx */
> +	while (cnt <= idx)
> +		cnt++;
> +
> +	/*
> +	 * Free'ed in cs_etm_recording_free().  Using realloc() to avoid
> +	 * cross compilation problems where the host's system supports
> +	 * reallocarray() but not the target.
> +	 */
> +	wrapped = realloc(ptr->wrapped, cnt * sizeof(bool));
> +	if (!wrapped)
> +		return -ENOMEM;
> +
> +	wrapped[cnt - 1] = false;
> +	ptr->wrapped_cnt = cnt;
> +	ptr->wrapped = wrapped;
> +
> +	return 0;
> +}
> +
> +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> +				      size_t buffer_size, u64 head)
> +{
> +	u64 i, watermark;
> +	u64 *buf = (u64 *)buffer;
> +	size_t buf_size = buffer_size;
> +
> +	/*
> +	 * We want to look the very last 512 byte (chosen arbitrarily) in
> +	 * the ring buffer.
> +	 */
> +	watermark = buf_size - 512;
> +
> +	/*
> +	 * @head is continuously increasing - if its value is equal or greater
> +	 * than the size of the ring buffer, it has wrapped around.
> +	 */
> +	if (head >= buffer_size)
> +		return true;
> +
> +	/*
> +	 * The value of @head is somewhere within the size of the ring buffer.
> +	 * This can be that there hasn't been enough data to fill the ring
> +	 * buffer yet or the trace time was so long that @head has numerically
> +	 * wrapped around.  To find we need to check if we have data at the very
> +	 * end of the ring buffer.  We can reliably do this because mmap'ed
> +	 * pages are zeroed out and there is a fresh mapping with every new
> +	 * session.
> +	 */
> +
> +	/* @head is less than 512 byte from the end of the ring buffer */
> +	if (head > watermark)
> +		watermark = head;
> +
> +	/*
> +	 * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> +	 */
> +	watermark >>= 3;
> +	buf_size >>= 3;
> +
> +	/*
> +	 * If we find trace data at the end of the ring buffer, @head has
> +	 * been there and has numerically wrapped around at least once.
> +	 */
> +	for (i = watermark; i < buf_size; i++)
> +		if (buf[i])
> +			return true;
> +
> +	return false;
> +}
> +
> +static int cs_etm_find_snapshot(struct auxtrace_record *itr,
>  				int idx, struct auxtrace_mmap *mm,
> -				unsigned char *data __maybe_unused,
> +				unsigned char *data,
>  				u64 *head, u64 *old)
>  {
> +	int err;
> +	bool wrapped;
> +	struct cs_etm_recording *ptr =
> +			container_of(itr, struct cs_etm_recording, itr);
> +
> +	/*
> +	 * Allocate memory to keep track of wrapping if this is the first
> +	 * time we deal with this *mm.
> +	 */
> +	if (idx >= ptr->wrapped_cnt) {
> +		err = cs_etm_alloc_wrapped_array(ptr, idx);
> +		if (err)
> +			return err;
> +	}
> +
> +	/*
> +	 * Check to see if *head has wrapped around.  If it hasn't only the
> +	 * amount of data between *head and *old is snapshot'ed to avoid
> +	 * bloating the perf.data file with zeros.  But as soon as *head has
> +	 * wrapped around the entire size of the AUX ring buffer it taken.
> +	 */
> +	wrapped = ptr->wrapped[idx];
> +	if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
> +		wrapped = true;
> +		ptr->wrapped[idx] = true;
> +	}
> +
>  	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
>  		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
>  
> -	*old = *head;
> -	*head += mm->len;
> +	/* No wrap has occurred, we can just use *head and *old. */
> +	if (!wrapped)
> +		return 0;
> +
> +	/*
> +	 * *head has wrapped around - adjust *head and *old to pickup the
> +	 * entire content of the AUX buffer.
> +	 */
> +	if (*head >= mm->len) {
> +		*old = *head - mm->len;
> +	} else {
> +		*head += mm->len;
> +		*old = *head - mm->len;
> +	}
>  
>  	return 0;
>  }
> @@ -586,6 +703,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
>  {
>  	struct cs_etm_recording *ptr =
>  			container_of(itr, struct cs_etm_recording, itr);
> +
> +	zfree(&ptr->wrapped);
>  	free(ptr);
>  }
>  
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

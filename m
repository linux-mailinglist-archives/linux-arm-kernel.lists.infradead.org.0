Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7E939436
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuVgwgZra5Uc4oeBDheNV34HVFAQ61b7OSQkKc+uq0Y=; b=Jp9F4pA6XN1C90
	6uiufNjqNPyACWcyM8P0em+qanwjA5j2mlct3Sl3p0l/Xl6DcjR+d3IfgYXJHb6rzAdFhZRgAVceT
	t1pwPVUz4BPXPWe7EVYxUb9mvT7bXusXpqIOIrFn29NYVNVzHiI3bjNhIwhSA5CN1k0QIKurSx8eD
	U11omu766v4Kgrv/+ixyhxL1xhyNsUYkwqW/CzTJfNc/MpGRMhTfmj2ZaDsbHd32/T1F9+0/HxKcd
	Bvgb2kzMLUeq31cgt1ttqJ8Y4GbwhcITeCOWRCwOGVY5FnclLtXtcaOIwTZsegwXIoPmhHEvsFbAD
	7mZHsX4khY2XTY1gtvQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJWf-0004Xu-Lg; Fri, 07 Jun 2019 18:23:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJWZ-0004XZ-97
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Jun 2019 18:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tsfr6umeVueoQ8nTR1ppqgNBP/xzgyeaPLGI8Cc6r4c=; b=rcVCqqvr4PR7ypAWazJtnLcub
 7yFmwG67W4q8Cs2wa54tyS11VHkV9KE8VhBuG6iQv903/IIWmibJpn94S+hG+wjMHu8hkylDqh+y+
 zfFdepyFFFXT2N57rzl+Q314pp9YekgGjFziSYfB8e2Oj8GnG4H1VCNK+I8XMPPdKPdtUBwqMFHlb
 OEMdGufMldzMYvkztwpjcGE+Lrj0/Vl7nWh/1U8WVtWaBrpmzPj6N4IBfR4J3mv0V1GtYGULkH9Sd
 eFc4uQMuMUnRqkKtOHl15PlH22e3lthNRAlNdzueruBfbidYQ6Ap/3zhTs0Z4So4SxHF8dpW3w2gU
 AJCp+Z22A==;
Received: from 187-26-97-17.3g.claro.net.br ([187.26.97.17]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJWW-0004gI-N2; Fri, 07 Jun 2019 18:23:33 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id B36CA41149; Fri,  7 Jun 2019 15:23:25 -0300 (-03)
Date: Fri, 7 Jun 2019 15:23:25 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] perf tools: Properly set the value of 'old' and 'head'
 in snapshot mode
Message-ID: <20190607182325.GL21245@kernel.org>
References: <20190605161633.12245-1-mathieu.poirier@linaro.org>
 <20190606201056.GJ21245@kernel.org>
 <20190607064425.GF5970@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607064425.GF5970@leoy-ThinkPad-X240s>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
 peterz@infradead.org, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 07, 2019 at 02:44:25PM +0800, Leo Yan escreveu:
> On Thu, Jun 06, 2019 at 05:10:56PM -0300, Arnaldo Carvalho de Melo wrote:
> > Em Wed, Jun 05, 2019 at 10:16:33AM -0600, Mathieu Poirier escreveu:
> > > This patch adds the necessay intelligence to properly compute the value
> > > of 'old' and 'head' when operating in snapshot mode.  That way we can get
> > > the latest information in the AUX buffer and be compatible with the
> > > generic AUX ring buffer mechanic.
> > 
> > Leo, have you had the chance to test/review this one? Suzuki?
> 
> Sure.  I applied this patch on the perf/core branch (with latest
> commit 3e4fbf36c1e3 'perf augmented_raw_syscalls: Move reading
> filename to the loop') and passed testing with below steps:
> 
> # perf record -e cs_etm/@tmc_etr0/ -S -m,64 --per-thread ./sort &
> [1] 19097
> Bubble sorting array of 30000 elements
> 
> # kill -USR2 19097
> # kill -USR2 19097
> # kill -USR2 19097
> [ perf record: Woken up 4 times to write data ]
> [ perf record: Captured and wrote 0.753 MB perf.data ]
> 
> FWIW:
> 
> Tested-by: Leo Yan <leo.yan@linaro.org>

Thanks a lot, I've added your "Tester notes:" and also your Tested-by:.

As I don't have hardware (yet) to test these patches, tests by people
who can test on real hardware is always super appreciated.

Any suggestions for a SBC that I could buy to be able to do so?

Regards,

- Arnaldo
 
> > I also changed the subject to:
> > 
> >   [PATCH] perf cs-etm: Properly set the value of 'old' and 'head' in snapshot mode
> > 
> > So that when looking at a 'git log --oneline' one can have the proper
> > context and know that its about cs-etm.
> > 
> > - Arnaldo
> >  
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > ---
> > >  tools/perf/arch/arm/util/cs-etm.c | 127 +++++++++++++++++++++++++++++-
> > >  1 file changed, 123 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > > index 911426721170..0a278bbcaba6 100644
> > > --- a/tools/perf/arch/arm/util/cs-etm.c
> > > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > > @@ -31,6 +31,8 @@ struct cs_etm_recording {
> > >  	struct auxtrace_record	itr;
> > >  	struct perf_pmu		*cs_etm_pmu;
> > >  	struct perf_evlist	*evlist;
> > > +	int			wrapped_cnt;
> > > +	bool			*wrapped;
> > >  	bool			snapshot_mode;
> > >  	size_t			snapshot_size;
> > >  };
> > > @@ -536,16 +538,131 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
> > >  	return 0;
> > >  }
> > >  
> > > -static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> > > +static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
> > > +{
> > > +	bool *wrapped;
> > > +	int cnt = ptr->wrapped_cnt;
> > > +
> > > +	/* Make @ptr->wrapped as big as @idx */
> > > +	while (cnt <= idx)
> > > +		cnt++;
> > > +
> > > +	/*
> > > +	 * Free'ed in cs_etm_recording_free().  Using realloc() to avoid
> > > +	 * cross compilation problems where the host's system supports
> > > +	 * reallocarray() but not the target.
> > > +	 */
> > > +	wrapped = realloc(ptr->wrapped, cnt * sizeof(bool));
> > > +	if (!wrapped)
> > > +		return -ENOMEM;
> > > +
> > > +	wrapped[cnt - 1] = false;
> > > +	ptr->wrapped_cnt = cnt;
> > > +	ptr->wrapped = wrapped;
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> > > +				      size_t buffer_size, u64 head)
> > > +{
> > > +	u64 i, watermark;
> > > +	u64 *buf = (u64 *)buffer;
> > > +	size_t buf_size = buffer_size;
> > > +
> > > +	/*
> > > +	 * We want to look the very last 512 byte (chosen arbitrarily) in
> > > +	 * the ring buffer.
> > > +	 */
> > > +	watermark = buf_size - 512;
> > > +
> > > +	/*
> > > +	 * @head is continuously increasing - if its value is equal or greater
> > > +	 * than the size of the ring buffer, it has wrapped around.
> > > +	 */
> > > +	if (head >= buffer_size)
> > > +		return true;
> > > +
> > > +	/*
> > > +	 * The value of @head is somewhere within the size of the ring buffer.
> > > +	 * This can be that there hasn't been enough data to fill the ring
> > > +	 * buffer yet or the trace time was so long that @head has numerically
> > > +	 * wrapped around.  To find we need to check if we have data at the very
> > > +	 * end of the ring buffer.  We can reliably do this because mmap'ed
> > > +	 * pages are zeroed out and there is a fresh mapping with every new
> > > +	 * session.
> > > +	 */
> > > +
> > > +	/* @head is less than 512 byte from the end of the ring buffer */
> > > +	if (head > watermark)
> > > +		watermark = head;
> > > +
> > > +	/*
> > > +	 * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> > > +	 */
> > > +	watermark >>= 3;
> > > +	buf_size >>= 3;
> > > +
> > > +	/*
> > > +	 * If we find trace data at the end of the ring buffer, @head has
> > > +	 * been there and has numerically wrapped around at least once.
> > > +	 */
> > > +	for (i = watermark; i < buf_size; i++)
> > > +		if (buf[i])
> > > +			return true;
> > > +
> > > +	return false;
> > > +}
> > > +
> > > +static int cs_etm_find_snapshot(struct auxtrace_record *itr,
> > >  				int idx, struct auxtrace_mmap *mm,
> > > -				unsigned char *data __maybe_unused,
> > > +				unsigned char *data,
> > >  				u64 *head, u64 *old)
> > >  {
> > > +	int err;
> > > +	bool wrapped;
> > > +	struct cs_etm_recording *ptr =
> > > +			container_of(itr, struct cs_etm_recording, itr);
> > > +
> > > +	/*
> > > +	 * Allocate memory to keep track of wrapping if this is the first
> > > +	 * time we deal with this *mm.
> > > +	 */
> > > +	if (idx >= ptr->wrapped_cnt) {
> > > +		err = cs_etm_alloc_wrapped_array(ptr, idx);
> > > +		if (err)
> > > +			return err;
> > > +	}
> > > +
> > > +	/*
> > > +	 * Check to see if *head has wrapped around.  If it hasn't only the
> > > +	 * amount of data between *head and *old is snapshot'ed to avoid
> > > +	 * bloating the perf.data file with zeros.  But as soon as *head has
> > > +	 * wrapped around the entire size of the AUX ring buffer it taken.
> > > +	 */
> > > +	wrapped = ptr->wrapped[idx];
> > > +	if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
> > > +		wrapped = true;
> > > +		ptr->wrapped[idx] = true;
> > > +	}
> > > +
> > >  	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
> > >  		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
> > >  
> > > -	*old = *head;
> > > -	*head += mm->len;
> > > +	/* No wrap has occurred, we can just use *head and *old. */
> > > +	if (!wrapped)
> > > +		return 0;
> > > +
> > > +	/*
> > > +	 * *head has wrapped around - adjust *head and *old to pickup the
> > > +	 * entire content of the AUX buffer.
> > > +	 */
> > > +	if (*head >= mm->len) {
> > > +		*old = *head - mm->len;
> > > +	} else {
> > > +		*head += mm->len;
> > > +		*old = *head - mm->len;
> > > +	}
> > >  
> > >  	return 0;
> > >  }
> > > @@ -586,6 +703,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
> > >  {
> > >  	struct cs_etm_recording *ptr =
> > >  			container_of(itr, struct cs_etm_recording, itr);
> > > +
> > > +	zfree(&ptr->wrapped);
> > >  	free(ptr);
> > >  }
> > >  
> > > -- 
> > > 2.17.1
> > 
> > -- 
> > 
> > - Arnaldo

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

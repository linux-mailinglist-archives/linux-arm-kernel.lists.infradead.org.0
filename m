Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04895BBA38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7JPJAAKiAV1hHhPXVzfjAyn9eqbkp4fOZ6idzoXhyw=; b=YtC8xhwGUs8WZ2
	KCndpOWqPE+OAkgwuf1eHDiCbAKP0WxynI/gKm8/GQb1FnoqTpqDEeTGVBHqcv2qPQaezI8/YY8yh
	aqoIvJdmAquWQE+ONkBhRLyolE6SwTyKyZQ+ZTdBLsrnuAbzDf7zhnN4FBNNyQgBttIVgjDw+uWHv
	ofwJfhMy6cIJw09yq9SjKVEoFU6+c4C2bY4URqckeEldRTthUrbqEDHtxI/E72U1Ak1XtYY1aeFgz
	aTNARA0v3i6ZxT1spgtrD7LtZbSs65fhIenswUvxD7Du6pSB7UZCI7//1IkikYAWLpL4suY4UiX1O
	8s5JVCQ0pzOaHJaJBuSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRu9-0001eF-TW; Mon, 23 Sep 2019 17:13:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRtx-0001dv-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:13:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id z12so8333289pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 10:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tfsTLDFY1ccam3FUWWjnqOYmfdpnpNmRoJABJz0j6Jw=;
 b=rab4KjXC1CDcjeIdsHH50MINA6B4H/cQqstbVol6cCKHf8vYra1z5ei7gFXzGhZ7EP
 8UDoshJz8VTK87htqLNecFQnuHN2Ros1upeW6VtbuQutaANFFrZeNKMAo2Mt9+iK13dy
 iB+LgWZOkjm70B6aiNKMch4exZwDrSmzHvw+3Rr9p3Xr8gDGSQYL3m6BDHsroTlcYXcV
 y+N8jGyOGGOPIpzuG2w2iOUZDCO/DgEBjv5thouZgICXauIz9IYxe8bsHD2wjU/ro0l/
 +hyx5B4MwnUTvBXhX7KZZspApVhXEdmo+laC4zAtkrQU8Mu8zGA8ltQVBrNQOUVVidx1
 hpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tfsTLDFY1ccam3FUWWjnqOYmfdpnpNmRoJABJz0j6Jw=;
 b=I+SlpTur2kiDDI2ss68QaxbYSHW+DYuVdJ4/2bykeLvClXXQcU+9vF2bXiLfFP7WOu
 azkWk9wJK9rMntlYm6OCDilGJH5nFWMhMP7p7cKMS1ukcE7lHxkEATxItCqZ2E/O46G7
 2PDWstelCj0oJZkNnishYw34cBsYyapRIxObDH6naJNbLXuXbNc9BzEFT+w5NsOqmXMw
 vZQ8ZFswMCvCAUfUSQc2O41NeVI65Cfid/CqETQ3NHK7GuZxt0514RI7DplCAr2++e59
 qqw3g8QnqHzkIDX4g5MY6WrcnEEpNNqV/9TnjvPF3BsdQS/M9q4hDl39h5eodv5DO11R
 Qfgw==
X-Gm-Message-State: APjAAAWLx33+bex73qp50GAS7evL5A0wtrvLD9+HtLibS4FaR6kPMifo
 PlIbht5G5/Zfl+6UuDdibnszyw2R3z22Vw==
X-Google-Smtp-Source: APXvYqy1QDC5+llAVuCG+6Lt9rco93xnDb1jqsxs2nUWrC/qkddy16J7Ri3SZxWDWN2mMuhNCaAgNg==
X-Received: by 2002:a63:f74a:: with SMTP id f10mr931166pgk.171.1569258808707; 
 Mon, 23 Sep 2019 10:13:28 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([12.206.46.62])
 by smtp.gmail.com with ESMTPSA id k4sm11217132pjl.9.2019.09.23.10.13.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Sep 2019 10:13:27 -0700 (PDT)
Date: Tue, 24 Sep 2019 01:13:25 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 1/5] perf cs-etm: Refactor instruction size handling
Message-ID: <20190923171325.GA29675@leoy-ThinkPad-X240s>
References: <20190923160759.14866-1-leo.yan@linaro.org>
 <20190923160759.14866-2-leo.yan@linaro.org>
 <2b675e24-8b06-fbd6-ab73-214a6afb2a07@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b675e24-8b06-fbd6-ab73-214a6afb2a07@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_101329_565809_31DC6CA4 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Mon, Sep 23, 2019 at 05:51:04PM +0100, Suzuki K Poulose wrote:
> Hi Leo,
> 
> On 23/09/2019 17:07, Leo Yan wrote:
> > In cs-etm.c there have several functions need to know instruction size
> > based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
> > these two functions both calculate the instruction size separately.
> > Furthermore, if we consider to add new features later which also might
> > require to calculate instruction size.
> > 
> > For this reason, this patch refactors the code to introduce a new
> > function cs_etm__instr_size(), it will be a central place to calculate
> > the instruction size based on ISA type and instruction address.
> > 
> > For a neat implementation, cs_etm__instr_addr() will always execute the
> > loop without checking ISA type, this allows cs_etm__instr_size() and
> > cs_etm__instr_addr() have no any duplicate code with each other and both
> > functions can be changed independently later without breaking anything.
> > As a side effect, cs_etm__instr_addr() will do a few more iterations for
> > A32/A64 instructions, this would be fine if consider perf tool runs in
> > the user space.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> 
> Your changes look fine to me. However, please see my comment below.
> 
> > ---
> >   tools/perf/util/cs-etm.c | 48 +++++++++++++++++++++++-----------------
> >   1 file changed, 28 insertions(+), 20 deletions(-)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index f87b9c1c9f9a..1de3f9361193 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -917,6 +917,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
> >   	return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
> >   }
> > +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> > +				     u8 trace_chan_id,
> > +				     enum cs_etm_isa isa,
> > +				     u64 addr)
> > +{
> > +	int insn_len;
> > +
> > +	/*
> > +	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > +	 * cs_etm__t32_instr_size().
> > +	 */
> > +	if (isa == CS_ETM_ISA_T32)
> > +		insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> > +	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > +	else
> > +		insn_len = 4;
> > +
> > +	return insn_len;
> > +}
> > +
> >   static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
> >   {
> >   	/* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> > @@ -941,19 +961,15 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> >   				     const struct cs_etm_packet *packet,
> >   				     u64 offset)
> >   {
> > -	if (packet->isa == CS_ETM_ISA_T32) {
> > -		u64 addr = packet->start_addr;
> > +	u64 addr = packet->start_addr;
> > -		while (offset > 0) {
> > -			addr += cs_etm__t32_instr_size(etmq,
> > -						       trace_chan_id, addr);
> > -			offset--;
> > -		}
> > -		return addr;
> > +	while (offset > 0) {
> 
> Given that offset is u64, the check above is not appropriate. You could either
> change it to :
> 	while (offset) // if you are sure (s64)offset always is a postive
> integer and we always reduce it by 1.
> 
> Otherwise you may switch the offset to a signed type. I understand that this
> is not introduced by your changes. But you may fix that up in a separate patch.

Thanks a lot for the review.  Seems to me the reliable fix is to change
to a signed type.  Will add this fix in next spin.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

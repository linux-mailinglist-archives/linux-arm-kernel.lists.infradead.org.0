Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51162BB9EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eOq4JAkm46BtbGcAwXliQYDCq1haiRXe9OcOUj4+ikM=; b=sr9/WQ+1Bm9ub57xNpD+0gQCa
	aYBKLuUbOHbH5nbtu/v+Jsxh7qq/wH6JWmVuJdIhP9HNsXZv9x+7OOqgnK22v4JwoPuJOrwmbpnGU
	B2TvyflF4AYXT3IKRumlQ3ocoz80fYA0FmbfVuDp11rtKwNVXlfGAdH7UBuUSG+WZP3EjlXBF9d2d
	28qPw8boXcYdqr828oYUbYBuCQgcCof2iuodi67wHzHgBl5rh+XUKYfvdSC0inlQ/IFuNT2ztNbUV
	JSpiAfbLlrX1m6eqv7NYk1e3ccJfyrLFra6OTmiD7j0Ka0ctsd3puMybKtCJplZBlzr4fOri68Rnn
	PXSi7Y9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRYd-0001af-Ax; Mon, 23 Sep 2019 16:51:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRYS-0001Zu-Us
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:51:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 415371000;
 Mon, 23 Sep 2019 09:51:14 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F22DD3F67D;
 Mon, 23 Sep 2019 09:51:06 -0700 (PDT)
Subject: Re: [PATCH v2 1/5] perf cs-etm: Refactor instruction size handling
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Coresight ML <coresight@lists.linaro.org>
References: <20190923160759.14866-1-leo.yan@linaro.org>
 <20190923160759.14866-2-leo.yan@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <2b675e24-8b06-fbd6-ab73-214a6afb2a07@arm.com>
Date: Mon, 23 Sep 2019 17:51:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190923160759.14866-2-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_095117_084431_704BF19F 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On 23/09/2019 17:07, Leo Yan wrote:
> In cs-etm.c there have several functions need to know instruction size
> based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
> these two functions both calculate the instruction size separately.
> Furthermore, if we consider to add new features later which also might
> require to calculate instruction size.
> 
> For this reason, this patch refactors the code to introduce a new
> function cs_etm__instr_size(), it will be a central place to calculate
> the instruction size based on ISA type and instruction address.
> 
> For a neat implementation, cs_etm__instr_addr() will always execute the
> loop without checking ISA type, this allows cs_etm__instr_size() and
> cs_etm__instr_addr() have no any duplicate code with each other and both
> functions can be changed independently later without breaking anything.
> As a side effect, cs_etm__instr_addr() will do a few more iterations for
> A32/A64 instructions, this would be fine if consider perf tool runs in
> the user space.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Your changes look fine to me. However, please see my comment below.

> ---
>   tools/perf/util/cs-etm.c | 48 +++++++++++++++++++++++-----------------
>   1 file changed, 28 insertions(+), 20 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index f87b9c1c9f9a..1de3f9361193 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -917,6 +917,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
>   	return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
>   }
>   
> +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> +				     u8 trace_chan_id,
> +				     enum cs_etm_isa isa,
> +				     u64 addr)
> +{
> +	int insn_len;
> +
> +	/*
> +	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
> +	 * cs_etm__t32_instr_size().
> +	 */
> +	if (isa == CS_ETM_ISA_T32)
> +		insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> +	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +	else
> +		insn_len = 4;
> +
> +	return insn_len;
> +}
> +
>   static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
>   {
>   	/* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> @@ -941,19 +961,15 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
>   				     const struct cs_etm_packet *packet,
>   				     u64 offset)
>   {
> -	if (packet->isa == CS_ETM_ISA_T32) {
> -		u64 addr = packet->start_addr;
> +	u64 addr = packet->start_addr;
>   
> -		while (offset > 0) {
> -			addr += cs_etm__t32_instr_size(etmq,
> -						       trace_chan_id, addr);
> -			offset--;
> -		}
> -		return addr;
> +	while (offset > 0) {

Given that offset is u64, the check above is not appropriate. You could either
change it to :
	while (offset) // if you are sure (s64)offset always is a postive
integer and we always reduce it by 1.

Otherwise you may switch the offset to a signed type. I understand that this
is not introduced by your changes. But you may fix that up in a separate patch.


Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

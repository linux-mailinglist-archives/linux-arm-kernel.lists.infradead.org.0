Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6FE154421
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 13:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTuBPsRXcLYyxCl+ctuud/BGcXuCbBv/qYUvKwuAs5M=; b=HQ2wjUawCRixaz
	uZANzul0/UqRsWXO0biADnIBg9XR/Pwn4Trr3TK8pxm2MDbagtZYBgEvQzM2eWoYHZh/eF/sQ6VeA
	HpZ1qAMHW9Ggg9j5j8x8gBOzNKsgo+tgHeB7KtYlTJpsmLdicizt64PiOhz+JL53XcCRhoP8UMcFZ
	eqgh31ZLvNyzvVhVoaWT1DYMHY1YeYgaO+om63ZOeLSFxjdXERgsiqRxZi1DefoJW/cElOdhYEWvp
	OQ5QjhQfIXm0t7DPPEZdbgr1pPiRrIuy9eGo3wXdyXv6jCBC8FThYx4BTV/jQROhLX0t2U+zPCFwj
	boIPBAmJ15smhIez9mwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgP4-0000eU-JJ; Thu, 06 Feb 2020 12:37:06 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgOu-0000da-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 12:36:58 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p2so2730948qvo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 04:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUwmB6pLm1GEsn/L8zF8glzZF4rqmSPF22o5h0xr+2E=;
 b=lZx/n+OqjjhRfsxxr6sDFrGBej4mKe0jLFOJK+tMNyhZ2/dz6ghrL8tMa5FX2On9gN
 njZh7V8bQXdag9yD1//HZ9cFbSicAlGjVqkff76EXIObD9vPJ8WDFWME56QbrCIRASKj
 5S7vHeshuTCfG19yBQDSjpuU+Vtrq08RjN8ZhiOkqAWzBvxM494QiSJ+CyS+/EOpI8hf
 MSFIe0fAZxYGdpLacJ74ZR41Hy5BSNwoc2/NK4k/KccnEmsIRfC4NoaQyb9F0UsYT/8a
 +qEswq4A2WHXzmkcxMcL1qb51hSbP4dG4MB2f9kEuD8WcnnyiB9kiLMB9aJPlt3gAjeW
 MEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUwmB6pLm1GEsn/L8zF8glzZF4rqmSPF22o5h0xr+2E=;
 b=TRM2OHdV3R7uE2d8zoLelrILFGl/Tz09XKU117yuIv1N5BjpC3GhztdjIvaMuSG7Ze
 YyMlvhML+r1SAE3GApeIBMs1YyjW04FOMCbpX5TBbuAFSrvjyNg+0hWtSoVn+fGvUZzz
 7us+NVOuToI8MpPExTG2oiCN0t1YP5a/H6QdO1TKb/AIDFBsxJDHJR/VROYkjncGI/Au
 3K6VvjayLA6EFw8xsuPzfZofv/f5Gg53Dn7YFoCTMcVEjq8TTWREcVzLBBhypAscnKMj
 +vqQVHIHEBeMP3h/fyHtau4XcEBgR7kfq3CVjv7vbqAkwkl0OmKNwTBcGbIm4gEzGiNX
 ISHA==
X-Gm-Message-State: APjAAAWe+LOP9I6wrNOWxKnwR7ZXEI6QJCkhcGDN/q/OWPllVyYhUeVL
 6kQDT/zDrbdgsLFSz8hvVqrM4Qg0JPzTCBaZBqdHsQ==
X-Google-Smtp-Source: APXvYqzELyWaNJrtofn/bo6/wn3br3pgWoPYE7GFWl8RGcwA/LeBLUsndoGw3R76DY0zlv+QGGUns4yxANASgHBue9M=
X-Received: by 2002:a0c:e4cc:: with SMTP id g12mr2058307qvm.237.1580992614918; 
 Thu, 06 Feb 2020 04:36:54 -0800 (PST)
MIME-Version: 1.0
References: <20200203020716.31832-1-leo.yan@linaro.org>
 <20200203020716.31832-2-leo.yan@linaro.org>
In-Reply-To: <20200203020716.31832-2-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 6 Feb 2020 12:36:43 +0000
Message-ID: <CAJ9a7Vi37DAZ0q78MahmMQqSxD68Rphaw0t5cMsX3gDk8PA3DA@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] perf cs-etm: Refactor instruction size handling
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_043656_889219_C3BC7314 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On Mon, 3 Feb 2020 at 02:07, Leo Yan <leo.yan@linaro.org> wrote:
>
> cs-etm.c has several functions which need to know instruction size
> based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
> two functions both calculate the instruction size separately with its
> duplicated code.  Furthermore, adding new features later which might
> require to calculate instruction size as well.
>
> For this reason, this patch refactors the code to introduce a new
> function cs_etm__instr_size(), this function is central place to
> calculate the instruction size based on ISA type and instruction
> address.
>
> For a neat implementation, cs_etm__instr_addr() will always execute the
> loop without checking ISA type, this allows cs_etm__instr_size() and
> cs_etm__instr_addr() have no any duplicate code with each other and both
> functions are independent and can be changed separately without breaking
> anything.  As a side effect, cs_etm__instr_addr() will do a few more
> iterations for A32/A64 instructions, this would be fine if consider perf
> is a tool running in the user space.
>

I prefer to take the optimisation win where I can - I always do in the
trace decoder when counting instructions over a range.
Consider that you can be processing MB of trace data, and most likely
that will be A64/A32 on a lot of the current and future platforms.

Therefore I would keep the useful cs_etm__instr_size() function, but
also keep a single ISA check in cs_etm__instr_addr() to do
the (addr + offset * 4) calculation for non T32.

Regards

Mike

> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 48 +++++++++++++++++++++++-----------------
>  1 file changed, 28 insertions(+), 20 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 720108bd8dba..cb6fcc2acca0 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -918,6 +918,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
>         return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
>  }
>
> +static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
> +                                    u8 trace_chan_id,
> +                                    enum cs_etm_isa isa,
> +                                    u64 addr)
> +{
> +       int insn_len;
> +
> +       /*
> +        * T32 instruction size might be 32-bit or 16-bit, decide by calling
> +        * cs_etm__t32_instr_size().
> +        */
> +       if (isa == CS_ETM_ISA_T32)
> +               insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
> +       /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +       else
> +               insn_len = 4;
> +
> +       return insn_len;
> +}
> +
>  static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
>  {
>         /* Returns 0 for the CS_ETM_DISCONTINUITY packet */
> @@ -942,19 +962,15 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
>                                      const struct cs_etm_packet *packet,
>                                      u64 offset)
>  {
> -       if (packet->isa == CS_ETM_ISA_T32) {
> -               u64 addr = packet->start_addr;
> +       u64 addr = packet->start_addr;
>
> -               while (offset) {
> -                       addr += cs_etm__t32_instr_size(etmq,
> -                                                      trace_chan_id, addr);
> -                       offset--;
> -               }
> -               return addr;
> +       while (offset) {
> +               addr += cs_etm__instr_size(etmq, trace_chan_id,
> +                                          packet->isa, addr);
> +               offset--;
>         }
>
> -       /* Assume a 4 byte instruction size (A32/A64) */
> -       return packet->start_addr + offset * 4;
> +       return addr;
>  }
>
>  static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
> @@ -1094,16 +1110,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
>                 return;
>         }
>
> -       /*
> -        * T32 instruction size might be 32-bit or 16-bit, decide by calling
> -        * cs_etm__t32_instr_size().
> -        */
> -       if (packet->isa == CS_ETM_ISA_T32)
> -               sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> -                                                         sample->ip);
> -       /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> -       else
> -               sample->insn_len = 4;
> +       sample->insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> +                                             packet->isa, sample->ip);
>
>         cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
>                            sample->insn_len, (void *)sample->insn);
> --
> 2.17.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

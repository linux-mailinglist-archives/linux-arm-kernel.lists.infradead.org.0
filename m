Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE4C154371
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 12:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqGkuUbLzhaAbUU5wHWZXJokoSIc3Ay/xTynC22gYgM=; b=TcLTuogmHqE800
	ikmYYBgNvAd1OUIHWtOLO8rkNu+51UeUt19p1A6W1ANK8NnakdAsytK37XbpT3I2kf1Nf1KUR6gzZ
	/qq06I+XVJvec0kRuvghMd3sMewrIPPm4YIzw/2Z7lb9BK/81Lm80Qrral8fgkpVsyG4ozgR4XcCw
	/CDAEjhefyQTpebAM/HhO8e69chva0HL8M+louP/7UAWkBp2RdF3Gtghw/XL9icbRVyEHKxuIEjV8
	5FqWeEAD7KFjr/7DiY/vVo5idkPeoRL4FQkmBO572G3u0QxeCQBPuaTc8MqKfAXtovJoz5HXEk20r
	ZmWfb09Lf4OVV54sw9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izfeM-0007Bw-Vk; Thu, 06 Feb 2020 11:48:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfeE-0007BV-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 11:48:43 +0000
Received: by mail-qt1-x841.google.com with SMTP id d18so4201675qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 03:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/pZBjGmRibeFQhst686LZsoek0A7Z7BXLX2DlQFGnY=;
 b=pARo2ubH+1/kHlo6wDUOs+dWvF3SV/Sn0LeNm6q2WWGaQRNSnKT3r4DHohTP2F+qnM
 VV9DsD5ppuSlZ2jwtS+I50q2cV7ik8qxtvr2DWtssf0B5zY3fwPmnbrnq8j69a8q9dwz
 opg+F0aKppVQLYRmVWYWoATvW40iqRJ6BNHlK/lhJG+VpQ9SY2ODxsCiNFFnxhpJNusG
 W6wdOhjf6Nwxx0tlDLYyL2Swx6WCTZP4+WX+XQZWitFUqCB88eSv7OA8zQLIIQngJiHj
 K+rukKxxc2+HwluS4dlHnIptG2xL3jkvXMdQBq4g94lipAtZ5cVMCYhf+ugo77PQVlxa
 rYPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/pZBjGmRibeFQhst686LZsoek0A7Z7BXLX2DlQFGnY=;
 b=qHqGTr7RLAmYGVlwXwqFKSBGr9BmvSoR4Zr4k0RlWvoIzS2+YiegNulK0oL4SOz1PT
 BLBaUqqzEHcL0fDYWQmuyDe2An+jMfc1/pqEijMy5fdogHdOjw/FxFVq0spC9msNLdIb
 A6swBem48TQQg9dzjM65jzdE5lm1OgxdO4fbkbzkL0CSVt3hNnj8HgbD6oXsf2ES4tor
 UkLAw0EMYYse/WOfg32HqWNBUCHSClWqejhKsSKJ8nXisffoLRf3kvXqsKDCoUj6sg9V
 npqZ8BcVw306dsxhLgzaPT1p6ZTbibkV8HLd40cTHNMKIrD/bVSMAjFE1SPjs+9gJpUv
 /nGw==
X-Gm-Message-State: APjAAAVVnrLPLmV00+lVnQgc4zB78v5mhrsK+1hbq2Gt+twmPJRY9ut+
 WsLtCsu6oKjuZ1TTLgDF9QfNt4NbTdFFulduBzzSXw==
X-Google-Smtp-Source: APXvYqzmObYg6m7Lmmdk/gnLgw7URb2vfFfW4dAtBEFqDOxjQOcsIEO/5UpbicQ3YsSQ5XCqf/xKHcw5RcRj/0AkJFw=
X-Received: by 2002:ac8:7b9b:: with SMTP id p27mr2275741qtu.2.1580989721322;
 Thu, 06 Feb 2020 03:48:41 -0800 (PST)
MIME-Version: 1.0
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-6-leo.yan@linaro.org>
In-Reply-To: <20200203015203.27882-6-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 6 Feb 2020 11:48:29 +0000
Message-ID: <CAJ9a7VjnOw_XgFXmOgE7ufB98_VNEZH7vX=8yO5qrogoBqJQXw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] perf cs-etm: Fix unsigned variable comparison to
 zero
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_034842_576756_6DD44C49 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
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

Reviewed by: Mike Leach <mike.leach@linaro.org>

On Mon, 3 Feb 2020 at 01:53, Leo Yan <leo.yan@linaro.org> wrote:
>
> The variable 'offset' in function cs_etm__sample() is u64 type, it's not
> appropriate to check it with 'while (offset > 0)'; this patch changes to
> 'while (offset)'.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index dbddf1eec2be..720108bd8dba 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -945,7 +945,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
>         if (packet->isa == CS_ETM_ISA_T32) {
>                 u64 addr = packet->start_addr;
>
> -               while (offset > 0) {
> +               while (offset) {
>                         addr += cs_etm__t32_instr_size(etmq,
>                                                        trace_chan_id, addr);
>                         offset--;
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

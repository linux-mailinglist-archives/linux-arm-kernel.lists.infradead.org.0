Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481CE395C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yrf6RYRoHLtyAgw5zc4XjDo3EY7MIZePxM4cZPfAm0U=; b=rLeforykcH8a1z
	d9ZcqGUTmpZIRh7ciXiljMJJsHZlVUBXZxFrguM4S+Kgy0EDoWxO+bjMoehXEWCSTzBSONAbo+X5t
	mI0XignyYjuBOSB+fWpw6cYFpqrAuaO/VdvYYVkHwaDN+7oDz8bm+oX8p1VYddivEAheYoul5FhDP
	vxEITtacwOYGkNJnoa4krroMMmg4fvJOVqynUWJ0m83G9ppmvK6vRLkQO+ke7lglWqr9Jzer3kjNW
	klD60PPLPzFq5LXAxeL9FqDd7GTBiC2GgYBxQXmY2oadjDbkonv5Ns5mA5r0BBWLPu4IvYkbm+Y5g
	t5b5SGWyGoPPfmX+zZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKcn-000518-CX; Fri, 07 Jun 2019 19:34:05 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKcc-00050S-PM
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:33:56 +0000
Received: by mail-it1-x142.google.com with SMTP id i21so4433126ita.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 12:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T9Tj5ZjKU2Dvst13bY90aPbdIlkQERL+pEiQI7+DM/c=;
 b=mtz4idoEP9NXZfE9sJM8pP6vJNipA8lG0eo3b6vZE463N7ghaR4SPIbPO4df8si5+5
 3fkLPdcJgpbXp9SselTVLUujvNG11FWbCNvXzrK7OnCrJ3j4/XE6sHeNe8+aazuwc+hb
 g+DFf8m8/ddOHtgs7V63N3LBFT5CmEiKAqPaIGt7DI+XWQy5X+3GH5H0EYpD/WL9ES5O
 R85konXlva+litJbCpGnuCpnddqpWjrR6UJ4zhNUnu54+AWFGly1aQ5KbHDDX2XtB28b
 wpNtHXBqoNPapFl/4KEWxDZufDgKDyyfLmIMXEfX0Btx+yzpICT/UgAbdPuXd6hZdtgz
 Dq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T9Tj5ZjKU2Dvst13bY90aPbdIlkQERL+pEiQI7+DM/c=;
 b=KkqtJR158dfiFrhcbDNJHRTRv7XSIw75ON9kXlhP88LaGGha61uhXvy7FqB9Aa2z/7
 rF92tIu3lt9HaB3bP25MY2XjPgN3F8NvCEV6G4VMh1Fp0HondCeBSMWr1I5avgaXjEvX
 oHpY1FxswW+usNhJ2RgOGzF5Gtl9kh0+qjoQkE6v/hKlWVzYXR9Mn6iVlA8eE7EbVP22
 lUnKOAo4fsSuI4lePd8KYxUcx1qrCIof8uHkhAbOwjbJ0fbAXBuqz/T5Dv58XxG6PaW4
 R5THyh75jiEWPF4q5D7QT6l7wJWLclWq2qXxPfDIx18nn43hKXsGd1cmTz4fWAYm6qht
 sCRg==
X-Gm-Message-State: APjAAAX3jTknr4Wk+DJsnKQz3oDJkbXVfGBDiHCYeMNR7p3wJWIiE5ve
 MGK04lz+2D4Es/2uiD66mcCGMIeUiViLyD2jABO4Nw==
X-Google-Smtp-Source: APXvYqyIzt+gS3ConXIodeeRJIgcUDgjzZUqKKTsCWXlpXgPJnTVfaLQpACElYgwvkNg6VfdHTgVBjvO2IaFejVJzgU=
X-Received: by 2002:a24:14f:: with SMTP id 76mr5248389itk.115.1559936031969;
 Fri, 07 Jun 2019 12:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-2-mathieu.poirier@linaro.org>
 <68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com>
 <20190607182047.GK21245@kernel.org>
In-Reply-To: <20190607182047.GK21245@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 7 Jun 2019 13:33:41 -0600
Message-ID: <CANLsYkykW=rf_c6-ci=fV05u7TP9M3rrEUSdUn-bKw1PHvfoZQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/17] perf tools: Configure contextID tracing in
 CPU-wide mode
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_123354_832739_3FBE261B 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 12:20, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Fri, Jun 07, 2019 at 10:21:36AM +0100, Suzuki K Poulose escreveu:
> > Hi Mathieu,
> >
> > On 24/05/2019 18:34, Mathieu Poirier wrote:
> > > When operating in CPU-wide mode being notified of contextID changes is
> > > required so that the decoding mechanic is aware of the process context
> > > switch.
> > >
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >
> >
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > I am sorry but, I don't remember reviewing this patch in the previous
> > postings. But here we go.
>
> Can I keep it as is? I addressed one of your concerns below, please
> check.
>
> - Arnaldo
>
> > > +++ b/tools/perf/util/cs-etm.h
> > > @@ -103,6 +103,18 @@ struct intlist *traceid_list;
> > >   #define KiB(x) ((x) * 1024)
> > >   #define MiB(x) ((x) * 1024 * 1024)
> > > +/*
> > > + * Create a contiguous bitmask starting at bit position @l and ending at
> > > + * position @h. For example
> > > + * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
> > > + *
> > > + * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
> > > + */
> > > +#define GENMASK(h, l) \
> > > +   (((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
> > > +
> >
> > minor nit: Could this be placed in a more generic header file for the other
> > parts of the perf tool to consume ?
> >
>
> Yeah, since we have:
>
> Good catch, we have it already:
>
> [acme@quaco perf]$ tail tools/include/linux/bits.h
>  * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
>  */
> #define GENMASK(h, l) \
>         (((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
>
> #define GENMASK_ULL(h, l) \
>         (((~0ULL) - (1ULL << (l)) + 1) & \
>          (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
>
> #endif  /* __LINUX_BITS_H */
> [acme@quaco perf]$
> [acme@quaco perf]$
>
> So I'm adding this to the pile with a Suggested-by: Suzuki, ok?
>
> commit 3217a621248824fbff8563d8447fdafe69c5316d
> Author: Arnaldo Carvalho de Melo <acme@redhat.com>
> Date:   Fri Jun 7 15:14:27 2019 -0300
>
>     perf cs-etm: Remove duplicate GENMASK() define, use linux/bits.h instead
>
>     Suzuki noticed that this should be more useful in a generic header, and
>     after looking I noticed we have it already in our copy of
>     include/linux/bits.h in tools/include, so just use it, test built on
>     x86-64 and ubuntu 19.04 with:
>
>       perfbuilder@46646c9e848e:/$ aarch64-linux-gnu-gcc --version |& head -1
>       aarch64-linux-gnu-gcc (Ubuntu/Linaro 8.3.0-6ubuntu1) 8.3.0
>       perfbuilder@46646c9e848e:/$
>
>     Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>     Link: https://lkml.kernel.org/r/68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com
>     Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>     Cc: Jiri Olsa <jolsa@redhat.com>
>     Cc: Leo Yan <leo.yan@linaro.org>
>     Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>     Cc: Namhyung Kim <namhyung@kernel.org>
>     Cc: Peter Zijlstra <peterz@infradead.org>
>     Cc: coresight@lists.linaro.org
>     Cc: linux-arm-kernel@lists.infradead.org,
>     Link: https://lkml.kernel.org/n/tip-69pd3mqvxdlh2shddsc7yhyv@git.kernel.org
>     Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
>
> diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
> index 33b57e748c3d..bc848fd095f4 100644
> --- a/tools/perf/util/cs-etm.h
> +++ b/tools/perf/util/cs-etm.h
> @@ -9,6 +9,7 @@
>
>  #include "util/event.h"
>  #include "util/session.h"
> +#include <linux/bits.h>
>
>  /* Versionning header in case things need tro change in the future.  That way
>   * decoding of old snapshot is still possible.
> @@ -161,16 +162,6 @@ struct cs_etm_packet_queue {
>
>  #define CS_ETM_INVAL_ADDR 0xdeadbeefdeadbeefUL
>
> -/*
> - * Create a contiguous bitmask starting at bit position @l and ending at
> - * position @h. For example
> - * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
> - *
> - * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
> - */
> -#define GENMASK(h, l) \
> -       (((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
> -

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  #define BMVAL(val, lsb, msb)   ((val & GENMASK(msb, lsb)) >> lsb)
>
>  #define CS_ETM_HEADER_SIZE (CS_HEADER_VERSION_0_MAX * sizeof(u64))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

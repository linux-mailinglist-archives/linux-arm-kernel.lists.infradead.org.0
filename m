Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E314C4AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 02:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orkEu3ELLa71oDVcDNYOZD0kd0QrNWWVjksKHwcq4RA=; b=MuB1+7DQKD40bZ
	1k54Yw/ij6d4t7mDTwyKAmT2s9nrWsmBFmrWLequ6fcswpOxymwYrznRR0Xwd5hVhjQHyA8HeBcsw
	V6Xf1DgsNY2UMp0z6ZdkYpAEjN/TIA62GjggTjD9MdTHYGl3bksou5QpLXIkoVHIj/Ml9AAHHQmlI
	IUpk3S0BNejwnjbAB9O+K75VscJNR/nfpzvY8yEUa9L3ZnLh43PHsuxwJ+1K5T12zlzAt+FtQ22dY
	e5QLnip6uw75KqL7y2HgCShg24uqOt+Br7wu0ivD9qovn/yB5iUS32QNrEBYsaVj5cFQ7JeLLFmEE
	biKuyuS0DrYN29sOO4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlPg-0007by-Am; Thu, 20 Jun 2019 00:58:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlPS-0007be-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 00:58:39 +0000
Received: by mail-ot1-x344.google.com with SMTP id b7so970463otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 17:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pv6DYs/rgMUhmFVTIlv6mQtmI4/e3SRdgmeYYSiE/gY=;
 b=oTUnU1I9Q3P6mnwGmSHo8VtVE9FzfceDm8JYzas75iB8Vpe9bONAVPH2S3TkqM2T1F
 AfMa+uPb+HeX3Uw62WFDmNKu7P8wioRQ2b3H0FBzHxKQnhgOOWvrNf5guNAdwAaDrF/I
 xpJ/tV30aZvykXO0oOcH6KE4RQNKoOOFP/boZ/cieuj+impdRqlqR+E45fvl9LeIx1Md
 p91138c9GCF1m2LJIz2xmLR3PzI9z8/c1OIFmPjKktYAjHDR16lNQgi3V8PXARwSA4Tr
 pDxI9ygK81Mrd5QIssaBJhkHuqk1eXDNVLVe7aTsXm1Oyh8sR7oGawQguh8x4lYDolkK
 OGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pv6DYs/rgMUhmFVTIlv6mQtmI4/e3SRdgmeYYSiE/gY=;
 b=TFzFUBFJYGVZsB/ibzQElcQzxO+lbl9hZNQdtur8ELKiNFTqiyGqw/OVTK5VeIy7dT
 8JHg6oxvC/4FyXi6RrK0/9SjpIUBaiQwnHAFryF+9AzlQtD+psUsLHZyTdHJCxuwpbTX
 4Qv4AhN9C+OWDhCT1hzcuiH+QiKmofHzK/E5Ta2WbdJe7QDWW6oKvxlQKp5k9gld/0nW
 rMzxYkD954ykjYcIdIygTfO1TxkgyWnj6cHqq12AQZYAYFmYCinvhTd296nyFiU9l+x8
 w4H9CdRjT+blD6Gnk41oGiJ3RyWZQaj//+RO6MBoCZhKSWjeLzL+FN4OkJyser3jWUhM
 HzZg==
X-Gm-Message-State: APjAAAUjStdBqw3CXgfzNSBee9pmNO2HCxnhli/1EPHP9bVhwxJkmBfL
 xI9voach/6ZI5CQSu0DUF32dJA==
X-Google-Smtp-Source: APXvYqyGWcBsRjlJt5apXMRax/dVlTZbIM5JD9/pIw5q+E7QvXP98lnAmkC5vhNUCGfuVZN3B0sKsA==
X-Received: by 2002:a9d:7d05:: with SMTP id v5mr8624081otn.245.1560992317485; 
 Wed, 19 Jun 2019 17:58:37 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id j135sm1940279oib.19.2019.06.19.17.58.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 17:58:36 -0700 (PDT)
Date: Thu, 20 Jun 2019 08:58:29 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] perf cs-etm: Improve completeness for kernel address space
Message-ID: <20190620005829.GH24549@leoy-ThinkPad-X240s>
References: <20190617150024.11787-1-leo.yan@linaro.org>
 <CANLsYkyMW=WG+=yWTLSyMT3JXqd_2kvsrx9c-EwCoKEnRZvErA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyMW=WG+=yWTLSyMT3JXqd_2kvsrx9c-EwCoKEnRZvErA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_175838_180585_441B10A0 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Wed, Jun 19, 2019 at 11:49:44AM -0600, Mathieu Poirier wrote:

[...]

> > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > index 51dd00f65709..4776c2c1fb6d 100644
> > --- a/tools/perf/Makefile.config
> > +++ b/tools/perf/Makefile.config
> > @@ -418,6 +418,30 @@ ifdef CORESIGHT
> >      endif
> >      LDFLAGS += $(LIBOPENCSD_LDFLAGS)
> >      EXTLIBS += $(OPENCSDLIBS)
> > +    ifneq ($(wildcard $(srctree)/arch/arm64/kernel/vmlinux.lds),)
> > +      # Extract info from lds:
> > +      #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> > +      # ARM64_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000)
> > +      ARM64_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> > +        $(srctree)/arch/arm64/kernel/vmlinux.lds | \
> > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +        awk -F' ' '{print "("$$6 "+"  $$7 "+" $$8")"}' 2>/dev/null)
> > +    else
> > +      ARM64_PRE_START_SIZE := 0
> > +    endif
> > +    CFLAGS += -DARM64_PRE_START_SIZE="$(ARM64_PRE_START_SIZE)"
> > +    ifneq ($(wildcard $(srctree)/arch/arm/kernel/vmlinux.lds),)
> > +      # Extract info from lds:
> > +      #   . = ((0xC0000000)) + 0x00208000;
> > +      # ARM_PRE_START_SIZE := 0x00208000
> > +      ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> > +        $(srctree)/arch/arm/kernel/vmlinux.lds | \
> > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +        awk -F' ' '{print "("$$2")"}' 2>/dev/null)
> > +    else
> > +      ARM_PRE_START_SIZE := 0
> > +    endif
> > +    CFLAGS += -DARM_PRE_START_SIZE="$(ARM_PRE_START_SIZE)"
> >      $(call detected,CONFIG_LIBOPENCSD)
> >      ifdef CSTRACE_RAW
> >        CFLAGS += -DCS_DEBUG_RAW
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 0c7776b51045..ae831f836c70 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -613,10 +613,34 @@ static void cs_etm__free(struct perf_session *session)
> >  static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
> >  {
> >         struct machine *machine;
> > +       u64 fixup_kernel_start = 0;
> > +       const char *arch;
> >
> >         machine = etmq->etm->machine;
> > +       arch = perf_env__arch(machine->env);
> >
> > -       if (address >= etmq->etm->kernel_start) {
> > +       /*
> > +        * Since arm and arm64 specify some memory regions prior to
> > +        * 'kernel_start', kernel addresses can be less than 'kernel_start'.
> > +        *
> > +        * For arm architecture, the 16MB virtual memory space prior to
> > +        * 'kernel_start' is allocated to device modules, a PMD table if
> > +        * CONFIG_HIGHMEM is enabled and a PGD table.
> > +        *
> > +        * For arm64 architecture, the root PGD table, device module memory
> > +        * region and BPF jit region are prior to 'kernel_start'.
> > +        *
> > +        * To reflect the complete kernel address space, compensate these
> > +        * pre-defined regions for kernel start address.
> > +        */
> > +       if (!strcmp(arch, "arm64"))
> > +               fixup_kernel_start = etmq->etm->kernel_start -
> > +                                    ARM64_PRE_START_SIZE;
> > +       else if (!strcmp(arch, "arm"))
> > +               fixup_kernel_start = etmq->etm->kernel_start -
> > +                                    ARM_PRE_START_SIZE;
> 
> I will test your work but from a quick look wouldn't it be better to
> have a single define name here?  From looking at the modifications you
> did to Makefile.config there doesn't seem to be a reason to have two.

Thanks for suggestion.  I changed to use single define
ARM_PRE_START_SIZE and sent patch v2 [1].

If possible, please test patch v2.

Thanks,
Leo Yan

[1] https://lore.kernel.org/linux-arm-kernel/20190620005428.20883-1-leo.yan@linaro.org/T/#u

> > +
> > +       if (address >= fixup_kernel_start) {
> >                 if (machine__is_host(machine))
> >                         return PERF_RECORD_MISC_KERNEL;
> >                 else
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

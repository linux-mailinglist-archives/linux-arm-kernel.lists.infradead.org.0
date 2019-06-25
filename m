Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6C5555A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vfrop1T40eavWNa1wMoSUWbIdLuj/Zuv5iw2Dwn4do=; b=ZdjhGm2mLaHrMc
	7RZ1DbpBY8f8DCqA3rRs3ygqAm6VglqObqd/N0PbLcD5ZH8T/EWA98+Sh8ewaDNRe3FehyNQ5fQGQ
	5PhUA3OA+doFZ5sQd+DglVVZ/Lzpizj8AkyUB1o5R8UxFGxJjxc5mmOs9S9yAzE+2/XjBYhHYJPDt
	JmEYWaXJzIpfCVqOWjro8BiQGQ3hngZ4djeoRwnQA1b7PnWw9BCbMSalipkbhlDgDa/NDepqgs7eK
	6S9gKGL2E1fDYh43M5am2BWKXDnKaqRv8q3C2Sf+AQOX3dw9KgKVf5L0hjgXvoTer3Hmscy3+0G7r
	thcaHzbgyTjP08LojFlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfp1d-0000Wy-N3; Tue, 25 Jun 2019 17:14:33 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfp1J-0000Vq-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:14:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id e3so1192667ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 10:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rIEg9mImdLbOPWr5JcAO9mpGaP6d2/FlgncwQFfkJdw=;
 b=iFw/1dYYVqRHgcAh1TpJFGK77tujLxqxZtyDQdAChfPK8J2o5Z35qj7HlPTvAoJDh0
 0LUe8zRzcBUHlMIsII05VrtML3UOjVu/FQEjIrmezQ6XDdecyYt7zJPA5fpXIGdpt63p
 DHUgZqIHhAHn5Y29772IQWcGUWCAZyj5Z2xwo8VQFeDUCFWyvp8tluEdpnBnrkD63QQv
 TQwDL87DoNOU7cDCAPKgC+e7rxUyug338krujNQfqkEtiqWde1T1kd0ZNcLYKO+v1JaY
 zr5Ga8ex+w/NpqHgnMXiK+QpBeUCEVe1JKHl6CYdS6u3bHTHx1BMwcVsbzZ5dFI0KiG1
 qqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rIEg9mImdLbOPWr5JcAO9mpGaP6d2/FlgncwQFfkJdw=;
 b=Xg+CVbN1b92cXxsna1lw6KFDaJOU84hSWPsQIx7cTrIAEHvCbRZ48HJDOXFRO6TDbL
 mPbQwy0vD+EU0Cf1yMk9Xj9LuWy6gK7euAe0pxBOkpOQ/ccJQpz4OLGGmipAAZ8Eb2YX
 08OpoydOqaC6mZay8u4q6DS3hNPgYdaSo4JK8Huk29w2A8xKXXRJcWpeSobih6JD6FVE
 hIYanKFDSq8+iY/y14BTdxn6S67AT03mU4098B2f+BQNR6FmjfopGcFUqZknCTi3/fgs
 bYUbwSmAw4aELGYcBqo2Salrf+dtpGiZLCWKXOvVsORZMMxJ8WXSZk7e7ecGWi3ojI5n
 uhIA==
X-Gm-Message-State: APjAAAW++aM/qx8XCIHlYdTDEqoXrz10sGs+FOnwJklmjpISOSrRrG0Y
 qFyJ1Grj9khJd6UeXcm4V7xZioJkf8B3TJJ6wFpT4A==
X-Google-Smtp-Source: APXvYqxatAKGOw2Hd80AGbHfI0zoxMZ2N12wP/Os4mMS4dOimgUUQdghFbrjzzb/zt7brOd5o3IjqgB2yyjTx1aDKS8=
X-Received: by 2002:a05:6638:3d6:: with SMTP id
 r22mr457862jaq.71.1561482851619; 
 Tue, 25 Jun 2019 10:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190617150024.11787-1-leo.yan@linaro.org>
 <CANLsYkyMW=WG+=yWTLSyMT3JXqd_2kvsrx9c-EwCoKEnRZvErA@mail.gmail.com>
 <20190620005829.GH24549@leoy-ThinkPad-X240s>
 <20190624190009.GE4181@kernel.org>
In-Reply-To: <20190624190009.GE4181@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 25 Jun 2019 11:14:00 -0600
Message-ID: <CANLsYkyOOS_ow_bRpok+V73_EBRg2yechwF0VHLtDBWB4VBEBw@mail.gmail.com>
Subject: Re: [PATCH] perf cs-etm: Improve completeness for kernel address space
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_101413_981897_6A7FDD4D 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, bpf@vger.kernel.org,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 13:00, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Thu, Jun 20, 2019 at 08:58:29AM +0800, Leo Yan escreveu:
> > Hi Mathieu,
> >
> > On Wed, Jun 19, 2019 at 11:49:44AM -0600, Mathieu Poirier wrote:
> >
> > [...]
> >
> > > > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > > > index 51dd00f65709..4776c2c1fb6d 100644
> > > > --- a/tools/perf/Makefile.config
> > > > +++ b/tools/perf/Makefile.config
> > > > @@ -418,6 +418,30 @@ ifdef CORESIGHT
> > > >      endif
> > > >      LDFLAGS += $(LIBOPENCSD_LDFLAGS)
> > > >      EXTLIBS += $(OPENCSDLIBS)
> > > > +    ifneq ($(wildcard $(srctree)/arch/arm64/kernel/vmlinux.lds),)
> > > > +      # Extract info from lds:
> > > > +      #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> > > > +      # ARM64_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000)
> > > > +      ARM64_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> > > > +        $(srctree)/arch/arm64/kernel/vmlinux.lds | \
> > > > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > > > +        awk -F' ' '{print "("$$6 "+"  $$7 "+" $$8")"}' 2>/dev/null)
> > > > +    else
> > > > +      ARM64_PRE_START_SIZE := 0
> > > > +    endif
> > > > +    CFLAGS += -DARM64_PRE_START_SIZE="$(ARM64_PRE_START_SIZE)"
> > > > +    ifneq ($(wildcard $(srctree)/arch/arm/kernel/vmlinux.lds),)
> > > > +      # Extract info from lds:
> > > > +      #   . = ((0xC0000000)) + 0x00208000;
> > > > +      # ARM_PRE_START_SIZE := 0x00208000
> > > > +      ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> > > > +        $(srctree)/arch/arm/kernel/vmlinux.lds | \
> > > > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > > > +        awk -F' ' '{print "("$$2")"}' 2>/dev/null)
> > > > +    else
> > > > +      ARM_PRE_START_SIZE := 0
> > > > +    endif
> > > > +    CFLAGS += -DARM_PRE_START_SIZE="$(ARM_PRE_START_SIZE)"
> > > >      $(call detected,CONFIG_LIBOPENCSD)
> > > >      ifdef CSTRACE_RAW
> > > >        CFLAGS += -DCS_DEBUG_RAW
> > > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > > index 0c7776b51045..ae831f836c70 100644
> > > > --- a/tools/perf/util/cs-etm.c
> > > > +++ b/tools/perf/util/cs-etm.c
> > > > @@ -613,10 +613,34 @@ static void cs_etm__free(struct perf_session *session)
> > > >  static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
> > > >  {
> > > >         struct machine *machine;
> > > > +       u64 fixup_kernel_start = 0;
> > > > +       const char *arch;
> > > >
> > > >         machine = etmq->etm->machine;
> > > > +       arch = perf_env__arch(machine->env);
> > > >
> > > > -       if (address >= etmq->etm->kernel_start) {
> > > > +       /*
> > > > +        * Since arm and arm64 specify some memory regions prior to
> > > > +        * 'kernel_start', kernel addresses can be less than 'kernel_start'.
> > > > +        *
> > > > +        * For arm architecture, the 16MB virtual memory space prior to
> > > > +        * 'kernel_start' is allocated to device modules, a PMD table if
> > > > +        * CONFIG_HIGHMEM is enabled and a PGD table.
> > > > +        *
> > > > +        * For arm64 architecture, the root PGD table, device module memory
> > > > +        * region and BPF jit region are prior to 'kernel_start'.
> > > > +        *
> > > > +        * To reflect the complete kernel address space, compensate these
> > > > +        * pre-defined regions for kernel start address.
> > > > +        */
> > > > +       if (!strcmp(arch, "arm64"))
> > > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > > +                                    ARM64_PRE_START_SIZE;
> > > > +       else if (!strcmp(arch, "arm"))
> > > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > > +                                    ARM_PRE_START_SIZE;
> > >
> > > I will test your work but from a quick look wouldn't it be better to
> > > have a single define name here?  From looking at the modifications you
> > > did to Makefile.config there doesn't seem to be a reason to have two.
> >
> > Thanks for suggestion.  I changed to use single define
> > ARM_PRE_START_SIZE and sent patch v2 [1].
> >
> > If possible, please test patch v2.
> >
> > Thanks,
> > Leo Yan
>
> So just for the record, I'm waiting for Mathieu on this one, i.e. for
> him to test/ack v3.

Right, please give me some time to test this.  As Leo indicated the
procedure is time consuming.

Thanks,
Mathieu

>
> - Arnaldo
>
> > [1] https://lore.kernel.org/linux-arm-kernel/20190620005428.20883-1-leo.yan@linaro.org/T/#u
> >
> > > > +
> > > > +       if (address >= fixup_kernel_start) {
> > > >                 if (machine__is_host(machine))
> > > >                         return PERF_RECORD_MISC_KERNEL;
> > > >                 else
> > > > --
> > > > 2.17.1
> > > >
>
> --
>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

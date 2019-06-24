Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7238051B14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 21:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4a51vPDmcI10YRLLaFmh7466X4pCo+wKN8J0i26U+M=; b=nbPWLv/7ji4LOP
	hHldMJDF6V3beXV5mzac7GL7ZgiYjESJSnYZZdREE+f0KRAiXgbYFAoAuqB2nUewZhFKyvz0Eivjr
	YRYNN+d/skyT7AC/Zr0t8ALN5/aOU0+M/lYFlL5ggeyejij8JVt40A0Ohu0usif1ssttyavBB+83E
	pN5TxHy1aKJJDQGHHhw0TY4PoszhTQlZB/UXWrbAtCHf83XaBcrL/U9LgY8wY3dnXOBOmCV7ZVETb
	IVz8QyptrffGd4CaKgXwsjpulvURESD9vyQP+exEoRo+FnDSooTwwyneavLps8H8Sfh+Zlrj1dptr
	gGe/NuXZdRFk6QwG7asw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUCq-0006Wa-DY; Mon, 24 Jun 2019 19:00:44 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUCP-0005wq-Lb; Mon, 24 Jun 2019 19:00:18 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id F01D341153; Mon, 24 Jun 2019 16:00:09 -0300 (-03)
Date: Mon, 24 Jun 2019 16:00:09 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] perf cs-etm: Improve completeness for kernel address space
Message-ID: <20190624190009.GE4181@kernel.org>
References: <20190617150024.11787-1-leo.yan@linaro.org>
 <CANLsYkyMW=WG+=yWTLSyMT3JXqd_2kvsrx9c-EwCoKEnRZvErA@mail.gmail.com>
 <20190620005829.GH24549@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620005829.GH24549@leoy-ThinkPad-X240s>
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu, Jun 20, 2019 at 08:58:29AM +0800, Leo Yan escreveu:
> Hi Mathieu,
> 
> On Wed, Jun 19, 2019 at 11:49:44AM -0600, Mathieu Poirier wrote:
> 
> [...]
> 
> > > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > > index 51dd00f65709..4776c2c1fb6d 100644
> > > --- a/tools/perf/Makefile.config
> > > +++ b/tools/perf/Makefile.config
> > > @@ -418,6 +418,30 @@ ifdef CORESIGHT
> > >      endif
> > >      LDFLAGS += $(LIBOPENCSD_LDFLAGS)
> > >      EXTLIBS += $(OPENCSDLIBS)
> > > +    ifneq ($(wildcard $(srctree)/arch/arm64/kernel/vmlinux.lds),)
> > > +      # Extract info from lds:
> > > +      #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> > > +      # ARM64_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000)
> > > +      ARM64_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> > > +        $(srctree)/arch/arm64/kernel/vmlinux.lds | \
> > > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > > +        awk -F' ' '{print "("$$6 "+"  $$7 "+" $$8")"}' 2>/dev/null)
> > > +    else
> > > +      ARM64_PRE_START_SIZE := 0
> > > +    endif
> > > +    CFLAGS += -DARM64_PRE_START_SIZE="$(ARM64_PRE_START_SIZE)"
> > > +    ifneq ($(wildcard $(srctree)/arch/arm/kernel/vmlinux.lds),)
> > > +      # Extract info from lds:
> > > +      #   . = ((0xC0000000)) + 0x00208000;
> > > +      # ARM_PRE_START_SIZE := 0x00208000
> > > +      ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> > > +        $(srctree)/arch/arm/kernel/vmlinux.lds | \
> > > +        sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > > +        awk -F' ' '{print "("$$2")"}' 2>/dev/null)
> > > +    else
> > > +      ARM_PRE_START_SIZE := 0
> > > +    endif
> > > +    CFLAGS += -DARM_PRE_START_SIZE="$(ARM_PRE_START_SIZE)"
> > >      $(call detected,CONFIG_LIBOPENCSD)
> > >      ifdef CSTRACE_RAW
> > >        CFLAGS += -DCS_DEBUG_RAW
> > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > index 0c7776b51045..ae831f836c70 100644
> > > --- a/tools/perf/util/cs-etm.c
> > > +++ b/tools/perf/util/cs-etm.c
> > > @@ -613,10 +613,34 @@ static void cs_etm__free(struct perf_session *session)
> > >  static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
> > >  {
> > >         struct machine *machine;
> > > +       u64 fixup_kernel_start = 0;
> > > +       const char *arch;
> > >
> > >         machine = etmq->etm->machine;
> > > +       arch = perf_env__arch(machine->env);
> > >
> > > -       if (address >= etmq->etm->kernel_start) {
> > > +       /*
> > > +        * Since arm and arm64 specify some memory regions prior to
> > > +        * 'kernel_start', kernel addresses can be less than 'kernel_start'.
> > > +        *
> > > +        * For arm architecture, the 16MB virtual memory space prior to
> > > +        * 'kernel_start' is allocated to device modules, a PMD table if
> > > +        * CONFIG_HIGHMEM is enabled and a PGD table.
> > > +        *
> > > +        * For arm64 architecture, the root PGD table, device module memory
> > > +        * region and BPF jit region are prior to 'kernel_start'.
> > > +        *
> > > +        * To reflect the complete kernel address space, compensate these
> > > +        * pre-defined regions for kernel start address.
> > > +        */
> > > +       if (!strcmp(arch, "arm64"))
> > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > +                                    ARM64_PRE_START_SIZE;
> > > +       else if (!strcmp(arch, "arm"))
> > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > +                                    ARM_PRE_START_SIZE;
> > 
> > I will test your work but from a quick look wouldn't it be better to
> > have a single define name here?  From looking at the modifications you
> > did to Makefile.config there doesn't seem to be a reason to have two.
> 
> Thanks for suggestion.  I changed to use single define
> ARM_PRE_START_SIZE and sent patch v2 [1].
> 
> If possible, please test patch v2.
> 
> Thanks,
> Leo Yan

So just for the record, I'm waiting for Mathieu on this one, i.e. for
him to test/ack v3.

- Arnaldo
 
> [1] https://lore.kernel.org/linux-arm-kernel/20190620005428.20883-1-leo.yan@linaro.org/T/#u
> 
> > > +
> > > +       if (address >= fixup_kernel_start) {
> > >                 if (machine__is_host(machine))
> > >                         return PERF_RECORD_MISC_KERNEL;
> > >                 else
> > > --
> > > 2.17.1
> > >

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

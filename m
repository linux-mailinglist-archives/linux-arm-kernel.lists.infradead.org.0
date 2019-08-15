Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED98EA55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTOee6tPnDz/JVv+1GTkt/Ra2dqh4Sia/+be6+4qIQo=; b=GRKePwr4h0qqah
	7shjVUpeccoDJq46jPlMok5/ocLn7r3681JCqYSCCoGELcziBsQsuJkN2Z8ZgilQMqK5maMe0Fmmg
	1VLplw+K68pSrzYgQ4LotHlhz8ZSY0kSO2cM1Mj++lxeg6tCDC1bRi4TxnokGFlU6Ud/KFtZsSBxk
	SMpjxV57Ny0ZY1reTqfGct+Or702WdFmmCakArqtH+GYEGZl0Es8gHFUQ/ixaSLTQfFV+gwKJ/Psp
	yF1Dkhc+7JbOtnUcUcsgQrnDIJlAMViyt66inWyUk3MtxXBKTH8wt52MrW8d4xXKiyCnFr7SMYbWF
	b4xrINijqMb8OG4FEsAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyE0C-0008AI-G8; Thu, 15 Aug 2019 11:33:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDzy-00089b-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:32:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so1204487pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 04:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6yyNNZcoZXd04iOxCA2uv7QHQpYeH3o1GL76tGnvZsI=;
 b=BdQMSyc7Ew3WW/RLs9+hxDLI4sxwJvXm8pIJM78jiMehrBRUjW+8VSjLqWzqtwoFZn
 Esj/v9R8BWdvpkoa0amEwj8W1IG3tgXWbyiYUqEDHkDvdarSI3uAogTd25i00Umn2DZ1
 tAYIG0r3PM5WaOf2/6Ix2ZU83b83MImN/bJKcbbhVVegy3Gict/B0VTDGpmXW3KWqB45
 9UdCJi9C/lodmvIaiSLzOI1jNmnfOHHv3bOAJX82boWFEJ3aK0+YhKCbrllvi5V7jVWk
 EcDaBlgsSE3R+QchaiNUDjooXbQNZO4O1md6PP5OlqJncyCrfx5nWsYX3yIK1xVHj4cE
 xZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6yyNNZcoZXd04iOxCA2uv7QHQpYeH3o1GL76tGnvZsI=;
 b=H+bVMlg868yNSvhM9GVjLBS4vcZciK2UByWemYjZMg10wWF6fbbqLpc2QYZQjCi0UJ
 tQLtB7Cz2l0NC+DYcu4vLGUswhhe6fRazjh258XcdtAaPUOw+aK6DVHb0gQpI+yZ4+uD
 pwD+AbYb0ZaGTmsgq1UkLPP1D0CbLURppXO6w5PSAPIdshxyJlTWzLGAKW+tJRcRMOfJ
 qUiv6cy92Abrjr2hIn295hlWE40HuugMT9Cjij7te0OLwDQrg6KQVTz8DFbbLJcCijMc
 JgdL1g6rv2ClSQ37RrLEMPgqMx6QVxIxFFK5VYMzDvXwxg7C88ne5H06SdCUA1sx8ogk
 pMPA==
X-Gm-Message-State: APjAAAUhlGYzItQvEvAqQZ9eWgZMCDsigAza0SGSyZe8kIGuGmuYlQsT
 xJTUIDg96pRZL2BDXx4Ebq6NaQ==
X-Google-Smtp-Source: APXvYqwgHmgCJuJEfgUj6l4fxv/gOjQK+RkzIq0qwwxYOQmPh1Tiut8Hgxg0E93Jt/4ki2OwB4k+8A==
X-Received: by 2002:a17:90a:bc06:: with SMTP id
 w6mr1878592pjr.130.1565868771311; 
 Thu, 15 Aug 2019 04:32:51 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id t6sm1190242pjy.18.2019.08.15.04.32.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 04:32:50 -0700 (PDT)
Date: Thu, 15 Aug 2019 19:32:42 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190815113242.GA28881@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_043254_978837_4955E78B 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, coresight@lists.linaro.org,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Zijlstra <peterz@infradead.org>,
 Yonghong Song <yhs@fb.com>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Thu, Aug 15, 2019 at 11:54:54AM +0300, Adrian Hunter wrote:

[...]

> > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > index e4988f49ea79..d7ff839d8b20 100644
> > --- a/tools/perf/Makefile.config
> > +++ b/tools/perf/Makefile.config
> > @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
> >    NO_PERF_REGS := 0
> >  endif
> >  
> > +ARM_PRE_START_SIZE := 0
> > +
> >  ifeq ($(SRCARCH),arm)
> >    NO_PERF_REGS := 0
> >    LIBUNWIND_LIBS = -lunwind -lunwind-arm
> > +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> > +    # Extract info from lds:
> > +    #   . = ((0xC0000000)) + 0x00208000;
> > +    # ARM_PRE_START_SIZE := 0x00208000
> > +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> > +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> > +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
> > +  endif
> >  endif
> >  
> >  ifeq ($(SRCARCH),arm64)
> > @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
> >    NO_SYSCALL_TABLE := 0
> >    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
> >    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
> > +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> > +    # Extract info from lds:
> > +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> > +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
> > +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> > +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> > +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
> > +  endif
> 
> So, that is not going to work if you take a perf.data file to a non-arm machine?

Yeah, this patch will only allow perf to work correctly when perf
run natively on arm/arm64, so it can resolve partial of the issue.

> How come you cannot use kallsyms to get the information?

Thanks for pointing out this.  Sorry I skipped your comment "I don't
know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
the patch v3, I should use that chance to elaborate the detailed idea
and so can get more feedback/guidance before procceed.

Actually, I have considered to use kallsyms when worked on the previous
patch set.

As mentioned in patch set v4's cover letter, I tried to implement
machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
parse kallsyms so can find more kernel maps and thus also can fixup
the kernel start address.  But I found the 'perf script' tool directly
calls machine__get_kernel_start() instead of running into the flow for
machine__create_extra_kernel_maps(); so I finally gave up to use
machine__create_extra_kernel_maps() for tweaking kernel start address
and went back to use this patch's approach by parsing lds files.

So for next step, I want to get some guidances:

- One method is to add a new weak function, e.g.
  arch__fix_kernel_text_start(), then every arch can implement its own
  function to fixup the kernel start address;

  For arm/arm64, can use kallsyms to find the symbols with least
  address and fixup for kernel start address.

- Another method is to directly parse kallsyms in the function
  machine__get_kernel_start(), thus the change can be used for all
  archs;

Seems to me the second method is to address this issue as a common
issue crossing all archs.  But not sure if this is the requirement for
all archs or just this is only required for arm/arm64.  Please let me
know what's your preference or other thoughts.  Thanks a lot!

Leo.

> >  endif
> >  
> > +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
> > +
> >  ifeq ($(SRCARCH),csky)
> >    NO_PERF_REGS := 0
> >  endif
> > diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> > index f6ee7fbad3e4..e993f891bb82 100644
> > --- a/tools/perf/util/machine.c
> > +++ b/tools/perf/util/machine.c
> > @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
> >  	machine->kernel_start = 1ULL << 63;
> >  	if (map) {
> >  		err = map__load(map);
> > +		if (err)
> > +			return err;
> > +
> >  		/*
> >  		 * On x86_64, PTI entry trampolines are less than the
> >  		 * start of kernel text, but still above 2^63. So leave
> >  		 * kernel_start = 1ULL << 63 for x86_64.
> >  		 */
> > -		if (!err && !machine__is(machine, "x86_64"))
> > +		if (!machine__is(machine, "x86_64"))
> >  			machine->kernel_start = map->start;
> > +
> > +		/*
> > +		 * On arm/arm64, the kernel uses some memory regions which are
> > +		 * prior to '_stext' symbol; to reflect the complete kernel
> > +		 * address space, compensate these pre-defined regions for
> > +		 * kernel start address.
> > +		 */
> > +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
> > +		    !strcmp(perf_env__arch(machine->env), "arm64"))
> > +			machine->kernel_start -= ARM_PRE_START_SIZE;
> >  	}
> >  	return err;
> >  }
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

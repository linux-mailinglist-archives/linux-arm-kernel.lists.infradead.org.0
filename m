Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA2E5DB20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 03:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1RqMhbb5lVJA3IMnVkBEvAEZTNh/7wTIXOxT4+E5Ro=; b=nSZr9CEebiYwIl
	E+AlStpmJltlwTUl9M9oGVa+2qzB1N+wReFWUv/KKXOQDjiKwAU79ImtvTF2n59Vcdc0Pfidke+zV
	/2cRxDTRoJGShVtNQFCkKAd9DEq6ORWIY1PiMM3E+tfetnjKhB7iijmr3xpFKcnCze1cG2hbLBA98
	pv+7i2NV7cQ2mFpYeMGC6NArFKpp4ysAEosLl8sfaZnEUpIffSb7Cz4J/NiLMnDnozPo+t3a7YE7M
	zrytAxz/kuWJjR8VUAKDsBltCls274uqkXLwTh2HiTKYTiekDAdJdhs2Dhysa4eXHd7NWcQL7hM5b
	s4Eu5BiO+jwvxmWQ/L3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiUNw-0002sw-3r; Wed, 03 Jul 2019 01:48:36 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiUNi-0002sZ-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 01:48:23 +0000
Received: by mail-ot1-x341.google.com with SMTP id e8so612829otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 18:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/lRiznl/b3k1Ie9ScyJ4jBFeaEoI2ZI3USYbKQfR1J0=;
 b=zQMpxxLGrM0XjdsgBPT6ATLcrb7qA9zfpedH99WHA29nFWVTZMn5gYEGkwE/NO+j58
 O0GelD0oUhq/t5UuQIzLN40ZYkRP2zzc1N3lAkXaYN9SpFI6oXBDfRYUYW0DDL7N5Irl
 PT0IswXptUa0vycB9GEwZibK3zlJafP0FDM+ksQm3Eur3ySQZwANF62OBiy4caGXFFEz
 8QPTMYNIwkiFEzQ2hfjAKMDgj9RuvrXBgl2U6TQF3njQH25/FcQL80t57ieCV/qnWoLd
 Hmf7MuHoNwUEoProeXVs3712q03rie79FXvO9UhNfh702kuBuyTYFuf81Laf6+Jnq97N
 h3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/lRiznl/b3k1Ie9ScyJ4jBFeaEoI2ZI3USYbKQfR1J0=;
 b=DAmYsIsgOcR9ypF2W0zHYPuhxRayJqbhJ2p59Vr7b/NHUUWRirVyIVpGyiVIJbwC4f
 kvnfuuCCMgsejJp05bBIps3p0T7i5PCcUDyXYE3MQMkqsjDriqa04a8Y7RRC+2fZDz8s
 xWh/lbhwWozWANEbxpXYf46YKUsqRKQ6JI5fN1KWS4iI4wyivFUXDniVl3mUZOz6aVqx
 AL+9JCpxaMXOq696kA0B/Z0evrlW9vysQTb64FwsEFwJZG1UWSYmLqafLjX1Sb+uuT9s
 GgrnIS21EW1Y1+gLekpyLF0LAQ4WFXcz3sg5EDco8NxOuScWaUU63wB0Vm22hvnCKEJN
 tkEw==
X-Gm-Message-State: APjAAAXmP5Dd+H02Pji4XBqRHvV+4xHkYdOdLpknq92GOpjh/STskBZL
 eOTFqjxu2RLiiiRmE0bZ7Ryx7GNDT2UhQA==
X-Google-Smtp-Source: APXvYqyH/Q87O4oDhQWm0UZHg0a9eu6n/1GxkkIumbyNvNvII6KOW/H5NXHLQOuBpr2GbdpYym7ZGg==
X-Received: by 2002:a9d:61d8:: with SMTP id h24mr6357738otk.53.1562118501240; 
 Tue, 02 Jul 2019 18:48:21 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id p2sm313927otl.59.2019.07.02.18.48.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jul 2019 18:48:20 -0700 (PDT)
Date: Wed, 3 Jul 2019 09:48:08 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH v1 00/11] perf: Fix errors detected by Smatch
Message-ID: <20190703014808.GC6852@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702110743.GA12694@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702110743.GA12694@krava>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_184822_369493_010B8351 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 01:07:43PM +0200, Jiri Olsa wrote:
> On Tue, Jul 02, 2019 at 06:34:09PM +0800, Leo Yan wrote:
> > When I used static checker Smatch for perf building, the main target is
> > to check if there have any potential issues in Arm cs-etm code.  So
> > finally I get many reporting for errors/warnings.
> > 
> > I used below command for using static checker with perf building:
> > 
> >   # make VF=1 CORESIGHT=1 -C tools/perf/ \
> >     CHECK="/root/Work/smatch/smatch --full-path" \
> >     CC=/root/Work/smatch/cgcc | tee smatch_reports.txt
> > 
> > I reviewed the errors one by one, if I understood some of these errors
> > so changed the code as I can, this patch set is the working result; but
> > still leave some errors due to I don't know what's the best way to fix
> > it.  There also have many inconsistent indenting warnings.  So I firstly
> > send out this patch set and let's see what's the feedback from public
> > reviewing.
> > 
> > Leo Yan (11):
> >   perf report: Smatch: Fix potential NULL pointer dereference
> >   perf stat: Smatch: Fix use-after-freed pointer
> >   perf top: Smatch: Fix potential NULL pointer dereference
> >   perf annotate: Smatch: Fix dereferencing freed memory
> >   perf trace: Smatch: Fix potential NULL pointer dereference
> >   perf hists: Smatch: Fix potential NULL pointer dereference
> >   perf map: Smatch: Fix potential NULL pointer dereference
> >   perf session: Smatch: Fix potential NULL pointer dereference
> >   perf intel-bts: Smatch: Fix potential NULL pointer dereference
> >   perf intel-pt: Smatch: Fix potential NULL pointer dereference
> >   perf cs-etm: Smatch: Fix potential NULL pointer dereference
> 
> from quick look it all looks good to me, nice tool ;-)
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks for reviewing, Jiri.

@Arnaldo, Just want to check, will you firstly pick up 01~05, 07,
08/11 patches if you think they are okay?  Or you want to wait me to
spin new patch set with all patches after I gather all comments?

Thanks,
Leo Yan

> >  tools/perf/builtin-report.c    |  4 ++--
> >  tools/perf/builtin-stat.c      |  2 +-
> >  tools/perf/builtin-top.c       |  8 ++++++--
> >  tools/perf/builtin-trace.c     |  5 +++--
> >  tools/perf/ui/browsers/hists.c | 13 +++++++++----
> >  tools/perf/util/annotate.c     |  6 ++----
> >  tools/perf/util/cs-etm.c       |  2 +-
> >  tools/perf/util/intel-bts.c    |  5 ++---
> >  tools/perf/util/intel-pt.c     |  5 ++---
> >  tools/perf/util/map.c          |  7 +++++--
> >  tools/perf/util/session.c      |  3 +++
> >  11 files changed, 36 insertions(+), 24 deletions(-)
> > 
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

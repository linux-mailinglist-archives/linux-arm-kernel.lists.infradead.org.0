Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F53A40C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 08:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DMh68Gke+m0vLF+X6SQjOPhNYkpLqaJ2p0Wq3ix+gE=; b=OG3TO4LiKlUo2V
	vtJQhNc2ju9PljN3s9vA7zd2/V+Jd3TCzkcnGo+ZyrFweLjOvODRjWIlX7Mm7mbXWMa0NaAaVT65u
	0arQp71chWWpdAIX13+aJH0muNyndmdohOvbQwbQWGpY90thYhUjZDYHY/XRItNW7rGDCf2GmjMmz
	+YgnI/+IPJ2aG8cPV9DNqZiapj/XfkogTiU9Z05z+OFIuq8nrcsJsBajKpMiJfvPIQPM9vm6hzDP9
	K4HAu9SoFY5Q55cIMu1LU9CCWHkFE0soUm+tSYLId0VlldHFxGO95WSkmlu54yfCFSnoLnYT4BrWl
	1TY33ls25j7HyMOAZD2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZrg0-0006QC-L0; Sun, 09 Jun 2019 06:51:36 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZrfj-0006PS-EG
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 06:51:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id i125so3800294qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 23:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=heURi6LynaMTZ5g0eudG6hqYJ4FK/vscKytezEoes00=;
 b=l7YJ+BPKOJZr2S6Q56GRv9FJmqmdNu2ucZDnQVU1r8VMDrj2VQLwqz7N8EnbV9gaUi
 4D2U2AaRfQsrg1uPiWf1byHDgk7FIR27EFAQb9bTZ+kpUkiD+FFbxC3O/GQ4v8stHhq0
 zxejTWDBmXWngOSq3QuxW5hc17jBJIkIR0iyKnc5VqJob4b4yU2fw5RZ4O0UhasQenWl
 qM69/ZJl+PHQd0W+Jrkba2VyNgl4K10JIiYVUkCOzlnrfzu9z5YvzOu+OCQIFE10jvfb
 /w4nwSaH3TzdDCzTWX226sGxP6vNzF0LOQknc9mnPBmmk8Nt0V9pxnCELAbFsOhbwaUc
 HbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=heURi6LynaMTZ5g0eudG6hqYJ4FK/vscKytezEoes00=;
 b=q3U0RndI675trFzThv3dbmmkQ9OpZpXwA2Cc0oenWUxK7Ew3Tc8cWhssUgfHKPOr2T
 T8lbUeGjRB6Blqic6qXunZHtvsKQkm1Wu4H63ER4LYsf4zM2vkFBjp77icTcuRZUt57/
 y3cUbQG6vVmtG5mxz9LYeDXZ8CsfYs6oBmyXi1/Y+729aGL3BmxAxU6tx5M5MMg/lvfM
 tyeQJAuOf7HbdCJeZtpOqr0ype1vzG8cGieP66wY0T1zefMZi7UEtvwWMzzEva4911Un
 fAn155BTlxb28Wbcmo9ihlLHWmGWUpET7PuKRqc0q2EiVE9+D5apVWdd12awQWMhLr8B
 60+w==
X-Gm-Message-State: APjAAAXQowh4/j372TLX2M7IGZgQbCafnP1RZPCZ8vW1NF887hMQkC7l
 E1qG1WQ8a2wrfJkud/zJCu3vyQ==
X-Google-Smtp-Source: APXvYqydZoqjFUbt/qIi2n0C1bU+sajFrIHxWpzcFSWVldpERYP3gQHwq/dydPovJzSrHBqbgEVSEw==
X-Received: by 2002:a37:a98c:: with SMTP id
 s134mr49571604qke.176.1560063076471; 
 Sat, 08 Jun 2019 23:51:16 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id s44sm1432186qtc.8.2019.06.08.23.51.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 08 Jun 2019 23:51:15 -0700 (PDT)
Date: Sun, 9 Jun 2019 14:51:01 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH] perf tools: Properly set the value of 'old' and 'head'
 in snapshot mode
Message-ID: <20190609065101.GA6357@leoy-ThinkPad-X240s>
References: <20190605161633.12245-1-mathieu.poirier@linaro.org>
 <20190606201056.GJ21245@kernel.org>
 <20190607064425.GF5970@leoy-ThinkPad-X240s>
 <20190607182325.GL21245@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607182325.GL21245@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_235119_511809_98C0D8BE 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, suzuki.poulose@arm.com,
 peterz@infradead.org, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Fri, Jun 07, 2019 at 03:23:25PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Fri, Jun 07, 2019 at 02:44:25PM +0800, Leo Yan escreveu:
> > On Thu, Jun 06, 2019 at 05:10:56PM -0300, Arnaldo Carvalho de Melo wrote:
> > > Em Wed, Jun 05, 2019 at 10:16:33AM -0600, Mathieu Poirier escreveu:
> > > > This patch adds the necessay intelligence to properly compute the value
> > > > of 'old' and 'head' when operating in snapshot mode.  That way we can get
> > > > the latest information in the AUX buffer and be compatible with the
> > > > generic AUX ring buffer mechanic.
> > > 
> > > Leo, have you had the chance to test/review this one? Suzuki?
> > 
> > Sure.  I applied this patch on the perf/core branch (with latest
> > commit 3e4fbf36c1e3 'perf augmented_raw_syscalls: Move reading
> > filename to the loop') and passed testing with below steps:
> > 
> > # perf record -e cs_etm/@tmc_etr0/ -S -m,64 --per-thread ./sort &
> > [1] 19097
> > Bubble sorting array of 30000 elements
> > 
> > # kill -USR2 19097
> > # kill -USR2 19097
> > # kill -USR2 19097
> > [ perf record: Woken up 4 times to write data ]
> > [ perf record: Captured and wrote 0.753 MB perf.data ]
> > 
> > FWIW:
> > 
> > Tested-by: Leo Yan <leo.yan@linaro.org>
> 
> Thanks a lot, I've added your "Tester notes:" and also your Tested-by:.
> 
> As I don't have hardware (yet) to test these patches, tests by people
> who can test on real hardware is always super appreciated.

You are very welcome and it's my pleasure :)

> Any suggestions for a SBC that I could buy to be able to do so?

Below are several Arm development boards for referrence:

- DB410c [1]: This board is the first choice for myself, since this
  board provides Debian (and Fedora :) support and it supports the
  mainline kernel pretty well; the CoreSight also is well supported.

  This board is about 80 USD so the cost is not expensive; on the
  other hand, please note one cons is the SDRAM is only 1GB, this will
  be impossible if you build some big projects (e.g. LLVM/Clang and
  BCC); but it's sufficient for perf related development and
  verification.

- There have other several boards are in my mind:

  Raspberry Pi3 [2] and Hikey960 [3].

  Raspberry Pi3 misses some features in the mainline kernel [4] and it
  has not enabled CoreSight hardware tracing feature; Hikey960 also
  have some patches are out of the mainline kenrel.

  Except you have special requirement (e.g. you want to use the board to
  build LLVM/Clang/BCC with big DDR size, etc), these two boards can be
  secondary choices.

Please feel free let me know if you have questions for boards.

Thanks,
Leo Yan

[1] https://www.96boards.org/product/dragonboard410c/
[2] https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/
[3] https://www.96boards.org/product/hikey960/
[4] https://www.raspberrypi.org/forums/viewtopic.php?t=236568

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

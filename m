Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DC18DD90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FNsHD6LBhgt49lvHS9jC6c5K1e1D2TO1hrudhNcumk=; b=nTtGTsuglwv65U
	UJd4thFtDMAUVt4wFuM8CYyXPZqQaJiLBew7qTj1RTRVO7KZMe0kNxOBw+WnSc74zCkYDfzaCg8LV
	JLslT990GMMgcBntUBep102S7GJ38wOTyF6hKFE7KNbiP9Pi0hxF9CLaCHYQg9yHUv8osQBbhJVHv
	SSj377AUAJACutF9MMRYgY0Nlbykh+lk/X0798QB4IWKhk2YvAwq87A8PNc/naG0GDw4QfOrWzbai
	WuRNBnlVSWRBnoPuKhYKdKaMuiCo6t+gBxAXSvmE5do9h8t8CZGYuJlOYUvZiG/l6RLeE8vjh2O9+
	q6QLWIIsc20rKiZO9A6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyO6-0006ao-P6; Wed, 14 Aug 2019 18:52:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyNt-0006ag-9X
 for linux-arm-kernel@bombadil.infradead.org; Wed, 14 Aug 2019 18:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fgFFBrhVtUGKZZbJJolYXsdk6eeUI4H6Yby6s8HsxXA=; b=weWpQnLTcsjhrZtL3n0fZWLNj
 KkSdI1T9sXuS5C7hRf1bTGO5kF2Nxx5fbkVdfvvKhvcTEFTcyDRe0OEYSrp5G4kHHzvXYdIe5KmmJ
 1InwCEAuNPiPXpQgwUIp9K7N5wYKWpXm+w5+a0eHAmAaCc3Bu9RS0B6PKW+PnaPxT3J5jnQnMJzhI
 WOO+wuCGQgYRr8SrR1QtwPidTBXmyQ9wa4kE6uwRV5IeTN+UkZhDFGbu+TVg0rYYxd4oNrC7Xaw2e
 8stNiGGZu5Cv33toBbpd2BhOIrnFs4OYDVdaAroLF4rgneMAkSLhYki/6pe678xL5y/jU/aI9h9af
 rsLkx3qXg==;
Received: from [177.195.212.110] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyNo-0001xr-OJ; Wed, 14 Aug 2019 18:52:31 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 9170840857; Wed, 14 Aug 2019 15:52:13 -0300 (-03)
Date: Wed, 14 Aug 2019 15:52:13 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Message-ID: <20190814185213.GN9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814184814.GM9280@kernel.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> > # echo 0 > /proc/sys/kernel/kptr_restrict
> > # ./tools/perf/perf record -e instructions:k uname
> > perf: Segmentation fault
> > Obtained 10 stack frames.
> > ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7) [0x55af9e590337]
> > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7) [0x7fd31ef99b97]
> > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a]
> > Segmentation fault
> > 
> > I can reproduce this on both x86 and ARM64.
> 
> I don't see this with these two csets removed:
> 
> 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
> 
> Which were the ones I guessed were related to the problem you reported,
> so they are out of my ongoing perf/core pull request to Ingo/Thomas, now
> trying with these applied and your instructions...

Can't repro:

[root@quaco ~]# cat /proc/sys/kernel/kptr_restrict
0
[root@quaco ~]# perf record -e instructions:k uname
Linux
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
[root@quaco ~]# echo 1 > /proc/sys/kernel/kptr_restrict
[root@quaco ~]# perf record -e instructions:k uname
Linux
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
[root@quaco ~]# echo 0 > /proc/sys/kernel/kptr_restrict
[root@quaco ~]# perf record -e instructions:k uname
Linux
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
[root@quaco ~]#

[acme@quaco perf]$ git log --oneline --author Lubashev tools/
7ff5b5911144 (HEAD -> perf/cap, acme.korg/tmp.perf/cap, acme.korg/perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict checks
d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
c766f3df635d perf ftrace: Use CAP_SYS_ADMIN instead of euid==0
c22e150e3afa perf tools: Add helpers to use capabilities if present
74d5f3d06f70 tools build: Add capability-related feature detection
perf version 5.3.rc4.g7ff5b5911144
[acme@quaco perf]$

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

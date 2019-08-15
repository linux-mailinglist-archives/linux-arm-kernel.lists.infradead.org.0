Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9259C8F691
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIW6Ly0VdCJTIfEsJiivt0edLO92WziOBEXWOP748qs=; b=YC1jUOlU7I3S3k
	fit3fWVdNozNZ8RdsIabcDHLXdkiETJcLdaFMUYEwNECr7yaNdNCrXldMk62W9txs4qCWiUbM6rP2
	S6Z/kdc3pRMcxD6tDzzVvhtGWWpTNu1WdT8cKgqt/qJ3mZ8WQB3LpOdX5wej93Ye2+U7JXyKv5vM6
	m8L4jetfPxi9t+D+ZF1MSCrhnMnyUh4C/AdZi72QRphxvqPsr3qlc4ABWuyjjp4Oo7mi6L8yiLhp0
	dTz10/Ci0JGPUzyKA8Ka69o8nh2Oco+RZG95lWQOdQzkYVsFy9VoMxC3B85xnkE3++fRd2gurxRSj
	kt8aZkJz6fTBQq/9vq+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNWT-0004Wb-LL; Thu, 15 Aug 2019 21:43:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNW7-0004RZ-0K
 for linux-arm-kernel@bombadil.infradead.org; Thu, 15 Aug 2019 21:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pqnw68C8RNt8CVX8dl8gN5I3loi0jS1XviHSDg/bmq4=; b=n277OsgueegUCayLh4JDMyocL
 ISsnXUYOcIyt6kbf9lMyInFbG8eVaOmRgcR9fqpWdDkN2vYYzknz04QGT8vzXYuc/5BbIvuRBSnEs
 nzcMjFVzU+7RBAoO/YkWxgXVhLD4PSlDFE453habGhn99dfRvSNQUa4UFeJaaLxQX23o+yFNGakLz
 TZJt+ToiqM2hfuJoTFCmNRjLpPQPa5GpsJZ3aiu0nz8DDi4dnbn4LeqcJKEWYI5b5ioHRDxeMAjUk
 CBIukFOzqLQJx3k1uAMdBXU+YtMjXXr/VV5ZU01w8nEDDc5cVnobTOjxpW5NhipjU2DoRQ737FgW8
 +wN7VBHkw==;
Received: from [177.135.11.83] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNW4-000396-TS; Thu, 15 Aug 2019 21:42:41 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 12B1A40858; Thu, 15 Aug 2019 18:42:36 -0300 (-03)
Date: Thu, 15 Aug 2019 18:42:36 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Message-ID: <20190815214236.GA3929@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org>
 <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
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
 Alexey Budankov <alexey.budankov@linux.intel.com>, "Lubashev,
 Igor" <ilubashe@akamai.com>, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, James Morris <jmorris@namei.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu, Aug 15, 2019 at 02:16:48PM -0600, Mathieu Poirier escreveu:
> On Wed, 14 Aug 2019 at 14:02, Lubashev, Igor <ilubashe@akamai.com> wrote:
> >
> > > On Wed, August 14, 2019 at 2:52 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > > Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de Melo
> > > escreveu:
> > > > Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> > > > > # echo 0 > /proc/sys/kernel/kptr_restrict # ./tools/perf/perf record
> > > > > -e instructions:k uname
> > > > > perf: Segmentation fault
> > > > > Obtained 10 stack frames.
> > > > > ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> > > > > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > > > > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7)
> > > > > [0x55af9e590337]
> > > > > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > > > > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > > > > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > > > > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > > > > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > > > > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7)
> > > > > [0x7fd31ef99b97]
> > > > > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a] Segmentation fault
> > > > >
> > > > > I can reproduce this on both x86 and ARM64.
> > > >
> > > > I don't see this with these two csets removed:
> > > >
> > > > 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> > > > d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid
> > > > checks
> > > >
> > > > Which were the ones I guessed were related to the problem you
> > > > reported, so they are out of my ongoing perf/core pull request to
> > > > Ingo/Thomas, now trying with these applied and your instructions...
> > >
> > > Can't repro:
> > >
> > > [root@quaco ~]# cat /proc/sys/kernel/kptr_restrict
> > > 0
> > > [root@quaco ~]# perf record -e instructions:k uname Linux [ perf record:
> > > Woken up 1 times to write data ] [ perf record: Captured and wrote 0.024 MB
> > > perf.data (1 samples) ] [root@quaco ~]# echo 1 >
> > > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e instructions:k
> > > uname Linux [ perf record: Woken up 1 times to write data ] [ perf record:
> > > Captured and wrote 0.024 MB perf.data (1 samples) ] [root@quaco ~]# echo
> > > 0 > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e
> > > instructions:k uname Linux [ perf record: Woken up 1 times to write data ] [
> > > perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
> > > [root@quaco ~]#
> > >
> > > [acme@quaco perf]$ git log --oneline --author Lubashev tools/
> > > 7ff5b5911144 (HEAD -> perf/cap, acme.korg/tmp.perf/cap,
> > > acme.korg/perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict
> > > checks d7604b66102e perf tools: Use CAP_SYS_ADMIN with
> > > perf_event_paranoid checks c766f3df635d perf ftrace: Use CAP_SYS_ADMIN
> > > instead of euid==0 c22e150e3afa perf tools: Add helpers to use capabilities if
> > > present
> > > 74d5f3d06f70 tools build: Add capability-related feature detection perf
> > > version 5.3.rc4.g7ff5b5911144 [acme@quaco perf]$
> >
> > I got an ARM64 cloud VM, but I cannot reproduce.
> > # cat /proc/sys/kernel/kptr_restrict
> > 0
> >
> > Perf trace works fine (does not die):
> > # ./perf trace -a
> >
> > Here is my setup:
> > Repo: git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git
> > Branch: tmp.perf/cap
> > Commit: 7ff5b5911 "perf symbols: Use CAP_SYSLOG with kptr_restrict checks"
> > gcc --version: gcc (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0
> > uname -a: Linux arm-4-par-1 4.9.93-mainline-rev1 #1 SMP Tue Apr 10 09:54:46 UTC 2018 aarch64 aarch64 aarch64 GNU/Linux
> > lsb_release -a: Ubuntu 18.04.3 LTS
> >
> > Auto-detecting system features:
> > ...                         dwarf: [ on  ]
> > ...            dwarf_getlocations: [ on  ]
> > ...                         glibc: [ on  ]
> > ...                          gtk2: [ on  ]
> > ...                      libaudit: [ on  ]
> > ...                        libbfd: [ on  ]
> > ...                        libcap: [ on  ]
> > ...                        libelf: [ on  ]
> > ...                       libnuma: [ on  ]
> > ...        numa_num_possible_cpus: [ on  ]
> > ...                       libperl: [ on  ]
> > ...                     libpython: [ on  ]
> > ...                     libcrypto: [ on  ]
> > ...                     libunwind: [ on  ]
> > ...            libdw-dwarf-unwind: [ on  ]
> > ...                          zlib: [ on  ]
> > ...                          lzma: [ on  ]
> > ...                     get_cpuid: [ OFF ]
> > ...                           bpf: [ on  ]
> > ...                        libaio: [ on  ]
> > ...                       libzstd: [ on  ]
> > ...        disassembler-four-args: [ on  ]
> >
> > I also could not reproduce on x86:
> > lsb_release -a: Ubuntu 18.04.1 LTS
> > gcc --version: gcc (Ubuntu 7.4.0-1ubuntu1~18.04aka10.0.0) 7.4.0
> > uname -r: 4.4.0-154-generic
> 
> I isolated the problem to libcap-dev - if it is not installed a
> segmentation fault will occur.  Since this set is about using
> capabilities it is obvious that not having it on a system should fail
> a trace session, but it should not crash it.

It shouldn't crash on x86_64:

root@quaco ~]# sysctl kernel.kptr_restrict
kernel.kptr_restrict = 0
[root@quaco ~]# perf record -e instructions:k uname
Linux
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 0.023 MB perf.data (5 samples) ]
[root@quaco ~]# ldd ~/bin/perf | grep libcap
[root@quaco ~]# perf -v
perf version 5.3.rc4.g329ca330bf8b
[root@quaco ~]#
[acme@quaco perf]$ git log --oneline -4
329ca330bf8b (HEAD -> perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict checks
f7b9999387af perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
4d0489cf1c47 (acme.korg/tmp.perf/script-switch-on-off, perf/core) perf report: Add --switch-on/--switch-off events
2f53ae347f59 perf top: Add --switch-on/--switch-off events
[acme@quaco perf]$
 
> If libcap-dev is not installed function symbol__restricted_filename()
> will return true, which in turn will prevent symbol_name to be set in
> machine__get_running_kernel_start().  That prevents function
> map__set_kallsyms_ref_reloc_sym() from being called in
> machine__create_kernel_maps(), resulting in kmap->ref_reloc_sym being
> NULL in _perf_event__synthesize_kernel_mmap() and a segmentation
> fault.

Can you please try with my perf/cap branch? Perhaps you're using Igor's
original set of patches? I made changes to the fallback, he was making
it return false while I made it fallback to geteuid() == 0, as was
before his patches.

- Arnaldo
 
> I am not sure how this can be fixed.  I counted a total of 19
> instances where kmap->ref_reloc_sym->XYZ is called, only 2 of wich
> care to check if kmap->ref_reloc_sym is valid before proceeding.  As
> such I must hope that in the 17 other cases, kmap->ref_reloc_sym is
> guaranteed to be valid.  If I am correct then all we need is to check
> for a valid pointer in _perf_event__synthesize_kernel_mmap().
> Otherwise it will be a little harder.
> 
> Mathieu

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

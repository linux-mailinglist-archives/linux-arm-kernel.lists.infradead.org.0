Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DB994AF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haVXs68ZM6MMTTQ766Wtb+6zEqNBhqc9qKbB3H9Uypc=; b=eECEypg2a5Rj33
	1QfxYdDB6X0X1RaWdstiHMYG8S3QRgaWzK7GLIPr6jM13P1bY10FJAeoKIEbwVaoj3/AiwOJZ13Rw
	IB4b5YDRWWsxxvQUg+kcYGeAynBPbTgz9tmxxmHGT55Oe+m4W4gufLwMP1vsM1RgqnHRjqw1Pab6j
	j6Il2OGN9ojf7XwCannq3y9eKsEuF8obrreE4wCOYOc3gMHaAqiN7bMOyhbNtx/2fobSKTCbgV+R2
	aISD2sAFOFR/skU/9Df1oC3yNxwJ8un+qVfHrmOy1791Tnt8nn9849t39r8kQ0M6PePfKZqp35/M6
	0EWHUtxIAHJaPQ46HK1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzksX-0005do-2h; Mon, 19 Aug 2019 16:51:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzksP-0005dU-J3
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:51:27 +0000
Received: by mail-io1-xd41.google.com with SMTP id x4so5733605iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 09:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=azVJnvWnS4iAifUctENzXhTQHJYaXzLyjFRbYXJ3Y50=;
 b=LZKpjAQj2QbA2t3Oya83T0tkOuZepDBwNBcQ1E9gNnRT5/RFMFtxywYg2gkGk5Q+TQ
 S+GoMGajFBqn+OADKQIsTCE/t6B6x6aOUpwgeG70xCWKK6r6DWhiCDXnDtNBxuyAMpol
 V1rPHeWk5pZ0XO8As+HpZB3J4oT477oJGWlBtKan88A+clNVpVZKE+SZqOEo2RwUBWD1
 3AXbtUIksfCEZxAivt6sApyqgvWnDFPRkWmo/t5Tm27TRBqAcXSbrBr5SCRxfhhh/+ey
 HzVwbAA4gmauUK5UDCznOS4WecJLIF64CeVR9s/c6BqXNfBWGDp+/AZt8QUfxI9ZZnmU
 sjwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=azVJnvWnS4iAifUctENzXhTQHJYaXzLyjFRbYXJ3Y50=;
 b=dWeJTjD+PAmF9cOfCAtb3Kni7wReq0Zas8EIwQWG0uiLRDbakC9OIpCYThTMy9kv8O
 r+jMkygE4d5okumtVvPQDAekFQ2QhHF7Ko9u+PSubE5/+go/rFhg77NB+2FMCpBZyogn
 hq8RfqeJMAnAiS/Ct2oEB91OPw0Oka63khaeorHep3Se0dHyosugccrT9/0z1NC3V+YR
 JgI+DBVlMoe94VtM4Dkhhh/f+va6DwRuEa+d/qf0u5IJon4YrVuoc5kh0+zRfumoda0G
 RqAcavoqdE7riqZzJInfjWooQ0c2+JmXsRagKxuncCkeSnPnMdv7sa+D8ANry924s4UF
 tqxg==
X-Gm-Message-State: APjAAAV8RAT5U1P72alavJF2LljA6VZB2rCKuVVfcfilBhIYhBiDOyWc
 8nXxVZ+vyhJkUxGOKIilgX/2BYzeySzws7bIXdkJTg==
X-Google-Smtp-Source: APXvYqxtIVGdDh3ome6VlYhi07zz97u81mbec/a2Y4n2Ba2kI7pqQRHzsTdukltSjeg/Rn7BxrkIemsz/9off5xHrWI=
X-Received: by 2002:a02:6914:: with SMTP id e20mr27123117jac.83.1566233484138; 
 Mon, 19 Aug 2019 09:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
 <20190815214236.GA3929@kernel.org>
In-Reply-To: <20190815214236.GA3929@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 19 Aug 2019 10:51:12 -0600
Message-ID: <CANLsYkyPkcJWmBZzyjGj3vJRgEtuaun7HQjN1=5wcOyTPnfhmQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_095125_635719_8C6BE9A8 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>, "Lubashev,
 Igor" <ilubashe@akamai.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 15:42, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Thu, Aug 15, 2019 at 02:16:48PM -0600, Mathieu Poirier escreveu:
> > On Wed, 14 Aug 2019 at 14:02, Lubashev, Igor <ilubashe@akamai.com> wrote:
> > >
> > > > On Wed, August 14, 2019 at 2:52 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > > > Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de Melo
> > > > escreveu:
> > > > > Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> > > > > > # echo 0 > /proc/sys/kernel/kptr_restrict # ./tools/perf/perf record
> > > > > > -e instructions:k uname
> > > > > > perf: Segmentation fault
> > > > > > Obtained 10 stack frames.
> > > > > > ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> > > > > > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > > > > > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7)
> > > > > > [0x55af9e590337]
> > > > > > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > > > > > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > > > > > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > > > > > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > > > > > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > > > > > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7)
> > > > > > [0x7fd31ef99b97]
> > > > > > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a] Segmentation fault
> > > > > >
> > > > > > I can reproduce this on both x86 and ARM64.
> > > > >
> > > > > I don't see this with these two csets removed:
> > > > >
> > > > > 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> > > > > d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid
> > > > > checks
> > > > >
> > > > > Which were the ones I guessed were related to the problem you
> > > > > reported, so they are out of my ongoing perf/core pull request to
> > > > > Ingo/Thomas, now trying with these applied and your instructions...
> > > >
> > > > Can't repro:
> > > >
> > > > [root@quaco ~]# cat /proc/sys/kernel/kptr_restrict
> > > > 0
> > > > [root@quaco ~]# perf record -e instructions:k uname Linux [ perf record:
> > > > Woken up 1 times to write data ] [ perf record: Captured and wrote 0.024 MB
> > > > perf.data (1 samples) ] [root@quaco ~]# echo 1 >
> > > > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e instructions:k
> > > > uname Linux [ perf record: Woken up 1 times to write data ] [ perf record:
> > > > Captured and wrote 0.024 MB perf.data (1 samples) ] [root@quaco ~]# echo
> > > > 0 > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e
> > > > instructions:k uname Linux [ perf record: Woken up 1 times to write data ] [
> > > > perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
> > > > [root@quaco ~]#
> > > >
> > > > [acme@quaco perf]$ git log --oneline --author Lubashev tools/
> > > > 7ff5b5911144 (HEAD -> perf/cap, acme.korg/tmp.perf/cap,
> > > > acme.korg/perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict
> > > > checks d7604b66102e perf tools: Use CAP_SYS_ADMIN with
> > > > perf_event_paranoid checks c766f3df635d perf ftrace: Use CAP_SYS_ADMIN
> > > > instead of euid==0 c22e150e3afa perf tools: Add helpers to use capabilities if
> > > > present
> > > > 74d5f3d06f70 tools build: Add capability-related feature detection perf
> > > > version 5.3.rc4.g7ff5b5911144 [acme@quaco perf]$
> > >
> > > I got an ARM64 cloud VM, but I cannot reproduce.
> > > # cat /proc/sys/kernel/kptr_restrict
> > > 0
> > >
> > > Perf trace works fine (does not die):
> > > # ./perf trace -a
> > >
> > > Here is my setup:
> > > Repo: git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git
> > > Branch: tmp.perf/cap
> > > Commit: 7ff5b5911 "perf symbols: Use CAP_SYSLOG with kptr_restrict checks"
> > > gcc --version: gcc (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0
> > > uname -a: Linux arm-4-par-1 4.9.93-mainline-rev1 #1 SMP Tue Apr 10 09:54:46 UTC 2018 aarch64 aarch64 aarch64 GNU/Linux
> > > lsb_release -a: Ubuntu 18.04.3 LTS
> > >
> > > Auto-detecting system features:
> > > ...                         dwarf: [ on  ]
> > > ...            dwarf_getlocations: [ on  ]
> > > ...                         glibc: [ on  ]
> > > ...                          gtk2: [ on  ]
> > > ...                      libaudit: [ on  ]
> > > ...                        libbfd: [ on  ]
> > > ...                        libcap: [ on  ]
> > > ...                        libelf: [ on  ]
> > > ...                       libnuma: [ on  ]
> > > ...        numa_num_possible_cpus: [ on  ]
> > > ...                       libperl: [ on  ]
> > > ...                     libpython: [ on  ]
> > > ...                     libcrypto: [ on  ]
> > > ...                     libunwind: [ on  ]
> > > ...            libdw-dwarf-unwind: [ on  ]
> > > ...                          zlib: [ on  ]
> > > ...                          lzma: [ on  ]
> > > ...                     get_cpuid: [ OFF ]
> > > ...                           bpf: [ on  ]
> > > ...                        libaio: [ on  ]
> > > ...                       libzstd: [ on  ]
> > > ...        disassembler-four-args: [ on  ]
> > >
> > > I also could not reproduce on x86:
> > > lsb_release -a: Ubuntu 18.04.1 LTS
> > > gcc --version: gcc (Ubuntu 7.4.0-1ubuntu1~18.04aka10.0.0) 7.4.0
> > > uname -r: 4.4.0-154-generic
> >
> > I isolated the problem to libcap-dev - if it is not installed a
> > segmentation fault will occur.  Since this set is about using
> > capabilities it is obvious that not having it on a system should fail
> > a trace session, but it should not crash it.
>
> It shouldn't crash on x86_64:
>
> root@quaco ~]# sysctl kernel.kptr_restrict
> kernel.kptr_restrict = 0
> [root@quaco ~]# perf record -e instructions:k uname
> Linux
> [ perf record: Woken up 1 times to write data ]
> [ perf record: Captured and wrote 0.023 MB perf.data (5 samples) ]
> [root@quaco ~]# ldd ~/bin/perf | grep libcap
> [root@quaco ~]# perf -v
> perf version 5.3.rc4.g329ca330bf8b
> [root@quaco ~]#
> [acme@quaco perf]$ git log --oneline -4
> 329ca330bf8b (HEAD -> perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> f7b9999387af perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
> 4d0489cf1c47 (acme.korg/tmp.perf/script-switch-on-off, perf/core) perf report: Add --switch-on/--switch-off events
> 2f53ae347f59 perf top: Add --switch-on/--switch-off events
> [acme@quaco perf]$
>
> > If libcap-dev is not installed function symbol__restricted_filename()
> > will return true, which in turn will prevent symbol_name to be set in
> > machine__get_running_kernel_start().  That prevents function
> > map__set_kallsyms_ref_reloc_sym() from being called in
> > machine__create_kernel_maps(), resulting in kmap->ref_reloc_sym being
> > NULL in _perf_event__synthesize_kernel_mmap() and a segmentation
> > fault.
>
> Can you please try with my perf/cap branch? Perhaps you're using Igor's
> original set of patches? I made changes to the fallback, he was making
> it return false while I made it fallback to geteuid() == 0, as was
> before his patches.

Things are working properly on your perf/cap branch.  I tested with on
both x86 and ARM.

Mathieu

>
> - Arnaldo
>
> > I am not sure how this can be fixed.  I counted a total of 19
> > instances where kmap->ref_reloc_sym->XYZ is called, only 2 of wich
> > care to check if kmap->ref_reloc_sym is valid before proceeding.  As
> > such I must hope that in the 17 other cases, kmap->ref_reloc_sym is
> > guaranteed to be valid.  If I am correct then all we need is to check
> > for a valid pointer in _perf_event__synthesize_kernel_mmap().
> > Otherwise it will be a little harder.
> >
> > Mathieu
>
> --
>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

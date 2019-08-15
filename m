Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BC08F59E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 22:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9Zhx75QbiJZGUoZVlRhIcriWyrmptYrdRd8a9h6yuQ=; b=R+iBIhnl1hs/6H
	hZ7R7VIEKLUkvchTDRt/3EzoD7Mc0xZ5xK3bVKvmfeqmh2apUlUCqyLVCn+povhCv2gNs6eGA+Yo6
	r3eVffy7cBtn7Q9dfzhttbwBzpY3H2i27nT25vW/moIeWOD8nf57q8hcQ8yyO1KwYiASPngZQX4zi
	tecmT8En/NkbmB+rfMs3jxcd7BjgT16O+jeQeCaOi9MpYLrKBbgT1kkrrKDFHEKAnmKWfIt7FohrF
	kElQUEXe/g0gc+H7kbQK5LTsw6af3Z/eAzRsaAasTGbfKZIMstFDdz1wCRYR4on+28ai4oFBNLbWH
	yeceysejcMoFbUyyvaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMBT-0007Ai-7Q; Thu, 15 Aug 2019 20:17:19 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMBD-00079H-10
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 20:17:06 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so1739829iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 13:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RzfaHuwhDPX68hBxarqniibN5HOn+nFygAl5ItvTjGo=;
 b=SO6Tvy4CDBkNn+chm2JQTQxZWZsAQJe7GproB/4MNL+bM9UY8ZBWMJzJKsyTh4Z6KI
 WR1fKoTpa3rsg3cDPBvn/tcvA7/zfMKgpu1++tXzyhlaqijlzIOX5vchXei0Zk51sRSS
 IV1O1Lm2uEmv7c7hg5VIwMpvC1btPtU6RDEuftJND0uEHbRbs+EUqzxyHdLhltNWa7sn
 92LvT5dVeU8mQDW3o+TPipx2NH5TRX3OLca71i956lUH6JKOd7USj0DvJM9+nxvOWABv
 kc2pomYHtXHuFFzrXuFWZWfLmeILmvY/kjGfUaUsDNPWDXkUaYT/dRUKvr2H8Kkwf85A
 nf4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RzfaHuwhDPX68hBxarqniibN5HOn+nFygAl5ItvTjGo=;
 b=BxxggLcR410hfujpUEgh7BChAybLcEw44+c5F0GM+9mxGXO7cAz+q79P46SaYgUP9C
 CaFjuIf84dLSGpJ/7412ge7azY+tc/jmZO9LbJG3apKyV0VaK80zhxqTRl4ozHVxaXlt
 W9OPBA3NVWy/5XkBxX0SanS3U1sMcnoyBrGgbOzbSckvb7/sPgKzZ8En41N0QvZknkoe
 pFvBdnFO508mPAMntP+wli8COLM15PgGOcGHwRq6nXzfBDNsQ6AvFqAozdxNihzBOZ0f
 cSabXC0psg+G6TtWtNvsuYjUhBu7TKRkNMsfOeJkiv8oYJupSSbnmrwfzDuML/KgqFOw
 u3pQ==
X-Gm-Message-State: APjAAAXntxQpSprfb8bhLYAFCu+nhSCTsttB5ku+/6zUxMZ9flZAUSST
 m4Id7EefmFWsq+iNC4dlG0f6HPevRDxzua9iOpuXeA==
X-Google-Smtp-Source: APXvYqxeQrXgCvtXAIKSRlNVokN3zDssxy0pudwbzeKJzc03KH/+EFkQ4pr9nG+ubvO0IBnaLvhbl1LtDi9pEmvOJJ8=
X-Received: by 2002:a05:6638:517:: with SMTP id
 i23mr505221jar.71.1565900219755; 
 Thu, 15 Aug 2019 13:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
In-Reply-To: <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 15 Aug 2019 14:16:48 -0600
Message-ID: <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
To: "Lubashev, Igor" <ilubashe@akamai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_131703_082404_696D454E 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
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

On Wed, 14 Aug 2019 at 14:02, Lubashev, Igor <ilubashe@akamai.com> wrote:
>
> > On Wed, August 14, 2019 at 2:52 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de Melo
> > escreveu:
> > > Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> > > > # echo 0 > /proc/sys/kernel/kptr_restrict # ./tools/perf/perf record
> > > > -e instructions:k uname
> > > > perf: Segmentation fault
> > > > Obtained 10 stack frames.
> > > > ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> > > > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > > > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7)
> > > > [0x55af9e590337]
> > > > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > > > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > > > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > > > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > > > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > > > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7)
> > > > [0x7fd31ef99b97]
> > > > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a] Segmentation fault
> > > >
> > > > I can reproduce this on both x86 and ARM64.
> > >
> > > I don't see this with these two csets removed:
> > >
> > > 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> > > d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid
> > > checks
> > >
> > > Which were the ones I guessed were related to the problem you
> > > reported, so they are out of my ongoing perf/core pull request to
> > > Ingo/Thomas, now trying with these applied and your instructions...
> >
> > Can't repro:
> >
> > [root@quaco ~]# cat /proc/sys/kernel/kptr_restrict
> > 0
> > [root@quaco ~]# perf record -e instructions:k uname Linux [ perf record:
> > Woken up 1 times to write data ] [ perf record: Captured and wrote 0.024 MB
> > perf.data (1 samples) ] [root@quaco ~]# echo 1 >
> > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e instructions:k
> > uname Linux [ perf record: Woken up 1 times to write data ] [ perf record:
> > Captured and wrote 0.024 MB perf.data (1 samples) ] [root@quaco ~]# echo
> > 0 > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e
> > instructions:k uname Linux [ perf record: Woken up 1 times to write data ] [
> > perf record: Captured and wrote 0.024 MB perf.data (1 samples) ]
> > [root@quaco ~]#
> >
> > [acme@quaco perf]$ git log --oneline --author Lubashev tools/
> > 7ff5b5911144 (HEAD -> perf/cap, acme.korg/tmp.perf/cap,
> > acme.korg/perf/cap) perf symbols: Use CAP_SYSLOG with kptr_restrict
> > checks d7604b66102e perf tools: Use CAP_SYS_ADMIN with
> > perf_event_paranoid checks c766f3df635d perf ftrace: Use CAP_SYS_ADMIN
> > instead of euid==0 c22e150e3afa perf tools: Add helpers to use capabilities if
> > present
> > 74d5f3d06f70 tools build: Add capability-related feature detection perf
> > version 5.3.rc4.g7ff5b5911144 [acme@quaco perf]$
>
> I got an ARM64 cloud VM, but I cannot reproduce.
> # cat /proc/sys/kernel/kptr_restrict
> 0
>
> Perf trace works fine (does not die):
> # ./perf trace -a
>
> Here is my setup:
> Repo: git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git
> Branch: tmp.perf/cap
> Commit: 7ff5b5911 "perf symbols: Use CAP_SYSLOG with kptr_restrict checks"
> gcc --version: gcc (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0
> uname -a: Linux arm-4-par-1 4.9.93-mainline-rev1 #1 SMP Tue Apr 10 09:54:46 UTC 2018 aarch64 aarch64 aarch64 GNU/Linux
> lsb_release -a: Ubuntu 18.04.3 LTS
>
> Auto-detecting system features:
> ...                         dwarf: [ on  ]
> ...            dwarf_getlocations: [ on  ]
> ...                         glibc: [ on  ]
> ...                          gtk2: [ on  ]
> ...                      libaudit: [ on  ]
> ...                        libbfd: [ on  ]
> ...                        libcap: [ on  ]
> ...                        libelf: [ on  ]
> ...                       libnuma: [ on  ]
> ...        numa_num_possible_cpus: [ on  ]
> ...                       libperl: [ on  ]
> ...                     libpython: [ on  ]
> ...                     libcrypto: [ on  ]
> ...                     libunwind: [ on  ]
> ...            libdw-dwarf-unwind: [ on  ]
> ...                          zlib: [ on  ]
> ...                          lzma: [ on  ]
> ...                     get_cpuid: [ OFF ]
> ...                           bpf: [ on  ]
> ...                        libaio: [ on  ]
> ...                       libzstd: [ on  ]
> ...        disassembler-four-args: [ on  ]
>
> I also could not reproduce on x86:
> lsb_release -a: Ubuntu 18.04.1 LTS
> gcc --version: gcc (Ubuntu 7.4.0-1ubuntu1~18.04aka10.0.0) 7.4.0
> uname -r: 4.4.0-154-generic

I isolated the problem to libcap-dev - if it is not installed a
segmentation fault will occur.  Since this set is about using
capabilities it is obvious that not having it on a system should fail
a trace session, but it should not crash it.

If libcap-dev is not installed function symbol__restricted_filename()
will return true, which in turn will prevent symbol_name to be set in
machine__get_running_kernel_start().  That prevents function
map__set_kallsyms_ref_reloc_sym() from being called in
machine__create_kernel_maps(), resulting in kmap->ref_reloc_sym being
NULL in _perf_event__synthesize_kernel_mmap() and a segmentation
fault.

I am not sure how this can be fixed.  I counted a total of 19
instances where kmap->ref_reloc_sym->XYZ is called, only 2 of wich
care to check if kmap->ref_reloc_sym is valid before proceeding.  As
such I must hope that in the 17 other cases, kmap->ref_reloc_sym is
guaranteed to be valid.  If I am correct then all we need is to check
for a valid pointer in _perf_event__synthesize_kernel_mmap().
Otherwise it will be a little harder.

Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

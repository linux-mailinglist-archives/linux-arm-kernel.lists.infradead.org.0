Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEABA8EEFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwmOunWIIv/sKORRxDneqhK/V7Jov+oIKusEO3ze2OY=; b=Ux6zHs3fNizPiP
	T3/OqHk0N4IOWxJOX59fv1EtLeyl6riYot0OJz/y/SO68ro+ldXpJ5+n7XBLjfveb6qDiJJh7exRy
	lZwzEDneioF/wZyRaquvHITawRSyLQnh6SpZkji2y75iCuDhi5gb1YEUtGqmp7nZ2h/TtEv9J0HXE
	VdaK1MHv2O/SSlkxW1bsrXoR/Ix+NkCFWI7T/C6ha2C0i6Di4oeNUy7UbziBmlBnLeyG1O/bishHw
	SBAZ3V9ANklB2xtTUHM6PG/uOWifdlocSsQAUqeufqdD6At7TUc5MCQzY3ICha5eWxpjEm5Udo5Yn
	SFccAsaYCfIykc3/y86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHGg-0005c8-II; Thu, 15 Aug 2019 15:02:22 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHGN-0005ab-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:02:08 +0000
Received: by mail-ot1-x342.google.com with SMTP id w4so6443105ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 08:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/MRnxbjz1Xv9wb4xXAKX3Jx0kdP69/dxq0cQR/4W0mE=;
 b=KuEsqDIjNbs8Gmbl0tP2HadsC0myqvgFMTr0pFgE1HCayXF1TPx+n9GeQ1nAO4Be59
 eopv6yLRuybV6oZv86XQFTkcmnEUk6eQmqnv+IByXoY8TDuvrjmgJdeIdqQkxZItBAXC
 4MhQ974sqMX/SaSU3kkx6UfBudLYqGXZdgvCPLGuuAXPndrY5wvBpao2bi5JX7m45uCJ
 86HuOiHUkuzEmcVsuaNvu8C3/j2sg2qkSDFxigmpEqke/C5cciHGSrXRyMcRm/uKbqK2
 BYZkqY9d0xbZnf8pa7kBSmYv5ACBSXt5D5h8uIjkeK7ZYPSHnOCB6O2aNRpZwOh7ayuV
 MpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/MRnxbjz1Xv9wb4xXAKX3Jx0kdP69/dxq0cQR/4W0mE=;
 b=ax1+ugQToAmCmoOCitVN6lWlGhDYYNjiWsj65ZkbcEsHKRSepk4HyOkM64H/X4e0t5
 UDPL9D/aq+dRDQz6J59nnbRSzM6LtTwgLbvn4pF+Ap0xHLGYxnRJUUOdJRevCwvYLiJh
 sBHI+I3U3zS5OTzPw3o38nym6jPYOXJiwM1/j7PmJd/0htPGqT92IfVX32zxHZFwLdvH
 q5wFxNy45mXGTt86qpkIfJxO2HuOqs2wBhpcIGCJux3UHr6yCVloXloLx6mFHEm2RkcR
 fq5n39W38xFF9iPbYK4Kk0o+gBdPQDY4VZ6vpPJZmCHI4VHAcTOKcq1gK4SyX3a+wuVR
 iZvw==
X-Gm-Message-State: APjAAAVW4uURxm0WMMf0hLGNXB6JuhkpJLKzFnUCnYdHi0qk++Q4nwjO
 HOvHQ5zAJRUZV1cjG9i40pF/jVHZPCBhF03QtyRQjw==
X-Google-Smtp-Source: APXvYqxMR89cP6StUyYoKcNyCEY6rlMZMM3t6Srnd+J04T1e2Dc+c+Hfl5ihzwhFcAWsP5k+dytIMQalsbxdJhry47Y=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr5969234ioq.50.1565881322002;
 Thu, 15 Aug 2019 08:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
In-Reply-To: <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 15 Aug 2019 09:01:51 -0600
Message-ID: <CANLsYkyhSO13NhKMkCsHT87z-380JHDKsM3U_R=HesN0bKEDPA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
To: "Lubashev, Igor" <ilubashe@akamai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_080203_977005_A33CDAF1 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 James Morris <jmorris@namei.org>, Jiri Olsa <jolsa@redhat.com>,
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

Thank you for posting your configuration.  I will see where things are
different with mine.

>
> I also could not reproduce on x86:
> lsb_release -a: Ubuntu 18.04.1 LTS
> gcc --version: gcc (Ubuntu 7.4.0-1ubuntu1~18.04aka10.0.0) 7.4.0
> uname -r: 4.4.0-154-generic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

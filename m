Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1563B950B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 00:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR9ncV+0z7yEkY6GWDbhgvsMJkTPJ74Z5v/pv50trvo=; b=ZBhFThd8RvKTsW
	ocsNHW2+eufShrqMOk3xNxWRFmbYQkbKnteexBQYch7Uh2lb9Z4sb4r70OuvGJNiDhHnXAstN5gPR
	1vJURjJhO0L20LgYDMGlOJtUdVwOo4MZRrIZvcga1XWVXjrFLwG+H8pTdiQ4/0x/Djxiv3yCUio9D
	tINQI8krrmTlWt32JD/4aAc+Uu3U0ER/JXx84QB0eMrZiglOHqHeaZWfRzdnZA4sRwDJg+tLG9hg8
	Umm8LpYbMITYEJe4U+M1W8tRumZq1CODsgEPVJG4sU0PZUAEwJ3OXnxerfwb1P/p8Muk9cmN32rtL
	+UOeqLbtuhXM1KUVuJMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzq35-0000zF-5W; Mon, 19 Aug 2019 22:22:47 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzq2k-0000ym-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 22:22:29 +0000
Received: from pps.filterd (m0050096.ppops.net [127.0.0.1])
 by m0050096.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x7JMHQw4002057; Mon, 19 Aug 2019 23:22:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=969iK0KoMTDmd30EtoPMBUW6pfjiH9io2P6tG8MD6S8=;
 b=ER8ULjp6504ZePYOpbXzhzjyBELAPaOqhAMiPk5uMTP2PAUr7S3z9ptZc0EmXtyAZ0fr
 /w+LBsAb0NxA1z1CqNbiQr1TdeDIUSX1/fI5nV+wh00MHTMPuiV2xw1qgFBlUBtBOoly
 53r4mCkQQYNDIQwYhvGOTWt0F9GqPl67y0hVEBdOoQb26wxx+M/yE3LWPeTqELVQQfkx
 4dl60GDq2BKc6v2anJ+vUDau1C6+dH9aZo8FNiVOzHb/r6fwrDu/Lv/V4E+NpzwuL3Pi
 D6s2H6fC3qek0Dsd9KtuOkqfI4A34Y1zpg0s40+kvMcoQSRHlTqPAsBw9j9lwRshwilF 3g== 
Received: from prod-mail-ppoint2 (prod-mail-ppoint2.akamai.com [184.51.33.19]
 (may be forged))
 by m0050096.ppops.net-00190b01. with ESMTP id 2uea0b38ny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 19 Aug 2019 23:22:09 +0100
Received: from pps.filterd (prod-mail-ppoint2.akamai.com [127.0.0.1])
 by prod-mail-ppoint2.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7JMGjOV007294; Mon, 19 Aug 2019 18:22:08 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.30])
 by prod-mail-ppoint2.akamai.com with ESMTP id 2uecwvb3t3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 19 Aug 2019 18:22:08 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb2.msg.corp.akamai.com (172.27.123.102) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 19 Aug 2019 18:22:07 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Mon, 19 Aug 2019 18:22:07 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Arnaldo Carvalho de Melo
 <arnaldo.melo@gmail.com>
Subject: RE: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Topic: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Index: AQHVTS6ohXVeHma7aEyJ5mLyFs0geab7PiSAgAAMNACAAAEdgP//yqiwgAHfTwCAABf5AIAF9+gAgAASvOA=
Date: Mon, 19 Aug 2019 22:22:07 +0000
Message-ID: <3f70f6be3a464ca5b4cf563433933245@usma1ex-dag1mb6.msg.corp.akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
 <20190815214236.GA3929@kernel.org>
 <CANLsYkyPkcJWmBZzyjGj3vJRgEtuaun7HQjN1=5wcOyTPnfhmQ@mail.gmail.com>
In-Reply-To: <CANLsYkyPkcJWmBZzyjGj3vJRgEtuaun7HQjN1=5wcOyTPnfhmQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.35.136]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908190221
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-19_04:2019-08-19,2019-08-19 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 clxscore=1015 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908190221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_152227_607823_BA6459D7 
X-CRM114-Status: GOOD (  31.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Peter
 Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, August 19, 2019 at 12:51 PM Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
> On Thu, 15 Aug 2019 at 15:42, Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> >
> > Em Thu, Aug 15, 2019 at 02:16:48PM -0600, Mathieu Poirier escreveu:
> > > On Wed, 14 Aug 2019 at 14:02, Lubashev, Igor <ilubashe@akamai.com>
> wrote:
> > > >
> > > > > On Wed, August 14, 2019 at 2:52 PM Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> > > > > Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de
> > > > > Melo
> > > > > escreveu:
> > > > > > Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier
> escreveu:
> > > > > > > # echo 0 > /proc/sys/kernel/kptr_restrict #
> > > > > > > ./tools/perf/perf record -e instructions:k uname
> > > > > > > perf: Segmentation fault
> > > > > > > Obtained 10 stack frames.
> > > > > > > ./tools/perf/perf(sighandler_dump_stack+0x44)
> > > > > > > [0x55af9e5da5d4]
> > > > > > > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > > > > > > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7)
> > > > > > > [0x55af9e590337]
> > > > > > > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > > > > > > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > > > > > > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > > > > > > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > > > > > > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > > > > > > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7)
> > > > > > > [0x7fd31ef99b97]
> > > > > > > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a] Segmentation
> > > > > > > fault
> > > > > > >
> > > > > > > I can reproduce this on both x86 and ARM64.
> > > > > >
> > > > > > I don't see this with these two csets removed:
> > > > > >
> > > > > > 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict
> > > > > > checks d7604b66102e perf tools: Use CAP_SYS_ADMIN with
> > > > > > perf_event_paranoid checks
> > > > > >
> > > > > > Which were the ones I guessed were related to the problem you
> > > > > > reported, so they are out of my ongoing perf/core pull request
> > > > > > to Ingo/Thomas, now trying with these applied and your
> instructions...
> > > > >
> > > > > Can't repro:
> > > > >
> > > > > [root@quaco ~]# cat /proc/sys/kernel/kptr_restrict
> > > > > 0
> > > > > [root@quaco ~]# perf record -e instructions:k uname Linux [ perf
> record:
> > > > > Woken up 1 times to write data ] [ perf record: Captured and
> > > > > wrote 0.024 MB perf.data (1 samples) ] [root@quaco ~]# echo 1 >
> > > > > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record -e
> > > > > instructions:k uname Linux [ perf record: Woken up 1 times to write
> data ] [ perf record:
> > > > > Captured and wrote 0.024 MB perf.data (1 samples) ] [root@quaco
> > > > > ~]# echo
> > > > > 0 > /proc/sys/kernel/kptr_restrict [root@quaco ~]# perf record
> > > > > -e instructions:k uname Linux [ perf record: Woken up 1 times to
> > > > > write data ] [ perf record: Captured and wrote 0.024 MB
> > > > > perf.data (1 samples) ] [root@quaco ~]#
> > > > >
> > > > > [acme@quaco perf]$ git log --oneline --author Lubashev tools/
> > > > > 7ff5b5911144 (HEAD -> perf/cap, acme.korg/tmp.perf/cap,
> > > > > acme.korg/perf/cap) perf symbols: Use CAP_SYSLOG with
> > > > > kptr_restrict checks d7604b66102e perf tools: Use CAP_SYS_ADMIN
> > > > > with perf_event_paranoid checks c766f3df635d perf ftrace: Use
> > > > > CAP_SYS_ADMIN instead of euid==0 c22e150e3afa perf tools: Add
> > > > > helpers to use capabilities if present
> > > > > 74d5f3d06f70 tools build: Add capability-related feature
> > > > > detection perf version 5.3.rc4.g7ff5b5911144 [acme@quaco perf]$
> > > >
> > > > I got an ARM64 cloud VM, but I cannot reproduce.
> > > > # cat /proc/sys/kernel/kptr_restrict
> > > > 0
> > > >
> > > > Perf trace works fine (does not die):
> > > > # ./perf trace -a
> > > >
> > > > Here is my setup:
> > > > Repo: git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git
> > > > Branch: tmp.perf/cap
> > > > Commit: 7ff5b5911 "perf symbols: Use CAP_SYSLOG with kptr_restrict
> checks"
> > > > gcc --version: gcc (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0
> > > > uname -a: Linux arm-4-par-1 4.9.93-mainline-rev1 #1 SMP Tue Apr 10
> > > > 09:54:46 UTC 2018 aarch64 aarch64 aarch64 GNU/Linux lsb_release
> > > > -a: Ubuntu 18.04.3 LTS
> > > >
> > > > Auto-detecting system features:
> > > > ...                         dwarf: [ on  ]
> > > > ...            dwarf_getlocations: [ on  ]
> > > > ...                         glibc: [ on  ]
> > > > ...                          gtk2: [ on  ]
> > > > ...                      libaudit: [ on  ]
> > > > ...                        libbfd: [ on  ]
> > > > ...                        libcap: [ on  ]
> > > > ...                        libelf: [ on  ]
> > > > ...                       libnuma: [ on  ]
> > > > ...        numa_num_possible_cpus: [ on  ]
> > > > ...                       libperl: [ on  ]
> > > > ...                     libpython: [ on  ]
> > > > ...                     libcrypto: [ on  ]
> > > > ...                     libunwind: [ on  ]
> > > > ...            libdw-dwarf-unwind: [ on  ]
> > > > ...                          zlib: [ on  ]
> > > > ...                          lzma: [ on  ]
> > > > ...                     get_cpuid: [ OFF ]
> > > > ...                           bpf: [ on  ]
> > > > ...                        libaio: [ on  ]
> > > > ...                       libzstd: [ on  ]
> > > > ...        disassembler-four-args: [ on  ]
> > > >
> > > > I also could not reproduce on x86:
> > > > lsb_release -a: Ubuntu 18.04.1 LTS gcc --version: gcc (Ubuntu
> > > > 7.4.0-1ubuntu1~18.04aka10.0.0) 7.4.0 uname -r: 4.4.0-154-generic
> > >
> > > I isolated the problem to libcap-dev - if it is not installed a
> > > segmentation fault will occur.  Since this set is about using
> > > capabilities it is obvious that not having it on a system should
> > > fail a trace session, but it should not crash it.
> >
> > It shouldn't crash on x86_64:
> >
> > root@quaco ~]# sysctl kernel.kptr_restrict kernel.kptr_restrict = 0
> > [root@quaco ~]# perf record -e instructions:k uname Linux [ perf
> > record: Woken up 1 times to write data ] [ perf record: Captured and
> > wrote 0.023 MB perf.data (5 samples) ] [root@quaco ~]# ldd ~/bin/perf
> > | grep libcap [root@quaco ~]# perf -v perf version
> > 5.3.rc4.g329ca330bf8b [root@quaco ~]# [acme@quaco perf]$ git log
> > --oneline -4 329ca330bf8b (HEAD -> perf/cap) perf symbols: Use
> > CAP_SYSLOG with kptr_restrict checks f7b9999387af perf tools: Use
> > CAP_SYS_ADMIN with perf_event_paranoid checks
> > 4d0489cf1c47 (acme.korg/tmp.perf/script-switch-on-off, perf/core) perf
> > report: Add --switch-on/--switch-off events
> > 2f53ae347f59 perf top: Add --switch-on/--switch-off events [acme@quaco
> > perf]$
> >
> > > If libcap-dev is not installed function
> > > symbol__restricted_filename() will return true, which in turn will
> > > prevent symbol_name to be set in
> > > machine__get_running_kernel_start().  That prevents function
> > > map__set_kallsyms_ref_reloc_sym() from being called in
> > > machine__create_kernel_maps(), resulting in kmap->ref_reloc_sym
> > > being NULL in _perf_event__synthesize_kernel_mmap() and a
> > > segmentation fault.
> >
> > Can you please try with my perf/cap branch? Perhaps you're using
> > Igor's original set of patches? I made changes to the fallback, he was
> > making it return false while I made it fallback to geteuid() == 0, as
> > was before his patches.
> 
> Things are working properly on your perf/cap branch.  I tested with on both
> x86 and ARM.

Mathieu, you are probably testing with euid==0.  If you were to test with euid!=0 but with CAP_SYSLOG and no libcap (and kptr_restrict=0, perf_event_paranoid=2), you would likely hit the bug that you identified in __perf_event__synthesize_kermel_mmap().

See https://lkml.kernel.org/lkml/930a59730c0d495f8c5acf4f99048e8d@usma1ex-dag1mb6.msg.corp.akamai.com for the fix (Option 1 only or Options 1+2).

Arnaldo, once we decide what the right fix is, I am happy to post the update (options 1, 1+2) as a patch series.

- Igor


> > > I am not sure how this can be fixed.  I counted a total of 19
> > > instances where kmap->ref_reloc_sym->XYZ is called, only 2 of wich
> > > care to check if kmap->ref_reloc_sym is valid before proceeding.  As
> > > such I must hope that in the 17 other cases, kmap->ref_reloc_sym is
> > > guaranteed to be valid.  If I am correct then all we need is to
> > > check for a valid pointer in _perf_event__synthesize_kernel_mmap().
> > > Otherwise it will be a little harder.
> > >
> > > Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

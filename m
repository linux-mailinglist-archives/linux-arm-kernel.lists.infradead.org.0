Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D328A770
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El9CCpELse85Y8x1z12OCI4jOcgWfKpy0nE9zjcTJ6w=; b=i13SRzCMB9FlHi
	dlsGHlOoUGNC0427hbo0HzBZW6XWGJceqtUtNUSr8Is+LjVZjmJENB4iYnXeL6G8N34EmLAUS5cF/
	gZg7ra0WFAV3vQVNHip8PjhKc1uyKthLM9Lhnzq92y6BIkcWKWdAgb2IGYybU5lZaM+tmZ/05GyD4
	UwIHlt5fOTih1Bf8Gr6tZblco8ySJR0Lr/qKHGdEqC+EKu+ipO8xyX7AZzcRvYzKk775b1JGFCzkA
	YBsdpSjl/vm8uHn7GqFxHlUcvDmdx6ytuDE5hy/oxmpPL1zlOaMNQokfeP6Ez4E4UYTs3HR5OChLl
	/Bf5yClt5Aqx5SzU7k3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGDv-0007sW-Up; Mon, 12 Aug 2019 19:43:20 +0000
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGDi-0007sI-RH; Mon, 12 Aug 2019 19:43:08 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 64B5340340; Mon, 12 Aug 2019 16:43:02 -0300 (-03)
Date: Mon, 12 Aug 2019 16:43:02 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 1/4] perf: Add capability-related utilities
Message-ID: <20190812194302.GD9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <8a1e76cf5c7c9796d0d4d240fbaa85305298aafa.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a1e76cf5c7c9796d0d4d240fbaa85305298aafa.1565188228.git.ilubashe@akamai.com>
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Aug 07, 2019 at 10:44:14AM -0400, Igor Lubashev escreveu:
> Add utilities to help checking capabilities of the running procss.
> Make perf link with libcap, if it is available. If no libcap-dev[el],
> assume no capabilities.

Applied and added the text at the end of this message on the commit log,
I'm also adding NO_LIBCAP=1 to the minimum build in

  make -C tools/perf build-test


I.e.:

diff --git a/tools/perf/tests/make b/tools/perf/tests/make
index 5363a12a8b9b..70c48475896d 100644
--- a/tools/perf/tests/make
+++ b/tools/perf/tests/make
@@ -108,6 +108,7 @@ make_minimal        += NO_DEMANGLE=1 NO_LIBELF=1 NO_LIBUNWIND=1 NO_BACKTRACE=1
 make_minimal        += NO_LIBNUMA=1 NO_LIBAUDIT=1 NO_LIBBIONIC=1
 make_minimal        += NO_LIBDW_DWARF_UNWIND=1 NO_AUXTRACE=1 NO_LIBBPF=1
 make_minimal        += NO_LIBCRYPTO=1 NO_SDT=1 NO_JVMTI=1 NO_LIBZSTD=1
+make_minimal        += NO_LIBCAP=1
 
 # $(run) contains all available tests
 run := make_pure

Thanks,

- Arnaldo


Committer testing:

  $ make O=/tmp/build/perf -C tools/perf install-bin
  make: Entering directory '/home/acme/git/perf/tools/perf'
    BUILD:   Doing 'make -j8' parallel build
  
  Auto-detecting system features:
  <SNIP>
  ...                        libbfd: [ on  ]
  ...                        libcap: [ OFF ]
  ...                        libelf: [ on  ]
  <SNIP>
  Makefile.config:833: No libcap found, disables capability support, please install libcap-devel/libcap-dev
  <SNIP>
  $ grep libcap /tmp/build/perf/FEATURE-DUMP 
  feature-libcap=0
  $ cat /tmp/build/perf/feature/test-libcap.make.output 
  test-libcap.c:2:10: fatal error: sys/capability.h: No such file or directory
      2 | #include <sys/capability.h>
        |          ^~~~~~~~~~~~~~~~~~
  compilation terminated.
  $

Now install libcap-devel and try again:

  $ make O=/tmp/build/perf -C tools/perf install-bin
  make: Entering directory '/home/acme/git/perf/tools/perf'
    BUILD:   Doing 'make -j8' parallel build
  Warning: Kernel ABI header at 'tools/include/linux/bits.h' differs from latest version at 'include/linux/bits.h'
  diff -u tools/include/linux/bits.h include/linux/bits.h
  Warning: Kernel ABI header at 'tools/arch/x86/include/asm/cpufeatures.h' differs from latest version at 'arch/x86/include/asm/cpufeatures.h'
  diff -u tools/arch/x86/include/asm/cpufeatures.h arch/x86/include/asm/cpufeatures.h
  
  Auto-detecting system features:
  ...                         dwarf: [ on  ]
  ...            dwarf_getlocations: [ on  ]
  ...                         glibc: [ on  ]
  ...                          gtk2: [ on  ]
  ...                      libaudit: [ on  ]
  ...                        libbfd: [ on  ]
  ...                        libcap: [ on  ]
  ...                        libelf: [ on  ]
  <SNIP>>
    CC       /tmp/build/perf/jvmti/libjvmti.o
  <SNIP>>
  $ grep libcap /tmp/build/perf/FEATURE-DUMP 
  feature-libcap=1
  $ cat /tmp/build/perf/feature/test-libcap.make.output 
  $ ldd /tmp/build/perf/feature/test-libcap.make.bin
  ldd: /tmp/build/perf/feature/test-libcap.make.bin: No such file or directory
  $ ldd /tmp/build/perf/feature/test-libcap.bin 
  	linux-vdso.so.1 (0x00007ffc35bfe000)
  	libcap.so.2 => /lib64/libcap.so.2 (0x00007ff9c62ff000)
  	libc.so.6 => /lib64/libc.so.6 (0x00007ff9c6139000)
  	/lib64/ld-linux-x86-64.so.2 (0x00007ff9c6326000)
  $
  $ ldd ~/bin/perf | grep libcap
	libcap.so.2 => /lib64/libcap.so.2 (0x00007fe20ea19000)
  $

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

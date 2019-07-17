Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B0F6C39B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 01:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILg9HlUHcJrrmdCt44QotAVkk3Jczbnr3/erpOXtqi8=; b=cMrKalDFUoINDH
	dYOrwResuX0AXdN7nJUf7/xLUo89fNZQzGVtg+PbNJJc2yaCQEwvJZjd4s6RYLPfYK3Pw6QBgg4C4
	l9qIGZPVokBv7sqAVkJ3EglCf2SAgcUvTtFGSgMk47C/uhf8/eJPJGnvnMGI6OoPn6tk0wtDRHp8Y
	MXSG/JCZhEQqMnr/pIawkS5a2Vk21D4r50MjwHKUTQVKWOELdkiHLgpI4nTkL4HIgDGYpebLKQSqD
	Pv/hhUYwCdqDyH21dZIGa0Qz6+vB9KsvVwsYNF/hiGpxrUk5N/iAk21sZ56f202ifiudAdtfNBEU9
	3oe/3y0JN0ABGCZNMf/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hntdd-0001uU-Le; Wed, 17 Jul 2019 23:47:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hntdS-0001qS-FF
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jul 2019 23:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ip9lNfmhhDb5HCtfgW2jjjNOGJYDxsuUzii/0A7QOTM=; b=frgLHdaqfkQAJYJ2VLWWL5hXv
 PjwjMqZLZB1AmOHomP6ipyj+XZpLTrQr8RQ0UMbiGRmi5BxFmEWNfrqc17vGRLhDL9fX8KzzrMnj8
 AFZMA5yi+EmlsyJLJzrkfsK3D9bX5At013bvPu2C3Bq8gf0KW4YaYOkhYyHYbjGXAiF0ccVjKInAw
 c5axFbcWgFQEOAuJutUKnSHVZzcbjnL604mtzNQh73iUSt5qWRA+T36+EAg4JT+gPgdadD9HVKh3s
 5mt7d6HCfsB69OqNfgisjE7Oss4lykTaCgoAdCDNMT9P7zsMk4B7GyLLufxKqAblfXLdU9WP5RjQR
 2PAIAH/4A==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hntdQ-0006s1-5A; Wed, 17 Jul 2019 23:46:56 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 8AB9E40340; Wed, 17 Jul 2019 20:46:52 -0300 (-03)
Date: Wed, 17 Jul 2019 20:46:52 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH 1/3] perf: Add capability-related utilities
Message-ID: <20190717234652.GJ3624@kernel.org>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
 <20190716084643.GA22317@krava> <20190717210551.GI3624@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717210551.GI3624@kernel.org>
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
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Jul 17, 2019 at 06:05:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Tue, Jul 16, 2019 at 10:46:43AM +0200, Jiri Olsa escreveu:
> > On Tue, Jul 02, 2019 at 08:10:03PM -0400, Igor Lubashev wrote:
> > > Add utilities to help checking capabilities of the running process.
> > > Make perf link with libcap.
> > > 
> > > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > > ---
> > >  tools/perf/Makefile.config         |  2 +-
> > >  tools/perf/util/Build              |  1 +
> > >  tools/perf/util/cap.c              | 24 ++++++++++++++++++++++++
> > >  tools/perf/util/cap.h              | 10 ++++++++++
> > >  tools/perf/util/event.h            |  1 +
> > >  tools/perf/util/python-ext-sources |  1 +
> > >  tools/perf/util/util.c             |  9 +++++++++
> > >  7 files changed, 47 insertions(+), 1 deletion(-)
> > >  create mode 100644 tools/perf/util/cap.c
> > >  create mode 100644 tools/perf/util/cap.h
> > > 
> > > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > > index 85fbcd265351..21470a50ed39 100644
> > > --- a/tools/perf/Makefile.config
> > > +++ b/tools/perf/Makefile.config
> > > @@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing
> > >  # adding assembler files missing the .GNU-stack linker note.
> > >  LDFLAGS += -Wl,-z,noexecstack
> > >  
> > > -EXTLIBS = -lpthread -lrt -lm -ldl
> > > +EXTLIBS = -lpthread -lrt -lm -ldl -lcap
> > 
> > I wonder we should detect libcap or it's everywhere.. Arnaldo's compile test suite might tell
> 
> I'll add this tentatively and try to build it in my test suite.

So, not even in my notebook this worked straight away:

  CC       /tmp/build/perf/util/cap.o
  CC       /tmp/build/perf/util/config.o
In file included from util/cap.c:5:
util/cap.h:6:10: fatal error: sys/capability.h: No such file or directory
    6 | #include <sys/capability.h>
      |          ^~~~~~~~~~~~~~~~~~
compilation terminated.
mv: cannot stat '/tmp/build/perf/util/.cap.o.tmp': No such file or directory


I had to first do:

dnf install libcap-devel

So we need to have a feature test and fail if that is not installed,
i.e. libcap becomes a hard req for building perf, which I think is
reasonable, one more shouldn't hurt, right?

With all the features enabled:

[acme@quaco perf]$ ldd ~/bin/perf
	linux-vdso.so.1 (0x00007ffe7278a000)
	libunwind-x86_64.so.8 => /lib64/libunwind-x86_64.so.8 (0x00007f7be52f1000)
	libunwind.so.8 => /lib64/libunwind.so.8 (0x00007f7be52d7000)
	liblzma.so.5 => /lib64/liblzma.so.5 (0x00007f7be52ae000)
	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f7be528d000)
	librt.so.1 => /lib64/librt.so.1 (0x00007f7be5283000)
	libm.so.6 => /lib64/libm.so.6 (0x00007f7be513d000)
	libdl.so.2 => /lib64/libdl.so.2 (0x00007f7be5135000)
	libcap.so.2 => /lib64/libcap.so.2 (0x00007f7be512e000)
	libelf.so.1 => /lib64/libelf.so.1 (0x00007f7be5113000)
	libdw.so.1 => /lib64/libdw.so.1 (0x00007f7be50c0000)
	libslang.so.2 => /lib64/libslang.so.2 (0x00007f7be4de8000)
	libperl.so.5.28 => /lib64/libperl.so.5.28 (0x00007f7be4ac2000)
	libc.so.6 => /lib64/libc.so.6 (0x00007f7be48fa000)
	libpython2.7.so.1.0 => /lib64/libpython2.7.so.1.0 (0x00007f7be4690000)
	libz.so.1 => /lib64/libz.so.1 (0x00007f7be4676000)
	libzstd.so.1 => /lib64/libzstd.so.1 (0x00007f7be45d1000)
	libnuma.so.1 => /lib64/libnuma.so.1 (0x00007f7be45c3000)
	libbabeltrace-ctf.so.1 => /lib64/libbabeltrace-ctf.so.1 (0x00007f7be456d000)
	libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007f7be4551000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f7be5331000)
	libbz2.so.1 => /lib64/libbz2.so.1 (0x00007f7be453d000)
	libcrypt.so.2 => /lib64/libcrypt.so.2 (0x00007f7be4502000)
	libutil.so.1 => /lib64/libutil.so.1 (0x00007f7be44fd000)
	libbabeltrace.so.1 => /lib64/libbabeltrace.so.1 (0x00007f7be44ed000)
	libpopt.so.0 => /lib64/libpopt.so.0 (0x00007f7be44dd000)
	libuuid.so.1 => /lib64/libuuid.so.1 (0x00007f7be44d3000)
	libgmodule-2.0.so.0 => /lib64/libgmodule-2.0.so.0 (0x00007f7be44cd000)
	libglib-2.0.so.0 => /lib64/libglib-2.0.so.0 (0x00007f7be43a9000)
	libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f7be4335000)
[acme@quaco perf]$

;-)

So, please check tools/build/feature/ and check how this is done and add
a test and the warning in tools/perf/Makefile.config so that we get an
error message stating that libcap-dev or libcap-devel should be
installed.

I'll do it if there is any difficulty, just not right now as I'm busy
and want to get a pull req out of the door.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

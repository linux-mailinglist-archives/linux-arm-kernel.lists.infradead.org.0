Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A05A309
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7hGjMGWB01D33ZHeIV3Zy5Uzh6RZgGc72/SaRx+LNI=; b=QOE37114jdykJw
	zemIAePXmh+PKMUhJIfqVyG0RwjtOGLrri03Cg44ninj8jP9zK198ymuFqv6r8En6ORtwfDCeeaZZ
	w0uVlCeyRILy0fzT+V0JhChKW+g3PoAN56yIdf3bY1AQYvYJG5BxH2wpZWnu6v2nSuOTlXYu0Vwag
	8OPjstI10Dnhb+y0FctJu8fJ7I//j9Gww7oWZ2KEAQsRLRpUtztopxJOsZvqwMhzRU7QVUbN8E3eI
	X6yBVr208D0sFspWCgcIsygQtOfeOtZfP1UnTaD+FfWUrdLYAt2S7gw0piGitLqQvY+TA/wel1gcd
	RL3Sfuh69ihraJNbXfzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvBZ-0002oE-1E; Fri, 28 Jun 2019 18:01:21 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvBI-0002mx-FT; Fri, 28 Jun 2019 18:01:08 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 8DED880348;
 Fri, 28 Jun 2019 20:00:58 +0200 (CEST)
Date: Fri, 28 Jun 2019 20:00:57 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v3 4/4] kbuild: compile-test kernel headers to ensure
 they are self-contained
Message-ID: <20190628180057.GA22758@ravnborg.org>
References: <20190627163903.28398-1-yamada.masahiro@socionext.com>
 <20190627163903.28398-5-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627163903.28398-5-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=yXOKcWPwKYVsdpAgASMA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_110104_891494_D50421FC 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>,
 xdp-newbies@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 linux-kbuild@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Masahiro.

On Fri, Jun 28, 2019 at 01:39:02AM +0900, Masahiro Yamada wrote:
> The headers in include/ are globally used in the kernel source tree
> to provide common APIs. They are included from external modules, too.
> 
> It will be useful to make as many headers self-contained as possible
> so that we do not have to rely on a specific include order.
> 
> There are more than 4000 headers in include/. In my rough analysis,
> 70% of them are already self-contained. With efforts, most of them
> can be self-contained.
> 
> For now, we must exclude more than 1000 headers just because they
> cannot be compiled as standalone units. I added them to header-test-.
> The black list was mostly generated by a script, so should be checked
> later.
The list is smaller than I had expected.
And I see why you insisted on avoiding a maze ok Kbuild files.
It looks good, except there is a few issues..


The file kernel/kheaders_data.tar.xz includes all the .s files.
Something needs to be done to exclude the .s files...

When building a full kernel the build fails like this:
  LD      vmlinux.o
aarch64-linux-gnu-ld: cannot find include/lib.a: No such file or directory
make[1]: *** [/home/sam/kernel/linux-kbuild.git/Makefile:1054: vmlinux] Error 1
make[1]: Leaving directory '/home/sam/kernel/linux-kbuild.git/.build/arm64-allyesconfig'
make: *** [Makefile:179: sub-make] Error 2


include/uapi/linux/mman.h fails when building sparc64 allmodconfig.
There is likely more header files that will fail when we start to
throw this after diverse randconfigs.
I have no good idea how to catch this.
Unless your scripts could automate this across several architectures.

I did not continue my testing futher.

> +header-test-			+= uapi/drm/vmwgfx_drm.h
> +header-test-			+= uapi/linux/a.out.h
> +header-test-			+= uapi/linux/coda.h
...
> +header-test-			+= uapi/xen/evtchn.h
> +header-test-			+= uapi/xen/gntdev.h
> +header-test-			+= uapi/xen/privcmd.h

I though uapi files were covered by another Makefile?
If they are added because we pull them in using a pattern, maybe they
should be removed using a specific filer-out?

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

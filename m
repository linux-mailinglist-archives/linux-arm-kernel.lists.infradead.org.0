Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7946AAA178
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIWHq4grzlPYhhooLTHE7FmNX6hUv8ddWnKeAfhvwRw=; b=UOwrrne3mkf3Ut
	QKMO+UgZPXDsWkduIoybZHKHNrL/pVpfQyOhwsIC8Fpfkj2F/Q743j0nmsan1xgiq9tzp0ULVk5dv
	KPup3BnhexKnMtA9777BtM0/a3/xZpa4cliU0Ns9MG+B4h18BHKyHx5nTv80b/uT6fhzmQjZNV9Xq
	lyKWLAvLXSHiwJXyeUgJTTemsIQiCBuqswJ3W9K0vKMAFOtGvn0OW3llpRIY6KqaADRTjSJpBpO9I
	MSrd3R/IY8WbOcJ/1h12zS+gLlft9i9UGiye9GaxwQ1BlMOguzScSCkFYgwPBf+ousx10PCyigtXS
	sdpcDMrhOInvih8Iw7NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pyZ-0007z6-0E; Thu, 05 Sep 2019 11:30:55 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pyE-0007xq-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:30:36 +0000
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i5pxg-0002oG-P2; Thu, 05 Sep 2019 11:30:00 +0000
Date: Thu, 5 Sep 2019 13:29:59 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905112958.ldzyzyuqn5akkhzy@wittgenstein>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905110544.d6c5t7rx25kvywmi@wittgenstein>
 <ae415ea8-4442-d81c-3b46-2ae5fb35bbdf@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae415ea8-4442-d81c-3b46-2ae5fb35bbdf@rasmusvillemoes.dk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_043035_133677_7EEC0526 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:17:38PM +0200, Rasmus Villemoes wrote:
> On 05/09/2019 13.05, Christian Brauner wrote:
> > On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> 
> >> +	if (unlikely(!access_ok(dst, usize)))
> >> +		return -EFAULT;
> >> +
> >> +	/* Deal with trailing bytes. */
> >> +	if (usize < ksize) {
> >> +		if (memchr_inv(src + size, 0, rest))
> >> +			return -EFBIG;
> >> +	} else if (usize > ksize) {
> >> +		if (__memzero_user(dst + size, rest))
> >> +			return -EFAULT;
> > 
> > Is zeroing that memory really our job? Seems to me we should just check
> > it is zeroed.
> 
> Of course it is, otherwise you'd require userspace to clear the output
> buffer it gives us, which in the majority of cases is wasted work. It's
> much easier to reason about if we just say "the kernel populates [uaddr,
> uaddr + usize)".

I don't really mind either way so sure. :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

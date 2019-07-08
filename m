Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB07618BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 03:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmWy1nmakhJmzmOWwgnuFssWvc9oisBJ6k4D9+jFNGo=; b=moUtEP/ijxKe5h
	o9MOd7rRk/tUoNue62mevjzFqfD7msnnsS7pzTGci6bfMsd1Twv3QEv2XvnGf7AMZKMreUFrnopsf
	HjX3icmukzVy+3dr6B5qCI+5lBIEnT4MZlzjEpb2V9W82wKZGWiRAjQzyiyjLM+MYEWgo4Ik0Homt
	5k3oS3S8OYnPGyYGBWWV0z0R8vnBbEP090kDQd3xh/do+m5zWhmbEYnAvaNuDVZkM2ZHsYGWw774m
	4wLqyskAy5HdounxguoKvPVzATnHduW37YrI7IOpvD73T4cKQzWpEWukg930/xfOsrzkJvg7po20y
	hlDePexBw0dXwWfFn1Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkIG6-0000V7-Ss; Mon, 08 Jul 2019 01:15:59 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkIFx-0000Te-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 01:15:51 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45hnZJ0R8Jz9sN4;
 Mon,  8 Jul 2019 11:15:35 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Jeff Layton <jlayton@kernel.org>, "J. Bruce Fields" <bfields@fieldses.org>,
 Arnd Bergmann <arnd@arndb.de>, David Howells <dhowells@redhat.com>,
 Shuah Khan <shuah@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v9 10/10] selftests: add openat2(2) selftests
In-Reply-To: <20190706145737.5299-11-cyphar@cyphar.com>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-11-cyphar@cyphar.com>
Date: Mon, 08 Jul 2019 11:15:35 +1000
Message-ID: <878st9iax4.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_181549_671214_A527BDCD 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 linux-parisc@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Aleksa,

A few minor comments below.

Aleksa Sarai <cyphar@cyphar.com> writes:
> diff --git a/tools/testing/selftests/openat2/Makefile b/tools/testing/selftests/openat2/Makefile
> new file mode 100644
> index 000000000000..8235a49928f6
> --- /dev/null
> +++ b/tools/testing/selftests/openat2/Makefile
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +CFLAGS += -Wall -O2 -g
> +TEST_GEN_PROGS := linkmode_test resolve_test rename_attack_test
> +
> +include ../lib.mk
> +
> +$(OUTPUT)/linkmode_test: linkmode_test.c helpers.o
> +$(OUTPUT)/rename_attack_test: rename_attack_test.c helpers.o
> +$(OUTPUT)/resolve_test: resolve_test.c helpers.o

You don't need to tell make that foo depends on foo.c.

Also if you make the dependency be on helpers.c then you won't get an
intermediate helpers.o, and then you don't need to clean it.

So the above three lines could just be:

$(TEST_GEN_PROGS): helpers.c

> +EXTRA_CLEAN = helpers.o $(wildcard /tmp/ksft-openat2-*)

If you follow my advice above you don't need helpers.o in there.

Deleting things from /tmp is also a bit fishy on shared machines, ie. it
will error if those files happen to be owned by another user.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

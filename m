Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A3DA9486
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERxFLjrl3wU8T/UsP5StZIF29gc1S7+UECoXVU2LYE0=; b=kasJzHIy41VsNG
	BHhatbnOJZWko6ieLwyUjxAtubZVR0N78aLfB0YIUAs9/LIKyN5BvMw7BBBQaGPMZra2fzFA3Knk2
	70dA6+xPGhvCIhFAPGY7HDy6/i04l8NSINcvFPWWLZ12MlDL6k+cWU2+TazSPvvLgm2HhfDYomqp1
	g8hktMozT3Wkz4svyBhLyik1BlUIbN+1IVvcbdzRrUaeSwJSeawISbqW+ZDaT18BS5Z4ilEU9oZq/
	QjGFxC0AVQ8HZ4uRImfuktwPBhShnAdxlWLBEeHEjxZXR5KzdiaNrhYcO2s2vn2CtZO1F38z8XQ9V
	GzXDJGvLiiXwh4QT+yAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cXj-00069f-8P; Wed, 04 Sep 2019 21:10:19 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cXa-00069H-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:10:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id z21so175127lfe.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 14:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hgF2nRVhP2Z9Hk/CZOFcXhAAs++h0MvE3fMY8xcOeYw=;
 b=V0fXrvG/y6fw7T3tD/KUlmTDsOhByRFRgMw+QxPA9hiU5TDgpngn7HfopRM+i/LJMb
 k2AA+nRMkFxYb/ldSeHBR5el3bmmhNNCMxw9ToB+OOlkWRR6wchZHlLiKsQK9TmfmvjP
 dVvrUijYkfU5Fh9X3uECYhU3OGmtsUJMmdGfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hgF2nRVhP2Z9Hk/CZOFcXhAAs++h0MvE3fMY8xcOeYw=;
 b=gUH0yU/wVdxTPUUfcwf7/RxRoJ6tFLR1HK+bO4F0/cCJD7URWmvtg/wv9acsIKqt/D
 7yYKxth3Sw6tJ34y9LLfIDWWgvOFMwQjw5RZoGIbwEWjuxWbs3NJatzIO51/Z/hgfeK2
 VXSjS/AFEOLoaE9TbkqE/Cvrk2pjZqCX8TQeE3n6SLvRUj9dL6eVZ8+uEQ/K/U4MpTG0
 mExM7vSdLZNUW6u7nUdGueSdCZNQUn2vXiIEzqmpIoQ9A2yjAKffTUu9QE9IMGFN96VX
 Id/URxHFwMSV9nK0GHhQbhXTgzz6ojP9N3CmM9vMOIHF9jIQEdwZO9E8PAU7WNrx91qW
 5pPw==
X-Gm-Message-State: APjAAAW1FYyNlcOwY+Akwc7YZ1g6ZLxhjNFC2PtCFUYXFZl7LQv4etRS
 gRrF7vRgTkNItxAI3bJXA6ZStm7IF9E=
X-Google-Smtp-Source: APXvYqzcZIzoEXTipS/M9uOhEr5RXsxCcYlvlcBetn8c628ydFIrTGeze5uRRgtMtZeJtu2ri13SFg==
X-Received: by 2002:ac2:4359:: with SMTP id o25mr81920lfl.147.1567631408847;
 Wed, 04 Sep 2019 14:10:08 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id q25sm3583247ljg.30.2019.09.04.14.10.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2019 14:10:08 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id l14so184593lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 14:10:06 -0700 (PDT)
X-Received: by 2002:a2e:8507:: with SMTP id j7mr10579330lji.156.1567631404184; 
 Wed, 04 Sep 2019 14:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-11-cyphar@cyphar.com>
In-Reply-To: <20190904201933.10736-11-cyphar@cyphar.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 4 Sep 2019 14:09:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiod1rQMU+6Zew=cLE8uX4tUdf42bM5eKngMnNVS2My7g@mail.gmail.com>
Message-ID: <CAHk-=wiod1rQMU+6Zew=cLE8uX4tUdf42bM5eKngMnNVS2My7g@mail.gmail.com>
Subject: Re: [PATCH v12 10/12] namei: aggressively check for nd->root escape
 on ".." resolution
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_141011_041428_842D2D3D 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 1:23 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
>
> This patch allows for LOOKUP_BENEATH and LOOKUP_IN_ROOT to safely permit
> ".." resolution (in the case of LOOKUP_BENEATH the resolution will still
> fail if ".." resolution would resolve a path outside of the root --
> while LOOKUP_IN_ROOT will chroot(2)-style scope it). Magic-link jumps
> are still disallowed entirely because now they could result in
> inconsistent behaviour if resolution encounters a subsequent ".."[*].

This is the only patch in the series that makes me go "umm".

Why is it ok to re-initialize m_seq, which is used by other things
too? I think it's because we're out of RCU lookup, but there's no
comment about it, and it looks iffy to me. I'd rather have a separate
sequence count that doesn't have two users with different lifetime
rules.

But even apart from that, I think from a "patch continuity" standpoint
it would be better to introduce the sequence counts as just an error
condition first - iow, not have the "path_is_under()" check, but just
return -EXDEV if the sequence number doesn't match.

So you'd have three stages:

 1) ".." always returns -EXDEV

 2) ".." returns -EXDEV if there was a concurrent rename/mount

 3) ".." returns -EXDEV if there was a concurrent rename/mount and we
reset the sequence numbers and check if you escaped.

becasue the sequence number reset really does make me go "hmm", plus I
get this nagging little feeling in the back of my head that you can
cause nasty O(n^2) lookup cost behavior with deep paths, lots of "..",
and repeated path_is_under() calls.

So (1) sounds safe. (2) sounds simple. And (3) is where I think subtle
things start happening.

Also, I'm not 100% convinced that (3) is needed at all. I think the
retry could be done in user space instead, which needs to have a
fallback anyway. Yes? No?

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C2E6266
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 13:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K+RXWuk9CGqViy03bYIrqXEWnmT8Gv6/E4pz39m8KA=; b=dTTxaFLjt10Ccl
	V1pb766q8DYfQ/5H4r0wgauiQZJfhrMFjp7nuw0un4HWWCKIA3m+NTo/pydD7gX1jIQ47sIf+d6yJ
	PhI90BpSvxqc1Lljv/eRe141G638U4YJU5re6YGKT+wFB7Z5EkKYmFESrK3sdSAI1JH2iK0DMcQXk
	VPWghNHmgC59SoacHtHfKnyP8E/dJAen4gLGk4fl22cY+yr3L7jZLyMhGHG5IIkTm/7wMRgy9+7ss
	U8JAicX4M5pgP38qevAws8bjKMNLBqMR/fJII36jkv4Bw9sVcMbEHxiDAWZQFXOP9Fe9KXbxdZspx
	dBi/e/4Pfa+a4248V+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOhOr-0006hV-EK; Sun, 27 Oct 2019 12:12:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOhOZ-00064d-R9
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 12:11:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so8393963ljh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Zr1M0nCXlilSobwLkNmgKE2widPtGkZk30ZqC0Jsp4=;
 b=d3QTzyBq1ltmtg4yGSZr5XtauvY/fALYcdqhiDEtFOl1dE9JCqjexjO52exODJRIVQ
 Eh2Een6o4qvZdUFz/jDS+JnTxGr7PmGqPX7rFmA4YZFRZjrNKL/JZDN1nI+V4NXXs/c+
 Hp/xfBUyMptBO5mKJ7+YknkxBRlijCGcU26uA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Zr1M0nCXlilSobwLkNmgKE2widPtGkZk30ZqC0Jsp4=;
 b=Hm1TP53vW9pwX/Xa2X+iUali2Ic/+4iS+W1DDCcFq9/m81PYLpz/lbZYU6m4OLQGzm
 COSTcT8azsKN8BEOchp07qPFtBs1fW76G27Mw87xNawv8scj9llB1S2eQ+qJ3/V88TVV
 9uuyJtGe3t/D9crmY+ewsvGRD3+GVCY1BR02ihI73bIGlRtjU26m4VtDG8wchyszQRTH
 Jo5gI52k2svBOOoGIbup2izHfDdft3qjbd1mYsSXuCgU847T0XdJi/cmnYoc1ar8k11P
 og3vRXvtoLmezzxaUYmNRSGler2syIKFWuvOp6gUrIyn9pW+MBKXlWalmx7mC0cRRG0C
 hLEQ==
X-Gm-Message-State: APjAAAVUHO6HmK+eMykzdDyknVIoTRKGLG7P5mhKWH1GQFduKe6py3PU
 bxLY9V+nu+Zk09yJWJwbtNi75gmpBuOMRg==
X-Google-Smtp-Source: APXvYqynfmYFKCkLklsvhfA3GCwvZyW10+//DhULLlXzF/y+YYdfBgMnJDAJWvSR1DqRnH5G8NHP4g==
X-Received: by 2002:a2e:42d6:: with SMTP id h83mr8433094ljf.21.1572178299397; 
 Sun, 27 Oct 2019 05:11:39 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id x16sm3888495ljd.69.2019.10.27.05.11.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Oct 2019 05:11:39 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id v8so5659347lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 05:11:39 -0700 (PDT)
X-Received: by 2002:a19:5504:: with SMTP id n4mr8268196lfe.106.1572177927159; 
 Sun, 27 Oct 2019 05:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191026185700.10708-1-cyphar@cyphar.com>
 <20191026185700.10708-3-cyphar@cyphar.com>
In-Reply-To: <20191026185700.10708-3-cyphar@cyphar.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 27 Oct 2019 08:05:11 -0400
X-Gmail-Original-Message-ID: <CAHk-=wjPPWvm5_eR4uaHJaU1isTUk-4iXQV3Z2Px9A+w6j2nHg@mail.gmail.com>
Message-ID: <CAHk-=wjPPWvm5_eR4uaHJaU1isTUk-4iXQV3Z2Px9A+w6j2nHg@mail.gmail.com>
Subject: Re: [PATCH RESEND v14 2/6] namei: LOOKUP_IN_ROOT: chroot-like path
 resolution
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_051143_891375_8B4A0A21 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 GNU C Library <libc-alpha@sourceware.org>, linux-parisc@vger.kernel.org,
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

On Sat, Oct 26, 2019 at 2:58 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
>
> +       /* LOOKUP_IN_ROOT treats absolute paths as being relative-to-dirfd. */
> +       if (flags & LOOKUP_IN_ROOT)
> +               while (*s == '/')
> +                       s++;
> +
>         /* Figure out the starting path and root (if needed). */
>         if (*s == '/') {
>                 error = nd_jump_root(nd);

So I'm still hung up on this.

I guess I can't help it, but I look at the above, and it makes me go
"whoever wrote those tests wasn't thinking".

It just annoys me how it tests for '/' completely unnecessarily.

If LOOKUP_IN_ROOT is true, we know the subsequent test for '/' is not
going to match, because we just removed it. So I look at that code and
go "that code is doing stupid things".

That's why I suggested moving the LOOKUP_IN_ROOT check inside the '/' test.

Alternatively, just make the logic be

        if (flags & LOOKUP_IN_ROOT) {
               .. remove '/'s ...
        } else if (*s == '/') {
                .. handl;e root ..

and remove the next "else" clause

    Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

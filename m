Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3007193480
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 00:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeXTBuymKLTYOFmXhWTHeS0h6f4pElB9Ytw1R4+knVI=; b=QSI5mbwNu1kTtR
	EtYOLAAchzxTAThJ1Ud1C3eDN6SvEi+qzL+1UJNz5Sj4bmuilh1vDULS607AfosrO5D3PssBjT4dE
	BhKQAa2q513F3MfmWYQQNHLTtX3OXLOs2tJ6NV43E+Qpl9X0BJz0lj9IYsb4+KUo0Ry1Jx10bLRi0
	ooVgnLviAT8pKXbOfXTkkt+VwyKl4hxBXhV+/6q8ANSaCkxDUGXgbfcFzUc4H8sTkfNow84uECxCS
	O4kI3N+LOyl8A7T7OOIRgWD4WVY88p6kSgek8c1Fbq0TSbH7RwZkFMTi/8VIiniksNvemjklGFG61
	Pc8Q3w/wkSCGS//aYSEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFKa-0007hj-AO; Wed, 25 Mar 2020 23:21:04 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFKO-0007gg-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 23:20:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id g12so4474998ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 16:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3mXdOIBxbqqeyxP+0PXoxoXMdv9AQuRrD+qyz/H71o=;
 b=ZM/jTUyJNrHVVxOxf+9oynRmIW13ku5twP/1npQnFCofNysPZwbL5csUYzSS3+Qonv
 AuyoCrSZgF9tMzDWcjH4Ayri4cfQUejUxUTkxyf7HhJ85VjFzQAFmcoKFqqeo+1rgLxY
 r17QyqhpDtYkkDVeBMM0CubiCaAf4Hf+EILg4VmbjWVnQy/TJ6rVYwYESi+/n2fsnDdF
 xq9WsWLpvdxZGXTru6VrL8sZ0YJ+lliBAv5w6ErmlYsdgQ93PE2Kax7fAjlQHehHFmGZ
 lbBwJi0eXjXn/OKyNZenxUPLA9V8S40cduQ49rIEHZdvgdvScOcOp6242BXAOfMfk5dn
 /4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3mXdOIBxbqqeyxP+0PXoxoXMdv9AQuRrD+qyz/H71o=;
 b=dI+06d2pF0eyfB/VdalmfyMY/mdaXMcS4jzw11nz0AgwUL/BzSR+t1x4cpinFXPPt1
 m1Ovdl3+haaKqhO6er+jk8PcSnY3k3NCSRwuTgcHPBqLCYk2FG8gpFBqsYmZrK+5LriS
 vOaiQlVVJ92rNQb6tkKJItMte3Nu4+IKRjPow2AmWYOd7lSQh+twywhxQy1CWIiJbDyc
 Y+Hvr/yfIsLrj8c1aSK1/9TJKsNdZIe2DPOv9P1rYIav2xGPTH5lELhKBVgzqIu66Xca
 /VJny5AdE7v3Pq+ICVHYGLcv+aMIZ9Q5cmYwGCEe3AAxS0VwdNG/l1m4T6X7dDMXIX2c
 vGsg==
X-Gm-Message-State: ANhLgQ380WhgRWj85xpvUqUD7HiIvWKzN9JW0ui1bur6I6AKI7Cox7Ez
 jZSUXBDJbhTxAW17G7v7nAyQA+e1JHWX/LB6Zq9+jw==
X-Google-Smtp-Source: APiQypKvrgnwc8js63C8N+zp0rmTpf4QKnXvTcIJYOznDtakeHU4hmQ2qW9tl4eaWWYwNL8tBGg+KWaWzxXvkE+1NWA=
X-Received: by 2002:a2e:b5d1:: with SMTP id g17mr3279884ljn.139.1585178445467; 
 Wed, 25 Mar 2020 16:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200324203231.64324-1-keescook@chromium.org>
 <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
 <202003241604.7269C810B@keescook>
 <BL0PR11MB3281D8D615FA521401B8E320E7CE0@BL0PR11MB3281.namprd11.prod.outlook.com>
 <202003251322.180F2536E@keescook>
In-Reply-To: <202003251322.180F2536E@keescook>
From: Jann Horn <jannh@google.com>
Date: Thu, 26 Mar 2020 00:20:19 +0100
Message-ID: <CAG48ez1RfvayCpNVkVQrdNbb6tNv1Wc=337Q7kZu80PrbMOP_A@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_162052_164732_E9F54CF4 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Reshetova, Elena" <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 9:27 PM Kees Cook <keescook@chromium.org> wrote:
> On Wed, Mar 25, 2020 at 12:15:12PM +0000, Reshetova, Elena wrote:
> > > > Also, are you sure that it isn't possible to make the syscall that
> > > > leaked its stack pointer never return to userspace (via ptrace or
> > > > SIGSTOP or something like that), and therefore never realign its
> > > > stack, while keeping some controlled data present on the syscall's
> > > > stack?
> >
> > How would you reliably detect that a stack pointer has been leaked
> > to userspace while it has been in a syscall? Does not seem to be a trivial
> > task to me.
>
> Well, my expectation is that folks using this defense are also using
> panic_on_warn sysctl, etc, so attackers don't get a chance to actually
> _use_ register values spilled to dmesg.

Uh... I thought that thing was exclusively for stuff like syzkaller,
because nuking the entire system because of a WARN is far too
excessive? WARNs should be safe to add almost anywhere in the kernel,
so that developers can put their assumptions about system behavior
into code without having to worry about bringing down the entire
system if that assumption turns out to have been false in some
harmless edgecase.

Also, there are other places that dump register state. In particular
the soft lockup detection, which you can IIRC easily trip even
accidentally if you play around with stuff like FUSE filesystems, or
if a disk becomes unresponsive. Sure, *theoretically* you can also set
the "panic on soft lockup" flag, but that seems like a really terrible
idea to me.

As far as I can tell, the only clean way to fix this is to tell
distros that give non-root users access to dmesg (Ubuntu in
particular) that they have to stop doing that. E.g. Debian seems to
get by just fine with root-restricted dmesg.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

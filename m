Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038ED23B22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJOAHfsRAjkTHmcUWGR0kqZjLhabvEip9g1RGKg1oO0=; b=Vp0BN9Je+NDbwr
	eESfhxe8lEkduCsa27JvZgL/DQwMZe++jsw7W2qoi0vrkuDPH0in5fqi2E5ag+zxuXNBcs9XmoftV
	L6w9Km2CQZiKTczPj2cvp2V22JBSzvn0u/VlmUVvChZCfFHno7PRk6zIRuR9MJhjYKrG6wzzWNHSQ
	dqyReZB+4/CVn4fyftjE1wCyg0RZ5uTyanUOjIEQHoPijZb8+UIVJ19yUQR00OYr4jqiRTEijYT+h
	Z11DuoXi0EM12oB6jW9V6pJFxzTibKI09qy4LYJt7J5ixpd9BbmBNkJHpb50HNtMwtEdEnF87jm9q
	8Kc2IMEqYa7P23wFvsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjbT-0001sX-M8; Mon, 20 May 2019 14:49:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjaV-0000y1-Mc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:48:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id i3so13624294wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N7wB0bhMnAowtyDk7cjOKmaZEhZ6/2E0ef5LypbT5pM=;
 b=DauQZ4rgS8TTJobEVuVF04IQ8OrrQsWx/7I3dVssObK0ub6Wu5l3OX+dW7klHHK0qm
 VTzmbSB41r23etZTCBjrd8m+r36Fu5u/KMx97MMxNxqrc49IzLJgxrXuPKJbtCw731N2
 2I/Or4zAH6edPPIHVOmx0J8f7ho+EcxpE4+E0tEGBsS3gW21YphO/NArsQ/NQg3lEiKL
 oDh24dU1R+R5HUs2yW4HElupA/gn8GbEgZeLHFFkjPe+prcmClURRdntkwM4xCV3R301
 oyEP0r/asVzA0N6Yse3cdeLbDHxEh1gQMX/6fsFKeqmxjgm0wnRNCfyORqg0I7sZtKZ1
 ZpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N7wB0bhMnAowtyDk7cjOKmaZEhZ6/2E0ef5LypbT5pM=;
 b=JvSnkIX6FUbrfQun9GGcLFf5q7DhZLQzh+yv4hDWm0GZyqpAkVsoNFR7MIu/ekYuY8
 759c9kAgNGC74YNVu9zlCd/Te60m6hK0evmvRswW2P1PAsPXeo0oyy3uVLfc9jVvP4+o
 HezFPceU9Bpe1g1XzSW+C1/FcvbJqlbIwp6MTIMj4kx03nIaKFKeriFPxk8XgQ1KNFfk
 8arFfDsyMCLa3U69Q/QSL0E3nvMefiEwwCXkDl9RQsLYpfS3+b2oMHSUawdNeLWnxtuI
 3PIrkJlXk3N/oh35+MNHuyuQnoN/9EJi6dpejjllGLmwIm2Dj+8/8DqJKSQ3aKkVd8BE
 rnUw==
X-Gm-Message-State: APjAAAXPEtVEDPbRwnZYZ3grHwn92sjh+ydcw2lEFeCygt++s/7CxTXW
 9t5eMaMoYSotiPYHtsfRiXgHYw==
X-Google-Smtp-Source: APXvYqzgUfAfX/fOEqJpAu0H05y9iE6v85VXR9NGZP9lcwztHn9oG8QSJSLuvfJRMuYHnyshwQXXCQ==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr17177633wmc.69.1558363705786; 
 Mon, 20 May 2019 07:48:25 -0700 (PDT)
Received: from brauner.io ([212.91.227.56])
 by smtp.gmail.com with ESMTPSA id z1sm3308970wrl.91.2019.05.20.07.48.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 20 May 2019 07:48:25 -0700 (PDT)
Date: Mon, 20 May 2019 16:48:23 +0200
From: Christian Brauner <christian@brauner.io>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/2] pid: add pidfd_open()
Message-ID: <20190520144822.xfaifawi65jus6ng@brauner.io>
References: <20190520134605.29116-1-christian@brauner.io>
 <CAK8P3a1cZZ6SQe5mGjhga=MgTvCGF6OKyjvosR8J6z6EpH+rVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1cZZ6SQe5mGjhga=MgTvCGF6OKyjvosR8J6z6EpH+rVA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074828_649902_F39FFDF6 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Linux API <linux-api@vger.kernel.org>,
 "Reshetova, Elena" <elena.reshetova@intel.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Suren Baghdasaryan <surenb@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Parisc List <linux-parisc@vger.kernel.org>, cyphar@cyphar.com,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W . Biederman" <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 04:37:03PM +0200, Arnd Bergmann wrote:
> On Mon, May 20, 2019 at 3:46 PM Christian Brauner <christian@brauner.io> wrote:
> >
> > In line with Arnd's recent changes to consolidate syscall numbers across
> > architectures, I have added the pidfd_open() syscall to all architectures
> > at the same time.
> 
> Thanks! I've checked that the ones you have added are all
> done correctly. However, double-checking that you got all of them,
> I noticed that you missed mips-o32 and mips-n64. With those added:
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>

Perfect, will plumb mips-o32 and mips-n64 and resend once more with your
ack added.
Sidenote: You plan on merging the common syscall tables or will there be
a script to do this work per-arch in the future?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

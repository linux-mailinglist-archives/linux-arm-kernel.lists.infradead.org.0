Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0DE23A4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7W/n9LrDxvbrN6FWMSkd8gVKC95kO6SKLfWiBUy5CJg=; b=o8T2MujmWGVMAf
	sCHizPQyFDTa1Bxd6GU7VOVxetfF+yo0JwqIbXQFeP/hJB0gWS4VX14fITUoVoaQHYp1WSeb946Xe
	Y7k6DCTkvfoUiii6MlXDzwsWvTXy28jXQjBl7HqIFbcsqneBgcKccBQxpPnm9Hv43l7Skdy3oR38e
	5FwKW/sVaVy6eGuVLwcQhgSC02Rzeq20CvWmE1Yt3GLRbU3NxUKBXTG4yEPaZg6PBnH4Fu+W/eP7X
	U+iQWyBeY5zFpMze7kDm+ZLxZ/sO3zgjot0yShL1n4pBIj4vjYfi0hMvcQT+inzffGcFRRN8aINrT
	KmDSbb/BJbtn+AoaWsug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjQ9-0005ej-3N; Mon, 20 May 2019 14:37:45 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjPn-0005Ln-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:37:35 +0000
Received: by mail-qk1-f196.google.com with SMTP id c15so8967993qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z/2L5o2AoOKLKFPcdkjNIAmz2G/5ZFe52UTQRqPzuYk=;
 b=oBXyVnIFJNG85e7YxYW8YaahnfZgbecwChfH1BgHIQwb+QW5pEgD9XDtGTYnF2Eqie
 wk38RbS0jtD1nZqOZu/daKz2EyH4PTmahJupQs1AkBwl1njo/YvfuImFBSXAtOSPnypv
 pAT03NATlnz2Rh0mi8PTl4eqc6KrT5DKMlZFnjZSNG1Wr/AcDQxcu/v0YNsuqAGfZ8pE
 S5KYE/2qSzEdcZ73SyngbGJENL4FVyn/dg0OzROCO8Si+JF/oht2ukQPnIMz7RbCMAhy
 ewWQQ8oO7i9V36VAfcQjgMqmGsm5lXu5eAwhzt7GJXDFqs9oZZlu0Dt9lPkUT39TIly1
 aG8g==
X-Gm-Message-State: APjAAAWGTnTlNC/q1xF9IuWUaqRtopTmSeHNYKhozEpjOXNG1Ex5MBL5
 NKwa1mLKc9I3dKs6bA8KwkQ6gkkzZcI7f/JnNr8=
X-Google-Smtp-Source: APXvYqw/K0JoPhQjbioFloDoxv8hPwsc8PzdGxaBHlE2BolGJGFffF+O1yZKUKyE5ZdibkGoaW8RhPzIvapSmk2bhfM=
X-Received: by 2002:a05:620a:5ed:: with SMTP id
 z13mr21969541qkg.84.1558363041328; 
 Mon, 20 May 2019 07:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134605.29116-1-christian@brauner.io>
In-Reply-To: <20190520134605.29116-1-christian@brauner.io>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 May 2019 16:37:03 +0200
Message-ID: <CAK8P3a1cZZ6SQe5mGjhga=MgTvCGF6OKyjvosR8J6z6EpH+rVA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pid: add pidfd_open()
To: Christian Brauner <christian@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073723_864337_522C0FBF 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Mon, May 20, 2019 at 3:46 PM Christian Brauner <christian@brauner.io> wrote:
>
> In line with Arnd's recent changes to consolidate syscall numbers across
> architectures, I have added the pidfd_open() syscall to all architectures
> at the same time.

Thanks! I've checked that the ones you have added are all
done correctly. However, double-checking that you got all of them,
I noticed that you missed mips-o32 and mips-n64. With those added:

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

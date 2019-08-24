Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE499C005
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 22:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8anvdhxdx9v8kZS1j7bqq3L5RxkHsh/QYbWqbg2lcY=; b=mVAqkSSNKfvmm8
	rvcrLn7agMkRayvyBvss5TEyHUr4W3Jb2vx/A1Hbh1W6qOKbIha9A00OA1oYTgr0O6LctDPk0ADrE
	hTYmfMSrvvEvN4lx68UiLet9dglBjTaMZ+hKWjgzBYZB5/99/QappzgprBCXfrImD8D/j27ShrPLp
	HAP1zLa7wLTluys0j+YfH2LBVKbSydSUZOeST4gSuLTlt+W6LCPPo4Vqmsuue/ApjClN4huqXRZ5r
	ivKOk6k6d9NRhK0pdAVqp+UeLwci6of9kUEbd4U+8yQvCotzqjXb7vm9ni30mBTPoUuXBtQoJ+Axk
	eYCbH/KU4NXtHsI//Qcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1cUS-0007nl-GD; Sat, 24 Aug 2019 20:18:24 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1cUJ-0007me-HS
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 20:18:16 +0000
Received: by mail-ua1-x941.google.com with SMTP id k7so4453632uao.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 13:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0zfEO+Of97f0VCldvVRJl3jzEF01O6soGli/loZclzk=;
 b=CiJfEFfo1GhUFTvULOmIWC5bky0UhNotA9EofhxO4+2Cd9KvnmBRPB6hGuQFhuAXwJ
 Mf7+XdP/Zb4xXtjIaOfMfbMaQpe98nHR1WFAIDUqUl6lSfoh5N6YkchHMEss2Z7wmXRv
 mIN1BXAFZpi+SynQvspsYrZxrH8jV01EUoqVt4oI5oVTwO6tctGVNu+Gx+DZX4YcnnWT
 pUO0Oeafs9qrk8HXoIhQUWukfn1efWZ6t1CZQkpVU6dxRoB/3gD8bO7d0APRfzkEuP01
 6A3Oop2AiXmYSlChvGG9uj5KK5z6ZoLIIlfJYts9owMo4k3T92eSIqfy7wB0W5m6uFPz
 fndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0zfEO+Of97f0VCldvVRJl3jzEF01O6soGli/loZclzk=;
 b=guF0R9RHG5+aOpkq17aUnhvGSEHm35jWebVOsgnsl8XfdYkrdmikinWBXG55rI6seP
 GR7kldi/1LZnPxAEczCGSoIQogKzDpKiUjOsN7FedBy5cFRvnDdvn+NjSqgnPtJKX1zF
 BZ6ZnY5irrwFx9GBYUuTrB3UjaqC64YOrWM3Tf0iXOfJ1INOu3SC4niHgzqJ6+bdkF54
 Bx5V+eLOFlGa/un1XlNolx6XPMpXhorZl0k2zWPSlSjRitT+nGw9mfbNVA0w2ABOZo5T
 Qu8qhC2PNRnevdy3I1dpXw3mPWWRs9abiyCjF3aCuBCzV99BaBbAreXFNEn1FO0zi4p3
 MHVw==
X-Gm-Message-State: APjAAAXxtHg5NTomoAuPcRRVrYh/HLVd1qnsqBxjQxisZBvbFi5kEUA2
 Zfa4z/ljDo+fjjHyrekkF/WqAM2+CaBf3wgNbVkGMQ==
X-Google-Smtp-Source: APXvYqxjVPBCRB+CRwr4t5I/R3fEcc9xAf9hOK0mmX0eHtTD2rTNJ8/siW0Z/MdtMGoJdUYWfX/KXqMK5Snr1pytTE0=
X-Received: by 2002:a9f:230c:: with SMTP id 12mr5623819uae.85.1566677889720;
 Sat, 24 Aug 2019 13:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com>
In-Reply-To: <20190820033406.29796-8-cyphar@cyphar.com>
From: Daniel Colascione <dancol@google.com>
Date: Sat, 24 Aug 2019 13:17:33 -0700
Message-ID: <CAKOZuesfxRBJe314rkTKXtjXdz6ki3uAUBYVbu5Q2rd3=ADphQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
To: Aleksa Sarai <cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_131815_582070_E1B1BED8 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 8:37 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
>
> The most obvious syscall to add support for the new LOOKUP_* scoping
> flags would be openat(2). However, there are a few reasons why this is
> not the best course of action:
>
>  * The new LOOKUP_* flags are intended to be security features, and
>    openat(2) will silently ignore all unknown flags. This means that
>    users would need to avoid foot-gunning themselves constantly when
>    using this interface if it were part of openat(2). This can be fixed
>    by having userspace libraries handle this for users[1], but should be
>    avoided if possible.
>
>  * Resolution scoping feels like a different operation to the existing
>    O_* flags. And since openat(2) has limited flag space, it seems to be
>    quite wasteful to clutter it with 5 flags that are all
>    resolution-related. Arguably O_NOFOLLOW is also a resolution flag but
>    its entire purpose is to error out if you encounter a trailing
>    symlink -- not to scope resolution.
>
>  * Other systems would be able to reimplement this syscall allowing for
>    cross-OS standardisation rather than being hidden amongst O_* flags
>    which may result in it not being used by all the parties that might
>    want to use it (file servers, web servers, container runtimes, etc).
>
>  * It gives us the opportunity to iterate on the O_PATH interface. In
>    particular, the new @how->upgrade_mask field for fd re-opening is
>    only possible because we have a clean slate without needing to re-use
>    the ACC_MODE flag design nor the existing openat(2) @mode semantics.
>
> To this end, we introduce the openat2(2) syscall. It provides all of the
> features of openat(2) through the @how->flags argument, but also
> also provides a new @how->resolve argument which exposes RESOLVE_* flags
> that map to our new LOOKUP_* flags. It also eliminates the long-standing
> ugliness of variadic-open(2) by embedding it in a struct.
>
> In order to allow for userspace to lock down their usage of file
> descriptor re-opening, openat2(2) has the ability for users to disallow
> certain re-opening modes through @how->upgrade_mask. At the moment,
> there is no UPGRADE_NOEXEC. The open_how struct is padded to 64 bytes
> for future extensions (all of the reserved bits must be zeroed).

Why pad the structure when new functionality (perhaps accommodated via
a larger structure) could be signaled by passing a new flag? Adding
reserved fields to a structure with a size embedded in the ABI makes a
lot of sense --- e.g., pthread_mutex_t can't grow. But this structure
can grow, so the reservation seems needless to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C942129545
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7bfFbGracUn41EZ76KwvCNH+4ybG82qOfu3mi6fG0I=; b=iRd6C/jJsWN80T
	jDndGD+lxZFb9Eild6fV2ojTm8JQlOF/ieIrHyqDfQNQjUsJIhfCwUSjwO6KjCo9IK5BnpflFZ6Xy
	mqnVLIuHVuiYxnKGhfUuE/QERaIY3nC4xig1FOnL4UHF7xK3u1sN5XI/1VHL0uRWcj0+avOwMs+gl
	2IS3sLdoDsPFAegn6ZBB9sDoZNr9n04ky5ATaNiNdje9vzwkgbZlZmOpSCVJSZ/AOcxeETv5p0hL7
	x5OTRg2N0vg9rGq55GkPE/fsEHENj5Ee9ZtEjcxXgAg7QEzoZ70QCcl0CRmpEK4A0VLZuoY5l9Vo8
	556RFqufi3y2f4AalrEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6x1-0003qv-Oc; Fri, 24 May 2019 09:57:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6wu-0003qV-Kn
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:57:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id z4so7331313iol.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 02:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M/EcKSjlMMdWfcfrmWG3Y6oYYZWgbCmZ8EBb04SSgDI=;
 b=EeksouSAZsbhL5PUeN9hhOGBqYxIdgSKG5pQ+CgypqeDVq7bvpYcPXpk4nvjOuW49N
 Cd4uShxLwvxYqjNcKJ1dy0vgFQCi2T8kxvU7ymug9tdoWc48ogQukvWRqj+rDoH/lZdi
 mk5z5JSaGumuXh7MuLtf/caHxjlNoDkGebMRL5Kle1S+UkUeFxrzzUYh15VlBefAAZZh
 CGz2xqNtbDLY3X4iOkDE4cj/9EBRAAN5LtdJXmQiizdA26ixBiIxuDmHOO8snmNVAUCf
 D9hWTi20mwBr6A6qLADbL5T84zefMNStJO0L4UzAz8DoygTZHCKwLfWm5uYPmb4D8osW
 kQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M/EcKSjlMMdWfcfrmWG3Y6oYYZWgbCmZ8EBb04SSgDI=;
 b=jc8E3zpSAeIuIRP42PMLbMSVx2A/dFzPni9+XkHkaN49H40L8UK3pDbeKOjYslTs/L
 m3T2XMKSu5b32f1+MtAbC2MIsCTPMnQXP3TdXRXYMjyeQ+owTuKGrl62O91BfL01NtUm
 rjT6H74No3+czpHeARMhEFFhRlkO9IFqiCuYLoZeLyyMzVLZY32yE+3Iw07m9prqoaoR
 VQZRybXwFFN9oFcYl4YvpAtCwTTrZT4vcL6pG9aRj2gmm007jTg3X5VHWlGThglseRGs
 59An+0CehOrsH2osGHv8JbSNLwQ8Ghu4t6+W/fh314kGpuwOk0gOW4TpAtbllB/6Of19
 jHqA==
X-Gm-Message-State: APjAAAUCHeZ3cNVEr1J87u/o5oirM3JjBUnjva2//Hi7lXo1D/EQYXQ6
 sEzM2xzYUWZEFpbDh8IFXCPUjQ==
X-Google-Smtp-Source: APXvYqz+et+m459Xc/MMXDSFkPYbu9py1MoPd8KKsOjtuxRk1ZkOpU0M8gCI3dUvadZvqxc3xELSrQ==
X-Received: by 2002:a5e:8207:: with SMTP id l7mr5693770iom.232.1558691835391; 
 Fri, 24 May 2019 02:57:15 -0700 (PDT)
Received: from brauner.io ([172.56.12.37])
 by smtp.gmail.com with ESMTPSA id 194sm973879itm.40.2019.05.24.02.57.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 02:57:14 -0700 (PDT)
Date: Fri, 24 May 2019 11:57:04 +0200
From: Christian Brauner <christian@brauner.io>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190524095701.b7ioi5gg573vmajh@brauner.io>
References: <20190522155259.11174-1-christian@brauner.io>
 <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
 <20190523163345.q5ynd2ytk7nxcvqf@brauner.io>
 <CAK8P3a26uvqmExJZsezhB+cp2ADM0Ai9jVUKWOFM6kg848bCKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a26uvqmExJZsezhB+cp2ADM0Ai9jVUKWOFM6kg848bCKg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_025716_822614_E4681F20 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Oleg Nesterov <oleg@redhat.com>, David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Todd Kjos <tkjos@android.com>,
 Jann Horn <jannh@google.com>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 "Dmitry V. Levin" <ldv@altlinux.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Florian Weimer <fweimer@redhat.com>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux API <linux-api@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 09:43:53AM +0200, Arnd Bergmann wrote:
> On Thu, May 23, 2019 at 6:33 PM Christian Brauner <christian@brauner.io> wrote:
> > On Thu, May 23, 2019 at 07:22:17PM +0300, Konstantin Khlebnikov wrote:
> > > On 22.05.2019 18:52, Christian Brauner wrote:> This adds the close_range() syscall. It allows to efficiently close a range
> > > >   22 files changed, 100 insertions(+), 9 deletions(-)
> > > >
> > >
> > > It would be better to split arch/ wiring into separate patch for better readability.
> >
> > Ok. You mean only do x86 - seems to be the standard - and then move the
> > others into a separate patch? Doesn't seem worth to have a patch
> > per-arch, I'd think.
> 
> I think I would prefer the first patch to just add the call without wiring it up
> anywhere, and a second patch do add it on all architectures including x86.

I've split this into two patches and also bumped arm64
__NR_compat_syscalls that I've missed before as you mentioned!

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

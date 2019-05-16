Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675CB20A83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q0Row33xQanIECHA46C7rI9nw0cU4AkPjRP9Dpw3Ss=; b=CIaBvXnD2t9Sk4
	n0d1BiJoQfI5lFXX2oilX3HjwH7+15mmsqC9rEnswkK1DHHt0l25qS5eBwETy6p281Zo2yHAaraWE
	FebTQ0MLVmzOsAu5xVvxpppWq8TxXboXEbjATftbY20+2SjIb8mUu/23w1jwAHcjV0KLjqZkZwDHF
	KE2JZQvcWVuM1uxTUvV1Q3fX3twFtT+QxUTD6ExoyX4eRd9H38aLdWh6fVsqyN+kreShLqE1a/yfv
	w3CpRDGbAqaGbqADkIYo7OOYknSC/pKkSC6eal7KPvr36K3DU6tOqa3ch3QkjhmbGalwWzpPlUzLC
	yPNkqJ527vVy4gdmXi4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHq3-0007c3-Al; Thu, 16 May 2019 14:58:31 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHpv-0007bW-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:58:24 +0000
Received: by mail-ed1-x541.google.com with SMTP id p27so5753798eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xCVxcbycKijjP8G1i7Lu3aOPyQvDa5anPQzLbernNO4=;
 b=OIHOP7rucDEqRTu8tvry5PPcTvGug7bBvZ3Sj3gEtUFrGnhyINnCk+I0zkqsLasUKZ
 sDF9yMxrNz3GSuRfHnJ98dcv59fxALK1XZT/DdKM+RNStSEbUml+piQP0fMEz2cT77wZ
 5fUSex8dhyXEU6EezdQo3iMv+/oWdqQP14elkHUkCpZkBvTW8oAW6AfrrmA20E9iIhVk
 ZuAZmTbyIfWt5UMPyKY2uhM8QgCzF5SK4PrtHd7sRoTp6ulgh75hv6U20VbOqq0i/gZ+
 98BZhaBZoAMvoCxu8vxG/vqn+9IOpy6tDLSn4KBXR2pI1aOzSqOO7bUDxsGPIuc1Dou9
 GnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xCVxcbycKijjP8G1i7Lu3aOPyQvDa5anPQzLbernNO4=;
 b=F6XgDCcnwAVSMGWKLoEMEaW6KQJWK6Tg40AFwBv5rnU9aghlB+RncLekd0OSgI9LAf
 Umgk6uGaUZnbsDyBkDls69SAm9oo2KxD/Y1I0cyAxXgl6nal5h1sNFkgGVvhU5GyvhEg
 d8GxzE9Z57gPZg+1xg3Bfu+V1uRN4X6taEESXGEqKSjf+hd9qWOzjTyW6br6/lVH71Yj
 9xnPgdxgZrofTVWW3IgMqYGhcuksnNgOJERjX77GSisgin5n10Zk0xyzy/IZdT3pfakq
 jpohgq4fnAE47eHdS5QKNAghAINNCK7f57UfwaOd1sxQeIrS5h6h1M7Jg1KX4f8VL4M4
 MLFA==
X-Gm-Message-State: APjAAAU3rFiVYg7v5S8PLQp7zH7SniumCmbwbejDZ5KxRDxlh0L9mw2E
 NHLbeosLlfbbnUIlsGNFq4rXSQ==
X-Google-Smtp-Source: APXvYqxgJ+X2Q+jweK2Am0efdrd0ewPSsOh9NTyeRf7XaOyCGLt/MTu5duHXcow8oFtMna8nvrnWUQ==
X-Received: by 2002:a17:906:c391:: with SMTP id
 t17mr28473151ejz.242.1558018702012; 
 Thu, 16 May 2019 07:58:22 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id s15sm1924877edm.6.2019.05.16.07.58.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 07:58:21 -0700 (PDT)
Date: Thu, 16 May 2019 16:58:19 +0200
From: Christian Brauner <christian@brauner.io>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516145819.ofqkv6ozfpumhhuk@brauner.io>
References: <20190516135944.7205-1-christian@brauner.io>
 <CAMuHMdVbUJ0+28Lc2wHPah8UUk8Ou9m81KzLvhrcMsJzz2bX2A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVbUJ0+28Lc2wHPah8UUk8Ou9m81KzLvhrcMsJzz2bX2A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075823_482890_C7EAAA44 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 David Howells <dhowells@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, elena.reshetova@intel.com,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Daniel Colascione <dancol@google.com>,
 linux-mips@vger.kernel.org, "Serge E. Hallyn" <serge@hallyn.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Parisc List <linux-parisc@vger.kernel.org>, cyphar@cyphar.com,
 Linux API <linux-api@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 alpha <linux-alpha@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 04:56:08PM +0200, Geert Uytterhoeven wrote:
> Hi Christian, David,
> 
> On Thu, May 16, 2019 at 4:00 PM Christian Brauner <christian@brauner.io> wrote:
> > This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> > pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> > process that is created via traditional fork()/clone() calls that is only
> > referenced by a PID:
> >
> > int pidfd = pidfd_open(1234, 0);
> > ret = pidfd_send_signal(pidfd, SIGSTOP, NULL, 0);
> >
> > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > created pidfds at process creation time.
> > However, a lot of processes get created with traditional PID-based calls
> > such as fork() or clone() (without CLONE_PIDFD). For these processes a
> > caller can currently not create a pollable pidfd. This is a huge problem
> > for Android's low memory killer (LMK) and service managers such as systemd.
> > Both are examples of tools that want to make use of pidfds to get reliable
> > notification of process exit for non-parents (pidfd polling) and race-free
> > signal sending (pidfd_send_signal()). They intend to switch to this API for
> > process supervision/management as soon as possible. Having no way to get
> > pollable pidfds from PID-only processes is one of the biggest blockers for
> > them in adopting this api. With pidfd_open() making it possible to retrieve
> > pidfd for PID-based processes we enable them to adopt this api.
> >
> > In line with Arnd's recent changes to consolidate syscall numbers across
> > architectures, I have added the pidfd_open() syscall to all architectures
> > at the same time.
> 
> > +428    common  pidfd_open                      sys_pidfd_open
> 
> This number conflicts with "[PATCH 4/4] uapi: Wire up the mount API
> syscalls on non-x86 arches", which is requested to be included before
> rc1.

Yep, already spotted this thanks to Arnd! Will change the syscall
numbers.

Thanks!
Christian

> 
> Note that none of this is part of linux-next.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

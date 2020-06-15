Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98C1F98A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7W62Z/LnuUiLy9bbaf90nVy3Gc3SqQzXwU9Ip0TO8o=; b=o+82pdj1/yE6MD
	GAx5PAZzRjWrrnND9e7kljcK1oIVf3KR230Md5l24HB+c8i7KiEnIup3N/dK5C1IyOzVUtsI/5QF+
	ywoRIzYooWMYPRKyXZdv3Qx3JfprzLtY3+sGphiG63mxc7vtAlfYqYsADenMe8APGN3rFXjtZE7DR
	agkD7AGtiCnON0voDHCcL4SGlZJeBFrdl3JhYGvKCiwg83h5oQHRxdwP+0eHtPYiVk9jC+SGPZO0k
	2HCSkBU8JaklGkidxiOl+x0/9ZYPLcC33vDQHSuHNjh39Uis4A91hiRLmlNIet3wMECOSKgqIS11Q
	ULtXhB5xlHO0zRRRSrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpDd-00072E-Ky; Mon, 15 Jun 2020 13:32:09 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpDR-000718-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:31:59 +0000
Received: from mail-qv1-f46.google.com ([209.85.219.46]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N6Kl7-1irZ0j3qgL-016dBZ for <linux-arm-kernel@lists.infradead.org>; Mon,
 15 Jun 2020 15:31:53 +0200
Received: by mail-qv1-f46.google.com with SMTP id g7so7707411qvx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 06:31:52 -0700 (PDT)
X-Gm-Message-State: AOAM533/ReO+UA3hJT6xV8kLnu0yoPImaACCliIInbkfqVS3NzreSNLX
 tZtyfFlJxciQXZ7vzGy7UrIpdwpps2yGx2prXxs=
X-Google-Smtp-Source: ABdhPJyz/mDGs74yzNIwblWPhWFapqdfcdEr4Un1uVSJ/plIiN/A4CId8Axns/qweYspANUjYrgyMPVOZOnIui2BnnA=
X-Received: by 2002:a05:6214:846:: with SMTP id
 dg6mr23541266qvb.210.1592227911673; 
 Mon, 15 Jun 2020 06:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
In-Reply-To: <20200615130032.931285-3-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jun 2020 15:31:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
Message-ID: <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:pkOidMqRelTNUUmWVt5hodroXHRTFRuwjHWrZxxpJ1k6zq6T1Y3
 9K4XcbbJdaqy5RljLJ39+8oP5deztuh9OWwRP9rbsMU5UY27p/gOW2BeC91PUyVpszQXcVz
 IAD3P7glAFUvdp//gqoKqJirHeiKFQyr8aQIk93FI1/+vgwaYp9rHCXbsTQsMrUD/eGBycF
 uOrgS0aTMOTiC+D3MMRDQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JdbnQqVDW+A=:fUWO7kliEJHhjOB5NMjgTY
 U98N2Z4qKFz44erGdUe0prxapMAS0YQWIDWRTW1q29pBgdUsqaCNRNtBIWfIiY+CHoft2Y25l
 Swl8+GYIxa1XFkZOm1q+NYflrDmot6pExRUrZX2gBFrMUxoa3bk9jEdnxVbUmwX3gJtc7FAYa
 bCmdsE+Q7f0VBlrGbEVz3pXzsyeTFyDSofk/lAtpV1xaVftmNgnb3MSAoSXTMIbRYaXUK1T2B
 0xUZ5snE+1mJ/ssqHbW3+EbHdTNqbMBTaqrvYvIPXWTxF4JakAQ6ZssQPjsdAkrKvHFwnE6al
 +AqfYmT5j17B/rc4UbsdKa7zKMDPlzSeLg0DfuJfxAmqxZW/wBTcKPir8ikP/cnHM/74q3HGx
 k9zTTX3mIIulxydMXvNbD+f+To4VIHCyA9LRKCwaM7ZUGEM7sSNxNDvEoOZcCUnuM1+1txKCL
 orwtCXKBYEL6rD8jpekv9GQC1k0nUYUlr8XHfEU0VvDVDqvtt2FjCnzFdx5Atw5czX8bRwskS
 61j1McdwQl2mBHOwtO8RgOaNogLhYnSJnRXIfWfelRDPgU8AU3kYmS9p6yvz9HvlMK5GiAM/K
 yj9ca95oLX6z6NGvfF6FTDiA5FSFAne0oUAhM3BVzqe8IeUMGup7FauVEmwb1DgSfdwKdcTM8
 wnd+dtiDYLFo3tAvg2J0tJy1nFpp2cwQ+QxiG/4fBs7c79AUiU0hPVKmbnpf4BbK++iQwkv47
 Gpgj0iCI4mptmM1xD7nDoaqBNfDqgbNV0/X1r+uP55rgG1ayO0sxDdEmNaU1Nt96rQPswBYTl
 i4JpFOIIC3qDSl8I3R04Mqd0UTfg3JAWP1sgSIWLm3ajtULy38=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063158_234202_83FE2B48 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 3:00 PM Christoph Hellwig <hch@lst.de> wrote:
>
> The only differenence betweeen the compat exec* syscalls and their
> native versions is that compat_ptr sign extension, and the fact that
> the pointer arithmetics for the two dimensional arrays needs to use
> the compat pointer size.  Instead of the compat wrappers and the
> struct user_arg_ptr machinery just use in_compat_syscall() to do the
> right thing for the compat case deep inside get_user_arg_ptr().
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Nice!

I have an older patch doing the same for sys_mount() somewhere,
but never got around to send that. One day we should see if we
can just do this for all of them.

> -
> -static const char __user *get_user_arg_ptr(struct user_arg_ptr argv, int nr)
> +static const char __user *
> +get_user_arg_ptr(const char __user *const __user *argv, int nr)
>  {
>         const char __user *native;
>
>  #ifdef CONFIG_COMPAT
> -       if (unlikely(argv.is_compat)) {
> +       if (in_compat_syscall()) {
> +               const compat_uptr_t __user *compat_argv =
> +                       compat_ptr((unsigned long)argv);
>                 compat_uptr_t compat;
>
> -               if (get_user(compat, argv.ptr.compat + nr))
> +               if (get_user(compat, compat_argv + nr))
>                         return ERR_PTR(-EFAULT);
>
>                 return compat_ptr(compat);
>         }
>  #endif

I would expect that the "#ifdef CONFIG_COMPAT" can be removed
now, since compat_ptr() and in_compat_syscall() are now defined
unconditionally. I have not tried that though.

> +/*
> + * x32 syscalls are listed in the same table as x86_64 ones, so we need to
> + * define compat syscalls that are exactly the same as the native version for
> + * the syscall table machinery to work.  Sigh..
> + */
> +#ifdef CONFIG_X86_X32
>  COMPAT_SYSCALL_DEFINE3(execve, const char __user *, filename,
> -       const compat_uptr_t __user *, argv,
> -       const compat_uptr_t __user *, envp)
> +                      const char __user *const __user *, argv,
> +                      const char __user *const __user *, envp)
>  {
> -       return do_compat_execve(AT_FDCWD, getname(filename), argv, envp, 0);
> +       return do_execveat(AT_FDCWD, getname(filename), argv, envp, 0, NULL);
>  }

Maybe move it to arch/x86/kernel/process_64.c or arch/x86/entry/syscall_x32.c
to keep it out of the common code if this is needed. I don't really understand
the comment, why can't this just use this?

--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -379,7 +379,7 @@
 517    x32     recvfrom                compat_sys_recvfrom
 518    x32     sendmsg                 compat_sys_sendmsg
 519    x32     recvmsg                 compat_sys_recvmsg
-520    x32     execve                  compat_sys_execve
+520    x32     execve                  sys_execve
 521    x32     ptrace                  compat_sys_ptrace
 522    x32     rt_sigpending           compat_sys_rt_sigpending
 523    x32     rt_sigtimedwait         compat_sys_rt_sigtimedwait_time64
@@ -404,7 +404,7 @@
 542    x32     getsockopt              compat_sys_getsockopt
 543    x32     io_setup                compat_sys_io_setup
 544    x32     io_submit               compat_sys_io_submit
-545    x32     execveat                compat_sys_execveat
+545    x32     execveat                sys_execveat
 546    x32     preadv2                 compat_sys_preadv64v2
 547    x32     pwritev2                compat_sys_pwritev64v2
 548    x32     process_madvise         compat_sys_process_madvise

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

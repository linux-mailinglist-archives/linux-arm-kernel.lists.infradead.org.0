Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49541F9AAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtvU+dQ9y/kSMZ9dPpOMUgb5L6jifVEG2mm1jH/rotY=; b=dvPgqgwbxmePfG
	+C6IrrXbUQA3eqRD2GU2CK4n8QZ2oB+3k2WhSaz9eNtW7jdin/HgMZ7JV8m5O8CN+a0lADjHvydWm
	dTt0uwUoOUGbvG2/jyu8HU1Z5gnrJtYrZxy7DpGchw4WjofvOaD5XcS6MUdWPFBkcDjU1enEqJvlb
	+RpgaKnArqzfATBWkAmlegTSinQXnfwCq+MX/D9QQu1+lfvXYRKrbNTig6IHx5yhEj2XOCHK/FVN6
	Tc41DyKWftYIiVGghokyggoIstPrBE4O5QVk0LFaYiZDJP41SyhTHE7yo8trL3gtkoBRjUg9Tkpwb
	K6Lp4TyXF5WcpVlhtO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqNr-0004ID-88; Mon, 15 Jun 2020 14:46:47 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqNh-0004Hl-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:46:39 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuDLZ-1iunUV41SX-00uZAP for <linux-arm-kernel@lists.infradead.org>; Mon,
 15 Jun 2020 16:46:35 +0200
Received: by mail-qt1-f181.google.com with SMTP id z1so12764879qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:46:33 -0700 (PDT)
X-Gm-Message-State: AOAM531kx1yP3Jd9MzgSOx4CjiqQ8zxjhn8v+A7pgqF8ZHTPhe75+AUH
 FcFm1WyEEvTCzMMBz9dlB0m+kcNfgnX7+L7/aiM=
X-Google-Smtp-Source: ABdhPJywD9av6KIiK4BI4ianRw+UdaKCe4ceSIvGZHSPqP74ZiYjfjKkHc+mtmam7/Oo3s0OJJLXSxfo9wqCgBHLYos=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr15871691qtk.142.1592232392794; 
 Mon, 15 Jun 2020 07:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
 <20200615144310.GA15101@lst.de>
In-Reply-To: <20200615144310.GA15101@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jun 2020 16:46:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
Message-ID: <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:WGKl8Au+RuHGQDg4a1B9oOs8wyeWBkeRLXxrlEoSLMjqYocdD4t
 zfmLL37TpDvImadZWjdybczBegt3GnsdU0ecLIKpqXgvwEBF2GApoS0EFUNltWlKEicTSlY
 +eLAUy+DFvxldzpbGPOcfT5bVaRnij70qGqiMs6SOUgUwio2dyU/tv6blFt5ZAFooQIqebW
 mNnTrAyrPeGVJJ3988bGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FdK9s2zeqEk=:jS3l8Mde5hOckwR7XJg4rX
 zulO6fnM/zNuhFe2eHloMxFX73xRttQLVtsST/XaUkJJumSt/gieh0JX356wJNiQMsCwfGL03
 5HZ8db1L3FqYTTvdoqZcA0GNYlzYzyhaV7pldEqWrIQ0PFNTv/3pZJmh1mWYvl4I9AE0H8PtT
 j1t8maxLWFDwJkAH0ChrTYIVeUN1xsbTJ/xgxAwSwsV6sQvAy/zH8UJ++PyWm20JKU2Tzn/tq
 MhQrjJnjWnxEUnZt4wWuNqigN8JL/yD2CO/7KGbHRV8zSChInJeXik2+yfKqS3CoXtfP8mEo9
 QBFV0+KfJhlvZ1s819TZO7xUybfqO+KcnkDfXYNjgwPREwTnBRH0bj50fb/wxCJUl51/yASE8
 8epvbYuIhwEGdnNSOPIaYb49y3YjormdtjPL8I31+swqE9d/7IQPN6vL/VqIgEliqndcNm13Y
 vJMCtU8VsnrSlociTimWAwwFuhDr6FaeldyqvJjHY5mfwsKCuhQo1ou601opw8bSm/3B5JM5s
 5sO25LCLrBSFoeRlYCT4ZQNvZlCfZwrzIpJbAxn3z/Cm5Gn4XmoHOHPvPfTWY+bm51Mpp/s0o
 Y5Op2ZlvpMzWxT9e0Hz8rCa39pJfWzZ0zUDWTvQzvzBQnMDehDcTj5FElU46Dkc/fqkpGq6XO
 Kob6pjNPtEsedHC1PTEuTjtkcFEJzmOyIfVw0C+yrMn1odFNWHMI+L2fCwr9mvkn0HcG/gIh+
 gzJrhVbH02GECD72yFiCd8bYqCsl1D7KmcJnwcZFyOmLPT3HsnofhCAzNfgJJYfl3pykG1Ige
 uIHxKUKS6rOsPfuxH9ymiGxwEWG/fiICik2Fyz6xzVwNCnG7ig=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074638_063884_2C907B2E 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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

On Mon, Jun 15, 2020 at 4:43 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Jun 15, 2020 at 04:40:28PM +0200, Arnd Bergmann wrote:
> > > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
> > > `__x32_sys_execve'
> > > ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
> > > `__x32_sys_execveat'
> > > make: *** [Makefile:1139: vmlinux] Error 1
> >
> > Ah, I see: it's marked x32-only, so arch/x86/entry/syscall_x32.c
> > uses the __x32 prefix instead of the __x64 one. Marking it 'common'
> > instead would make it work, but also create an extra entry point
> > for native processes, something that commit
> > 6365b842aae4 ("x86/syscalls: Split the x32 syscalls into their own table")
> > was trying to avoid.
>
> Marking it common also doesn't compile at all because __NR_execve
> and __NR_execveat get redefined in unistd_64.h.  I then tried to rename
> the x32 versions, which failed in yet another way.  At that point I gave
> up instead of digging myself into a deeper hole..

How about this one:

diff --git a/arch/x86/entry/syscall_x32.c b/arch/x86/entry/syscall_x32.c
index 3d8d70d3896c..0ce15807cf54 100644
--- a/arch/x86/entry/syscall_x32.c
+++ b/arch/x86/entry/syscall_x32.c
@@ -16,6 +16,9 @@
 #undef __SYSCALL_X32
 #undef __SYSCALL_COMMON

+#define __x32_sys_execve __x64_sys_execve
+#define __x32_sys_execveat __x64_sys_execveat
+
 #define __SYSCALL_X32(nr, sym) [nr] = __x32_##sym,
 #define __SYSCALL_COMMON(nr, sym) [nr] = __x64_##sym,

Still ugly, but much simpler and more localized (if it works).

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

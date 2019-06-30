Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFBE5AF51
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 09:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ex1VQi4ze0pp+jnx5exuLo1CFIR1GCeIXDfqJUi+V7U=; b=HnSVWCbefpJSWY
	+uCKZzihHWzz2MV/HGXLN26ZDsoxBXIt9XLrz1ZPSRwVYHP9rWVmahwLXP08dei9Mew6QNbhgfcOB
	Im5ap6r9b350KwnI0c9U0iXCAELZoXbuutmR4ekBsCaLNhUYqU94e2/p2cInSByzn5h9Sn3cwN+1T
	7jLO6K4zOBxhQhRvl32Dp6hQJGXA3SD5zQMYDrZWz/gHmRt1Q9RU0pMMksJl69+JuhZZb3KFyU4UF
	7qDaaPex9Mgq8lWCl43uP0IAxx9m2dQToSFCX/NmdgQAwccKKjKUpZ7InG2tZcvyIRFLQ0bIXWPBu
	5A+E1SrSXMTW2ewQpKuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhUjr-00019d-1X; Sun, 30 Jun 2019 07:59:07 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhUjN-00019C-7J; Sun, 30 Jun 2019 07:58:38 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x5U7vxd9012600;
 Sun, 30 Jun 2019 16:58:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x5U7vxd9012600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561881480;
 bh=+9brw8RpKfPCHLaNnVG0ALKGMwnUyxhWFifAcm1Jy9A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zUawODtU0vhTiPl5qaNgEo9ByKy2yYb9HTAWd7jH5/KmRFRbCTqDf1r2buPkH6eY7
 9KWkOkbCmnK9rkMatOmM0itxGnwHB/mMPuqRIjog1NzLgK//i1B3cXHhcTtE4pC6OU
 VNXerozMf6mNDQ2YuNycgdEq1clJ5Ax3fRXt2Pykx7Eg5zzgtutbB8rwb3gug/dYXr
 O98/bPfya6esIc3ETSzeD3199w5ae4W/Lwcu2gAXFoPoyufabN5ofgPBt7+mBFPuRl
 yTH6VnFiqBpTquzJOkRU+fykLB1M8/iymSMC+5w1Mo4YIFRRu6hO3v+dQXWv3IKe2k
 Skm8IrMNwnxoQ==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id v20so3859788uao.3;
 Sun, 30 Jun 2019 00:58:00 -0700 (PDT)
X-Gm-Message-State: APjAAAWctrw7b+P6D4G2Biblb3SwrL83sEz0gq3kmVLgrphmjT8puEtC
 8apvNwx4jD11DD34ZQrOWyPoci5ZHpHHSdD7Rfo=
X-Google-Smtp-Source: APXvYqzyVZpInW2H6+hLd4o8U+kv7ZbqLoJ5DBzo4XhAbsuYuwZv3Nes7LIrEN98cU8HrIW65l38Jgqlp5UdZQn0x3E=
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr10993006uaf.95.1561881479132; 
 Sun, 30 Jun 2019 00:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190627163903.28398-1-yamada.masahiro@socionext.com>
 <20190627163903.28398-5-yamada.masahiro@socionext.com>
 <20190628180057.GA22758@ravnborg.org>
In-Reply-To: <20190628180057.GA22758@ravnborg.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Jun 2019 16:57:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQDqtm5F_JoPAjPOuf6s3d0F1=Ctyq6s0u2DWNpbFr5vg@mail.gmail.com>
Message-ID: <CAK7LNAQDqtm5F_JoPAjPOuf6s3d0F1=Ctyq6s0u2DWNpbFr5vg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] kbuild: compile-test kernel headers to ensure they
 are self-contained
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_005837_486480_0B94D66A 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>,
 xdp-newbies@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jani Nikula <jani.nikula@intel.com>, Michal Marek <michal.lkml@markovi.net>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tony Luck <tony.luck@intel.com>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,


On Sat, Jun 29, 2019 at 3:01 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Masahiro.
>
> On Fri, Jun 28, 2019 at 01:39:02AM +0900, Masahiro Yamada wrote:
> > The headers in include/ are globally used in the kernel source tree
> > to provide common APIs. They are included from external modules, too.
> >
> > It will be useful to make as many headers self-contained as possible
> > so that we do not have to rely on a specific include order.
> >
> > There are more than 4000 headers in include/. In my rough analysis,
> > 70% of them are already self-contained. With efforts, most of them
> > can be self-contained.
> >
> > For now, we must exclude more than 1000 headers just because they
> > cannot be compiled as standalone units. I added them to header-test-.
> > The black list was mostly generated by a script, so should be checked
> > later.
> The list is smaller than I had expected.
> And I see why you insisted on avoiding a maze ok Kbuild files.
> It looks good, except there is a few issues..
>
>
> The file kernel/kheaders_data.tar.xz includes all the .s files.
> Something needs to be done to exclude the .s files...

Good catch. I will change scripts/gen_kheaders.sh


> When building a full kernel the build fails like this:
>   LD      vmlinux.o
> aarch64-linux-gnu-ld: cannot find include/lib.a: No such file or directory
> make[1]: *** [/home/sam/kernel/linux-kbuild.git/Makefile:1054: vmlinux] Error 1
> make[1]: Leaving directory '/home/sam/kernel/linux-kbuild.git/.build/arm64-allyesconfig'
> make: *** [Makefile:179: sub-make] Error 2

My bad - I built only include/,
without testing full build.

I will fix.


>
> include/uapi/linux/mman.h fails when building sparc64 allmodconfig.
> There is likely more header files that will fail when we start to
> throw this after diverse randconfigs.
> I have no good idea how to catch this.
> Unless your scripts could automate this across several architectures.

Thanks. I excluded a little more headers.


> I did not continue my testing futher.
>
> > +header-test-                 += uapi/drm/vmwgfx_drm.h
> > +header-test-                 += uapi/linux/a.out.h
> > +header-test-                 += uapi/linux/coda.h
> ...
> > +header-test-                 += uapi/xen/evtchn.h
> > +header-test-                 += uapi/xen/gntdev.h
> > +header-test-                 += uapi/xen/privcmd.h
>
> I though uapi files were covered by another Makefile?
> If they are added because we pull them in using a pattern, maybe they
> should be removed using a specific filer-out?

I have not looked at this closely yet.

usr/include/Makefile tests UAPI headers
crafted by scripts/headers_install.sh

Testing UAPI headers in their raw form
makes sense, I think.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

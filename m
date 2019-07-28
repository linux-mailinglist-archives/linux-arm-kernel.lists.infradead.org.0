Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB72478183
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o5KerLl2zPqp+gDs3ZbdrF9kI02iDM4UFODCQO3cCY=; b=UBJ9awT7KyK0I/
	GHpvOF4fBA6L0lV3fq6cb+uKyJ416nF7jzQg6nh5OF7+OB6wG8bZWcLZGvvctN7xH883lFbUEJNtT
	H5vbA4O7eFdOb8vQswoVvrKwPpel2jjVw97MT1qRUaA5JHi8KoF0D0i0cSc+lWMdUQe2Biq9stsH9
	CozA1q36l726SvodkhUQmAU0AEwwk/wwlwb87jurhnIbBtNREbpc6/lSxoussaBnQVct3yEWOWtFw
	OPuQwLupvzcvIlIPQgO14ckX8hnMcWRw4fRh+Y7CPwaVriOWwR5VBKNhTA2LiYd3Dxq1qUJedVMkG
	kq7dLODDcAhS7Ev0692g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrpmy-0003HC-LA; Sun, 28 Jul 2019 20:29:04 +0000
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrpmm-0003Gu-BW
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:28:53 +0000
Received: by mail-lj1-f169.google.com with SMTP id v24so56589978ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 13:28:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PX6xwcsLnu3R6UXpghFRH0v4hIuqxQ4N0w1whL5uRzw=;
 b=li4GdRsVUM40q6hPBK+W+Y/9RfcGNo9cFCpFHa6wT6Ej1DtFDI9yYRP4suEFBdMIbI
 2w75MUM6L7cLmVxT75IKvJMvOqKx1Aj/XE4FC9uJqQ7QN2xPA9CyxpvBwbZCnka5eHlU
 POawQNomXdqvm4Tm8wr4IgbLcyDGDNTTAZOskqS3X2biiOlYUu2rPLw3y8h8bHD+bFvC
 FShjVhBxMaYr36oy5mf/kAsWhTs4XYT3TzkToT2LhRdSUiwWoQD+J+TEIfKd0jkNa8py
 V5SW9v5ilqYniFRFIAwUQBTp6+z74IekpyPbXOhI7/2Ytuos7XYFvCT0JT+QUNmAmlkU
 jGAA==
X-Gm-Message-State: APjAAAVoOIAkXGqtMaWdzTug75w2D8wRwdqWmY/GXoGXwnZL3uNE9h57
 R5dHHBA/AdfetI+6F/4U8CWDNu7PJ+9Bwc+Atl38S+eAi9g=
X-Google-Smtp-Source: APXvYqy7S69A3suU/SmrmMQrjjECSRpKt2dwrYENNhIVchBwnv44WzW0qv4sxJD/Yf5AaC8x85H2NSyxTrBK9i4W2sI=
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr40166958ljk.106.1564345729792; 
 Sun, 28 Jul 2019 13:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <57eeca23-3f03-cfd2-280e-4b19eb84b65d@petrovitsch.priv.at>
In-Reply-To: <57eeca23-3f03-cfd2-280e-4b19eb84b65d@petrovitsch.priv.at>
From: Matteo Croce <mcroce@redhat.com>
Date: Sun, 28 Jul 2019 22:28:13 +0200
Message-ID: <CAGnkfhwJ2_kRAqfyCB56NBLNjHVKV7Dxt=8BKShGsBf16v4+zw@mail.gmail.com>
Subject: Re: build error
To: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_132852_397632_2BACBAA9 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.169 listed in list.dnswl.org]
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 10:16 PM Bernd Petrovitsch
<bernd@petrovitsch.priv.at> wrote:
>
> Hi all!
>
> On 28/07/2019 22:08, Matteo Croce wrote:
> [...]
> > I get this build error with 5.3-rc2"
> >
> > # make
> > arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
>
> - Install (some) gcc?!
> - Fix $PATH so that (some) gcc can be found?!
>

Hi,

I had no build error with 5.2, anyway:

# gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/aarch64-linux-gnu/8/lto-wrapper
Target: aarch64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu/Linaro
8.3.0-6ubuntu1' --with-bugurl=file:///usr/share/doc/gcc-8/README.Bugs
--enable-languages=c,ada,c++,go,d,fortran,objc,obj-c++ --prefix=/usr
--with-gcc-major-version-only --program-suffix=-8
--program-prefix=aarch64-linux-gnu- --enable-shared
--enable-linker-build-id --libexecdir=/usr/lib
--without-included-gettext --enable-threads=posix --libdir=/usr/lib
--enable-nls --enable-bootstrap --enable-clocale=gnu
--enable-libstdcxx-debug --enable-libstdcxx-time=yes
--with-default-libstdcxx-abi=new --enable-gnu-unique-object
--disable-libquadmath --disable-libquadmath-support --enable-plugin
--enable-default-pie --with-system-zlib --disable-libphobos
--enable-multiarch --enable-fix-cortex-a53-843419 --disable-werror
--enable-checking=release --build=aarch64-linux-gnu
--host=aarch64-linux-gnu --target=aarch64-linux-gnu
Thread model: posix
gcc version 8.3.0 (Ubuntu/Linaro 8.3.0-6ubuntu1)

Bye,
-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B80313BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2zh79meaHunDT1AsN4CLTTcF7bE997JaIFo4+enkRU=; b=IopQ6Kv5E2M7l3
	83CIOxCpOiJTezdxzpI6m8ke2AqzA8Nra2iZibZxgHhoM9qVj6RJ/k0DrHSqRtRrTiw+i/kelLMs4
	QUNWwAbNfPCGtwxNpmN+5o8WEoY9RCNj1lDBuRJC/7GXG0opySA/cSs26RDaQSzSayYL2W03NqHDT
	F157MC1X6tt8FEUbp2aYcl7BuUajGHkbXZRAM1xy5EfMhqUX1kpGVxOjPWbG7RTMXb01PhLXfXX2A
	cVv8WElBCprH0SW5GfsL+vcWlTNWBZiRO4kAZiI6d9cphR/dnppaRMDpVcMnb25/41VxDtjBXI0m3
	wn7KLB5isuR+9pAlB+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlFv-0008UC-J7; Fri, 31 May 2019 17:23:51 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlFm-0008TU-C1
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:23:43 +0000
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x4VHNDYo005696
 for <linux-arm-kernel@lists.infradead.org>; Sat, 1 Jun 2019 02:23:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x4VHNDYo005696
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559323394;
 bh=5m0q0XIy5YuxkRIFajktdMVUYXbeanmb9yX6wlGaoJw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=laI1g3e2JWjaYCcjY7lydlrbL2A/MSXL3NOTKy5ojI1AT66P4dDMAMEzYSaaguR5M
 Cc8k/y/B2zdDZc/oL2gJ/TqZ5KYncN811cBHrN5SSaUUJWvNZPHtTrVzgA64RR7gTP
 NOcjDGJIhBqdqpPJHFeP4+rirnJDx7pv1DVUXHsYhzib1IMst9PavWqFpIdYAx1oTx
 mw+54tP4q8hCkepI67OKdn6Qe+vNaHkeVAtf2hEZ2M1BTT19BXoO8hdJ/JLE6xAn4q
 UbF/di4uBgYkxrDo5JZgDctE4XrjtzXIFRCC/R/TyET0/zcOU/Z9mi722oa3ePi2dn
 0UfLVFhMDASnA==
X-Nifty-SrcIP: [209.85.217.54]
Received: by mail-vs1-f54.google.com with SMTP id b10so7196037vsp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:23:13 -0700 (PDT)
X-Gm-Message-State: APjAAAV7hZQD/DYQ4APcLOPLALUXItbk8Tp3ypSpewnw7bAh28qSWkm5
 lG4g+CL2cwVblHuQPTwWXEehFnwRcnRqgK+Yc78=
X-Google-Smtp-Source: APXvYqyHSH5b9Nd47Kx7o2ZQo4+y0MwntauCr0EFTB+JRsNMdE2fPO6IZpyAEf7dgcVc0smNIbXYLC2eD3QKDHRMplw=
X-Received: by 2002:a67:ad0f:: with SMTP id t15mr5730130vsl.179.1559323392669; 
 Fri, 31 May 2019 10:23:12 -0700 (PDT)
MIME-Version: 1.0
References: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
 <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
 <20190531163908.GB10644@mam-gdavis-lt>
In-Reply-To: <20190531163908.GB10644@mam-gdavis-lt>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 1 Jun 2019 02:22:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNASq8eW0D8fpbxFGhAgR5D158emTR2quCD5ufyC+kK-2GQ@mail.gmail.com>
Message-ID: <CAK7LNASq8eW0D8fpbxFGhAgR5D158emTR2quCD5ufyC+kK-2GQ@mail.gmail.com>
Subject: Re: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
To: "George G. Davis" <george_davis@mentor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_102342_623241_883A6691 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, Joe Perches <joe@perches.com>,
 Andy Whitcroft <apw@canonical.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 1:39 AM George G. Davis <george_davis@mentor.com> wrote:
>
> Hello Masahiro,
>
> On Sat, Jun 01, 2019 at 01:02:37AM +0900, Masahiro Yamada wrote:
> > On Sat, Jun 1, 2019 at 12:27 AM George G. Davis <george_davis@mentor.com> wrote:
> > >
> > > The following error occurs for the `make ARCH=arm64 checkstack` case:
> > >
> > > aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
> > > perl ./scripts/checkstack.pl arm64
> > > wrong or unknown architecture "arm64"
> > >
> > > Fix the above error by setting `CHECKSTACK_ARCH := aarch64` for the
> > > ARCH=arm64 case.
> > >
> > > Signed-off-by: George G. Davis <george_davis@mentor.com>
> >
> >
> > Why don't you fix scripts/checkstack.pl ?
>
> Like so?:
>

As far as I understood, checkstack.pl is supposed to
understand both ARCH= and 'uname -m'.


For example, the following commit supports x86, x86_64, i386,
by using regular expression.

commit fda9f9903be6c3b590472c175c514b0834bb3c83
Author: Konstantin Khlebnikov <koct9i@gmail.com>
Date:   Fri Aug 8 14:23:35 2014 -0700

    scripts/checkstack.pl: automatically handle 32-bit and 64-bit mode
for ARCH=x86

    This patch adds support for ARCH=x86 into checkstack.



Following this pattern, does this work for you?

diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
index 122aef5e4e14..371bd17a4983 100755
--- a/scripts/checkstack.pl
+++ b/scripts/checkstack.pl
@@ -46,7 +46,7 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
        $x      = "[0-9a-f]";   # hex character
        $xs     = "[0-9a-f ]";  # hex character or space
        $funcre = qr/^$x* <(.*)>:$/;
-       if ($arch eq 'aarch64') {
+       if ($arch =~ '^(aarch|arm)64$') {
                #ffffffc0006325cc:       a9bb7bfd        stp     x29,
x30, [sp, #-80]!
                #a110:       d11643ff        sub     sp, sp, #0x590
                $re = qr/^.*stp.*sp, \#-([0-9]{1,8})\]\!/o;



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

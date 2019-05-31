Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2510431290
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATPgMjVo1y3g9huqQvpwAszIQD7e+faXOhzKrCI1MZc=; b=tjbSl/+ZRpGCva
	PxcZ6qDlOrpDSst1mrNZIlAqG/JV3uyTqpO1ktk5jiqvNKiOXsmGOUKCft6TH0V+sxnBX77GH1JzX
	o3q8BQY9O14aDhuKTz32vUngum7KGNNa4H8291b/qph6N3BHAFuk9BKUTpeA+9vWY4+x27/tD/wu0
	vDOBhLG1tUbRDJUvL9SZuYvOklIj9my+E0eq583nEms8uwXdyomtuCGHHrTZlphuc+BmAsJc4GhFD
	1mMks8pTZRJ9j2JejeOPoIapCdNXSJOJs1keDNkGynMudsDgO/nUGJ1sIMq/jdXIAC+Z6ofp/lchx
	FkQiuR0XgW5l21qcnwTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkYt-0005vq-FX; Fri, 31 May 2019 16:39:23 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkYm-0005vU-IW
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:39:17 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hWkYi-0005oM-1T from George_Davis@mentor.com ;
 Fri, 31 May 2019 09:39:12 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Fri, 31 May
 2019 09:39:09 -0700
Date: Fri, 31 May 2019 12:39:08 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
Message-ID: <20190531163908.GB10644@mam-gdavis-lt>
References: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
 <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: SVR-ORW-MBX-07.mgc.mentorg.com (147.34.90.207) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_093916_607236_9F82FC08 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hello Masahiro,

On Sat, Jun 01, 2019 at 01:02:37AM +0900, Masahiro Yamada wrote:
> On Sat, Jun 1, 2019 at 12:27 AM George G. Davis <george_davis@mentor.com> wrote:
> >
> > The following error occurs for the `make ARCH=arm64 checkstack` case:
> >
> > aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
> > perl ./scripts/checkstack.pl arm64
> > wrong or unknown architecture "arm64"
> >
> > Fix the above error by setting `CHECKSTACK_ARCH := aarch64` for the
> > ARCH=arm64 case.
> >
> > Signed-off-by: George G. Davis <george_davis@mentor.com>
> 
> 
> Why don't you fix scripts/checkstack.pl ?

Like so?:


diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
index 122aef5e4e14..8502de57e2ef 100755
--- a/scripts/checkstack.pl
+++ b/scripts/checkstack.pl
@@ -41,6 +41,8 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
 	if ($arch eq "") {
 		$arch = `uname -m`;
 		chomp($arch);
+	} elsif ($arch eq 'arm64') {
+		$arch = "aarch64";
 	}
 
 	$x	= "[0-9a-f]";	# hex character


Thanks!

> > diff --git a/Makefile b/Makefile
> > index 11358153d8f2..3e615e8553c0 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1695,7 +1695,11 @@ PHONY += checkstack kernelrelease kernelversion image_name
> >  ifeq ($(ARCH), um)
> >  CHECKSTACK_ARCH := $(SUBARCH)
> >  else
> > -CHECKSTACK_ARCH := $(ARCH)
> > +       ifeq ($(ARCH), arm64)
> > +               CHECKSTACK_ARCH := aarch64
> > +       else
> > +               CHECKSTACK_ARCH := $(ARCH)
> > +       endif
> >  endif
> >  checkstack:
> >         $(OBJDUMP) -d vmlinux $$(find . -name '*.ko') | \
> > --
> > 2.7.4
> >
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

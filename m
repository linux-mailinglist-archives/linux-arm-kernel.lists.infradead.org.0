Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68033323C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orvFY4r7mIwYmePWFYltWwC4fGCrXkpbi8GnnLXwJyg=; b=Fd2BKVX44x84hN
	pkO89LvjP/39AIB3UGp9eQhDvPR22VJGSkVWA59ysfwUDAqw9wqKLAeKcmE6aR5tnlm6xBh0lD+7p
	ro+E0kOP98Sc4q/2+M7Z03IGrpF78cNzeqsjXvfei1WdWlgr/7PTEbI63j8RT7KX6pMTKAPu1hDym
	l0JDGMSii5HcUIL/3Lld8oSsy7MVgMyzHe3Fn6z1YkpwUB8EX6hyI326mAnMzyjIPejGiYjsIadgR
	Tj8vH1k6R0p1F+89qcpnfur4gQZ5dyFkWGFNxQ9G1gi7Fvom5HNg56AaNOENLsurHDkU5NASPK5Q3
	AvGLYLkJ8Nc3vCF8Mfwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXo2d-0008E5-S8; Mon, 03 Jun 2019 14:34:27 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXo2X-0008Dl-2B
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:34:22 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hXo2W-0004B8-6v from George_Davis@mentor.com ;
 Mon, 03 Jun 2019 07:34:20 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Mon, 3 Jun
 2019 07:34:18 -0700
Date: Mon, 3 Jun 2019 10:34:17 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
Message-ID: <20190603143416.GA17299@mam-gdavis-lt>
References: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
 <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
 <20190531163908.GB10644@mam-gdavis-lt>
 <CAK7LNASq8eW0D8fpbxFGhAgR5D158emTR2quCD5ufyC+kK-2GQ@mail.gmail.com>
 <20190531174506.GC10644@mam-gdavis-lt>
 <CAK7LNASazA2496=GkJdJFVw3S7mQ8LaVqHc6dX=FU0DGYtRTBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASazA2496=GkJdJFVw3S7mQ8LaVqHc6dX=FU0DGYtRTBg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_073421_106049_802074E1 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Sat, Jun 01, 2019 at 11:09:15AM +0900, Masahiro Yamada wrote:
> On Sat, Jun 1, 2019 at 2:45 AM George G. Davis <george_davis@mentor.com> wrote:
> > > Following this pattern, does this work for you?
> > >
> > > diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
> > > index 122aef5e4e14..371bd17a4983 100755
> > > --- a/scripts/checkstack.pl
> > > +++ b/scripts/checkstack.pl
> > > @@ -46,7 +46,7 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
> > >         $x      = "[0-9a-f]";   # hex character
> > >         $xs     = "[0-9a-f ]";  # hex character or space
> > >         $funcre = qr/^$x* <(.*)>:$/;
> > > -       if ($arch eq 'aarch64') {
> > > +       if ($arch =~ '^(aarch|arm)64$') {
> >
> > Yes, that works, thanks!
> >
> > Will you submit a fix or would you like me to resubmit with the above suggested
> > fix?
> 
> Please send v2.

Done:

https://patchwork.kernel.org/patch/10972965/

Thanks!

> 
> Thanks.
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA29D318F3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 04:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tQVLq54o+lvVUBVcppmbS0ODH/+gzKJuMBdxctLl0c=; b=sYWMFoRj/ANZ/Z
	tpbG7eWPPEjurFjPkWkjyiomVPQPqeYDbppb1StEbm5yCFzW0NfVlFXsoeTICWYoeYcv3uYF/vBZ0
	u1TBKftYI8D5F8sAaqI9WErX6YuVWWvIbLjyMUUSJwC6WmoBWEgns+QbLRoCzpykxtQzJJ1WR8Zv0
	6WBcX+UwUE2xhilJBc0CCXL5ltZeaQtvxEG8hythhM6c/XZBZo29P2r2ixsAA7O1KeRZsGFV2n20/
	zBOaNvPq0SQN61h6Ejn44zAXX1/uSJrJjSA+umLp4RNOfM8zzaDLC9W/7/CoH/b9v1AvcQSelV06I
	vw15z+xvU6/Qjpb/WpFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtTL-00049h-M0; Sat, 01 Jun 2019 02:10:15 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtTD-0003Tu-Gz
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 02:10:09 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x5129pe4009935
 for <linux-arm-kernel@lists.infradead.org>; Sat, 1 Jun 2019 11:09:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x5129pe4009935
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559354992;
 bh=m5mAnMPwjDlz809r+I3TRHdaHgJqPbJUfMA2Ks6nXoQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OXeFWh5kuMc7PTux0tSwL10409K9U7aOGxjnZO1hWJNDnwx1LePGzmlGuDCbgxoMD
 QpZwvldZiivIxLEHn7dLcZYzH3PIGLliMHztJ5fJZbpo4DVCq0MTyqjeaauCxwewT7
 q7zQF9p9V58dK1SRNhWQNNF6pN+kRbEhj3B1yPyKWCsNvyOGE6t20dbEH5HNUqY50M
 tC+3iaysZEfZ4Oar2sIKZ8pCVUx0bcRkn9r54NiEYO3758lkucCz5NfVrNqe9pMb3C
 eQgktkwUR4/y41lamVDG6kf+D5Evp8dx0l8VtjFQNZzqA7WIvhKY/t8nHkzpMLxlDB
 TlP9QFI1AE87Q==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id n7so4535916uap.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 19:09:52 -0700 (PDT)
X-Gm-Message-State: APjAAAWLXbWYuDq4gZ+waehQAu4vjDAhD3lHpPA0v0IMhR0rE7wpxIj+
 EnLTNaSORfKp1zUoSXx57iiTsZw+XF+DbOEJdis=
X-Google-Smtp-Source: APXvYqwB4BA9jCIMiyU3B9xWJ0d64yGLFmvT3Mp/7QBMvJ549t1LuK/enpEv26YsyVU68yhuPMAWs/m0Dcps68fsJt0=
X-Received: by 2002:ab0:234d:: with SMTP id h13mr6905688uao.95.1559354991160; 
 Fri, 31 May 2019 19:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
 <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
 <20190531163908.GB10644@mam-gdavis-lt>
 <CAK7LNASq8eW0D8fpbxFGhAgR5D158emTR2quCD5ufyC+kK-2GQ@mail.gmail.com>
 <20190531174506.GC10644@mam-gdavis-lt>
In-Reply-To: <20190531174506.GC10644@mam-gdavis-lt>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 1 Jun 2019 11:09:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNASazA2496=GkJdJFVw3S7mQ8LaVqHc6dX=FU0DGYtRTBg@mail.gmail.com>
Message-ID: <CAK7LNASazA2496=GkJdJFVw3S7mQ8LaVqHc6dX=FU0DGYtRTBg@mail.gmail.com>
Subject: Re: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
To: "George G. Davis" <george_davis@mentor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_191007_962530_AE38EC42 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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

On Sat, Jun 1, 2019 at 2:45 AM George G. Davis <george_davis@mentor.com> wrote:
> > Following this pattern, does this work for you?
> >
> > diff --git a/scripts/checkstack.pl b/scripts/checkstack.pl
> > index 122aef5e4e14..371bd17a4983 100755
> > --- a/scripts/checkstack.pl
> > +++ b/scripts/checkstack.pl
> > @@ -46,7 +46,7 @@ my (@stack, $re, $dre, $x, $xs, $funcre);
> >         $x      = "[0-9a-f]";   # hex character
> >         $xs     = "[0-9a-f ]";  # hex character or space
> >         $funcre = qr/^$x* <(.*)>:$/;
> > -       if ($arch eq 'aarch64') {
> > +       if ($arch =~ '^(aarch|arm)64$') {
>
> Yes, that works, thanks!
>
> Will you submit a fix or would you like me to resubmit with the above suggested
> fix?

Please send v2.

Thanks.

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

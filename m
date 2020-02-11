Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D13159266
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XqTU6D8N3XsbS7rLrXNt1QgTFmobh39hFPztH/qrYQ=; b=meETzEVQVHLeNn
	jTORljiLyyRK1nF1FnC5iBfqqeSduAD9iw/vjdbEQgQj8f0AatliXh6PK9Ar3Hspv2op6ygo691L+
	LxogBcv4Qv3TyBRmnyWBFQhVfrfHvYgbwHPLSiyiGLvhRe7h5wFelnXmipQRvR7Pmn0yKC24nevnK
	A/zCLBRSEk4h5s8rCUSte5Ib1bAj+rsHWbhejLH1kNbTVFdIevcZ8FDuFZ6M7TGw5FamL4KyQ+qag
	iYH8F8geBRFIrom9kKkqoUBthV3ayWWipi4yL8LWktDq68HcbtlQQ1dmzztwYpOfZEKLuIR16Cp0I
	TYfL39YaMLdMDQ4MpA5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1X1L-0000jv-0b; Tue, 11 Feb 2020 15:00:15 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1X1B-0008EB-6T
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:00:06 +0000
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
 [209.85.221.180]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 01BExjfc012763
 for <linux-arm-kernel@lists.infradead.org>; Tue, 11 Feb 2020 23:59:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 01BExjfc012763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581433185;
 bh=hROq0o9lHJ1U2TLCvbGvuP+PaSOx9kk2PnxAttc0w9I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c3ewrPOm9TiZSvVoKb9fcpH1UQvTg7JqsVUIfEgCPcIn7XXAvQCc7lZKrezq0Ak6/
 qER0PLGLmWaPf675zfYJlKdvC+PRMm6oiT1Z0z+T4uFnySpDAFiwBYUe8/e9Vcg1dw
 /8YxlYvnfmDmyAcTs6nsB255EfEHF/8E4l9nBp4UNbML7KSCyoMU49WTUmEOdDqKhq
 8ERDN42zKbZ/q268j++2Fj/BFLQrHC1o4TfVqeO06fBgmmur6mB5pyhFItYB8/HOn0
 3q9qT6uqs6bXGk8fR9u+jSGXhUo6snklIEL1sox8XO4aC+Epj4ZJrvrilWUq9OxPQm
 WMe8kQK+8oUtA==
X-Nifty-SrcIP: [209.85.221.180]
Received: by mail-vk1-f180.google.com with SMTP id y184so3036668vkc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 06:59:45 -0800 (PST)
X-Gm-Message-State: APjAAAVE0kChMN+hys91mCB24WjCSDt7wIyJG6As4guuutlOLJ7yTJoD
 o2W3jwfYkK2XP2h4SA6yWHvh6WLoxUNnj8ts7+s=
X-Google-Smtp-Source: APXvYqwaEhkM2LGDystFIroM3uA+deAF+AOLdRSitxDTFjOu34V62IFm0xHv3lwbg6gXEFp4DjWH9vKztbT7+FafnwY=
X-Received: by 2002:a1f:1bc3:: with SMTP id b186mr5042217vkb.96.1581433184417; 
 Tue, 11 Feb 2020 06:59:44 -0800 (PST)
MIME-Version: 1.0
References: <20200210175452.5030-1-masahiroy@kernel.org>
 <20200210143052.1d89f7e26c9bd115d617cc92@linux-foundation.org>
In-Reply-To: <20200210143052.1d89f7e26c9bd115d617cc92@linux-foundation.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 11 Feb 2020 23:59:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNARZnyj7pynscGtz+hQF2LPvzxW5YjHAOivjYZhT8Yq7VQ@mail.gmail.com>
Message-ID: <CAK7LNARZnyj7pynscGtz+hQF2LPvzxW5YjHAOivjYZhT8Yq7VQ@mail.gmail.com>
Subject: Re: [PATCH] asm-generic: make more kernel-space headers mandatory
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_070005_480882_29F699E8 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 X86 ML <x86@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Feb 11, 2020 at 7:30 AM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Tue, 11 Feb 2020 02:54:52 +0900 Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> > Change a header to mandatory-y if both of the following are met:
> >
> > [1] At least one architecture (except um) specifies it as generic-y in
> >     arch/*/include/asm/Kbuild
> >
> > [2] Every architecture (except um) either has its own implementation
> >     (arch/*/include/asm/*.h) or specifies it as generic-y in
> >     arch/*/include/asm/Kbuild
>
> (reads Documentation/kbuild/makefiles.rst to remember what these things
> do).
>
> Why are we making this change?  What's the benefit?


One obvious benefit is the diff stat:

 25 files changed, 52 insertions(+), 557 deletions(-)


It is tedious to list generic-y for each arch
that needs it.

So, mandatory-y works like a fallback default
(by just wrapping asm-generic one)
when arch does not have a specific header implementation.

See the following commits:

def3f7cefe4e81c296090e1722a76551142c227c
a1b39bae16a62ce4aae02d958224f19316d98b24


It is tedious to convert headers one by one,
so I processed by a shell script.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

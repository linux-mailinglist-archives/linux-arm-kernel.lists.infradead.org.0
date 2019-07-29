Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0FB79106
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yILoqtcFpDZ4Zw0/qXN3dB+vsQlbvAI4+FEiqNv/ZpU=; b=CFxvn0l8vs2zvL
	01SOiUR6LZp0Xv7z4y0DgvACr9jKp36wTpIIp3by2FzMPZnZywiR6jMlHhiRrQQov0qKMxyJrVtm1
	lQvnThPV2r2u9LKI7qGR4o4omOZZWVH7f3HFOyrxE1cNGvJLJHT4Ea20Q+3KBuSYthbqlmaD1vpov
	Qz/GzXaFB8XxNw/WUoVlAuxQ234cqAw9M06LrrZb4OFsoLKqrJKyyIN63ssxVotBff+GFY36vuQJy
	FWhV+HjUto4e/dhbFlRviKze24nFsjd28oibf4mfRpPaQ9e7sE7pxbkk7azzTLb5Mue8PsEZQCldE
	yP75m/do+1ErFyNMvSLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8c3-0005O8-5K; Mon, 29 Jul 2019 16:35:03 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8bS-00056q-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:34:28 +0000
Received: by mail-lj1-f195.google.com with SMTP id p17so59239914ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UG3D/SqCJj11xnk2S6pE/fAYr6pWtAvwmUTxug894eQ=;
 b=YQHuXMLlkpqOHvD56mFHcTzADdE7trXIDqap/otWjhmhV1ESpIX6XWjVWO/gv4jonW
 0bol5TKNYUv0R4olqBeXHM+CIx7qxuZWVN4yeIDOqNIF/tlMOnfccOZbZXR0rZ1CGEc1
 gO8qkRPVYyC87EHwf2JHbbcSqZdFwCOCbZ52IP1JdBZYWmV6WWcdbMuQGTGOhjwbVOpw
 rud8Xv1zpkUPMSxP95Ds1l50lQyRX7ydOnUrDfWP9OKLT5yCIhl3SRU6oqcaow8sEQKZ
 5STBSRcZFCvJb8xMBFUa8C3f+1dTRDVuxL7olY+Y9VOk36ZgRGsCKKMcM14iNjuu5Rmm
 Pt7w==
X-Gm-Message-State: APjAAAWJUncdkXJJS1s9H8FoJ+EPrYI0o9o0KIjTa+fXNkWGlR5OWqfU
 awdbaPCZFqCWGKQPkOZsg8Q4R+KQTxzvzDcaMFjtuQ==
X-Google-Smtp-Source: APXvYqwaWzM1hn/JYuWG8xIWCCoQc0juPndzV2AWEI2sZ0zbeHQbhgIVf3GM5tGdjfmKdC05eoQItiSu7YXZ4SX7s6Q=
X-Received: by 2002:a2e:2b01:: with SMTP id q1mr57284489lje.27.1564418064609; 
 Mon, 29 Jul 2019 09:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhyT=2kPsiUy-V=aCA_s-C4BXgD++hAZ9ii1h0p94mMVQA@mail.gmail.com>
 <20190729125421.32482-1-vincenzo.frascino@arm.com>
In-Reply-To: <20190729125421.32482-1-vincenzo.frascino@arm.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 18:33:48 +0200
Message-ID: <CAGnkfhw+=+50P=uaWsjZrtt_BuwJjXKZ_DSTjuJ8mzW4_kbu-w@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso: Fix Makefile regression
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093426_682099_33DB372F 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, pcc@google.com,
 Catalin Marinas <catalin.marinas@arm.com>, 0x7f454c46@gmail.com,
 LKML <linux-kernel@vger.kernel.org>, salyzyn@android.com,
 andre.przywara@arm.com, Andy Lutomirski <luto@kernel.org>,
 linux@rasmusvillemoes.dk, Thomas Gleixner <tglx@linutronix.de>,
 sthotton@marvell.com, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 2:54 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Using an old .config in combination with "make oldconfig" can cause
> an incorrect detection of the compat compiler:
>
> $ grep CROSS_COMPILE_COMPAT .config
> CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
>
> $ make oldconfig && make
> arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.
> Stop.
>
> Accordingly to the section 7.2 of the GNU Make manual "Syntax of
> Conditionals", "When the value results from complex expansions of
> variables and functions, expansions you would consider empty may
> actually contain whitespace characters and thus are not seen as
> empty. However, you can use the strip function to avoid interpreting
> whitespace as a non-empty value."
>
> Fix the issue adding strip to the CROSS_COMPILE_COMPAT string
> evaluation.
>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Matteo Croce <mcroce@redhat.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index bb1f1dbb34e8..61de992bbea3 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -52,7 +52,7 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>
>    ifeq ($(CONFIG_CC_IS_CLANG), y)
>      $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
> -  else ifeq ($(CROSS_COMPILE_COMPAT),)
> +  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
>      $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
>    else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
>      $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
> --
> 2.22.0
>

Tested-by: Matteo Croce <mcroce@redhat.com>

-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

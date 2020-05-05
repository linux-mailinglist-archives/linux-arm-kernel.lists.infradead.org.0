Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562A51C576B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItCRzWwfiWS4pxFLCgTkYhoVXquhdZcLeOWTFBr00GU=; b=bYxgGv+481MKSw
	xVuPAIB5Y4K8NgaU7EveRfIDhhZUo58jSBr1aoG/uDDnPgfpzFTdil6iRdHR2Ph+X6GDcdC7DTT+I
	QPaGjxeCBI9TwfYO8Az7vhH4XZkfdAyM9bkGIUwsPuvyn+t5Xic3lajrxAFoTlhjrje+wWUwCmPfL
	AAS0vFhHccBrypP6S4rqE9iO8n8UFBkZZkPx+Inz3e3r9Lpwil3aeI+Yn3bX7Zj2dQj0KSF6JvbfR
	uT1C72LgLaOOcqQXbQvSA2nST4K25qLXrDP8vmUZj89lk0sL7s+vLBssWJYmkyZZB5xEfUpswO8J9
	U5qYZGjoIuBx0+g4fX2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxyo-0001lW-0S; Tue, 05 May 2020 13:51:26 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxyh-0001kH-At
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:51:21 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Gh2m6PfNz9sP7;
 Tue,  5 May 2020 23:51:12 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1588686673;
 bh=5CkKOVUVokCv024MIkwREMwys8odQ5q3YBvid1ysFyA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=KZyNHydNPFL4k4SUu0Q55R5VfRyP86hefH3T8UE+z5+SeGJhfmewbmNqkE/wNDyg7
 gbW0tCAdH0C0/9v8azV+BbS5YmAZZxINF60wEBHFlBS9TPTRqInTG8d6kGaqMLoSr5
 QdjGlboAaG/Hbh/QfAv2xttdOptlaW1gX8ZFadoZoKM1+az+qq6J+CuVQXPQWpyE8O
 9Ud4pUqqy25KoLk+FV7qOf7OOqqwlZG2jvhaF8mRT8f7m/DDlLrTlbjkkxCC52pNHn
 0NxuegEpzmcy8DlKsPPpBkgjL45lUsxrDPfhla86drNkelndsz/apV+gOQPjR3YvV+
 DbzrKtO5YXSLQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Will Deacon <will@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 1/2] init/kconfig: Add LD_VERSION Kconfig
In-Reply-To: <20200504080651.GA2621@willie-the-truck>
References: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
 <CAMuHMdWxTtFxgpabeK3L4Ev4zgZ6r=_c+5MBVYd7ZAHbNYxm=Q@mail.gmail.com>
 <20200504080651.GA2621@willie-the-truck>
Date: Tue, 05 May 2020 23:51:27 +1000
Message-ID: <87v9lacwww.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065119_532811_D04C8979 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon <will@kernel.org> writes:
> On Mon, May 04, 2020 at 09:11:12AM +0200, Geert Uytterhoeven wrote:
>> On Mon, Mar 30, 2020 at 1:42 PM Amit Daniel Kachhap
>> <amit.kachhap@arm.com> wrote:
>> > This option can be used in Kconfig files to compare the ld version
>> > and enable/disable incompatible config options if required.
>> >
>> > This option is used in the subsequent patch along with GCC_VERSION to
>> > filter out an incompatible feature.
>> >
>> > Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> 
>> > --- a/init/Kconfig
>> > +++ b/init/Kconfig
>> > @@ -17,6 +17,10 @@ config GCC_VERSION
>> >         default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
>> >         default 0
>> >
>> > +config LD_VERSION
>> > +       int
>> > +       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
>> > +
>> >  config CC_IS_CLANG
>> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
>> 
>> .config: warning: symbol value '2.01827e+11' invalid for LD_VERSION
>> 
>> Seen with the or32 compiler on kisskb, e.g.
>> http://kisskb.ellerman.id.au/kisskb/buildresult/14226173/
>
> Hmm. The binutils version there is '2.26.20160125', but I think
> scripts/ld-version.sh is expecting that to be '2.26.0.20160125' as it would
> then ignore the date suffix as of commit 0d61ed17dd30 ("ld-version: Drop
> the 4th and 5th version components").

I updated the or32 compiler on kisskb to gcc 9.3.0, thanks to Arnd for
building it.

It has binutils 2.34.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

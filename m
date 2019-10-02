Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B8CC869E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1KV6ethG0ETBu6++biWLizMCDQTPZBuiXZbSGbbaOM=; b=A1VONvCfRxhXM6
	XPVKpJk+MNQtSAqc6Zblk2YaY0bKCRAHp6VTLfm9PAZlldDXuVd8mv9Awc9PtNUaa+H6BW1cp3cMg
	//IousNdO6Z5yw7QGV9OF+O6Vn+fYLvXLKIww52/0RNa9zaU3h3x4W7hsVPymSW0Uu8dXnt/I7QLd
	hxei9EBh9k0j2aJWKg4n9SEJFgl73WcthoVImLuwjWicicJizn9R4tfBb58kmLC/MWy6UbLPfNEef
	qNgrrqmXiMJ0vHAp1LtazhrY+jPVpO+nWxxODF4VJ0Vn2fxKuXoH1g38xL/2j5hIp4nBB9LIW1r9x
	2iiFgDpFyd0DOW8UdGtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFc9z-0006om-4q; Wed, 02 Oct 2019 10:47:07 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFc9s-0006oJ-AA
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:47:01 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x92AkP3M003097
 for <linux-arm-kernel@lists.infradead.org>; Wed, 2 Oct 2019 19:46:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x92AkP3M003097
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570013186;
 bh=Bglfj+Tuvo1CYXOErH0eUGGYGUYhZ/vzszNXppdwH4o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0y23Igke+GNeXli2RExdapfhItMcwAkqmiCIjt/jM53ItrnsDRZya4g3SPCcjCSUg
 xbSwlcBHPodVGJTDceVcwJTve+GsfGyuQkgjDH6NnaJ7tAcXDtXKdGOR65CnoRihiq
 uq3uSEyWUfIdbxZLGSqaA2jjjnADxKijlZvmHsbkFqdJ4DNf/oo3qpmqyRKorTRqvY
 JIGk0UuWqS7BOZZL+NeHiovoxYX61RKqW4I/TodW49UIuhf2olmLCYtoqnwqUOb3hE
 j19B9HUJJOBJmyN/DBbouJplz0asQTaRYVeqCxWBESYmoGVBjV5MSVC91KAX3mHpPF
 GBjv4ETVtXb5A==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id z14so11543333vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 03:46:26 -0700 (PDT)
X-Gm-Message-State: APjAAAVlrQDriFTlvkyvYXXIGKNR2cPLsbBkRagnXJmRLkI75KZ5irnr
 EonXE3iAfIUzQenPtnXdAzWW3/hWM7DtW1cbO7M=
X-Google-Smtp-Source: APXvYqwnWcwGj7cbZH6Fuzdub/hV3jKwA9Rxcz5Wb1PJQDEfO9FDFIGjBpO9FnJZ2wl7xvO0Evhm0eiWtzOKFA06RNY=
X-Received: by 2002:a67:ec09:: with SMTP id d9mr1416180vso.215.1570013185365; 
 Wed, 02 Oct 2019 03:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191001083701.27207-1-yamada.masahiro@socionext.com>
 <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
 <20191002082454.GQ25745@shell.armlinux.org.uk>
In-Reply-To: <20191002082454.GQ25745@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 2 Oct 2019 19:45:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQkPQbYvRoQqwa7gZ7H62m=5br7E=+E5WdmYWakDRafLA@mail.gmail.com>
Message-ID: <CAK7LNAQkPQbYvRoQqwa7gZ7H62m=5br7E=+E5WdmYWakDRafLA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_034700_583367_B930C81E 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Enrico Weigelt <info@metux.net>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 5:25 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> Masahiro Yamada, please send this to the patch system, thanks.

Done.  (8908/1)

Thanks.

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

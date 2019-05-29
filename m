Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A22DD47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpAdU4wHN6wvPQRKY/Tlf6aQQ4qz0NEbqD+8WT9S0r4=; b=Z77b9pFqq+qaNR
	xAfHdbpI6pa06XbqcyUNP9of8FVmfWlSHFF+sJ3g31fiPy0hzTBe+l29m8FCt1BUEai4uCKeKjEvb
	e9KZUYO47d84iUFDqMmLAWQoD3rZ2h7aCm60d104SNrXkxbDoq6rzeTPTO5NdTyFHKInAGImL3nqj
	w0LjPkodL7fA3VxZzZi/xNIDLY9BYvQT3kQMsLZTtCyM20/OY4lQvch7rRI5qYEBXP612DkMLLZwU
	MOb/lo7D8NhTPR/Jq/913CpGUtZynWC9ppGIyh4Ey8jiYtLfMXRlfCv/Ru9TKVp5AXnuO1/esthhM
	TLmAwu5c58jNPS9lL+gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxr7-0001zs-Ed; Wed, 29 May 2019 12:38:57 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxqz-0001yq-HI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:38:50 +0000
Received: by mail-oi1-x242.google.com with SMTP id y124so1893388oiy.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FDUDeCcdkQRbyuDM8qhH2Znf4RJm622zVFVk61i9LUg=;
 b=ZCKuRAAryeW8Ea5a25JWdvwmbrdGZA5xPyltiLcgx4QtORZxZ6KJmJtbQxtoNP19Wo
 Xg/dLGf55jPQVSu5FE5JfFK7fc0xjH0pJJreCdlCoRyFKz1S/c3xX7x4shGTa6cUqGTp
 oKnE3uqlDQkPvz9on04775F383vDunb9m+/zLQD6JDlSiH24sbrzBPKZNp3EvsYjVGVi
 Cc5R78VuDWIlrimSCIawnfCim8ruhA683p9xsCjmSGXf5CCEqHbNvBge06/nfVQsMrgB
 FRpBhADe6tsO9JhX7ewzY9eZg/ESAX6zHUISb4osC6OllGV3iXF9sfvcuTLkaZ4LocgQ
 GxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FDUDeCcdkQRbyuDM8qhH2Znf4RJm622zVFVk61i9LUg=;
 b=a9ZsolI3oTrZEKvj2MSYk5bJLLMI3qGLTfJv7E12l6+5izYsOujsS793vJxRAO3FLz
 7VlzuyJpuEPo2UFoBngzsfnR03pp7tbM/g0WEXNnzIyOGEdsQ16KfCpIYZ+o/ZURWFaK
 d1NVyahpR90Q3yisuPo5MFnjEuw0YLw2qiGcxFMF1wxtQ73BiTDLYFb3FPTrgvRxfmS+
 vmgyREtscAOFvvTVoSTp1pMOmVdKUjmGuaFlVFhQBnaBsvlm5Idq4lu+QHBqyzK5i9bz
 TjgMK7sqA94h1r1dGHxaeDQakYNoiiNQn2IAyQFeeljkY2fAxd1m5aeFbb/LScRSBxs5
 uPFw==
X-Gm-Message-State: APjAAAUuk2lkOTZmdtqFlqJvGbHMUa1KzpTprRyngkIkik6U+7h15Q7o
 SEY0OJEa1vFmMQ9uBaaq1lVRFqm4Q3k77feiSxvfMw==
X-Google-Smtp-Source: APXvYqwJ2gAc1xrWfg14y07pweZqCRi8/M2bmVC0WruolqfhcH6WYYDvGNBDBrird7ra9WnVYsJgm/yAFEM1C3i9OeY=
X-Received: by 2002:aca:f308:: with SMTP id r8mr1273650oih.39.1559133524190;
 Wed, 29 May 2019 05:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
 <7cac8be1-1667-6b6e-d2b8-d6ec5dc6da09@physik.fu-berlin.de>
In-Reply-To: <7cac8be1-1667-6b6e-d2b8-d6ec5dc6da09@physik.fu-berlin.de>
From: Jann Horn <jannh@google.com>
Date: Wed, 29 May 2019 14:38:17 +0200
Message-ID: <CAG48ez1xe0MFrECFHAtiiTn1V0+yvJazuCNEiWWAm-kvUwG4nQ@mail.gmail.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053849_571005_F3609FD6 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, linux-m68k@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 2:32 PM John Paul Adrian Glaubitz
<glaubitz@physik.fu-berlin.de> wrote:
> On 5/28/19 12:56 PM, Greg Ungerer wrote:
> >> Maybe... but I didn't want to rip it out without having one of the
> >> maintainers confirm that this really isn't likely to be used anymore.
> >
> > I have not used shared libraries on m68k non-mmu setups for
> > a very long time. At least 10 years I would think.
> We use shared libraries in Debian on m68k and Andreas Schwab uses them
> on openSUSE/m68k.

And you're using FLAT shared libraries, not ELF / FDPIC ELF shared
libraries? See <https://lore.kernel.org/lkml/20190524201817.16509-1-jannh@google.com/>
for context - this thread is about CONFIG_BINFMT_SHARED_FLAT.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

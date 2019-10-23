Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC98E17D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A06iJiDQNEGc1+Jfm0CS3G4aiExvnrHNlD8tGGNOd74=; b=jvBiR99f3Cfmg+
	dmeTq0LSsXReEEMYsW4gTbabzWPPZlrMdg2JXcdf1lX5jXn9UstM1kwt30Sjf0udEV6vmFtGtmtnG
	jkjqjNKCdbBrnvTwk8svmnMCxYE6tgflkH2/4+itJTDhi8zRGfH+LLxhWdK9zNSK06Ge1Z/dFXF5X
	P33jLcVswYm4XA5x147IAa/MbjcYJ34VQ4mV1sqooHlXFNFr5DH8BM5RYNAnzwvZ+llymEMsRKX2o
	/bOhVp87cC3SlqsoNw9RtXJp7ZYbuLtwcngmn0I9K29sO1aDm/NWp0EAmi0lZ4RqXpdJsLaBBj2Ss
	1mBR6LbU4JDpBHBvI6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDqh-0005R4-HK; Wed, 23 Oct 2019 10:26:39 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDqO-0005JM-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:26:22 +0000
Received: by mail-lf1-x144.google.com with SMTP id v8so15028094lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aRWUNj4J7qgXSXD2PSfXvGDEs07MKcTmNuTdcaVnUGw=;
 b=Slb+IaA7gxUyVr09pbGzJOB54Jv239tGUr7XIcQxfolpIG44u/NoAMOhLnza+Em4WR
 TEPsZuhBtQdRHRD82otLdcY2uJ9E7K4xMc5ZFii1pfI6kkUC5qwEGbYYfYuTwlvtQiDO
 wMOTH/ObIO23qcZyZJ2PI3HvK563JGx6aHaAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aRWUNj4J7qgXSXD2PSfXvGDEs07MKcTmNuTdcaVnUGw=;
 b=EeaPAo8SnXF+UOwby93INjgg8nDI7ing20e8xIf286rrFewOuHW1aHKGNSidEea78m
 miny+DHvGCe8FcQER/SazPyKhaogeqkcHymkK2w+1gp9WsdHgtkZl6UEWP16rKeDTnsT
 anMOdfq92OOY9PMGLCJoJZpxldNX/2pkk4y+iX1SN7sBr4p1PkiscsKQq0XzeMSKyqoa
 O0HE0BWDk6Nq4hbND9O7HLyoB9ktYadit+Uc2Bfr6oV4bci+xpLlVIBIjqiS+VCtsjtf
 cVZbM8774rizJtysKgLIXyb5Yzfi8jcxBM09MW1vSghQrd/uxilcABqVG/BXA8eOWjrE
 +MDA==
X-Gm-Message-State: APjAAAUqXASYmVQwxNplA7fcayhz6AZzD45OBNEJSk7RLSsidGs8GGOB
 4auhYuYe3d6YP83adsaPn7JV8zBPJIfbIQ==
X-Google-Smtp-Source: APXvYqztFI92wOG3iTD1Y4Y+aFn7XGm85E4Yn8A531xVbw34rieboLKPg+5f5n4swfUF4ztJ4emFUw==
X-Received: by 2002:a19:6759:: with SMTP id e25mr21059814lfj.80.1571826373694; 
 Wed, 23 Oct 2019 03:26:13 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id 132sm2970725ljj.83.2019.10.23.03.26.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Oct 2019 03:26:11 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id y3so20496958ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:26:05 -0700 (PDT)
X-Received: by 2002:a2e:29dd:: with SMTP id p90mr21979653ljp.26.1571826364626; 
 Wed, 23 Oct 2019 03:26:04 -0700 (PDT)
MIME-Version: 1.0
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
In-Reply-To: <1571822941-29776-1-git-send-email-rppt@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Oct 2019 06:25:48 -0400
X-Gmail-Original-Message-ID: <CAHk-=whd6wNfx2bq7BmN4ouZgt=NQ5pw+3uqPOTbvz_Qb3itFg@mail.gmail.com>
Message-ID: <CAHk-=whd6wNfx2bq7BmN4ouZgt=NQ5pw+3uqPOTbvz_Qb3itFg@mail.gmail.com>
Subject: Re: [PATCH 00/12] mm: remove __ARCH_HAS_4LEVEL_HACK
To: Mike Rapoport <rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_032620_964517_BB504E3C 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux-MM <linux-mm@kvack.org>, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-um@lists.infradead.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 5:29 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> These patches convert several architectures to use page table folding and
> remove __ARCH_HAS_4LEVEL_HACK along with include/asm-generic/4level-fixup.h.

Thanks for doing this.

The patches look sane from a quick scan, and it's definitely the right
thing to do. So ack on my part, but obviously testing the different
architectures would be a really good thing...

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

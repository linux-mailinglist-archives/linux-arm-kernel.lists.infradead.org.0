Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00863A96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8btrmdPjllqwK/4TT/xI/Vb/y6hsEKAM60EHY+xzk8=; b=uHKUoY6DCSUlhD
	ZPpZKYx/bvIvvE4d+ntoGEZ7/eD5YR2b+iYJyJJ28Ykr5xfb4mHq/bZYAcF3qCLphg3yhlkA7tVi3
	cYV0UYFLRX5WNgn+7YqeCW11Cdmk1Iu9r1kf6b6kNdGsqmZG960YT0ATlJf5pPd3rTFmUfxKPOrYx
	zCHcFEkUE2lCKyT+LkoKfrpIlXIfdKuQzis4xkQquL6laql9i7LmL/ve6AorRv+CgWApK/3WddIu3
	2krjkY5Cjzl43hCR4DaFRqYxxoLZmjQAXbOSOYGyh7Sl1wHrAWYBUk9bfCHZ+3mxCRDkRkUnqk+3Y
	yeshJnwDb8+lqUhMW1Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuXL-00027l-FQ; Tue, 09 Jul 2019 18:08:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuX8-000257-3z
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:08:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so10507440plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4VnM6ZlllgNz4Bft5zni4R6FgT6ay2Y8xF5/yfmghTI=;
 b=k1UqVGLrSihIVQimPXEKlmuN+hrCN4IyhUHR9Fc2BrtPuGA4K1lDaJve2L7nZWShFj
 pXTnSFcp7hOR/NjcVZ7hLGMwcvPLnFAyLMVICq26GwX74+CKkt6C8dlX2q2jKzysD4At
 0gr2QTrYD9Y4O3iMw0rCt1MKzEmlSX/0EYDYPw/Np9QBvIZDrbZ12jPl0HmmF0AoujtT
 QHEQrX3O7oO+p2Z+4g9aBgjpXj1iQlT3KufRJiEFxxJMs6SQddk/LOmdglmSJ8lqRrfL
 Rf+q0NLsh7OEwzPcohGlEdewMz5YSmsa9aS9425y8a3wmdmIDMEaG5je3VfVcCVvlnqI
 gTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4VnM6ZlllgNz4Bft5zni4R6FgT6ay2Y8xF5/yfmghTI=;
 b=N1WgHRAoZi52F+7QFX2rpPA8+1UnLj39Vk/sG92dEC/QvDjavj6ZXpKkIM3TBLDwt/
 JI4R9VqH0ypxA2OUUFiPai0Xfs5dqqLjAuJliTifLx7bszGGK9Jzd1IhxYyrw2H4Dra6
 4RzjIXk1igUMKJC2PLAAGz7KqyG8xIiysfvZnAtoTrkB3ZWborDPaNJnrAwnsGjpHL8C
 K0761DMFQmIDbdTnZfhGo464krYuFEywoBrIdmfDasP0mV2kIVDmNYobPFU+uDJkQH1Q
 GAlKtxrI62tVOMScO2KUOK4SHkTwnJrfbPYMhM8JdJBMIRwdovKz4tYcYHKMRaUiGfME
 UceQ==
X-Gm-Message-State: APjAAAXaKn+bO1K7GM+j0TTvWgkr6nyYU+8aGRCf2wNpdWOLI1IRmBRo
 COpDI3mLVPYTyDtPnkPJMnmU9U8alnn+8kpeW94U6Q==
X-Google-Smtp-Source: APXvYqx1ptPXEPdEdPRwy/Tqbw5gbLHRGF9Q/hr413p0p9p3VdirFiKOQZVLoQgffgDFpLTaNPPUt7eqGiZ9CWp98oA=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr33372838plq.223.1562695682401; 
 Tue, 09 Jul 2019 11:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
In-Reply-To: <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 9 Jul 2019 11:07:51 -0700
Message-ID: <CAKwvOdnm6rd4pOJvRbAghLxfd2QL5VJ+ODiMyRh1ri3pmmz0yg@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_110806_189550_9C44DB73 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 1:41 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Jul 8, 2019 at 10:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> > llvm gets confused by inline asm with .rep directives,
>
> Are the LLVM developers aware of the bug?
> It seems like something we can work around but should
> eventually be fixed properly in LLVM, right?

Arnd filed the bug yesterday.  I looked at it; so someone working on
LLVM is aware of it.  The kernel is definitely exercising weak points
in our inline assembly support.

> > Link: https://bugs.llvm.org/show_bug.cgi?id=42539

> I guess this brings up the old question whether the compiler should
> be worked around or just considered immature, but as it happens this

Definitely a balancing act; we prioritize work based on what's
feasible to work around vs must be implemented.  A lot of my time is
going into validation of asm goto right now, but others are ramping up
on the integrated assembler (clang itself can be invoked as a
substitute for GNU AS; but there's not enough support to do `make
AS=clang` for the kernel just yet).
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

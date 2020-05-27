Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC501E4BDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqxceUnSDpYh5rtbM2IL+4ICXxUJ31mPTvO9a2TkYMk=; b=UL5Y0hbZYkjWx5
	XfGA6m4/MnDHsyXgTg4MXJuu/IWSMA0Rr7991M7WzjVkFNUASloOTBpN5CLF2up/eD+xxIil2IOqe
	H1CyQyOEGObHPVWlb2iiGKNxkKzRuykmL+sqeYM1wlVKrhVb14DJ7DVDlE/nm5yuT9aObPTg/MFnH
	AcChxXwXZ4KPyr8FYQKfeEiTo+YK7RY72efjut9MFfPQNGp7ScpnPIicbzI9JoeG2vZ+wV6ZEDfBk
	Cf+M88cl+xPpo8uhqB96bWHHqmtMtkZa8BPanInEZLdeLAs5EacYkWdF4Q8hvxZjbRiB68YGxYd1t
	uUcx98MTAU/9efS/lgEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzrZ-0004On-Mu; Wed, 27 May 2020 17:29:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzrQ-0004O0-CQ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:29:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id i17so1862949pli.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tFnj+ie2MtneCS/evX/ZluPtSFLWtigbTQzNUbxK00k=;
 b=Ky1qqSC8sGjlOrTziUzHIbiwNaWHHocAD08wV/tv2onL6WH5zm+e02G048rm7MMDep
 DCc1AI9EcQ+QnrbGR5KrnxLwKNM8tnRw+IQTNxvdCkUTBviaQLLW2m8YmCcFyyI9nmeQ
 hmG25wC1Z1LTBuydrWYvavtiWigaVh9LjMoYnv302ZSNsc8JVNS/GSVvnG2Gkhl9HvVn
 Ei2FrQI0A0JTmtost4lPh/OyPKn1TqlObwU9P+xNmIbD2InZ/QwvWwRKFTQWal+8Cc4D
 CDE4XLn+lSOb4c56lAmoujD3F9OTjDlTqcqB9m9CmYPGCYqomUOjAKXMSfpQVVW6ATY1
 iTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tFnj+ie2MtneCS/evX/ZluPtSFLWtigbTQzNUbxK00k=;
 b=g3gC3Vb8cum+vaY5TxnWfUsrkWpYc+yj0h3jJeR7Gl8ye1Vesw6Tfps6qO4iu7S1kP
 /UxEudZzz7mIZ3ifBEnwrebUflvjaRHm0wDEQbr6+xYHxMgs0xEm5RqCeFbIucHnhhAd
 XjErDiMxZDSmyNgNMQNv1lONjYqKcm3R4Qt2yhy02C0n2Lc7SGhiYT6Z7SgEvyDOKDiJ
 h8thjqFr4eoLBhg2vNBkK6T7ylhFT5TJFaU1Nd600sOeelvQRUdVl0vljRB0ER9rE0uJ
 D+rcNKAWXVFhWhjJ20ELZVdb6aqOFQRYyYCiccDBUByvSYBm3LJcej3EMz5CVPbJc+Hk
 cpcQ==
X-Gm-Message-State: AOAM533IeW+owZJ2nA5jH0cLuD+dt8EMV/XRH98CACmfuKlGkdFBjj1h
 OgZtO2wYRK09KMlo11Ms5yZu6iEiXzNM04wwuOMZMw==
X-Google-Smtp-Source: ABdhPJyeuK37fJhKLfBA8uGQHGR65zBBNcwnWp0A1w2+kyRxmJO+mGP5rc8u/fLIcmnCwVN6cfAKjAZ5Xg83d2JcKEg=
X-Received: by 2002:a17:902:82c9:: with SMTP id
 u9mr6827669plz.179.1590600534489; 
 Wed, 27 May 2020 10:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de>
 <20200527152406.GD59947@C02TD0UTHF1T.local>
In-Reply-To: <20200527152406.GD59947@C02TD0UTHF1T.local>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 10:28:43 -0700
Message-ID: <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_102900_422564_5940C3C4 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Fangrui Song <maskray@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> > in combination with -mbig-endian, but the Kconfig check does not
> > pass the endianess flag, so building a big-endian kernel with
> > this fails at build time:
> >
> > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> >
> > Change the Kconfig check to let Kconfig figure this out earlier
> > and prevent the broken configuration. I assume this is a bug
> > in clang that needs to be fixed, but we also have to work
> > around existing releases.
> >
> > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> I suspect this is similar to the patchable-function-entry issue, and
> this is an oversight that we'd rather fix toolchain side.
>
> Nick, Fangrui, thoughts?

Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
Thanks Fangrui!
It seems it's easy in the codebase to check the specific ABI, which
isn't explicitly LE, rather than use a method that checks the ISA
regardless of endianness.

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

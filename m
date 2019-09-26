Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D328FBF6D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 18:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGzW5KiKbhH+6PJ0DNApgDATjmf1a9T885AEsPKQc3c=; b=nbZ5xNv/PCqXXo
	4yAyhCUtHm8jd1HXmjgtL8X0JJKKHsExY997kitFG0nL7qNtcTs96y96hFl4aEXSZ/qxgrxBFcXvz
	ZIg+dlfa2J6cF1x7x2pfsavKcSBJiL37fpA3p2SCSUAO9cpl53bK5RtcL/iQ3RB37EDyyaqsJpGcz
	U0Ir6zKaD1A2cAcWKw0K/lzBCqKnCT/4WB9zOTba5nkErb6JVJIHE0vUZfjyu4ZaEnmFNWuEaBYRi
	68GjOJvAD/12GvyFIc2PbEFVPZWaJ+TKDxJRytA8nZlCcQHH298lOWBSYdjA51ZG4guIHuVRdTFQm
	5p/bOuXbmuK1xxJrG8KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWnC-0004b3-4A; Thu, 26 Sep 2019 16:38:58 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWn0-0004aN-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 16:38:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so1562566pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 09:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hcizdKb+Z4/lJ6JqxlQ4rkSWRCdcDTnk4AuXkCAC72c=;
 b=a6HKMWfahkSRLhdXBqLOI4331GtOfMQLhJdeauMHBECSD7OBz9HusjF/ALZgOHT2TN
 ioDfXKJEvnRsLuzZfkuGFP8DbfgB5gYOJt9FVQ0wZA3JnoeK9aBcf6COKHE5v9MvLNaG
 N8DMYHjxgXQeJmZxg7NSZDh1hPDqyrtLByTnoHmNfFJwDF7VetVCo9DPrXQw9FQwb/jM
 rR0BU9uQhTI713siuR1mzReF5QCFwQTBz6KINp/nWcfOlX+yzqyK7WM765IquAy2Lg2b
 KUqi8QGxZT42240+yRuD4/KHmac5CpKsOox1N4gjE3o7wIeYgOtsFvNUKO7IkYud18xi
 2UAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hcizdKb+Z4/lJ6JqxlQ4rkSWRCdcDTnk4AuXkCAC72c=;
 b=Vvu2MHs3CgCaSpWE6KELb4Ba+9wL9fH9DzyyeG6ohQcYs2TCCbhKhLw+zrbQAa42VI
 TtZdp/9ckcpUSxQ/qViZcylyePvRHfQQwfdUH9h7epTv50uEOK5fDt1QPHjgSXjEYdNq
 /oakvcChAzufjJ4dJ2aIlOu6RSEfoXG3ypEmXzVr0q2T4cFklcHBPhZWFv0eYNb/Iv/h
 80ALGR5sIn/B0B0CeKR3kwJhTOJLjYNmlmpVMNn9/jycb1Sa4+8NlOiTRaKSNnD+hWX4
 ISdzklhReb1qDGNOgtCvu+fimPzsZS0XR3YBPWYvAGoA8i0ZSFtYf/ffYaRCCbjgbPg6
 v9OQ==
X-Gm-Message-State: APjAAAUryGNNaqF5LHPFzWIhk6J93iFYSeXOCeKk/1ypiYUOEei46zTl
 dTQ7BIyw3J+HGe8OQu07C8qbYspsh4k0A8EH4lx2Vw==
X-Google-Smtp-Source: APXvYqzSGsS4gRUL/eu2gcWx+JhX8X30L2iaC1ezMf5Qttm0lEecH4vESWL2CwHX0QI0ThBV2kSd1RqXI72KC6HZAkg=
X-Received: by 2002:a17:902:bb87:: with SMTP id
 m7mr4782990pls.179.1569515925719; 
 Thu, 26 Sep 2019 09:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
 <a7e06b86-facd-21de-c47c-246d0da8d80d@arm.com>
 <20190926074717.GA26802@iMac.local>
In-Reply-To: <20190926074717.GA26802@iMac.local>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 26 Sep 2019 09:38:34 -0700
Message-ID: <CAKwvOdk2KzXfLzKgMvmQsss_-CchE_dhWc7Sy24DUu8r+Ryg_Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_093846_908393_D1428794 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 12:47 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Thu, Sep 26, 2019 at 01:06:50AM +0100, Vincenzo Frascino wrote:
> > On 9/25/19 6:08 PM, Catalin Marinas wrote:
> > > On Wed, Sep 25, 2019 at 09:53:16AM -0700, Nick Desaulniers wrote:
> > >> On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >>> Suggestions for future improvements of the compat vDSO handling:
> > >>>
> > >>> - replace the CROSS_COMPILE_COMPAT prefix with a full COMPATCC; maybe
> > >>>   check that it indeed produces 32-bit code
> >
> > CROSS_COMPILE_COMPAT is called like this for symmetry with CROSS_COMPILE.
>
> Actually, what gets in the way is the CONFIG_CROSS_COMPILE_COMPAT_VDSO.
> We can keep CROSS_COMPILE_COMPAT together with COMPATCC initialised to
> $(CROSS_COMPILE_COMPAT)gcc. When we will be able to build the compat
> vDSO with clang, we just pass COMPATCC=clang on the make line and the
> kernel Makefile will figure out the --target option from
> CROSS_COMPILE_COMPAT (see how CLANG_FLAGS is handled).
>
> If we stick only to env variables or make cmd line (without Kconfig) for
> the compiler name, we can add a COMPATCC_IS_CLANG in the Kconfig
> directly and simply not allow the enabling the COMPAT_VDSO if we don't
> have the right compiler. This saves us warnings during build.

Yes, I think this would be a nice approach.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

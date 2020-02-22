Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F0A169255
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdVzRxjAGwmXeTObMvBZxHiptiCZG2kDzJ6tQTrQK1E=; b=FFxvqAvxzrqMCy
	XZ1aX9JvmWz0IoWTemiWunJXpV+y18CNljfaXBmnAoe9RKf2EARcFbEV4am6YS87bqjQ3Bvc9KdhZ
	SiJeqkTtYfIDJ2wddHyHX4PQvOxpXwCC7YS5msIOLNWYcqcPeHyJj3dNDy+AHvjCq8zzs7FodHZSH
	U3hv5uVcz5ft4PLAYYc5Uss9UdRZQA0ES/cveo0omPhGVURrjciqFGNE7FG8Jy2PRXVrVxk5XgYdQ
	bVuBtOsQF3xSqugN6J+40i/iu7NcEvm/2bDQZmDsr7vkBGxuHDZ063CvqG9+2k+VnUmTcrgR8GvmM
	fdaiOFrO0ZdXsBEb6ITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5eM7-0000D4-Bu; Sat, 22 Feb 2020 23:38:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5eLy-0000CW-Ax
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:38:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id n18so6048968ljo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 15:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h6NihziCTyZMAUdv/tajx8t4ufGMIb+wHMLzzNaM6Qc=;
 b=KsM6sFEt0PpXEdyf2g72FHXKriIH7ohllYlnTqE9t2lgHEQ/FgJKQBR/LbvEqGTeH0
 zS1h/7IkcSQulywMOMsTWj2DIHqg3hWW+US/H3nXZjlvZA1nNhdJ3WGdQQlnsENPmgqY
 p73FdtM589cbmZCb34mHbMWS8OZLFahbyxrn8iOSIsTnUpFUqRBO++k3Jw9ziK24sB14
 1aEJkNkdhEPN/DwB9zunSF9ErK707rj1NqaFQRD0syG6oCo4aPIVR0XaMUx2kJSBIx29
 OhwRrCD9Ex4HVVr1r/dJzSMmSwAcEyMUmo32cG5Vx50/hb/WXwU9SEgXnf6wt/Hu9Bzq
 XYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h6NihziCTyZMAUdv/tajx8t4ufGMIb+wHMLzzNaM6Qc=;
 b=hlYat6a3bj+AkVmEAR/3Lz9YghQkyFelEHcLkc/ozg6IQ8MtsLfENw03KTDCijXWPw
 CiLrF32siNvin/ByZa0kdKcHNKjuSmZp9KXQ4Y5uqeU5WkXKeZgIIMWonxMQea2TvRwT
 j0sa9okZgNGjeRZGSUK2y7Z5C/ts6zOwCbL/vXPYH/7SQvY+CC9AKU+eh3s6I9Th83YC
 pJWH+O9QmyeairwCVsamTBC59WtEx+7X3PTqKSAX6MLmiXDXoa7gMGtvzjNyIZEhJIB6
 r6dU9TQFRe9wPJmbDenxf6JNElhIJsKIdqJ4Dq360+a+6qyC0cdrtI4Kt88DAwglBggl
 s/PQ==
X-Gm-Message-State: APjAAAXylK8vK/tV59QX1unhwU9Pus1qOlISqYMO8nmbe2XSoWUMv7eu
 J+HdD9B/EfSLgIHTZvQ9r6zmJwDNEOnM26vWsU9m/A==
X-Google-Smtp-Source: APXvYqziLZ994tDnwRiLck1FaENzmhT9e4Iye+IQizxx2JZmB9oorbeE1//5MgiHKZhF8rfXYT8vkMOYdjt9JS7vGvw=
X-Received: by 2002:a2e:b6ce:: with SMTP id m14mr24505315ljo.99.1582414711800; 
 Sat, 22 Feb 2020 15:38:31 -0800 (PST)
MIME-Version: 1.0
References: <20200219094340.16597-1-ardb@kernel.org>
 <CAKv+Gu_aL_=W7qMuLwu+427=DSgj5Kmg7Qm0ujooxS9s=zDT2g@mail.gmail.com>
 <fa6aa783-0b01-9d29-03be-3ec8d352f373@arm.com>
 <CAKv+Gu8g_fb-Xq3XcyZivG5405jypHnkBy6gnWMWy4Oz8763XA@mail.gmail.com>
 <01039e92-8354-a75f-44de-7638b103be42@arm.com>
In-Reply-To: <01039e92-8354-a75f-44de-7638b103be42@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 23 Feb 2020 00:38:20 +0100
Message-ID: <CACRpkdZpM18k0S64U1UvgFbDGPYZbY-gRzchGRYsi9g2wTbQCw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_153834_406622_FFA10D08 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 5:09 PM Robin Murphy <robin.murphy@arm.com> wrote:
> On 21/02/2020 1:42 pm, Ard Biesheuvel wrote:

> > OK, so where should it be instead? Are you saying it is now required
> > to have a /soc or /smb node that contains all the device nodes?
>
> That is now my understanding, yes - if there is some property of the
> system interconnect which is not entirely transparent relative to the
> conceptual CPU-visible physical address space and needs to be described,
> then the only way to correctly encode that in DT is with an explicit
> level of 'bus' in the hierarchy to represent that interconnect.
> Otherwise these address translation properties quickly end up in
> philosophical conundrums over what the parent of the root node is.

This confirms my similar understanding. Rob sent a patch to
remove the root level dma-ranges from the ARM Integrator,
and I have since added it back below the logic module bus
after you pointed out that the dma-ranges was actually there
for that very bus.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

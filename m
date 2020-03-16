Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8841D18668E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PILfZ+XUN0eU+rfPVp81d5D7TasqqyZF9Z5XNsjbWmU=; b=kfvPvDnK68su+m
	yxZwIq7sqrLXxcuqfliflYcNfJ5FCuSqj3kjRQWWwjXr9uaBX6zhW8ZGNHDh+RWYshloeWNLCtTK2
	jry7lUPc6mfyxvYL/vj4DJbRyw92uyjzJ9RbKOXn2NUDHxeFS8+D/X7/OgVsNqmLMmH7wWWTkKR3V
	A+QmYsumTZl0uAXKzlXo0jl1JA4snIAdxLYV2Ot3tss+BRn/aP0lrVOUgYZXwVvF4QqoW4Rm3K8eQ
	E7KnvJPpH3OjqCdQ3NUH2i5bnC9zISsNN8UVx22ROyZkhlqKKrvoBxzJSkWNc0HS3JeQhIY7HcLRI
	arAD9WYZRRvbbJ+LkmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlBE-00006z-SC; Mon, 16 Mar 2020 08:33:00 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlB7-00006d-W5
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:32:55 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MacjC-1jkL2f2xdy-00cAsa for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:32:51 +0100
Received: by mail-qk1-f179.google.com with SMTP id f28so24641670qkk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:32:51 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1uF329yTewetOQnBGhrsR7eh6cI727qyk0u0rAsLNMUnurUmeY
 TmH9jlj7vyoZwUBTqKfNRihJEw8xtSykjD2jTsM=
X-Google-Smtp-Source: ADFU+vt5kUDFBAPxQ/eoOtbyfq5T4WxUU4coVWhvqGjxWRRI+qcvmiTDhvmnRyeGJebLCVabbOJ5WyjHLakbilschCU=
X-Received: by 2002:a37:6285:: with SMTP id
 w127mr24726126qkb.138.1584347570587; 
 Mon, 16 Mar 2020 01:32:50 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
In-Reply-To: <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:32:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
Message-ID: <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
To: Marc Zyngier <maz@kernel.org>
X-Provags-ID: V03:K1:tyTh3c5/6X1ZSgqvgGuAPdCVY83HeBbyRreoc1sArYbcwNRQNTk
 izUEYzUFCyHJRuf9dlZLpymWbLkZ39hPv6kB7pyDyfjwCmoTtPdYYYLAs7JVjcUoggTn6s9
 wAnU+xdTe9gkL1UnzITYX1hS/qaI5YeNZGZx6zh2M8G9hFVR9xI7QTbWjeC8a3lmrIySaZ2
 tQt40I7Xka0SvC8QKdYkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9galbbDjxCQ=:1g5FdgxBQ0WhVy5krqd+gu
 X6bazRXxjOI9DrkeisC2gsJP/2RXS6JWmwHSnMqZZACMWmTSkCHN/rkD/nCk9XwU9dQw4Boct
 P8+QqX5xswYk0Twk4+m9/ewT3gcIAc1dxtQ0BIpl3dbzlSR4K6EJVikIyQ4yaosz3x6vzwRbH
 5V26R2Gq8mkovgRLkja5beefH7Xfad0kG8p7OYFKHL0q7SPH/Sg653EKcg/SunDy1159BKt75
 /d/lqd3rOthtDNeE+uDcD+VJRudfcBldNUeFW5NBBUXfeRG1LSFWtD37EthTaAoDNccMrubOr
 je1jTOj0A3J+K6/RAPcBY7XzumzQAfqGmeJizWb3v/zMnJoTSkEJPfilpWudbEwvENsAAHF0s
 5dHOoIDrOjfznQaXiIX16+z/iZOBT4HRdBJi93xeuh9GZlOHosnkSSXh6GnGmj8YCySQunX7r
 +U6cVuehZFX5D9TRaiLvG5jssx8IoXKju9+nMVwHVSTuskZbDkRc1x9b2qP6fP3xapilgizVh
 rB/UqBsfzy7sNsPidW6znHyWX2eB9psdDlHO61TYVKKzWnA+RGuEMl6V/zf8DfNAcxdXxoTsW
 Mu5EnCb4lhH6LPOoyKBTUyG/gaL4yza+iu7UxjLp3NZ1Yf/4Vs5CnkXj7IDhaiuC9xn3LMtdc
 Ujd6MGs2BC/QNhwHuJm6YluIvF/d0s3G/8LnmTwYHCDi/Aijvv5T56H/dnu902Gm6i+JFIzFV
 iOYOHT+gTeFPQk4U/qNUisTZbAli2z1kNKQFgK7biGoJsBxZ/c0ojMu9jRObUytmJNoPEBPpM
 iQHwP0/B6AWElU6/84/rOzA4rTB4BRby6f71U1kgqigj3qApGs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_013254_323561_57575B89 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 sunilmut@microsoft.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh <gregkh@linuxfoundation.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 9:30 AM Marc Zyngier <maz@kernel.org> wrote:
> On 2020-03-16 08:22, Arnd Bergmann wrote:
> > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com>
> > wrote:
> >>  /*
> >> + * Functions for allocating and freeing memory with size and
> >> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> >> + * the guest page size may not be the same as the Hyper-V page
> >> + * size. We depend upon kmalloc() aligning power-of-two size
> >> + * allocations to the allocation size boundary, so that the
> >> + * allocated memory appears to Hyper-V as a page of the size
> >> + * it expects.
> >> + *
> >> + * These functions are used by arm64 specific code as well as
> >> + * arch independent Hyper-V drivers.
> >> + */
> >> +
> >> +void *hv_alloc_hyperv_page(void)
> >> +{
> >> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> >> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> >> +}
> >> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> >
> > I don't think there is any guarantee that kmalloc() returns
> > page-aligned
> > allocations in general.
>
> I believe that guarantee came with 59bb47985c1db ("mm, sl[aou]b:
> guarantee
> natural alignment for kmalloc(power-of-two)").
>
> > How about using get_free_pages() to implement this?
>
> This would certainly work, at the expense of a lot of wasted memory when
> PAGE_SIZE isn't 4k.

I'm sure this is the least of your problems when the guest runs with
a large base page size, you've already wasted most of your memory
otherwise then.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

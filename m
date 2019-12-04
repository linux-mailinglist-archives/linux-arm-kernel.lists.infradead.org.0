Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFDE113155
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04rHed7XRteA4RC4xX4KCE7U2ddhl0+UflcUCKL/po0=; b=MAfBKhHwd7O/F6
	uxTwRMqttewYXrx4vEsA4UZBvMC7NOWEXJ5USi+vX0gZW2QYhxSsZgLjYaxB2zhc/AaKi9ARGyGuA
	HrCLCLTiYIVYcJkpg1dGU3D+eN//h0VEhL0O8ocKhjAHMRWjY0lfkFq7eKTEpbFRqWYJAV27LY8IL
	hUSwWRfptjyUUc/GxpyBNP8bZ9O46IhR2qnFyt6D68kBNU249ap3/AYO+MipNhqHWwad1BLPMVcfZ
	/+inQOYP3Bz66wR0NaLw9Sc286mBL3wCT5Dbf+lFNjm1klkGhGTVUiAjDnWS1piq3kZBKzdmtizAX
	2DcK7gE6XT4L7F/p+aug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYv9-0002Nu-Nk; Wed, 04 Dec 2019 17:58:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYv2-0002NH-Hs
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:58:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id c93so146001edf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 09:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e9gkQnU+5q50cQeHx8NRu5HJQyIM32Z6cVBwYXSVjIU=;
 b=TfH3rUb9CyqcTteFkO3C0xlnbKPaPL+cKMDbTylgoIZRtg9/X9I+YsgFYMbiZXeyWH
 6PlZPH1K/5P+XHiHenDCQt4FvrDjS/BrRzDZryGe9Twd6Hm2D/PuFfB0RuI7ndN7FRkU
 53yRO+n+zxjDbzNLl19rt+Ux9N0QapQxf/PcuW0FZFx9aDV2esnmpEXuzPCGcvshVi5c
 mRfJ/YtyltCIrh/P45bL1k1m4RChqhZSyzX/Jcbu3guo/ePbUMweg/D/uJvHeIaqg4Gm
 5uP20oOpH/SKLR8di/NnPJ5v5R0wamwgPJl5jM6Ru4CREPcSt4DIS2z6vz82RA/SVf34
 r3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e9gkQnU+5q50cQeHx8NRu5HJQyIM32Z6cVBwYXSVjIU=;
 b=caZelLNfIcct+Q1p8+jpv78zW4oiRh49ae1KD/LrjEt29f9BOLfHv49Qn77lt5h/ek
 6jdLE0P02eHF2IZgCp9Jx1QS/uwxgIFo5v4b2X170Jb+MYp0xaDHBdK8YJDg5g8BJxib
 GY/LL9+F+HTNtFq6ds44h7F3xgdlbBxuvC7IZDo1lfCYyBNKMo9pVaaL6FcTqtG38Ess
 Z8n/A8H9WqQcguEVQyqzyZCbCQh1D+n1clnpN75iZPVcBHxMxFAqAdHm3k/fJmI1AHAz
 ootqNqtWjgsUmRrHwazqOO9j0+FYCsWvwpM915s1Mw7z7EF4WxHMgWb9x71HoaFeC8oe
 97Mw==
X-Gm-Message-State: APjAAAWng9Onpt7CLMrEYuEYD+/m/rwTPq0wc/w2GmNMGM7uM+XIkjOR
 n0EKe/WWvUBOhlBnBZ/J373iUfivbvAeaj/n75Yxp9mf
X-Google-Smtp-Source: APXvYqyAOfG2c7wdnsuR/CLNurVK9MGZsX+GmC1nBIDZq14OwnspMmSoQUW6yoePy6mVNE4fFTYRVftmoUuum47tYGo=
X-Received: by 2002:aa7:d445:: with SMTP id q5mr5540834edr.16.1575482311052;
 Wed, 04 Dec 2019 09:58:31 -0800 (PST)
MIME-Version: 1.0
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
 <20191127184453.229321-2-pasha.tatashin@soleen.com>
 <957930d0-8317-9086-c7a1-8de857f358c2@xen.org>
In-Reply-To: <957930d0-8317-9086-c7a1-8de857f358c2@xen.org>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 4 Dec 2019 12:58:20 -0500
Message-ID: <CA+CK2bBWVLZkFo5e8gQUuiqz_b2oCOtD7-9GkCwf9BsFn9wwaA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
To: Julien Grall <julien@xen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_095832_590980_98D106D7 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:05 AM Julien Grall <julien@xen.org> wrote:
>
> Hi,
>
> On 27/11/2019 18:44, Pavel Tatashin wrote:
> > diff --git a/arch/arm64/include/asm/xen/hypercall.h b/arch/arm64/include/asm/xen/hypercall.h
> > index 3522cbaed316..1a74fb28607f 100644
> > --- a/arch/arm64/include/asm/xen/hypercall.h
> > +++ b/arch/arm64/include/asm/xen/hypercall.h
> > @@ -1 +1,29 @@
> > +#ifndef _ASM_ARM64_XEN_HYPERCALL_H
> > +#define _ASM_ARM64_XEN_HYPERCALL_H
> >   #include <xen/arm/hypercall.h>
> > +#include <linux/uaccess.h>
> > +
> > +static inline long privcmd_call(unsigned int call, unsigned long a1,
> > +                             unsigned long a2, unsigned long a3,
> > +                             unsigned long a4, unsigned long a5)
>
> I realize that privcmd_call is the only hypercall using Software PAN at
> the moment. However, dm_op needs the same as hypercall will be issued
> from userspace as well.

The clean-up I am working on now is specific to moving current PAN
useage to C wraps. Once dm_op requires to use PAN it will need to be
used the C variants, because ASM versions are going to be removed by
this series.

>
> So I was wondering whether we should create a generic function (e.g.
> do_xen_hypercall() or do_xen_user_hypercall()) to cover the two hypercalls?
>
> > diff --git a/include/xen/arm/hypercall.h b/include/xen/arm/hypercall.h
> > index b40485e54d80..624c8ad7e42a 100644
> > --- a/include/xen/arm/hypercall.h
> > +++ b/include/xen/arm/hypercall.h
> > @@ -30,8 +30,8 @@
> >    * IN THE SOFTWARE.
> >    */
> >
> > -#ifndef _ASM_ARM_XEN_HYPERCALL_H
> > -#define _ASM_ARM_XEN_HYPERCALL_H
> > +#ifndef _ARM_XEN_HYPERCALL_H
> > +#define _ARM_XEN_HYPERCALL_H
>
> This change feels a bit out of context. Could you split it in a separate
> patch?

Makes sense, I am splitting this into a separate patch.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

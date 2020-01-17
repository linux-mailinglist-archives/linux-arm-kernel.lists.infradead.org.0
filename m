Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C1814103F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 18:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuQNszzEb9ur9Y0ftyPO3L1lkC3ypmiMyI8JoChkk+s=; b=p9Ah9Jbf2rQOla
	J6k6MDrYdaoihZrwrNmK0ZQEAuXEFrlWWvbHiozC+Su4EMUDFkZi2wkHVoW5FECildReTpWUeOac4
	WTW+YW3q8+pZT2is4E50xv3XhrzzRtZyV6zwRcpuoaNACRDju/yGLRw/1u56+/VJo1JPT2t+1PHaQ
	lWa3dvBk2GtJhCRx3jXiV4mGoGYOU8Fxt7ISF8zGfnmIHGkXIDPUDZrMu9rhpP/D922LDrizoA0LB
	nOEoONktLMHJe3HsuYKHhI2tWCrkmZIzUMTil3Mls+hOcKZEbeb4U0DQ1uAhbIuxITVA2U2JG9vr0
	ey2vHxk0k9Pcd/n5E0sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVna-0002Me-Ak; Fri, 17 Jan 2020 17:52:46 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVnP-0002M0-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 17:52:40 +0000
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 00HHq8cS003700
 for <linux-arm-kernel@lists.infradead.org>; Sat, 18 Jan 2020 02:52:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 00HHq8cS003700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579283529;
 bh=hivT4wSA3iwY78RH28O8O0J0M5irsVyD9yX51K5G7Gk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GqNZ1Z3sOdusfHpGUTxC0nYG0UKTf31y+ud/sKICyjO7BxjxjLNiZbieXKAeRfSJ3
 rGk6zrVzdhOrkbJfGgYpwB+H1ZyMaqMcdHwJen98AUYpKsmpSkB9bbCQjWMkODtzzP
 nvoULCffNVQ38Hw25m6tHq4WfMvpnKIiHyHGG/Ocbt+W96KetQE0FOEfhH8ufAeWH6
 H1nxlGo3SbrdzPT3h5Z9d6aE9sH4xvv+iubBR6+92cSPtmPO1eLo2FaRI45aCsuyNE
 jF2NclASR79LUUXetZJuc/1QNIodc7IQvRYSNrzC+ZCGTHGgVDxx0Zo7czrAgOBsDm
 Y/Lk/Rp6W5IGw==
X-Nifty-SrcIP: [209.85.217.54]
Received: by mail-vs1-f54.google.com with SMTP id p6so15331210vsj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 09:52:08 -0800 (PST)
X-Gm-Message-State: APjAAAXhih43T6TgnLStsTn+ZRi/G0NJilKFHCr/Cizzw+cnKw3sFrlK
 9qSMWNrJJRMLD7uTB1JFD8RAEao8NRt+z9mBlS4=
X-Google-Smtp-Source: APXvYqyKvN3mcvVZNtBBJUUlIRvc8qNb1u6qte38CldDocLzGjTiUwInBSRZoKg9w+f4fHovaEvv3/20g2rDKzsaMuU=
X-Received: by 2002:a05:6102:48b:: with SMTP id
 n11mr5781677vsa.181.1579283527448; 
 Fri, 17 Jan 2020 09:52:07 -0800 (PST)
MIME-Version: 1.0
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-15-git-send-email-amit.kachhap@arm.com>
 <20200117113351.GF26090@arrakis.emea.arm.com>
In-Reply-To: <20200117113351.GF26090@arrakis.emea.arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 18 Jan 2020 02:51:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASyrra9Xxvk+aG5OspbxmenDvohBVfusokD0RHy4CvqFg@mail.gmail.com>
Message-ID: <CAK7LNASyrra9Xxvk+aG5OspbxmenDvohBVfusokD0RHy4CvqFg@mail.gmail.com>
Subject: Re: [PATCH v3 14/16] kconfig: Add support for 'as-option'
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_095236_124570_3BC57691 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 8:33 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Dec 16, 2019 at 02:17:16PM +0530, Amit Daniel Kachhap wrote:
> > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > index d4adfbe..cc465dd 100644
> > --- a/scripts/Kconfig.include
> > +++ b/scripts/Kconfig.include
> > @@ -31,6 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /de
> >  # Return y if the linker supports <flag>, n otherwise
> >  ld-option = $(success,$(LD) -v $(1))
> >
> > +# $(as-option,<flag>)
> > +# Return y if the assembler supports <flag>, n otherwise
> > +as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -E -x assembler /dev/null -o /dev/null)
>
> I had different experiments with this for MTE and noticed that clang
> does not honour the -Wa, option (which you use in a subsequent patch).
> So not sure how useful as-option is.


I think this is because it uses '-E' option.

To invoke the assembler, -c is needed.


I replaced -E with -c, and tested it.
It seems working for both gcc and clang.



I noticed a similar case for cc-option:
https://patchwork.kernel.org/patch/11339567/


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

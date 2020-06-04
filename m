Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACE51EE699
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiZMu/jgVj/W8jjLCvEDlZEFh3O44BCFHPxTnZTfU9c=; b=G/XBxzgImil5eb
	Yl6peMZUFB2+bYOafeI9tGjuWpCP5KihzPocwQl1/Hhdl52Ky6tuwFFvaZ6QKfKeg+1s+J8PjMtTI
	C5friyYUaJVhjx7Hhawy9GmnD4PZIav3fjuBQ9hpCh+mLDUQzxyLHcF75CoFeDSjPaQ8u0r02HF17
	U94G/5ei+Pbu4heIeXm0f7BASUV/T2WMU2KgPmHm6TKbuNdKvWn1vwvEWCqdgyNbwXkddIVkfLplW
	22pq4Vq5iR7EkMv+55QngRqQgpAsgS6aX5RgFUK/M+sqIvnkeXexf2COrSb0rRjbRs6ZDxRZGlci/
	yYrjAcYqh5wNWtVohR2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqos-0007Z6-3i; Thu, 04 Jun 2020 14:26:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqoi-0007Yb-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:26:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id z18so7490978lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 07:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QBoURK9IvkbwBs1kPGIuS8onwD7joVufvI7DnXYuvi0=;
 b=eCFjxOTAU45BkEXkm9dz6n9yVUTYKjF0lfqsZeaFC/6ify5YGNdJzi4s/42EJQZhBX
 1nyzwSJOUmHwTC4erzNqLYt8oP3Z9mcusdfhj7KwKo7ODOGeIntpb/jlb6NeGSOKC7zs
 2vxUEqxohHamBIFMr3SHgxK2PndlbotB5rKYm+Nr69EgxtRXHQOW/J5C2HYX4E7orDmD
 CLpVwcKlAHqOChEXa+jjLzSQApNsSM0P2DZgA16woVD/aZcsvKBrVEkn2y6s2mids0Y8
 bvhEzQ6JPoIN2jCASEnd2HlER4AKNlCgfiSozQwnM4G8f8hoZpJVCgO+rFQneglybL6p
 l2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QBoURK9IvkbwBs1kPGIuS8onwD7joVufvI7DnXYuvi0=;
 b=BaucTY81Ow3dVnRJMEEn3eEsl/fFpwI/rGDUkwdYdPubf9Pxr8jS1AdnzIDXW+bL/b
 1vlKwLlLa8IqVvrfsRS0xDX31WyS4Erx6qXKpciImYed/pOShDYLvQfGaCDgTwSBRDgS
 rLEQCU0S5EzBBGOeGhadgDEEncQNojWYeMyHXCBRao/z8qgeBMtcv3a0zeFjlcxXFoKy
 bQogPP+xV5QQST4gKC60X/fIC7e7sr8jj5szq1kHNbyd4cxq8VugpRdBv0tdZdeKIOI1
 RSkrkkciLpN0a4qdHyR6IwHg/ScidXj5SkPqp7K8kVuH0XjueZ4Y0kgVyF7yIM/X5W5w
 9gBg==
X-Gm-Message-State: AOAM531BDa9RsBgUGhhwsyvWf8d4WguXAYfpu6bjqrhX8NZr4RTt1BQE
 InDuZ11kX2HbhHkmRsbPYMcnT7sfxfULSJC9kryyng==
X-Google-Smtp-Source: ABdhPJwh/YOClis/hIwcKj8vHzbw8wx9bOB6tTVkvL98ptRj6m7SsH1K4mSctfjnB9d0qvovuLDzYkm1/ruBzlolZfc=
X-Received: by 2002:a2e:9455:: with SMTP id o21mr2270197ljh.415.1591280758179; 
 Thu, 04 Jun 2020 07:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
 <20200604135806.GA3170@willie-the-truck>
 <CAG48ez0H_+EBd1wekk2oddSzLsgzincyZb_dB+s5atudB23YyA@mail.gmail.com>
 <ab7b6e17-69c5-dce9-a0ae-d12964319433@linux.com>
In-Reply-To: <ab7b6e17-69c5-dce9-a0ae-d12964319433@linux.com>
From: Jann Horn <jannh@google.com>
Date: Thu, 4 Jun 2020 16:25:31 +0200
Message-ID: <CAG48ez3LZ1xzAYHm23JOXTFBZqaHkVVZXwSe+VmmCBTwxKOdUQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
To: Alexander Popov <alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_072600_625928_65B35BD1 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Will Deacon <will@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>, Emese Revfy <re.emese@gmail.com>,
 PaX Team <pageexec@freemail.hu>, Iurii Zaikin <yzaikin@google.com>,
 Mathias Krause <minipli@googlemail.com>, Kees Cook <keescook@chromium.org>,
 linux-kbuild@vger.kernel.org, Alexander Monakov <amonakov@ispras.ru>,
 Michal Marek <michal.lkml@markovi.net>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, Laura Abbott <labbott@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>,
 kernel list <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 4:21 PM Alexander Popov <alex.popov@linux.com> wrote:
> On 04.06.2020 17:14, Jann Horn wrote:
> > Maybe at some point we should replace exclusions based on
> > GCC_PLUGINS_CFLAGS and KASAN_SANITIZE and UBSAN_SANITIZE and
> > OBJECT_FILES_NON_STANDARD and so on with something more generic...
> > something that says "this file will not be built into the normal
> > kernel, it contains code that runs in realmode / userspace / some
> > similarly weird context, and none of our instrumentation
> > infrastructure is available there"...
>
> Good idea. I would also add 'notrace' to that list.

Hm? notrace code should definitely still be subject to sanitizer
instrumentation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

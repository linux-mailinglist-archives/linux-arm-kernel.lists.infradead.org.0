Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA65133614
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOBlRA2rRASufAYHm5eXBe979WkmucoDr7YucVHfb8M=; b=gtRG1s7UYsrG9W
	9yeqDSiE0ehp2dAMMWsfd4HglzuPiigHIq3pFFLfLyALJndFazGLBJYCVJmV8wHfmm31zPkWQAdwd
	AaCl3/urtLk8fNvhX5WqeVAL01WcZROPepfvb75GAtSVaiAg+dqYx0YRWopYgXhsSxV4QmST07ts7
	5ETNavfqmW9pSgjzF6oaYTWP2GWEE4+LVItq1I20FEvHt3OVQObCTZLQkhz7FMGJGCpmEo/TkG5qN
	vg+XyN8ie55KjyoQES3sztJI0Md0H3VzHoOrU9dTUsvYbyv+6fR+LAFrB/MxFwNqMmMLc+VBWkja6
	/HN+E7L0tw2hPgLaeagA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqRC-0000Sd-EK; Mon, 03 Jun 2019 17:07:58 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqR6-0000SK-9w
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:07:53 +0000
Received: by mail-qt1-f196.google.com with SMTP id z24so3135310qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Aj0cpcxQ2O6hFlX37bf2kO1xsusmBejE3Ar/NHpEoV4=;
 b=pzXFbBYgkAprv81o4nkUnCmfe78OQbKexUnWswGn8zHRn7Q5slEz820SrkQ9I6pGJj
 Q0RKb4Qkuob22bcDYkyx5IXFzLvSeNmwhjplo4l3z5mQ2TsRDGmiVf87N7KnL9PT+loT
 5hYS2Zhl89jLgEloEXzM3jm1Azqw5rv723cXq8gWUV9+8KQoRDc+NbUN2GoKpT+oNl8Q
 QqTu3Tbb3p7eqtVs550HcsUJG6M6orub7x/W9h0MlI++4Q1gl9akzv2S+C/olK65JEdf
 m/ugt6qSRm3sBiqkNuuxuTXtKGmN+t2Z2rFXgcLnefdUSbuxhueHAH1lYXLoreJaz/Tn
 3+pA==
X-Gm-Message-State: APjAAAX7tjJVFSkCUAmeUtBiMzTU5Bl3u+C+sN/DIdt8W9ntXncCxvpL
 9Pl1as8peUMPOXh2S45ut3s0Ah1Ag3UcKSagku0=
X-Google-Smtp-Source: APXvYqwbJWvGlfk068cQnPCsOnTMnS+38b2uW4yx7NPKeQr+nVfqv4x5tnNHu/1skd7GPUOm+SPgjUJEz0LsR7r4j08=
X-Received: by 2002:ac8:2433:: with SMTP id c48mr23290784qtc.18.1559581671050; 
 Mon, 03 Jun 2019 10:07:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-18-vincenzo.frascino@arm.com>
 <CAK8P3a29QXCP8nw7po06GeYEGvJ_y2GxjAvswFk3=Y6YCjbdDg@mail.gmail.com>
 <200c39f5-3bff-cacb-57c9-e11c57df70f5@android.com>
In-Reply-To: <200c39f5-3bff-cacb-57c9-e11c57df70f5@android.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 Jun 2019 19:07:34 +0200
Message-ID: <CAK8P3a24SFh1eeYpkU1xWL4_2j5_7ieejwuBZW1m3G6biKSK4g@mail.gmail.com>
Subject: Re: [PATCH v6 17/19] mips: Add support for generic vDSO
To: Mark Salyzyn <salyzyn@android.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100752_340922_A266D2D3 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 4:54 PM Mark Salyzyn <salyzyn@android.com> wrote:
> On 05/31/2019 01:34 AM, Arnd Bergmann wrote:
> > On Thu, May 30, 2019 at 4:16 PM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> >
> >> --- a/arch/mips/vdso/vdso.lds.S
> >> +++ b/arch/mips/vdso/vdso.lds.S
> >> @@ -99,6 +99,10 @@ VERSION
> >>          global:
> >>                  __vdso_clock_gettime;
> >>                  __vdso_gettimeofday;
> >> +               __vdso_clock_getres;
> >> +#if _MIPS_SIM != _MIPS_SIM_ABI64
> >> +               __vdso_clock_gettime64;
> >> +#endif
> >>   #endif
> >>          local: *;
> >>          };
> > Same comment as for the corresponding arm change: I'd leave the ABI
> > changes to a separate patch, and probably not add __vdso_clock_getres
> > at all.
>
> Removing this would break ABI (would it really, it just replaces the
> syscall ... so it is more of a user space expectation)? already present
> in arm64 before this series.

What I meant is that we should only keep clock_getres() in the vdso
for architectures that already have it, to keep the ABI unchanged,
but not add it to new ones.

At the moment, arm64, nds32, ppc, riscv and s390 have clock_getres,
while arm, mips, sparc, and x86 don't.

Also: on 32-bit architectures with 64-bit time_t, the series only adds
clock_gettime()., not clock_getres(), so user space should stop
assuming it's there.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

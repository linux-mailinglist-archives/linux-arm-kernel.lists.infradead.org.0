Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A81CF758
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISRwqFEafembnQhhZl7cJYVMWPnoU848OiGrpnRfNhw=; b=jX6XB8vp/04i7u
	rVaE5yfmlbDQuP+XqisQ1QaXhCkLUy0WfkWsoYOqoY1WJaILaIQWRbH3giqX9RD1E3Sg5QQTBgdGB
	hGJUOvGjB98jQHDfLAFEHMhOTd5Oh2azNbLyU4FEKX/7RUJEM8xBDDXpVTP05Oe2Dw5bZwsisGBaY
	e8MitI27NbXNUWXdYyWIqhWk4OpH8IH8PbgJpNPVaJRLRGY5r9qkkz5OUtQAn0wtfZoJCdbtnZu7B
	9Tdlol4Z0rShmZOXTkby8sFAH8+fs9rZZ0fygqetlbicu5q85Wd/SF8YNmC/J8Wm5fhiByijc1tJG
	hs6gNqMez7MUyBRlOepA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYW3N-00078q-Gr; Tue, 12 May 2020 14:38:41 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYW3G-00078C-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:38:36 +0000
Received: by mail-ot1-f68.google.com with SMTP id 72so10687063otu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:38:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEOhIcgguE7QiBF5GVKHbgpK+UGFJ5iOOuHAZ/w1324=;
 b=N+x/MM0+PWI9x1pZj73zr/x9rl7iuGslo+NPjTBlXSfDUGWitudvP0OAwpg0uyX5mE
 EtHDJKIJuaSuHRrJZ/0fuEQOv1pXLJ5/KGDy29bQBuBaMHPgXdM/qFkC+er2xtOIXPrg
 0GEVBsVTSlKoqFgvrN8FwWp0TzF6jVxIRyERrSaFXVoCcotCJeVa6v/Z7GinbwAHHMdt
 pNpSVLjph+g7DGQTt0EYRpUwjfbVzyby+V/K/hMGZw34wTFTzyZtNwyT+kRlVxtoTnfg
 qWso04YNb/d2OkVSBTbVjP6WK8ynt5slUr81hV8vtnsevbRl3wpME+NPDxlnw+rRo0zT
 oPqQ==
X-Gm-Message-State: AGi0PuYFl+MK68xqY1AVX799ovXmjP50OzD5b4Gv0J1vzNpJ7ET78tg3
 DBNmlkaHW3yVjjKbvugbsv9d3rBeY4IOUayUnX4=
X-Google-Smtp-Source: APiQypJzwnULcupZhJ1hAK9PIxOmvUr3iNrQX67MIeBrouwfs6dTnTLKqRJrFgv8BW1Kx/8XD3O1Fy0luMGtioKgTOo=
X-Received: by 2002:a9d:564:: with SMTP id 91mr17018452otw.250.1589294310970; 
 Tue, 12 May 2020 07:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200512124238.28792-1-geert+renesas@glider.be>
 <20200512141200.GD3021@willie-the-truck>
In-Reply-To: <20200512141200.GD3021@willie-the-truck>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 May 2020 16:38:19 +0200
Message-ID: <CAMuHMdXM5GGXvxEemmLtcTU14nKgKVmO_yON+7+pLnUv2oExtQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: cpufeature: Add "or" to mitigations for multiple
 errata
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_073834_608533_9396396C 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Tue, May 12, 2020 at 4:12 PM Will Deacon <will@kernel.org> wrote:
> On Tue, May 12, 2020 at 02:42:38PM +0200, Geert Uytterhoeven wrote:
> > Several actions are not mitigations for a single erratum, but for
> > multiple errata.  However, printing a line like
> >
> >     CPU features: detected: ARM errata 1165522, 1319367, 1530923
> >
> > may give the false impression that all three listed errata have been
> > detected.  This can confuse the user, who may think his Cortex-A57 is
> > suddenly affected by Cortex-A76 and Cortex-A55 errata.
> >
> > Add "or" to all descriptions for mitigations for multiple errata, to
> > make it clear that only one or more of the errata printed are
> > applicable, and not necessarily all of them.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  arch/arm64/kernel/cpu_errata.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
>
> This seems to conflict with the other patch you sent to reorder the entries.

My reordering applied to the Kconfig file.
This patch applies fine to arm64/for-next/core.

> Please can you send another version, based on the arm64 for-next/kconfig
> branch?

Then it will conflict with commit 02ab1f5018c3ad0b ("arm64: Unify
WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}") from for-next/kvm/errata?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

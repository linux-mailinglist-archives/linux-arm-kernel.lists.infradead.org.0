Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A6E1D100
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 23:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w557P+rwa6rJEpvYzAZp+grLaawBkj9MjsGtQzhG/R0=; b=PQr/QkUCSdhCgd
	F6CbIH12kmK7v45w07UluS+pCGsv/9z8UtDmUDwOeBIqNBx1N3cdOPNPonyCkFbKDVf9pmm6f+fqX
	CQQYaE2KBWoaRwwB1hhYE5pQhES0i7QlVJImOuXC29dqAdPazU/dm0lY8bO888/OM0lbmrmUT5+Ft
	M91orW7DOnYFL65d30eSutbttFseBg4A2WAYuRWuZna2iF16ltntwLyqeLeXPDZe3UZEE33I4ykPw
	aTX1MSWW40Xi6aX92+mVIiriB64JnlqapwjrFICA8yt9GVKUtE1LMVxL4uESqrJbzJSQBFMoMBXZl
	uT26F03xMxco9/erknFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQecT-0005IO-TY; Tue, 14 May 2019 21:05:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQecM-0005I5-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 21:05:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id z16so162996pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 14:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :subject:cc:to:message-id:user-agent:date;
 bh=AWxN5ptvu2yKLcW7Bm5LBMGr1ZVlYaAwhpzhB0nfW30=;
 b=HNMe7lJXqBT7y/2cp+foZU0p50cuTfYKYZaABdqFDmkYX0VtYXw/Kvo3ZvmvCEzShG
 WSo8VBK5+qTNJbQ9jH9/9p27q8As73WWcxqiY7ehdNv6hnmu4NF7FABbOlZFSkoE1wV6
 ToM2vsichYz943+Om1qhsn7V2bTiJylmDMwOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:subject:cc:to:message-id:user-agent
 :date;
 bh=AWxN5ptvu2yKLcW7Bm5LBMGr1ZVlYaAwhpzhB0nfW30=;
 b=RDF6iSPAeyyNdWm6nIrIu43vcCqvPvKL4F9MyVD1nSHTT96H6g7PNqYa9oXg5vmwx/
 s430RkSSKQxRd14QcRKfgLtlCmPbDDmUKHJ64Hx0oXz9f24vY8WVP8JzCyz7l/TDlpFW
 aWSRkKzqV8oSRDDybcDGEuzGTzog0fejwnIJbr7XYg7HInLJ5CAHSDL7nf3/zJALiNdf
 X3htdzC+Vt06gkmrnoC6meS17FHiM26EUCibGx/bCMi6Yq67u2fH5y/w6qYo/2ngpXDq
 5TR0IaKSDq4tWyj5irCxp2ejaOduKhFBsgCcPhp5OnrkbqcpjUa/nFOZLbwwfUYl7Gaw
 Sezg==
X-Gm-Message-State: APjAAAV8RNlTEy42rzgLUsusxObQtL6tkzRfz/nyF2/Gj6IcPTgMtFor
 mTIe72A3NS2rKqHmFip9fWm7cxgGfYg6Pw==
X-Google-Smtp-Source: APXvYqz18bKfEM+qcHPBKQrWe+JFncgiIpoNu7rrAuyxF/9xscQmII8ueAu5RYyZ1oE1cXXVHko4AQ==
X-Received: by 2002:aa7:8186:: with SMTP id g6mr43384614pfi.126.1557867944834; 
 Tue, 14 May 2019 14:05:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id n35sm28281pgl.44.2019.05.14.14.05.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 14:05:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To: Hsin-Yi Wang <hsinyi@chromium.org>, Mike Rapoport <rppt@linux.ibm.com>
Message-ID: <155786794318.14659.2925897827978978040@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 14 May 2019 14:05:43 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_140546_272389_943EC7FF 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Hsin-Yi Wang (2019-05-13 04:14:32)
> On Mon, May 13, 2019 at 4:59 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> 
> >
> > This makes the fdt mapped without the call to meblock_reserve(fdt) which
> > makes the fdt memory available for memblock allocations.
> >
> > Chances that is will be actually allocated are small, but you know, things
> > happen.
> >
> > IMHO, instead of calling directly __fixmap_remap_fdt() it would be better
> > to add pgprot parameter to fixmap_remap_fdt(). Then here and in kaslr.c it
> > can be called with PAGE_KERNEL and below with PAGE_KERNEL_RO.
> >
> > There is no problem to call memblock_reserve() for the same area twice,
> > it's essentially a NOP.
> >
> Thanks for the suggestion. Will update fixmap_remap_fdt() in next patch.
> 
> However, I tested on some arm64 platform, if we also call
> memblock_reserve() in kaslr.c, would cause warning[1] when
> memblock_reserve() is called again in setup_machine_fdt(). The warning
> comes from https://elixir.bootlin.com/linux/latest/source/mm/memblock.c#L601
> ```
> if (type->regions[0].size == 0) {
>   WARN_ON(type->cnt != 1 || type->total_size);
>   ...
> ```
> 
> Call memblock_reserve() multiple times after setup_machine_fdt()
> doesn't have such warning though.
> 
> I didn't trace the real reason causing this. But in this case, maybe
> don't call memblock_reserve() in kaslr?
> 

Why not just have fixmap_remap_fdt() that maps it as RW and reserves
memblock once, and then call __fixmap_remap_fdt() with RO after
early_init_dt_scan() or unflatten_device_tree() is called? Why the
desire to call memblock_reserve() twice or even three times?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

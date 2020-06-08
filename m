Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185C01F173B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1DcPTOUtI9Ko2OhG+83ZrgFvGX5DqlBvAHH7mGy9bU=; b=gFsiSkiOKMp1rf
	90xQfQZNl5Z1slJpWpgN+62RXBShu4t+m6M7Poj2f7rQz5HQJp1js8mQ2lSl44z2aa8EvGgVeKlLj
	8Aej11bUYYL/YnPV9EMIgAHrCC2n2HeJFthc6wAoKwohIGtcs5loVtIMtD4bKmMKoMO9qqAAP8t1H
	7jK5aY0LGlT6dn+lzYZr8m3fSK3zdt1W4P6Ytb+macihwt0Q9T6WNj08ouUUwFbaWFn+QS4gK7hyA
	2L0if7irQREIPVDwoxu0gBkSLnhj7c/XSuR7ipJWY1sGPDGGFhTTgXOGbyUwggvRHNDqRT9z7yJZi
	yiks5qaZZQkOoi3Uc/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFee-0006EK-Hl; Mon, 08 Jun 2020 11:09:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFeM-000663-GI
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:09:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id 64so1536688pfv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 04:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=182l15KqndSA3GLGbIwigWBz5qaMbKVubBPH6bU+XdA=;
 b=MA3pd6T+stPKqP6XIFF5RUOsPh1OVnY6tmlTlRtbD2Y2fTRerrN60aUrzf7wkDjdHw
 OXaOQEkAzu+AR4bGLEOh0hGO0BN567wfs+0mWAcKNFT1F/9hQpngMTvDFLFvcprFqEOl
 Z7W3DNh0zdCLk1rlvl0509CDLvqyAoD3P2dWHcK9ADcdZAeyVpGvYdouUaB2wq3hYw23
 NV25UHl40C0Blm2jbek0/OUG/at2Tn5OdfPpvbgJwwmWgHF5SI52cZviWhcMFN6Vw0iO
 qyI6YslneWoVXT2QaTQji/B9AJzpYDSLcZiBw19MosZV22sVBpMwuP9zyFM8rTjFJ/TI
 ISlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=182l15KqndSA3GLGbIwigWBz5qaMbKVubBPH6bU+XdA=;
 b=jbVL70u/WhRVK20cYh19UUg49z9Sz3t1K4MmAvEBb5+//K7nIiZ8aoNWzOibt419i/
 En6zRd6l7t4M25Jztted87UZz3umesECDGserFhCY40lEHCQc3XPdzH/wR7cI/8YrOAW
 9U1QRlafgA9GDDxKp4lTlF5FRlslOI67D8pbsj+G8rvtxOAEDwJtgWgWm2qBLE0O4Kbb
 Y5up7G3TaeLCFcBr1ifQ/rIJ3FZi4URio0Y04rUOEhrrF3Z+WC8R/pQ2+Z3dXAg8u/9z
 PlmILjwLto9rt5A9qXAhneLtxC2av2m5G3NB9IkXGEDPJLXZVT+2b9u7QI1cmxuTc2D5
 7Dow==
X-Gm-Message-State: AOAM5318s18pq+0zqTKViGXRWRPXErsw0u3BwCpXCFVMjjzGFYX632ke
 u646YEVrI8KGm0Kaw0jumcFwyjPL
X-Google-Smtp-Source: ABdhPJzx5s1mT6/uQ0P3CpEcBqAdaBGGuhQQTp6roWUYQ9vKJkrUUJjF4nuxbCmhbgEZPe1u6ZNI7A==
X-Received: by 2002:a63:305:: with SMTP id 5mr19162489pgd.74.1591614545531;
 Mon, 08 Jun 2020 04:09:05 -0700 (PDT)
Received: from localhost ([49.207.55.212])
 by smtp.gmail.com with ESMTPSA id s21sm3096152pgg.8.2020.06.08.04.09.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jun 2020 04:09:04 -0700 (PDT)
Date: Mon, 8 Jun 2020 16:39:02 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200608110902.GA5736@afzalpc>
References: <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <20200607161116.GN1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607161116.GN1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_040906_540974_6692A137 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[ my previous mail did not make into linux-arm-kernel mailing list,
 got a  mail saying it has a suspicious header and that it is waiting
 moderator approval ]

On Sun, Jun 07, 2020 at 05:11:16PM +0100, Russell King - ARM Linux admin wrote:
> On Sun, Jun 07, 2020 at 06:29:32PM +0530, afzal mohammed wrote:

> > get_user_pages_fast() followed by kmap_atomic() & then memcpy() seems
> > to work in principle for user copy.
> 
> Have you done any performance evaluation of the changes yet? I think
> it would be a good idea to keep that in the picture. If there's any
> significant regression, then that will need addressing.

Not yet. Yes, i will do the performance evaluation.

i am also worried about the impact on performance as these
[ get_user_pages() or friends, kmap_atomic() ] are additionally
invoked in the copy_{from,to}_user() path now.

Note that this was done on a topic branch for user copy. Changes for
kernel static mapping to vmalloc has not been merged with these.
Also having kernel lowmem w/ a separate asid & switching at kernel
entry/exit b/n user & kernel lowmem by changing ttbr0 is yet to be
done. Quite a few things remaining to be done to achieve vmsplit 4g/4g

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

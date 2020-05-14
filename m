Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1A81D3167
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9W1sJQt/AkGPQv8yrPnHpGoqDsCP8Uvp/Cdxi7xlfQ=; b=Kl/f/5xRRctjCf
	SUDku4sPSTRDoVf91s7zVYLO7VBgMlLEVo/2MVJRuIrAY31J3NE1HP2lY/4y8oz6n7O9Py5lmn7To
	mBxaFDV2S2R8OYUpFXoJ4/HFk3rlzVt30YNmPX7PuIa4y3PqjMQ8glIBiqiN7aQ+I1oclAtdp6OFH
	jLVVYj/9zttWSd1cxMzO1dlMX5yFE30G2hnq1bCeJpxNB/z0f/VoINIiFND43xJiWmKlt+jTkOPF4
	kT14nMKQOaqWHxGgqqZ8gYpVQQpSIykJd6a/YPo0QiUOhiAefaEBsDW5UqswkHyMgig+H2gI5NkR+
	yyBnw9IMJ4iR1uxLOwbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZE1m-0007aD-Jq; Thu, 14 May 2020 13:35:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZE1d-0007Zm-Tc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:35:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so1315960pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 06:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dFH4YBbehMI5t5iqf9Q3qC3HSqGhIHfBCfuP+cdahd4=;
 b=QMSW1I6g69BXV603QaMHpeUSgDh97tVPbW+aOr8TNB1DROgfixI7vPwvLqnPQftRbu
 k/DPWZZCyDkAqkGMyKxaCuU0auNG8u3VNTsYoKg9i/6TfyufPw31JBq/HqrXhlY25q1O
 FEoyvdlBEbpmE+R9iw2Bk2PDZdoUDuaBcRV4+4KZrgKr2IdlZWue1/hOrdi/XGwFUh+L
 myzCQVsNAZHA17H/eqiUz6s17fy9GI9NvsMmjq2Mrnegh2/CXKfNxpd76zfde3+2XF4Y
 9GlNZqEtCWPbdJmgW+qw8QzMoUZgkAfkbH8Vqoah21hxzL4zQOTpotm6U+rO26/XhNZe
 cxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dFH4YBbehMI5t5iqf9Q3qC3HSqGhIHfBCfuP+cdahd4=;
 b=q4GsKl1NkFuRS9f2CbUHehkVgLyiDttEXTT7mSEvSpGlFbiCYNG8AEKTWZdzqCYx9l
 Ot+T/a1YuZkGi7ZXqa0pzWLc8ggxhncXoKgA9XB4bm8qQae56YB0nF4N1rzsgF3K8aGe
 xMGo3ctapodqcWhoEfBIoFmzUkYA10Au7v0cMe1xw+dtBxLfQM1vx2RhOHwiAB+TUmup
 lwtoyicF+MCOi0Era6Uq3LNkZYEuRJSJ4+s08DZQHHhlhC6CJlIzhe9r/Aw44bjeSpW5
 wICoDp5DZDWeS/rXPbaLDX2a+lkLN2Lca1+XwRF56Ly8jryJtsMcZJFvPwjvaLl44+lN
 B+ew==
X-Gm-Message-State: AOAM531CsbZLAHNxvHzikRJJxcE0g4HR+Oj3XfgvcKl+OR0EaqBZVUG3
 3PYhQGgztSi0A9Sg3lBQmLc=
X-Google-Smtp-Source: ABdhPJyQMSiFyybpBsgKRX8zYbVXbAgjPZ/ufU3iqqpt6IQVzBBGvLrZ288ij1pt0DGhq+h93Zc31g==
X-Received: by 2002:a62:ab16:: with SMTP id p22mr4250043pff.216.1589463348447; 
 Thu, 14 May 2020 06:35:48 -0700 (PDT)
Received: from localhost ([49.207.51.148])
 by smtp.gmail.com with ESMTPSA id gb6sm4426799pjb.56.2020.05.14.06.35.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 May 2020 06:35:47 -0700 (PDT)
Date: Thu, 14 May 2020 19:05:45 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200514133545.GA5020@afzalpc>
References: <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_063549_956075_6DE201B4 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > 1. SoC w/ LPAE
> > 2. TTBR1 (top 256MB) for static kernel, modules, io mappings, vmalloc,
> >         kmap, fixmap & vectors

> Right, these kind of go together because pre-LPAE cannot do the
> same TTBR1 split, and they more frequently have conflicting
> static mappings.
> 
> It's clearly possible to do something very similar for older chips
> (v6 or v7 without LPAE, possibly even v5), it just gets harder
> while providing less benefit.

Yes, lets have it only for LPAE

> > 3. TTBR0 (low 3768MB) for user space & lowmem (kernel lowmem to have

> hardcoded 3840/256 split is likely the best compromise of all the

hmm,i swallowed 72MB ;)

> > 4. for user space to/from copy
> >  a. pin user pages
> >  b. kmap user page (can't corresponding lowmem be used instead ?)

> - In the long run, there is no need for kmap()/kmap_atomic() after
>   highmem gets removed from the kernel, but for the next few years
>   we should still assume that highmem can be used, in order to support
>   systems like the 8GB highbank, armadaxp, keystone2 or virtual
>   machines. For lowmem pages (i.e. all pages when highmem is
>   disabled), kmap_atomic() falls back to page_address() anyway,
>   so there is no much overhead.

Here i have some confusion - iiuc, VMSPLIT_4G_4G is meant to help
platforms having RAM > 768M and <= 4GB disable high memory and still
be able to access full RAM, so high memory shouldn't come into picture,
right ?. And for the above platforms it can continue current VMPSLIT
option (the default 3G/1G), no ?, as VMSPLIT_4G_4G can't help complete
8G to be accessible from lowmem.

So if we make VMSPLIT_4G_4G, depends on !HIGH_MEMORY (w/ mention of
caveat in Kconfig help that this is meant for platforms w/ <=4GB), then
we can do copy_{from,to}_user the same way currently do, and no need to
do the user page pinning & kmap, right ?

Only problem i see is Kernel compiled w/ VMSPLIT_4G_4G not suitable
for >4GB machines, but anyway iiuc, it is was not meant for those
machines. And it is not going to affect our current multiplatform
setup as LPAE is not defined in multi_v7.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3436F5E9D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKNqoAvsVfIIcIezODuHyD7vylQkyBuKZFCSDyG48+U=; b=C2QQJmeESxjs9+
	Yac3faM7ED2payGbP2Ko7PaJ8tW6TumDA78b3IQqRjr3pGQYnIqSCclCvAivWqxEAMcrGb2R0SbnI
	xoX51sOyvoLiRIyhRQJRgzRZuUTT/n/UDev2eq8AjEuPRPYvXm0JW1P1C91c3pGp7+wkzagWwXPvL
	Fhq8lMY5i9pnSJGnEHQJesWF7EH9v6jnnFx+c7f0c/RvQWW0X2kNNdw5O+C4MY/kMl3E4wXlNfeF3
	JlM9X4ly6zM0DakN+D+L4fWH/grbpbz/fzxEjBi1VUU9zTlieCVSF19oR2mdCxCHB59bSGFdmXNs8
	eeXY6vtllZCviMgFLeqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiba-0006yw-Ud; Wed, 03 Jul 2019 16:59:38 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiibM-0006yE-5H; Wed, 03 Jul 2019 16:59:25 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so2759642edr.10;
 Wed, 03 Jul 2019 09:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5mSNxLATS4nQEbUbxPfPu5wUspYlM1yDTW4a7jFDycc=;
 b=RgIkVRRxLkHDrsI7hyi3rW5WRur6hxyeB7sdRlFXqBDC1W6hb/pT/g3KNLOu3B0Vlk
 ncCgt9g9dOgLwOTXMGkvwO33HG/Dz6qPpJtgg1nvKTyUTU6k3adu+0i49DLmlNtwCnu6
 bJ4GJSSvQQ8vVqy3cAZ7v9VgJ2b8z0sk4PFpW1ni6Lu3th/u1W/Thh96+YqlRK4sDHxj
 d+SHNvKdKVulQgYJ1BeyV5zwqERiHwiEFmncBzJdRnLH9qouWqMSy3AojjZpsBUe/y3J
 5a7xEiZh5OwbsGkqhWeASYjVGqJQ6u2o95F8h2LPcaUjM+Gk32RZzWC0C/yhj4s+NTjc
 WWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5mSNxLATS4nQEbUbxPfPu5wUspYlM1yDTW4a7jFDycc=;
 b=sbeg1meE7V4MjK+mzwD6s92LHq16acHWgEeisyZ2OuCDNpFAlwlCWLJysHaKY5zMui
 uLeNFajsAkUZkbYOtOep2itzY/hg3niUp3n+hdzsWq5VTtakgKb5b+7qwqaDE5mZ6+7x
 v23qBB1M+QhP5HkJrEAnHchU0TUipsb1xHmS5JkniMgdfZO9D89o33ssVGq8p0KvRc56
 IdF8ws5FeGq30yWn9PuR7CBiiaQ2iJCzzqCJKtvWFUiI7XMNl4xtdGG+fJPbzmNUO4jo
 xJHqtO/M8CCXVUhRIGVK+9Gpm2lY2kb7yhAV/s5qt4gR/jcCx/OrnQA2GDQWsK3jl9Dn
 UHkg==
X-Gm-Message-State: APjAAAWCtFl0fc182DZv8AuMe4tSPXhhNi8CEdbEiWo5fqS0PtK0HUxq
 JpzH/D2cvcYpY3EzWbX5jpo=
X-Google-Smtp-Source: APXvYqzMf3IP4/2/QjuYmIqZ0fDoNNwVbtRACRF7Njtd+DAyvpK0yleGpOhTCIXVWMOlDdR3j+oIxw==
X-Received: by 2002:a17:906:7681:: with SMTP id
 o1mr18871298ejm.207.1562173162397; 
 Wed, 03 Jul 2019 09:59:22 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id t13sm855465edd.13.2019.07.03.09.59.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 09:59:21 -0700 (PDT)
Date: Wed, 3 Jul 2019 09:59:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
Message-ID: <20190703165919.GC118075@archlinux-epyc>
References: <20190703153112.2767411-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703153112.2767411-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_095924_222904_2868E69B 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Heiko Stuebner <heiko@sntech.de>, clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck@google.com>, linux-rockchip@lists.infradead.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> clang emits a warning about a negative shift count for an
> unused part of a conditional constant expression:
> 
> drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
>         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
>         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
>         .status_mask = (status >= 0) ? BIT(status) : 0, \
>                                        ^~~~~~~~~~~
> include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> 
> This is a bug in clang that will be fixed in the future, but in order
> to build cleanly with clang-8, it would be helpful to shut up this
> warning. This file is the only instance reported by kernelci at the
> moment.
> 
> The best solution I could come up with is to move the BIT() usage
> out of the macro into the instantiation, so we can avoid using
> BIT(-1).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Nick recently mentioned that Nathan was working on a fix on the clang
side. It might be worth holding off on this to see if it can make it
into LLVM 9, which will branch in about two weeks and be released at
the end of August (according to llvm.org).

I don't feel strongly about it though so if this is going in:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

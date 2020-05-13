Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7C1D1130
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sh+I5e4OT9Tw5Hy0wbJk00IX8uhJfLCbSH05MJWUVUg=; b=hKdsDrRbHBb3GI
	IiUc5a+PDfYn/8mDaujxZch7oO3pG7rotjcfZoo4CoQu6forHtq3ZHPKCCfwiH+uXcKjOkcVL38XZ
	ZM6edStdYx5k5auQEdNpxy8es9ohldegy96LSL2IdFZieSUZlqnYsuQW/OJ6y4oJRgnEG7u784qe5
	5u4NQCf5ck3U1IHfo4/vb8JwBNN8k8DqdrclN6Oj7bNFqYm4wIXXG9xVXtUDRe+klvCa1+XiADv0e
	WCv6SiSyxEuQc26sJgH79h+381Gad+XTKMQJ8qJWCLx3QaycEuxOEAZbpZTQH0hNYZRHPMWNdSjbT
	O05unZrfKHgK7lXUSQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpSI-0003dd-9I; Wed, 13 May 2020 11:21:42 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpS4-0003Td-2d
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:21:30 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jYpRu-000588-01; Wed, 13 May 2020 13:21:18 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 67175C0482; Wed, 13 May 2020 13:19:07 +0200 (CEST)
Date: Wed, 13 May 2020 13:19:07 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Hauke Mehrtens <hauke@hauke-m.de>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 "Maciej W. Rozycki" <macro@linux-mips.org>,
 Paul Burton <paulburton@kernel.org>, Paul Cercueil <paul@crapouillou.net>,
 John Crispin <john@phrozen.org>, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, Huacai Chen <chenhc@lemote.com>,
 James Hartley <james.hartley@sondrel.com>,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] MIPS: Only include the platform file needed
Message-ID: <20200513111907.GB7151@alpha.franken.de>
References: <20200509230150.24466-1-tsbogend@alpha.franken.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509230150.24466-1-tsbogend@alpha.franken.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_042128_423696_F3E3CCBC 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 01:01:47AM +0200, Thomas Bogendoerfer wrote:
> Instead of including all Platform files, we simply include the
> needed one and avoid clashes with makefile variables.
> 
> Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> ---
>  arch/mips/Kbuild.platforms       | 73 +++++++++++++++++++++-------------------
>  arch/mips/alchemy/Platform       |  3 --
>  arch/mips/ar7/Platform           |  1 -
>  arch/mips/ath25/Platform         |  1 -
>  arch/mips/ath79/Platform         |  1 -
>  arch/mips/bcm47xx/Platform       |  1 -
>  arch/mips/bcm63xx/Platform       |  1 -
>  arch/mips/bmips/Platform         |  1 -
>  arch/mips/cavium-octeon/Platform |  1 -
>  arch/mips/cobalt/Platform        |  1 -
>  arch/mips/dec/Platform           |  1 -
>  arch/mips/generic/Platform       |  1 -
>  arch/mips/jazz/Platform          |  1 -
>  arch/mips/jz4740/Platform        |  1 -
>  arch/mips/lantiq/Platform        |  1 -
>  arch/mips/loongson2ef/Platform   |  1 -
>  arch/mips/loongson32/Platform    |  1 -
>  arch/mips/loongson64/Platform    |  1 -
>  arch/mips/mti-malta/Platform     |  1 -
>  arch/mips/netlogic/Platform      |  1 -
>  arch/mips/paravirt/Platform      |  1 -
>  arch/mips/pic32/Platform         |  1 -
>  arch/mips/pistachio/Platform     |  1 -
>  arch/mips/pnx833x/Platform       |  1 -
>  arch/mips/rb532/Platform         |  1 -
>  arch/mips/sgi-ip22/Platform      |  2 --
>  arch/mips/sgi-ip27/Platform      |  3 --
>  arch/mips/sgi-ip30/Platform      |  3 --
>  arch/mips/sgi-ip32/Platform      |  1 -
>  arch/mips/sibyte/Platform        |  4 ---
>  arch/mips/sni/Platform           |  1 -
>  arch/mips/txx9/Platform          |  3 --
>  32 files changed, 39 insertions(+), 77 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

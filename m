Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47602357EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6whXtW0ni8EUW0FspbI311nVz6eutlDnRXgKLIX8t/8=; b=RjR3Bdkqk8Ti5w
	o6PdaQgJMfD9P7Tnf5E2IqnGTHAIlMhBezZnTk6/MP7qPzcqdeQG+SWbfIdjfI1JQ5WQz8JDZMjkz
	lNY2QhMIWYr6TvAtgP89j9d+JKBJ26QnluqHH2P+tPYPei0bqEJ5EsK4iw/JW6OstNgxSC8XBzzz3
	FH4XfzkeBjp6UNPux1meLGWntq+jj/idNV7K/kwnYqouQfK9VOzco77urldoF2q3gbc59DZtnwBK3
	hAPxWfHvvN7cE2Rb1IHDrt5w2EGA95ONTT5fFtB7DOxGHEUl1f4m0JRPoSgzKIFuqGDL5cC9Imzrx
	Vsk0dF0uhgnJmGbKvIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQRA-0003vB-Op; Wed, 05 Jun 2019 07:34:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQR3-0003si-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:34:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F59A78;
 Wed,  5 Jun 2019 00:34:11 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EF683F246;
 Wed,  5 Jun 2019 00:34:09 -0700 (PDT)
Date: Wed, 5 Jun 2019 08:34:07 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 0/2] Allow assembly code to use BIT(), GENMASK(), etc.
 and clean-up arm64 header
Message-ID: <20190605073406.geesp3rbrxajmac6@mbp>
References: <20190527083412.26651-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527083412.26651-1-yamada.masahiro@socionext.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_003413_770486_09F24CE3 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 05:34:10PM +0900, Masahiro Yamada wrote:
> Some in-kernel headers use _BITUL() instead of BIT().
> 
>  arch/arm64/include/asm/sysreg.h
>  arch/s390/include/asm/*.h
> 
> I think the reason is because BIT() is currently not available
> in assembly. It hard-codes 1UL, which is not available in assembly.
[...]
> Masahiro Yamada (2):
>   linux/bits.h: make BIT(), GENMASK(), and friends available in assembly
>   arm64: replace _BITUL() with BIT()
> 
>  arch/arm64/include/asm/sysreg.h | 82 ++++++++++++++++-----------------
>  include/linux/bits.h            | 17 ++++---

I'm not sure it's worth the hassle. It's nice to have the same BIT macro
but a quick grep shows arc, arm64, s390 and x86 using _BITUL. Maybe a
tree-wide clean-up would be more appropriate.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

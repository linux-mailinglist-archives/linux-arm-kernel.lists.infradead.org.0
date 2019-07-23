Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EC871D7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcEJ4Zg93T+4+R5j45d40yBdg/9aBIwyR45SDkgH0/4=; b=BJjrGKpWfSfQXo
	LRVc6CnVZJJWcYKl+Uz46/K4vRi0P67ox8buKdQScfD4OCT5D2n1eyqRwU8+iJqeaRI9m6kX4sKAy
	/35l3mYA+vr4wdBnL0h/BFWpOveSEL8ap8b43YkCssnG6JIX5DSMw/zbko7Jw2gPpZUZ0EYIljEXq
	LSWeyd0HfuPH0FtjQI53M04GA/yEAbRjAjGHPjPY4WXr6W7e9UwHu3NF7bXoqvQGvRDPs/H7URo9R
	A9TktmGwWJHBHtOAhOT4bCRplXx7mJE1LQqNR7yzlGz3rkIARqGK8fOJv3FmtcWkavnr3rRpv+A9t
	WOeBUq2VW1dyKnOkQgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyPI-0004D7-N1; Tue, 23 Jul 2019 17:16:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyP5-0004Cl-VZ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:16:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 498D42239F;
 Tue, 23 Jul 2019 17:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563902203;
 bh=AhMUEigBVGgjkqk8XoCkrqk5l7DyuxEw5bsGofwzDS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rLAPoQsrnIFw77o74ZsbhCw4KtI2HqtBvNitEL1VmCvwG8NgOzm9Id6zBXjGjaXeS
 ++wNyjzYU/pU8eLqFn/syaPLNa/5pKL50YOvuDR95bGwn0ZM+phDaf782oHzqTvLf4
 fgq+RrbpVtl6uEFlmuMW3MjnInL03S8uZyhfhbTM=
Date: Tue, 23 Jul 2019 18:16:39 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm64: remove unneeded uapi/asm/stat.h
Message-ID: <20190723171638.ctzz6jt3442zvg2d@willie-the-truck>
References: <20190723112922.14315-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723112922.14315-1-yamada.masahiro@socionext.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_101644_034717_189C698C 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 08:29:22PM +0900, Masahiro Yamada wrote:
> stat.h is listed in include/uapi/asm-generic/Kbuild, so Kbuild will
> automatically generate it.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm64/include/uapi/asm/stat.h | 17 -----------------
>  1 file changed, 17 deletions(-)
>  delete mode 100644 arch/arm64/include/uapi/asm/stat.h

Thanks, I'll pick this up for 5.4.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

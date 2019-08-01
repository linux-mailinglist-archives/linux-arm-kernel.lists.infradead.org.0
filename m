Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C7B7DADF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QGsHl2TYd7yexmBQ9sN1Iwx+eUVx0ZG8LN6oNoliDc=; b=EUk5TlGJ2T1fSA
	pt5E4Y4Y3h7u0JmcitcJ3qVCP1NHRvBVcQjAkd5L7pjgW5TxwfkN/wagHs2YOi0e6GU1WakrjVn5O
	5vGy8P85zgPfNgHRcAcwFpCyOxnt1kvMBbZXuYXDxnyyuKTCuWOm4kmLTrxIDvmRbAgTwMmsbjRXy
	g7PXWFL0gUrsCtCqm20n9THxN40v3i8r4SZlbPG7RBiYfYFNdWUN9AScKkfAxftH0TRrKFXOq0GF5
	acIEm6ghjYTAhe0V+81RDvMWASvQ3dcYlNj6Jcd5hbTA8W6OIrRCQ6a0riEL5wFchz/JuPmZuhCOn
	XLD3wVkMQFyoOXKHstjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9qF-0004Z6-DA; Thu, 01 Aug 2019 12:05:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9lu-0000Im-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:01:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2202E20644;
 Thu,  1 Aug 2019 12:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564660886;
 bh=D5new/YYn3kPcHh7di/Fven4S2ktVYG0OmdgPvAh4PQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IE6mLKyYjztotryxL/tOSZEH2cYaxcN7ViYug7D8wjScOTcPomkuNZHqr/8jCnLW6
 bTgmlMcfqYjfIeldb1Y7t9tpmc81NrLEkP1pPZrs6mp9fo8KJlf6T2TpY6zhsbFo8E
 bbSrtyff0KUD+Hy8tCu67p+NewAjDYSazxoV+WFg=
Date: Thu, 1 Aug 2019 13:01:22 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/mm: fix variable 'tag' set but not used
Message-ID: <20190801120121.6cmtho3wd32nzfoz@willie-the-truck>
References: <1564605498-17629-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564605498-17629-1-git-send-email-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_050126_895166_58AC4AFE 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 04:38:18PM -0400, Qian Cai wrote:
> When CONFIG_KASAN_SW_TAGS=n, set_tag() is compiled away. GCC throws a
> warning,
> 
> mm/kasan/common.c: In function '__kasan_kmalloc':
> mm/kasan/common.c:464:5: warning: variable 'tag' set but not used
> [-Wunused-but-set-variable]
>   u8 tag = 0xff;
>      ^~~
> 
> Fix it by making __tag_set() a static inline function.
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/memory.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index b7ba75809751..9645b1340afe 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -210,7 +210,11 @@ static inline unsigned long kaslr_offset(void)
>  #define __tag_reset(addr)	untagged_addr(addr)
>  #define __tag_get(addr)		(__u8)((u64)(addr) >> 56)
>  #else
> -#define __tag_set(addr, tag)	(addr)
> +static inline const void *__tag_set(const void *addr, u8 tag)
> +{
> +	return addr;
> +}

Why doesn't this trigger a warning in page_to_virt(), which passes an
unsigned long for the address parameter?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

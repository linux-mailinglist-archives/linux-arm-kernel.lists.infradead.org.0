Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFC212E98E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1REcpDEce+gXfrPpbqYBcNSEpsv2+YEVmjS2bp5Yis=; b=J8LNEtfDJZs5I4
	i/KHI+C/mv1oAOzkYA24uEt0kRsSXzx68qo2QB2JZfT+s/i38fN0Cqw4Q2/EzaZVIaWBTGbGMErn2
	e8J72GpjtsfzA6s9YIDhZySW+TlRfbKiv1w22nNyr+f5iyHBs3MIrm8XXe3f5KzsOPgwZLiDed3EZ
	ntywJwy6GfvXNgjzW0qbgD1nkuj8PA3LMMWcMbKXHyLYsSUxR+5S/+pVVSzF7B3llUKMTkHU3SVii
	mRsAOmo7zPStg4X3dCh+/E+dLiegAm8XzptiDCpmoNPbmWcmSxNFk7FWQROTQF4YcZDtl12Sui3l2
	0i2BhHr3QP4U9hf3a7Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4cC-0002kf-KA; Thu, 02 Jan 2020 17:50:32 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4c6-0002jg-Ke
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:50:28 +0000
Received: from [172.58.107.60] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1in4bz-0006FT-1r; Thu, 02 Jan 2020 17:50:19 +0000
Date: Thu, 2 Jan 2020 18:50:13 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>, arnd@arndb.de
Subject: Re: [PATCH 1/7] arm64: Move __ARCH_WANT_SYS_CLONE3 definition to
 uapi headers
Message-ID: <20200102175011.q7afo45nc2togtfh@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-2-amanieu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102172413.654385-2-amanieu@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_095026_814604_A643FAD8 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Cc Arnd. I'd like his Ack on this]

On Thu, Jan 02, 2020 at 06:24:07PM +0100, Amanieu d'Antras wrote:
> Previously this was only defined in the internal headers which
> resulted in __NR_clone3 not being defined in the user headers.
> 
> Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: <stable@vger.kernel.org> # 5.3.x
> ---
>  arch/arm64/include/asm/unistd.h      | 1 -
>  arch/arm64/include/uapi/asm/unistd.h | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 2629a68b8724..5af82587909e 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -42,7 +42,6 @@
>  #endif
>  
>  #define __ARCH_WANT_SYS_CLONE
> -#define __ARCH_WANT_SYS_CLONE3
>  
>  #ifndef __COMPAT_SYSCALL_NR
>  #include <uapi/asm/unistd.h>
> diff --git a/arch/arm64/include/uapi/asm/unistd.h b/arch/arm64/include/uapi/asm/unistd.h
> index 4703d218663a..f83a70e07df8 100644
> --- a/arch/arm64/include/uapi/asm/unistd.h
> +++ b/arch/arm64/include/uapi/asm/unistd.h
> @@ -19,5 +19,6 @@
>  #define __ARCH_WANT_NEW_STAT
>  #define __ARCH_WANT_SET_GET_RLIMIT
>  #define __ARCH_WANT_TIME32_SYSCALLS
> +#define __ARCH_WANT_SYS_CLONE3
>  
>  #include <asm-generic/unistd.h>
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

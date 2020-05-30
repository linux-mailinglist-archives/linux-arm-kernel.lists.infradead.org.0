Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15E51E922E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 16:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SgsYJe86s/DJrf/n1+k7qkIjTS2MOlERTmyYF7zGHa4=; b=JEJHI0msqRL7PVpO1Rq79tHAQ
	JtnKiGkmjJ97XSo1J2zE0Vdn0mhyD0m37hWM5LoQdUFnTdS4xKaRCc4kowqBcsOPoYAYufoonB22A
	HhZpFoESY7+RbmWfuwfKu3WEKJi7gJlCE2lmUrIhkmm2MJojchy8TTVNWF55SuYHR5eAK+QW15DHX
	mVSRA4USKf9mMUYJFtiy3wqwYaxnl4dECZR5frT1PyINTlAcgmf87TnH6GeKNm8oaJoXYG4fXjdW0
	7o5RpX2ub1BEnpWp7418Ido9fnm/fI0XI0LAAxqoXrjNghnGItlSWcX5YqRH8rEmejfyf+7mpvn5A
	7GqxBLaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf2px-0000w6-64; Sat, 30 May 2020 14:51:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf2pq-0000vc-3x
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 14:51:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7DA91045;
 Sat, 30 May 2020 07:51:38 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D0863F718;
 Sat, 30 May 2020 07:51:37 -0700 (PDT)
Subject: Re: [PATCH] ARM: VDSO: Fix incorrect clock_gettime64
To: Jaedon Shin <jaedon.shin@gmail.com>, Russell King
 <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
References: <20200409050508.96753-1-jaedon.shin@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b17b74eb-1ca9-8af4-6564-3874c97d5ae7@arm.com>
Date: Sat, 30 May 2020 15:51:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200409050508.96753-1-jaedon.shin@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_075142_204348_4818C759 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Arnd Bergmann <arnd@arndb.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-09 06:05, Jaedon Shin wrote:
> __vdso_*() should be removed and fallback used if CNTCVT is not
> available by cntvct_functional(). __vdso_clock_gettime64 when added
> previous commit is using the incorrect CNTCVT value in that state.
> __vdso_clock_gettime64 is also added to remove it's symbol.

Tested-by: Robin Murphy <robin.murphy@arm.com>

Turns out this is what was making my RK3288 box virtually unusable since 
its last couple of updates - it would be nice to get the fix merged and 
backported ASAP. I suspect it's also the same underlying thing for the 
Raspberry Pi thread over here:

https://lore.kernel.org/linux-arm-kernel/CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com/

Robin.

> Fixes: 74d06efb9c2f ("ARM: 8932/1: Add clock_gettime64 entry point")
> Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
> ---
>   arch/arm/kernel/vdso.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/kernel/vdso.c b/arch/arm/kernel/vdso.c
> index e0330a25e1c6..28cfe7bad1bf 100644
> --- a/arch/arm/kernel/vdso.c
> +++ b/arch/arm/kernel/vdso.c
> @@ -184,6 +184,7 @@ static void __init patch_vdso(void *ehdr)
>   	if (!cntvct_ok) {
>   		vdso_nullpatch_one(&einfo, "__vdso_gettimeofday");
>   		vdso_nullpatch_one(&einfo, "__vdso_clock_gettime");
> +		vdso_nullpatch_one(&einfo, "__vdso_clock_gettime64");
>   	}
>   }
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

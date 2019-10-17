Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596ABDB189
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrBSgzV3SY7ynPCpliCxopE3Brmeiq9OghyOlji/5Mc=; b=NEfAuD9wR3hY5j
	t0K2HQMmsSayWJdieVRY1l+BmDxrgrxry0FvlWMmYrvyToHexpgA0FDZrV2Ve9QNuMr6cg/PIO070
	oS80Xg0szsRN4EklPjze4S7qdbPvRZ9+9sgHCEEzdDZlmXa+meYtBrY/tIsVF+dB04Iq/KiMJjJ24
	kW+jYksf30R6vurVAMxUGeTLq7QQF/89RBXrmls/US1v5RN6vIWOmBU2SJ49ZXSNVAJrkJbEOix3w
	nR8S4UhD9VNORPkbOUjg7Lec/9Y8/X8EcWKuplJJ4ReE2iel86UeVwkrPRSCxcWEYhKTVIIa6YK/Z
	+OkuPQFj53PqAIWjQk0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL83w-0001aS-OO; Thu, 17 Oct 2019 15:51:40 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL83n-0001Zn-49
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:51:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 3C0F749E46;
 Thu, 17 Oct 2019 17:51:28 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cVD2S_Ej-yYg; Thu, 17 Oct 2019 17:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 7F96449E70;
 Thu, 17 Oct 2019 17:51:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id WxkcDgk-sX4I; Thu, 17 Oct 2019 17:51:23 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 692CA49E46;
 Thu, 17 Oct 2019 17:51:23 +0200 (CEST)
Message-ID: <88e80c319c6a5bad3f4afd776a0b7b5fcc6b860f.camel@v3.sk>
Subject: Re: [PATCH] mmp: move declaration of mmp_dt_init_timer to common.h
From: Lubomir Rintel <lkundrak@v3.sk>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>, 
 linux-kernel@lists.codethink.co.uk
Date: Thu, 17 Oct 2019 17:51:22 +0200
In-Reply-To: <20191017103713.6333-1-ben.dooks@codethink.co.uk>
References: <20191017103713.6333-1-ben.dooks@codethink.co.uk>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_085131_316180_C265B739 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-17 at 11:37 +0100, Ben Dooks (Codethink) wrote:
> The mmp_dt_init_timer() is shared by several files in the
> mmp directory, so move the declaration to common.h to
> remove the following sparse warning:
> 
> arch/arm/mach-mmp/time.c:204:13: warning: symbol 'mmp_dt_init_timer' was not declared. Should it be static?

Thanks for the patch.

However, I have a patch in the queue that gets rid of that symbol
altogether instead:

https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git/commit/?h=mmp-soc-for-v5.5-2&id=1732050f48a384fbe101b8586ed42caf874816eb

Lubo

> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/mach-mmp/common.h  | 1 +
>  arch/arm/mach-mmp/mmp-dt.c  | 2 --
>  arch/arm/mach-mmp/mmp2-dt.c | 2 --
>  3 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-mmp/common.h b/arch/arm/mach-mmp/common.h
> index 483b8b6d3005..5bb6dcf0a8c1 100644
> --- a/arch/arm/mach-mmp/common.h
> +++ b/arch/arm/mach-mmp/common.h
> @@ -3,6 +3,7 @@
>  #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
>  
>  extern void mmp_timer_init(int irq, unsigned long rate);
> +extern void __init mmp_dt_init_timer(void);
>  
>  extern void __init mmp_map_io(void);
>  extern void mmp_restart(enum reboot_mode, const char *);
> diff --git a/arch/arm/mach-mmp/mmp-dt.c b/arch/arm/mach-mmp/mmp-dt.c
> index 35559792d5cc..e205cdaf19bf 100644
> --- a/arch/arm/mach-mmp/mmp-dt.c
> +++ b/arch/arm/mach-mmp/mmp-dt.c
> @@ -15,8 +15,6 @@
>  
>  #include "common.h"
>  
> -extern void __init mmp_dt_init_timer(void);
> -
>  static const char *const pxa168_dt_board_compat[] __initconst = {
>  	"mrvl,pxa168-aspenite",
>  	NULL,
> diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
> index 305a9daba6d6..ea63203b8810 100644
> --- a/arch/arm/mach-mmp/mmp2-dt.c
> +++ b/arch/arm/mach-mmp/mmp2-dt.c
> @@ -16,8 +16,6 @@
>  
>  #include "common.h"
>  
> -extern void __init mmp_dt_init_timer(void);
> -
>  static void __init mmp_init_time(void)
>  {
>  #ifdef CONFIG_CACHE_TAUROS2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

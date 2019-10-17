Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA9DB193
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSihd3Ypc9PJ/W1sGePytHdVrZVl8O/DHRs9MVYZHzA=; b=YTXwhQoOtnsdqf
	TbP9f0aAAlH58Bdv2xOwhHmqbrMHUAzmFQxjJVBrLO0oWYECWQQqfNg+7FvguLHFYBOufeMn433KA
	fy/MO6C2dpsIaH8nhUhSFPZ3YGzPJBwiOJuVsHZ3FMJ4UN1lsH58/yBcAhfI3Ql3C89OQIGAFGo6K
	+NCm/+szlY2nlHsgcv1X0JdVNP/v44BWCfnN/qYRlaLtRblALY1l9bSoxCqfI6lrgT8Fm8Cj1kRmL
	JX5aHOPQGybDXku8zmBvu195UZcLu3Kwb3mRcWOW/KKe9CI3PBuxUM365xuKWght8ULmrqk/X7RRt
	YgXe9BS/QJBLU3HB4u2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL85e-000225-50; Thu, 17 Oct 2019 15:53:26 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL85T-0001v5-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:53:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F18D349E7D;
 Thu, 17 Oct 2019 17:53:13 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wFpCXqWvwldH; Thu, 17 Oct 2019 17:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id ABBAD49EB7;
 Thu, 17 Oct 2019 17:53:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Ugun-3sHbeZU; Thu, 17 Oct 2019 17:53:10 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 0C3D049E7D;
 Thu, 17 Oct 2019 17:53:10 +0200 (CEST)
Message-ID: <ec9979dc6c3bddfe3cc6ba9cce25923c751d40da.camel@v3.sk>
Subject: Re: [PATCH] mmp: include common.h for mmp_timer_init
From: Lubomir Rintel <lkundrak@v3.sk>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>, 
 linux-kernel@lists.codethink.co.uk
Date: Thu, 17 Oct 2019 17:53:09 +0200
In-Reply-To: <20191017103436.5575-1-ben.dooks@codethink.co.uk>
References: <20191017103436.5575-1-ben.dooks@codethink.co.uk>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_085315_703878_E00CABCF 
X-CRM114-Status: GOOD (  11.24  )
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

On Thu, 2019-10-17 at 11:34 +0100, Ben Dooks (Codethink) wrote:
> The arch/arm/mach-mmp/time.c should include the
> common.h header for the declaration of mmp_timer_init.
> 
> This fixes the following sparse warning:
> 
> arch/arm/mach-mmp/time.c:184:13: warning: symbol 'mmp_timer_init' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Thank you.

Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>

> ---
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/mach-mmp/time.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
> index 483df32583be..0706d8f667de 100644
> --- a/arch/arm/mach-mmp/time.c
> +++ b/arch/arm/mach-mmp/time.c
> @@ -35,6 +35,7 @@
>  #include "irqs.h"
>  #include "cputype.h"
>  #include "clock.h"
> +#include "common.h"
>  
>  #define TIMERS_VIRT_BASE	TIMERS1_VIRT_BASE
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

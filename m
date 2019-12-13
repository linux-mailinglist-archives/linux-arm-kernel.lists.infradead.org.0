Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5D111DF99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btndxS6dxvSyxOV9Ljf5y2415Llzm7yBe4XapQP7niY=; b=fGeQHsdymBcrGf
	E7+zxAG9bTKQDFFI8WlnUH/oOXoGcEXDWn6TiV/x+0mN+V5r/XMkMyEmOJSOKd+2zUv2q+IlSRZ0p
	ly3kYyRmwwwVwJl9vX4pCldCFW5L441Tx96aME4GIe7uVSLO3+6k2H2S7fymLvpqOnMPE3sy1jc3f
	LmfDIyaxGJnVkU6fYX6T5/9ZIXGTIEx3Eddji94iutrsCCtsBzPbG31Ug0lqN8h3iqFOhtwCGCUA7
	OF4QYW9eMRaEAVXXJCYXYnm6AMl3xg7ie6TejTGi3xUKrBe33+yONgEaWQ8wn6i0siMi5LI/WozAO
	t2cwStvOyYeKVzMdMKbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgW1-0003om-S1; Fri, 13 Dec 2019 08:41:37 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgVt-0003oQ-4c
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 08:41:30 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 541DBDF383;
 Fri, 13 Dec 2019 08:32:22 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UZXf3XBqoR-G; Fri, 13 Dec 2019 08:32:21 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 918A9DFB07;
 Fri, 13 Dec 2019 08:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4I-m5DADgw5t; Fri, 13 Dec 2019 08:32:21 +0000 (UTC)
Received: from nedofet.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 3B4CDDFB03;
 Fri, 13 Dec 2019 08:32:21 +0000 (UTC)
Message-ID: <71a8139e603f697c734134faedfb3ce87067918f.camel@v3.sk>
Subject: Re: [PATCH] ARM: mmp: include the correct cputype.h
From: Lubomir Rintel <lkundrak@v3.sk>
To: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 13 Dec 2019 09:32:19 +0100
In-Reply-To: <20191210203409.2875880-1-arnd@arndb.de>
References: <20191210203409.2875880-1-arnd@arndb.de>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004129_330874_53F6906D 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: soc@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 21:34 +0100, Arnd Bergmann wrote:
> The file was moved, causing a build error:
> 
> In file included from /git/arm-soc/arch/arm/mach-mmp/pxa168.c:28:
> arch/arm/mach-mmp/pxa168.h:22:10: fatal error: cputype.h: No such file or directory
> 
> Include it from the new location.
> 
> Fixes: 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Lubomir Rintel <lkundrak@v3.sk>

> ---
>  arch/arm/mach-mmp/pxa168.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-mmp/pxa168.h b/arch/arm/mach-mmp/pxa168.h
> index 6dd17986e360..34f907cd165a 100644
> --- a/arch/arm/mach-mmp/pxa168.h
> +++ b/arch/arm/mach-mmp/pxa168.h
> @@ -17,9 +17,9 @@ extern void pxa168_clear_keypad_wakeup(void);
>  #include <linux/platform_data/keypad-pxa27x.h>
>  #include <linux/pxa168_eth.h>
>  #include <linux/platform_data/mv_usb.h>
> +#include <linux/soc/mmp/cputype.h>
>  
>  #include "devices.h"
> -#include "cputype.h"
>  
>  extern struct mmp_device_desc pxa168_device_uart1;
>  extern struct mmp_device_desc pxa168_device_uart2;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

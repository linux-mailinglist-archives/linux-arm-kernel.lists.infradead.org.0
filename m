Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40869F8B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JIe1n8Pot1R9Yjc+OktdhSk3QAPVgpESM50w8Di7/hU=; b=TWdxjgXQIQHfFnGdwDHNAjtCT7
	CEBAcbKt0o0qDLGrl1PkLENGCrEchGIBpa3bePEbKR8OpKjhnZF0oflBqL3zOyIgUXxqrJcNSw8av
	j4JnT5dk36MgsudL1KFiFovovvyuBbSJfuuZaZl9TCPLowPjkG9ON9A/9Kbv1jUhudisIY0NVNjmQ
	LO9OGh2ZCKMr0swuG6BBGci9LUrCibHYmD2ZP5PVULPMEp07wPx5lDbgWAG1AHmNjS1UucEC4ZCuJ
	WaLgvWA+6L37COvfcDo12Kz19lLZ+1oe3weKYd6BrrDnD4mp7Rb3tcZ3hG7tTfPDoDjw9ZdF3azom
	8HlSUdCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRmq-0003Pu-Jv; Tue, 30 Apr 2019 12:23:04 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRmi-0003PS-Ou
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:22:58 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id F3A4444028D;
 Tue, 30 Apr 2019 15:22:54 +0300 (IDT)
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-4-alexandre.belloni@bootlin.com>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/4] rtc: digicolor: convert to SPDX identifier
In-reply-to: <20190430093212.28425-4-alexandre.belloni@bootlin.com>
Date: Tue, 30 Apr 2019 15:22:54 +0300
Message-ID: <8736lzu1gh.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_052257_028034_EA2223CE 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Tue, Apr 30 2019, Alexandre Belloni wrote:
> Use SPDX-License-Identifier instead of a verbose license text.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Baruch Siach <baruch@tkos.co.il>

baruch

> ---
>  drivers/rtc/rtc-digicolor.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> index ed2fc1adafd5..0aecc3f8e721 100644
> --- a/drivers/rtc/rtc-digicolor.c
> +++ b/drivers/rtc/rtc-digicolor.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Real Time Clock driver for Conexant Digicolor
>   *
>   * Copyright (C) 2015 Paradox Innovation Ltd.
>   *
>   * Author: Baruch Siach <baruch@tkos.co.il>
> - *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2 of the License, or (at your
> - * option) any later version.
>   */
>  
>  #include <linux/io.h>


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

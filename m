Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D94118C2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:12:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtZW3MGD1GE4c74rdnaz3IN5CQ0jF/X/3lB7AhbwGxQ=; b=uIdgN51X81UFs0
	fW0Z+NocOjnXIK3xS4Kiz2u8BnVwHc2Ouj84gnr5Gxh2fVBGRvXQpCBkLWdKe1eqOJjWJTOgxrFqZ
	Mb/ftWrlNFRhFin1WOawqrbkYVU2rip9U1ATA1QfJHmWFaWxCs2tPoyd4niLw4+A5hcEozNDuz4aO
	JhaqenyHE5Nh1ks9IkVSuR4Yzfigap/k7akQHgUWccwUyvlSsoUMmOMWJS8VKKlrroyfnSfu02/Rx
	LXe34jnbIaLWarAgX9rnUjY9mMCRZL4LejjZlBEyIdqu9SqRdtAmNLK8KKo5/GyDLpAicJajiB9V+
	93deoAhbH7oRFSnon0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehBR-00017i-I9; Tue, 10 Dec 2019 15:12:17 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehBJ-00016s-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:12:10 +0000
Received: by mail-ed1-f68.google.com with SMTP id cy15so16283820edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:12:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sJaeGKsrAgF2COrnApNd92HDMsm8/A1cviivFQnAaJw=;
 b=BBmMqHRkOsINVwx8KqcMxgZSI6XTuQR7vW7Tp7GY/uIWQoBS0H/W46zVoAHD4VgLel
 fIIUS5f/ATaMl0YDajgmbOyJ8DKVkVm0DRtoTpsCVfRGH/5Y+oIbnVg77P/A52PZzuXw
 FUV16ulSYXV5535fIbc9I0rq0PvDp1wGZnQYwy1ux5zTSrSUZiASEzjax003ZBaZfrjY
 bfIYr3OGCLhtKP/1pl6zz8UcaOUQZ5Ewib1BXVj4V9ZoIt8dTwc7QTjrB12YOE03SCac
 OGdcHHkIA2xlnOuY+O9UdzG+mES6Vdi6ACapNtgyYxzYraElvXtczLHi/jtQzPw8gKLl
 VISA==
X-Gm-Message-State: APjAAAU1Yduv4P78WADBKgU/gUk7fPx2fKiUH3ojZz+vwIN09xL2Vqsi
 B0IMbodJJjXJMBWgx6OZXwQ=
X-Google-Smtp-Source: APXvYqxujei1imzn332R8bQdgC3x3CynHzWuf7LdbAxNnqzLlR0w18cSud9VlWzURCVvIyZ4WjeMdQ==
X-Received: by 2002:a50:fb96:: with SMTP id e22mr37840514edq.18.1575990727498; 
 Tue, 10 Dec 2019 07:12:07 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id dh4sm87820edb.77.2019.12.10.07.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 07:12:06 -0800 (PST)
Date: Tue, 10 Dec 2019 16:12:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 03/10] tty: serial: samsung.h: fix up minor comment issues
Message-ID: <20191210151204.GH11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-3-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-3-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071209_095767_E30A82B8 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:36:59PM +0100, Greg Kroah-Hartman wrote:
> checkpatch found some minor issues with comments in samsung.h, so fix
> that up.
>

No, you remove this header two patches later. No point to fix checkpatch
issues here.

Best regards,
Krzysztof


> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/samsung.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung.h b/drivers/tty/serial/samsung.h
> index f93022113f59..cdfd53acead3 100644
> --- a/drivers/tty/serial/samsung.h
> +++ b/drivers/tty/serial/samsung.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  #ifndef __SAMSUNG_H
>  #define __SAMSUNG_H
>  
> @@ -7,7 +7,7 @@
>   *
>   * Ben Dooks, Copyright (c) 2003-2008 Simtec Electronics
>   *	http://armlinux.simtec.co.uk/
> -*/
> + */
>  
>  #include <linux/dmaengine.h>
>  
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

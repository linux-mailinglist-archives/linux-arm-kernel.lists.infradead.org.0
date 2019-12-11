Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE92F11AA88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GjCpzCHjOY3kYxovkNYgn3XsL9fbZ1BH426la8Fkxo=; b=S5wO560B2Z+tz7
	yjdtkwGlczG3f2nDvPTulpeIGBlWVomxLBg/CGpWoLYu0gG7+QzFKY4UBM2xBY5gM4+Pyn9nIQFIL
	0LClCXC/9e8jHU67RinSyNfmHO0evekpeZ8VfryVG0ikSy5Smo5g59J/tr5EfQvdeMoHTAVgW8itR
	6A5l8uOHWpkpDyBy6tMuUyaiBMsYnOdy6spas6oUNHcO80SVk89umvzSDbDD4OL/X2qbIBm+vDCH7
	TTox5z524lZW4tLwXhvOIbUmlGpUCZi6h23LgXlM7E4gFNe6pTmlfA6pLZmHPspnrXqU5IxGk/Tnr
	M8aXlB7vYxGFAwuKob/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0sJ-0001bi-Ff; Wed, 11 Dec 2019 12:13:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0sA-0001au-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:13:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBBE620836;
 Wed, 11 Dec 2019 12:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576066418;
 bh=Xb2LGz2eTWzVl5uyo4dQX6iViMnhQ99Qr/UakTyz5ks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wS6Hac2ka68LJuY+urNJ7+TrhlmTCBY5xL+AA+llIbqf2M33Ffqik8jPjVZn/54bF
 hun7b58MV5IkBsHOBvcmhySsVO9QPQ7wGHH2x1+SlmfYSO2H16B+tUYcsIKZ/citOH
 Rd+DoVV05ECek/dMk6YYOsdNJJCK6Of5FT1ClazU=
Date: Wed, 11 Dec 2019 13:13:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: Re: [PATCH 02/10] tty: serial: samsung_tty: fix build warning
Message-ID: <20191211121335.GA513966@kroah.com>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-2-gregkh@linuxfoundation.org>
 <181db297-2865-5b34-6ef1-e410babaf3bb@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <181db297-2865-5b34-6ef1-e410babaf3bb@metux.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_041342_717959_599F5B23 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 12:01:28PM +0100, Enrico Weigelt, metux IT consult wrote:
> On 10.12.19 15:36, Greg Kroah-Hartman wrote:
> 
> Hi,
> 
> > diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> > index 83fd51607741..67c5a84d0a26 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -1851,7 +1851,10 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
> >  
> >  /* Device driver serial port probe */
> >  
> > +#ifdef CONFIG_OF
> >  static const struct of_device_id s3c24xx_uart_dt_match[];
> > +#endif
> > +
> 
> By the way: I've got some patch for conditionally declaring of match
> tables (including MODULE_DEVICE_TABE() call), so such ifdef's aren't
> needed anymore.

That's not why this #ifdef is needed.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

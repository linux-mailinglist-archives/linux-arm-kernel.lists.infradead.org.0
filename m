Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFF4182BCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlRLvpVWMo/m8Xve5qP7dIobQ8sIkKNkbQZPX0VbWmQ=; b=AgAAH187XYcp5b
	2ibAyaNTBbA0dalu1IVt0k7cN9mdpdXh6uTn9IkKnB6C3IS9q28fBSI1n6aOQmFl/loeN+39rCtx4
	mBMzKK4fy4Yds7Wmbjq8PVId/oCKfKmQLVTbMmWMpI9Rzl1rTThmBbZfbZTzfj9vLpKK9r47KgJ0X
	etwEpDbaDkkVrVKzCBAntIS6/PMc6/SgaSpj7KKJFLldI+TYcqzgJf9kkD9o2wxkJprNcjS6B7P9J
	tJveLyJCDixRlr0fvZCi1T95++2JVT9eDucZuYUoKCwcEqHtQNw+0AztBDnQ2P+IoYkDSSDEP+AMK
	e/MWmDvWhAekXXeBzfYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJkF-0008Sy-DH; Thu, 12 Mar 2020 09:03:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJk8-0008S8-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:03:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6761320691;
 Thu, 12 Mar 2020 09:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584003780;
 bh=W3VhYB0+37wDg2ve0xW9G4K2A31AP6lXnjoIl/W109Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jYdPB8TeqL3Mva1QSnRLzmsTKUKX0Dlo5A0028hiWu7RUnhp1FsMqH/aayraJ6vAx
 Xhtkk2r2ntLubZKny8JvmH7VVCM1rays1My8CENWodPLv/Y7HAew69NvHeNuCq9wII
 EpQjXnUYDmeqjPCtMSv3g41/LlZ3GNOPJuKMOYWs=
Date: Thu, 12 Mar 2020 10:02:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Martin Devera <devik@eaxlabs.cz>
Subject: Re: [PATCH 1/2] tty/serial: Add st,swap OF option to stm32-usart
Message-ID: <20200312090258.GA180600@kroah.com>
References: <20200229160507.31309-1-devik@eaxlabs.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229160507.31309-1-devik@eaxlabs.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020304_115579_1E967F1A 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 05:05:06PM +0100, Martin Devera wrote:
> STM32 F7/H7 usarts supports RX & TX pin swapping.
> Add option to turn it on.
> Tested on STM32MP157.
> 
> Signed-off-by: Martin Devera <devik@eaxlabs.cz>
> ---
>  drivers/tty/serial/stm32-usart.c | 3 ++-
>  drivers/tty/serial/stm32-usart.h | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)

This, and patch 2/2, do not apply to my tty-next branch at all.  What
did you make them against?

Please rebase and resend the series.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

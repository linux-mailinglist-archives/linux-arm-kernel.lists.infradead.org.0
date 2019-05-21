Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B106525312
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXWO7q94KCr2e8qtsGj0jClxiE30PZ/4J4QbdKa+lio=; b=Uxej1cgzUrEpF/
	Wue81z7ac+pZYaVKLkL4DQff65A91MkVPZTuz1FqbOxQrfFk/6KkBHBPyE8HpE/KaMBDXjunme7OW
	BlDRZ6+xRHQnq8OhpIs0C3tDOkr7sWk+KLCpGxLZK3emBp5iexrz8aQCvHveqBeHZ1ZVTtn/7zgB/
	b2SzbVQQvXdbOgYwVsqKqDJh1U7zBJ7dL8VIOuvsK5iDC37MkYPXReGI2xnlrZp3WNph+qHy5OzxP
	lyXwvhQ8+qUd3h4ZsygWoyFrfQF74jNKPMtjBKh9BKX4xNVP/PhRljBdLf9L24hm/qTfW6vupfJLW
	/M0LIIJhD2NGJZ5/wwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6A6-00032e-TL; Tue, 21 May 2019 14:54:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6A0-00031z-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:54:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41A02208C3;
 Tue, 21 May 2019 14:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558450474;
 bh=q76YsG3uawMWYs8CZinrfkZpJKQnocFUK8DNC48Mgd0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E9FUmk28xmIgNCQi/vDn0xepr+T+p7uLIIF5bV8DO2WUu1vV9DdkChNyZc0jBXCwK
 iM26xnUlj7JRW9hTmIcv116tGGhAJIxUQ9oWjSDpx04pHoym9ocHvTzPd5nO7XIExG
 uDQYlTYcEcTBwBegwx44ukDY15riNqUIEo2bor1E=
Date: Tue, 21 May 2019 16:54:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: houweitao <houweitaoo@gmail.com>
Subject: Re: [PATCH] tracing: fix typos in code and comments
Message-ID: <20190521145432.GB3491@kroah.com>
References: <20190521144740.22490-1-houweitao@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521144740.22490-1-houweitao@xiaomi.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_075436_248465_53DA20F2 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-gpio@vger.kernel.org, festevam@gmail.com,
 linus.walleij@linaro.org, baohua@kernel.org, rostedt@goodmis.org,
 davem@davemloft.net, yamada.masahiro@socionext.com, mingo@redhat.com,
 linux-imx@nxp.com, kernel@pengutronix.de, jslaby@suse.com,
 sparclinux@vger.kernel.org, houweitao <houweitao@xiaomi.com>,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:47:40PM +0800, houweitao wrote:
> fix ingore to ignore in kernel; since there are other
> mistakes can be found with "git grep ",fix all
> 
> Signed-off-by: houweitao <houweitao@xiaomi.com>
> ---
>  drivers/pinctrl/uniphier/pinctrl-uniphier-core.c | 2 +-
>  drivers/rtc/rtc-sirfsoc.c                        | 2 +-
>  drivers/tty/serial/mxs-auart.c                   | 2 +-
>  drivers/tty/serial/serial_txx9.c                 | 2 +-
>  drivers/tty/serial/sunsab.c                      | 2 +-
>  kernel/trace/trace.c                             | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)

You have to split this up into patches for different subsystems, and use
your real name.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

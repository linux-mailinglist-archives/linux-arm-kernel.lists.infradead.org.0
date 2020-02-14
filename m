Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138A015F905
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1905jE8Cu86ROS723tAIZ2r+qIYsqsCjQ2aeJKmFDw=; b=toO10pdL+yccUB
	JGzhSq89Pwp1m9xylzHkRQWLQLtleCnyVt/yYdNamZLR2MMjD3Uozqxk8qHCZQBJi2WU7Cy4XUEKs
	6OThkh4/AiPcmM7VkqwG8SOtgN8MxBeZi/bTLthilXhuxNtjN7lr4Kl8AL7+SRMl3PEX6VackMzXo
	vFbe7Ysh1R9oquiuBa5dvoh8N+VieIFDWFnjypBXEZeew63HzLFtTQtgSxzGvu1v/5YvJHOeQ93Hp
	AG6hkn9iVntw/6GylCNKsjo2kcUSZ7i2YktHB5SvCPvjSZMrUEr6LQsg4nrpy5OPRFRdjwK9nEk/n
	6JX4tyGYdgImF4DTS59Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ivD-0008F6-F0; Fri, 14 Feb 2020 21:54:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2iv5-0008D4-6O
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:54:44 +0000
Received: from localhost (unknown [65.119.211.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8341E222C4;
 Fri, 14 Feb 2020 21:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581717282;
 bh=D5P4kvvPGXWzS41Um5m7v8Cms+3z0uV0f+EbWgL/Wac=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BB12WRc3qPtAPbIc12JSTy1L7iFcbp9ZU7UL830LMJffofRJI2Bz9tmaW0OAfA7g0
 rbxk1RVn4X6tWo1wAeMx0EMhLGzKlEOmvfJxIJiruvNP7+xIEuo86hKDvZciEiCWry
 +71k6EfbhLtyIMVmeayjhVab7J+TvD0OmIKuyPpE=
Date: Fri, 14 Feb 2020 16:51:34 -0500
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.5 222/542] Revert "tty/serial: atmel: fix out
 of range clock divider handling"
Message-ID: <20200214215134.GK4193448@kroah.com>
References: <20200214154854.6746-1-sashal@kernel.org>
 <20200214154854.6746-222-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214154854.6746-222-sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_135443_250021_6286F869 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [65.119.211.164 listed in zen.spamhaus.org]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-serial@vger.kernel.org,
 David Engraf <david.engraf@sysgo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 10:43:34AM -0500, Sasha Levin wrote:
> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> [ Upstream commit 6dbd54e4154dfe386b3333687de15be239576617 ]
> 
> This reverts commit 751d0017334db9c4d68a8909c59f662a6ecbcec6.
> 
> The wrong commit got added to the tty-next tree, the correct one is in
> the tty-linus branch.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: David Engraf <david.engraf@sysgo.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/tty/serial/atmel_serial.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel_serial.c
> index 1ba9bc667e136..ab4d4a0b36497 100644
> --- a/drivers/tty/serial/atmel_serial.c
> +++ b/drivers/tty/serial/atmel_serial.c
> @@ -2270,6 +2270,9 @@ static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
>  		mode |= ATMEL_US_USMODE_NORMAL;
>  	}
>  
> +	/* set the mode, clock divisor, parity, stop bits and data size */
> +	atmel_uart_writel(port, ATMEL_US_MR, mode);
> +
>  	/*
>  	 * Set the baud rate:
>  	 * Fractional baudrate allows to setup output frequency more
> -- 
> 2.20.1
> 

Are you sure this is correct to be added?  This was the result of some
fun merge problems, I don't think it's needed anywhere else...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

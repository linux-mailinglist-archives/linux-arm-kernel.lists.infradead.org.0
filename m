Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0078D2022B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 10:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAthGZegVtirRCIxdfS6Hj40qyHq6D1bncn31y/muwo=; b=WAvdajoaByd22R
	AsqqFGBkY8V6JruzxmYPLzILeulYVCH/xaVoOu8DqIIjhVFGDgp7XcPEbwPKPF/DWhFocLu5NV5Eg
	ayrf0GpXxT6JHd2OXX4zP0jOhX0dgSyUWwg5L2QevtYiQVBrmZ9ECBFEJM5Z8iw9q4SvPmamafGyy
	Y1SokIC5FZr0Z1hjpRSYB3PmC+KuMvuv/adVXnrQQymOO3/S854ZoqbhBiOAspL6gRYh/qHgP8qzm
	pEniy+SUOwsM+Ow4z1qIJ0JPrliZ/Y7LsUSYnWlfuDm1JSVpwaV/SdP3BCXjQJI+3Fb3WpiTZ0N/+
	ZD2litoWCsyOT4TKJPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmZLh-0007sF-B3; Sat, 20 Jun 2020 08:59:41 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmZLa-0007l6-2A
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 08:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HkINJawlRBHwc9VNfEcMZvgjcar16lovqjBKst1T/h8=; b=c0RvMXGf8LMYYodMuFBnlGPA5
 h3JK1D0vAcXa0tRBv93Q3jOqdlWFQcW1Y2zFSv9zuMaFffJHzW8y0a04xN1b5rtlaz2oBMbGC4ZIX
 uRoG02au1wR0yha0mGobF+Uhyj4gj/O6v6gihU6qJj9mnC+LDmvkJWZC2U83PkpFYyBRv1PCrTrLf
 SmrIxhXVJNpfqwG6smZdrlXW83kMBWT6Azs8qTaHYQ/BDAVm0tuWINrSRxGwlPdUxkN7Do1/pi0D5
 WYLG50K8mu8WOowJ0Bev9At1TL/gy/77i5bRvhvW7GvcB0hD0aUcPCprpHBkRzK2gup6oC/BrgGYe
 oX9vd11Jg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58864)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jmZII-0007Mf-B7; Sat, 20 Jun 2020 09:56:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jmYbZ-0006Th-Ck; Sat, 20 Jun 2020 09:12:01 +0100
Date: Sat, 20 Jun 2020 09:12:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v7 2/3] serial: 8250_dw: Simplify the ref clock rate
 setting procedure
Message-ID: <20200620081201.GQ1551@shell.armlinux.org.uk>
References: <20200619200251.9066-1-Sergey.Semin@baikalelectronics.ru>
 <20200619200251.9066-3-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619200251.9066-3-Sergey.Semin@baikalelectronics.ru>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_015934_104356_996D76AE 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Maxime Ripard <mripard@kernel.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 11:02:50PM +0300, Serge Semin wrote:
> Really instead of twice checking the clk_round_rate() return value
> we could do it once, and if it isn't error the clock rate can be changed.
> By doing so we decrease a number of ret-value tests and remove a weird
> goto-based construction implemented in the dw8250_set_termios() method.

This doesn't look right to me - neither the before code nor the after
code.

>  	clk_disable_unprepare(d->clk);
>  	rate = clk_round_rate(d->clk, baud * 16);
> -	if (rate < 0)
> -		ret = rate;
> -	else if (rate == 0)
> -		ret = -ENOENT;
> -	else
> +	if (rate > 0) {
>  		ret = clk_set_rate(d->clk, rate);
> +		if (!ret)
> +			p->uartclk = rate;
> +	}
>  	clk_prepare_enable(d->clk);
>  
> -	if (ret)
> -		goto out;
> -
> -	p->uartclk = rate;

	newrate = baud * 16;

	clk_disable_unprepare(d->clk);
	rate = clk_round_rate(newrate);
	ret = clk_set_rate(d->clk, newrate);
	if (!ret)
		p->uartclk = rate;

	ret = elk_prepare_enable(d->clk);
	/* check ret for failure, means the clock is no longer running */

is all that should be necessary: note that clk_round_rate() is required
to return the rate that a successful call to clk_set_rate() would result
in for that clock.  It is equivalent to:

	ret = clk_set_rate(d->clk, newrate);
	if (ret == 0)
		p->uartclk = clk_get_rate(d->clk);

The other commonly misunderstood thing about the clk API is that the
rate you pass in to clk_round_rate() to discover the actual clock rate
and the value passed in to clk_set_rate() _should_ be the same value.
You should _not_ do clk_set_rate(clk, clk_round_rate(clk, newrate));

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

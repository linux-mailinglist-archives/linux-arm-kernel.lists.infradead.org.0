Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E261B5E4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OblZqNp1oUfO+T5Gk2KQ21irvwdqHQGm+hgOfnl3aSA=; b=lszaHk24iKxZrB
	YBrMvp9fDmjfpqTvFhXXdHnievkFKaXwxEUs9j36qa3HAEw6apXUB/TziySYw6Jy4ROey2Ap/uwlt
	kOJHs9lX7l3AeW9nR/Y7yUUqLKjivTwFJrK3q/Hj4CjZAXqO4nGO12JE7XiERy/NByvAnQqvZ4V/E
	BVqbD3M3+I968ETSGZtT7Gj5YMgAflZBzPngyIHXJrxA7Q1i9lXUttyRCnsjiOQrh6OJKdBQ9Gqe3
	1VUGN3gn6DSK1cdC3NIH8reLVXrSyT08tUWs8w7WEa7WL0JgJ3lXT/EbakK9KSH0sw9bfjZ7X2j0Q
	OpWWHrhgC5WI3iRD6XVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdAs-0005ol-9L; Thu, 23 Apr 2020 14:49:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdAh-0005o6-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:49:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2A202074F;
 Thu, 23 Apr 2020 14:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587653387;
 bh=Squ984zlMZptzhAKjHKpCQpxxgGfSb8mS/6BuC0Lfj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0s6jtrPZ8SpTqOIBa477jl1u+6TkbWr/QsSmToSI3XJ2lNs9zZG+S7lza8M15CPbG
 WNcvR3Cz8op83Ex4DPw0Y6yti7HStFX64AnBYwGS/7jmG8ukQ4KEVJuYyIXx27LS/q
 Ojf/ig9FiZjvdwoY9wvHzUrXhQh/+8l60BMO+H6c=
Date: Thu, 23 Apr 2020 22:49:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
 pinctrl entries
Message-ID: <20200423144938.GF9391@dragon>
References: <20200327133624.26160-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327133624.26160-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_074947_939903_85442043 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 s.riedmueller@phytec.de, kernel@pengutronix.de, c.hemp@phytec.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 10:36:24AM -0300, Fabio Estevam wrote:
> The I2C2 pins are already used and the following errors are seen:
> 
> imx27-pinctrl 10015000.iomuxc: pin MX27_PAD_I2C2_SDA already requested by 10012000.i2c; cannot claim for 1001d000.i2c
> imx27-pinctrl 10015000.iomuxc: pin-69 (1001d000.i2c) status -22
> imx27-pinctrl 10015000.iomuxc: could not request pin 69 (MX27_PAD_I2C2_SDA) from group i2c2grp  on device 10015000.iomuxc
> imx-i2c 1001d000.i2c: Error applying setting, reverse things back
> imx-i2c: probe of 1001d000.i2c failed with error -22
> 
> Fix it by adding the correct I2C1 IOMUX entries for the pinctrl_i2c1 group.
> 
> Cc: <stable@vger.kernel.org> 
> Fixes: 61664d0b432a ("ARM: dts: imx27 phyCARD-S pinctrl")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

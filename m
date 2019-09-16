Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889A5B419F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 22:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UA7p4+wlrAJ8PYPe2OyqQ/FeDPNOaEGHQVJFFd/daR4=; b=ApsbJEui/qk8WN
	mLoUsJM5A/GXDzZ8419QTvPGMhzD7otmCl9XpJ+toP88X5AIX4P4OkAtbxvMiF9iUaatzlA1zuUl9
	JcVXuWrfxKHBQP1ohnWvC0ziRtheOwrrkMdvPDwRYJeIP57nZOjpJYA4PFBaTqxyvjnt5ziQwHZt8
	hPkKPPRWdupK66bu6eJyHVXgzejYNvYZLKTwTt7RInox0mEDA2gTY5pDKTxBItM0NCc9HyRFINMDt
	abivHoeHoLRX0LJ2N7S00Pdm8yMjfr+/19MR/gj+esJGLIlB6RFvOQvBVZnUL6kZrniLYUF5iUDl0
	svR0aq4HknL5Z+x362pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xQ1-0004Xn-4F; Mon, 16 Sep 2019 20:16:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xPX-0004C0-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 20:15:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AF9020665;
 Mon, 16 Sep 2019 20:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568664947;
 bh=YjMszPffkC1Y723CLckbSsP0J7TBPbS3PGg0RQag3lk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=mpy+UJXERebsnZ51eywOwcC4mWWWPhWQrXL1Z3R1FB5Mr1X/tM7BwTEFzKng5UWvM
 ju5HzYTAyoRiVVWEhfziiwya0Q5d9komJoBEkDJoovuHUi+zdvW+lkENYqstXp93fL
 xYRTYNG1c9f7UylHQcma8QKWoNqApsPutMXY4j4U=
MIME-Version: 1.0
In-Reply-To: <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
 <1568042692-11784-2-git-send-email-eugen.hristev@microchip.com>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: at91: select parent if main oscillator or bypass
 is enabled
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 13:15:46 -0700
Message-Id: <20190916201547.5AF9020665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_131547_816798_09BC5586 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-09-09 08:30:34)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Selecting the right parent for the main clock is done using only
> main oscillator enabled bit.
> In case we have this oscillator bypassed by an external signal (no driving
> on the XOUT line), we still use external clock, but with BYPASS bit set.
> So, in this case we must select the same parent as before.
> Create a macro that will select the right parent considering both bits from
> the MOR register.
> Use this macro when looking for the right parent.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

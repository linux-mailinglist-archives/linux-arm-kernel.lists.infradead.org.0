Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2C010DAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKZ1+IrLpfMbMwxMRuEKhid2vJl63WxLE34cuydvIEE=; b=ByTcuKVai2pyr4
	Ql0w+c5Sx/7ZZNxP6bbDCbEgEE9okXODTywnmZBVva0dB/fuBhldNNveFIHqvA0O7xWda8gv3AVln
	x/tU5vC7x7OmIJL/WTNp1GKksgVtomKGcw/bRvSO0LsZlv8NErcF7ZC2DXcxZJod2LnerYg9+yAzu
	xtlplVgF3eXXgAGb5ORAyn+izCH1bmFUwfUUcmfvva3nQF6hO0CDrZvvVVeZWN7LQdOtzDa8+58j7
	aMEz9pHNJh6gPoKM9j12zrL2fhWyYcWF6L9aj1BYMeyPlqp/koTWhZKrcB5KCwLrZMlItJoulo2lE
	n8IFwXEyevSyPfEdGJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvQe-0001TC-72; Wed, 01 May 2019 20:02:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvQY-0001So-3p
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:02:03 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3493A20651;
 Wed,  1 May 2019 20:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556740921;
 bh=l/LxL8EBYbwMQjXKoUhyhYab3MpKv6686qKXmOcS8H0=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=SeX9Qi0o1Tsb4X32hOnH7Q7vh/y6mD1oRRJqSvoTaNC/PQLznL1hLfVxuK7IxOSNQ
 TLkNS/Wo5ncD0icB83HCaf6UBBuSH6yttrilQI+VQWn2uc8DXM6xHGuGU21sBbn8gq
 bxvZaWGTRDxENUdHTcXgHhGm0z/St6vW/XfLoiSY=
MIME-Version: 1.0
In-Reply-To: <20190501095008.GA9120@nishad>
References: <20190501095008.GA9120@nishad>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: sunxi-ng: Use the correct style for SPDX License
 Identifier
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nishad Kamdar <nishadkamdar@gmail.com>
Message-ID: <155674092045.168659.15755905090962647001@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Wed, 01 May 2019 13:02:00 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130202_170474_CA18FB18 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, Uwe Kleine-König <u.kleine-koenig@pengutronix.de>, Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nishad Kamdar (2019-05-01 02:50:12)
> This patch corrects the SPDX License Identifier style
> in header files related to Clock Drivers for Allwinner SoCs.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used)
> 
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

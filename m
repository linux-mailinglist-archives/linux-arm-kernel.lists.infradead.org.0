Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246D416533E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFAO/+JYCs8JqFdw4HvCUu8PjgZnWZhwh7Ufv1m2aKE=; b=ZL620x3y7oe8ww
	t9hnh9eZtIiffJC/HOEZCvtw11LKkxtnJ7CphXkP5ObWCP+qc6HxFrkygGApoiuHfoBOMjrCteKWX
	0tAujzeSojlP1cJ88qo7eFBQYV/QU1K5QpgwE73LELA1mOF0vpZ7DeulAH0QDPdimbO3hTf7Pmqc6
	EGzGOKBUUJKVyhfE+VXrEBiUawT/o74RBQ64Euw6fu4I9XNxsXlN3TtoNlpCeai379uRqU1CuENSQ
	A7d/z4oYyGzG9/r1yq613WnOY6+ahP+rGgPFWEzxju+JnN2S+YI2+h1n1uImzwCmAmrdSvWu/Y/8C
	lyNkKqDFV5o3isY/sbVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ZDM-0004eK-3J; Wed, 19 Feb 2020 23:57:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ZDC-0004do-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 23:57:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6749C206A5;
 Wed, 19 Feb 2020 23:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582156622;
 bh=1IW+yQwOQoK/ZE/qlAsbbc4XwXHuGcveuAoms/xk5dY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=lCHRAKI9M7L12wHrBZ8MXGCU9Ueecj+GJJVICBRhdTihihtSzoKQ+dorDsMS8065t
 4yJYO4AmHlw7Zw20BJYYkhc4cH0wJuiNGAATeWdHGckhuZsychuFhiOhStetOYrolP
 NdwhtJaead2pHVH4yXQW2ptWcTUjk+Onv7lOz+p8=
MIME-Version: 1.0
In-Reply-To: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Date: Wed, 19 Feb 2020 15:57:01 -0800
Message-ID: <158215662160.184098.12475377410437970578@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_155702_950154_DD679D4F 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 linux-clk@vger.kernel.org, Franck LENORMAND <franck.lenormand@nxp.com>,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2020-02-11 13:24:33)
> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have sizeof "6" and "7".
> 
> This produces many oopses with CONFIG_KASAN=y:
> 
>         BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0

Can you share the full kasan bug report instead of the single line?

> 
> It shouldn't cause an issues in normal use because these structs are
> always allocated on the stack.

Is packed necessary for these? I thought that if the beginning of the
struct was naturally aligned and there was sometimes a byte or two at
the end then having __packed wasn't useful. So maybe it's better to just
drop __packed on all these structs and let the compiler decide it can
add some padding on the stack? Or do we have arrays of these structs
sitting in memory all next to each other and they need to be that way to
be sent through the mailbox?

> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> ---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C23941B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtN6yeiX8MsQS0acnquZhgD/iF8I5f6aKF6//Ks4jik=; b=mOwPRVic+IcrBv
	8Ms//PIKUTorny77jJUIZgOmhdJy8bp2hXSth88KDNm/pDl1hXpWIn3H8Q3l5fc1vY9kMY+xdYdbz
	ldKEcZ25xpWvo7PKu2+WRlw6BrXvnGhHfWg8BX9QYlkv5EfXvqFHlmv61aM1CBq1IN6Q5wopc+10d
	EeTZIJksIeuWgcioAGowD0571vD/QSbRLRT56kJ7MXYmSeDgBbjT/RaGZ02SySp7bFRVKwkvljY7N
	5ll3XDEaF5IM/4C0l7DhGypYlkOFU91EkIbPlaYzP+rLSpbBwV3s1QZ5pL8cZr3Rv1KtfH3qEaXUP
	WnJZ2CRmclQOXs/6iW8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJQk-0002SH-4M; Fri, 07 Jun 2019 18:17:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJQb-0002Rz-Ei
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 18:17:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0086E20868;
 Fri,  7 Jun 2019 18:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559931445;
 bh=avBGzeDVPLC9Ku4xRFNfHkrWVnK+12j3mF281rswmfs=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=Ds6bRfWQvpaGWItGBIQ2L+kHDmodlH1EYVF3q7lMDBTgqnuENK9g2pHSlExCOXG5X
 a+pte8EbrOWyuTxeCw/a2lS6/ldaHVZ6kPB+YPcyl5Ama5fQXvJZs/RBhbqOgQL93m
 i15dWegbnRDru6/8ThZdIe2Z8XTWmBKRA8rQLErs=
MIME-Version: 1.0
In-Reply-To: <20190520080421.12575-3-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
 <20190520080421.12575-3-wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 02/25] clk: Add CLK_HW_INIT_* macros using .parent_hws
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 11:17:24 -0700
Message-Id: <20190607181725.0086E20868@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_111725_512828_77017297 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chen-Yu Tsai (2019-05-20 01:03:58)
> A special CLK_HW_INIT_HWS macro is included, which takes an array of
> struct clk_hw *, but sets .num_parents to 1. This variant is to allow
> the reuse of the array, instead of having a compound literal allocated
> for each clk sharing the same parent.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
[...]
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index bb6118f79784..0c241b43a802 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -904,6 +904,24 @@ extern struct of_device_id __clk_of_table;
>                 .ops            = _ops,                         \
>         })
>  
> +#define CLK_HW_INIT_HW(_name, _parent, _ops, _flags)                   \
> +       (&(struct clk_init_data) {                                      \
> +               .flags          = _flags,                               \
> +               .name           = _name,                                \
> +               .parent_hws     = (const struct clk_hw*[]) { _parent }, \
> +               .num_parents    = 1,                                    \
> +               .ops            = _ops,                                 \
> +       })
> +
> +#define CLK_HW_INIT_HWS(_name, _parent, _ops, _flags)                  \

Minor nitpick, please add a comment here to indicate that this is here
to share the same compound literal between multiple clks using the same
parent.

> +       (&(struct clk_init_data) {                                      \
> +               .flags          = _flags,                               \
> +               .name           = _name,                                \
> +               .parent_hws     = _parent,                              \
> +               .num_parents    = 1,                                    \
> +               .ops            = _ops,                                 \
> +       })

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

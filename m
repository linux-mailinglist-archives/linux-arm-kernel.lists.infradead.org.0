Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4916BB5714
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgqZMnkw65Obh9GQUCCYzptp8pr68R5XU+PsZd9uTek=; b=o22NGcXfsN+Tj9
	TDZg/ndrssL9F7Y7tcC6YMZgphfCet+IE/TidIYxrQRJGhTYrhRsNT4DocMP1s54+jgHWoKH9/BDO
	as53aOE5Ah2txT5x88gqLmZb2SUHAxKVgtJwCba4BVhoIC9xV9KlBki4OMwY9fGOczxPtOZWAOrJF
	C9VwSx6GsMQTjs9KJNfjIq8ewvZsxk31IEQfiUJtQz6jIsfwvER4ERq81wtiWem3goa9beBlXCpoq
	oTjFrebdv5WxxP2SZjXW5HkqEWbnJ1ZhZ2dh9suaE0XX0/q/xWpZTBrRXLUqOJiDZhlD+Eg9XAl25
	ExNv3SjK1/cD+LE+MjtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKGk-0005U5-8w; Tue, 17 Sep 2019 20:40:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKGU-0005TI-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:39:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F75C2054F;
 Tue, 17 Sep 2019 20:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568752797;
 bh=t7XSIVvuIrJr+dTFLwJdB0q0iDWxPt3F88Tk1jyyAP8=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=g19ToDQBV751yjIEYkLnsdhOeu+FbOMz4i9GlEvIDjacEF61ADydYtjS3jv4EbPQK
 yuSedeuNiovoGkvFB2FoQ9Z/GOLlOG7GVDqXUq3zucvTxcc9MPx+72WE3CRQyXtexi
 61n3o6OxehKUpmjDJ/QK50ACQS/HKJ6xld5MF0QY=
MIME-Version: 1.0
In-Reply-To: <20190916161447.32715-2-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-2-manivannan.sadhasivam@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 1/8] clk: Zero init clk_init_data in helpers
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 13:39:56 -0700
Message-Id: <20190917203957.9F75C2054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_133958_361438_CBD64D2A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-09-16 09:14:40)
> The clk_init_data struct needs to be initialized to zero for the new
> parent_map implementation to work correctly. Otherwise, the member which
> is available first will get processed.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/clk/clk-composite.c  | 2 +-
>  drivers/clk/clk-divider.c    | 2 +-
>  drivers/clk/clk-fixed-rate.c | 2 +-
>  drivers/clk/clk-gate.c       | 2 +-
>  drivers/clk/clk-mux.c        | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> index b06038b8f658..4d579f9d20f6 100644
> --- a/drivers/clk/clk-composite.c
> +++ b/drivers/clk/clk-composite.c
> @@ -208,7 +208,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
>                         unsigned long flags)
>  {
>         struct clk_hw *hw;
> -       struct clk_init_data init;
> +       struct clk_init_data init = { NULL };

I'd prefer { } because then we don't have to worry about ordering the
struct to have a pointer vs. something else first.

>         struct clk_composite *composite;
>         struct clk_ops *clk_composite_ops;
>         int ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

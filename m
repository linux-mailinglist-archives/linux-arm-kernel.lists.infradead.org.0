Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D50183D1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmFiNPvPA+Q10uwEeYcBosEwmp/9710dPQx7h9r2LQg=; b=NGGpJn6NXTCw4u
	2IIz0ICe4XMsObIzqL3NVYo2p9/aIfYu7SIO8B7xxFEFdeWNMMW7FoqdBl0voTrs+fqk1v4twHevq
	5jjuol5nUSdFJ4Ei6KQD4kvYmJc9dgCnlob+UNRa1rnjoJzbz/r0BVT+RvmXeNyh+H024efc9ijkG
	6/yym7KWlShQEB3QccQZ/NYRsce2r1HzZRbvipQ1jdXwhYcD8/1emSpBvBjdygpDXjI0Ym9WTHZvk
	OyYKUv77QWQz+hirAfJK2tazuK/MhnwtNeHw6qGiqZ11YQNtaiTjlb7zCuMVDbC8sCh2EVLbOuJMF
	EUnHnoffbOh1rxQXfRpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCX1j-0007Ar-HE; Thu, 12 Mar 2020 23:14:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCX1b-0007AB-OU; Thu, 12 Mar 2020 23:14:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC2D3206F7;
 Thu, 12 Mar 2020 23:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584054837;
 bh=KdJ376DrupqSBe4hSilpFPULBV8+maazUojKqMfa2Hs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=OPQZ9/crlt1D8ScrMECNiBOu3Ewxf1OnMJkB6zbrAZUkT4KA0/XSQZ7E+XiLRoIfV
 CtME35UK548pS59QOb5MmyuPCYA7AxrPTGjW6qQ6ZPj2wTNFRaQY4DFbg0bNE2EKMr
 AGmSq5wEHbayZYhgGVSng7s7xs0zFYDuiL3S8eZI=
MIME-Version: 1.0
In-Reply-To: <ab03d578775df76c12e1dcff5d5cc5c1eb4d6fa7.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <ab03d578775df76c12e1dcff5d5cc5c1eb4d6fa7.1582533919.git-series.maxime@cerno.tech>
Subject: Re: [PATCH 05/89] clk: Return error code when of provider pointer is
 NULL
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 12 Mar 2020 16:13:56 -0700
Message-ID: <158405483605.149997.16173757299414738003@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_161359_840268_9E2C1C95 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-02-24 01:06:07)
> The clock framework DT provider helpers don't check the pointers in the
> array registered by the clock provider before returning it.
> 
> This means that if the array is sparse, we will end up returning a NULL
> pointer while the caller expects an error pointer, resulting in a crash.
> 
> Let's test the pointer returned and properly return an error if the pointer
> is NULL.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/clk.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index f0f2b599fd7e..8532b5ed1060 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -4318,13 +4318,18 @@ struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
>  {
>         struct clk_onecell_data *clk_data = data;
>         unsigned int idx = clkspec->args[0];
> +       struct clk *clk;
>  
>         if (idx >= clk_data->clk_num) {
>                 pr_err("%s: invalid clock index %u\n", __func__, idx);
>                 return ERR_PTR(-EINVAL);
>         }
>  
> -       return clk_data->clks[idx];
> +       clk = clk_data->clks[idx];
> +       if (!clk)

NULL is a valid clk. That should keep working and not be overriden with
an error pointer. If you want to return an error pointer either fill it
in with an error pointer or write your own version of this.

> +               return ERR_PTR(-ENODEV);
> +
> +       return clk;
>  }
>  EXPORT_SYMBOL_GPL(of_clk_src_onecell_get);
>  
> @@ -4333,13 +4338,18 @@ of_clk_hw_onecell_get(struct of_phandle_args *clkspec, void *data)
>  {
>         struct clk_hw_onecell_data *hw_data = data;
>         unsigned int idx = clkspec->args[0];
> +       struct clk_hw *hw;
>  
>         if (idx >= hw_data->num) {
>                 pr_err("%s: invalid index %u\n", __func__, idx);
>                 return ERR_PTR(-EINVAL);
>         }
>  
> -       return hw_data->hws[idx];
> +       hw = hw_data->hws[idx];
> +       if (!hw)

And this one is the same. We let NULL be returned so that it can be
returned as a NULL pointer to the caller if desired. That indicates a
clk that does nothing when used.

> +               return ERR_PTR(-ENODEV);
> +
> +       return hw;
>  }
>  EXPORT_SYMBOL_GPL(of_clk_hw_onecell_get);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32E7ABE5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKsscFinAyBCal0lV+Bx0yOi4q6hcDWxPfjjB4rIXFY=; b=TsGsdS4dRbKO5l
	EqZF9/ZZa6OXbsaTQVlROfV1nkdwxy4m4iBPf/8LO8e8Sr/AEso6vl5d0BiwzXOSgVIscfUKwo2AE
	9KuHwjuN8eDsvIdNquBVyaBLIMGrz1AOww8YWLg1k1hU1WKSp6+dsVzDDNc0SdMiGSuMZ+ronzGUe
	GJEEfnkPlfNXSHS7sxnaQhglzZoKRlXo8ufMisiHo35/lMfOvlXRnhDN0rjbiUMQ9iXAbjvnaDgbu
	ZjuyUe8g10K4jhdzp3IvU62empl5gXwx0wqHu5d8jyzn94er8YdyDDJUkF6nEeA34hqD3VTad/LvH
	yn9YlSSjfpzH6URoLmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6HkA-0002vP-W7; Fri, 06 Sep 2019 17:09:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hk1-0002v5-5E
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:09:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B861620578;
 Fri,  6 Sep 2019 17:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567789784;
 bh=BNNllF0FjOInxrSgqhOawPj640tyUstNVfBjp7RKecU=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=YSf77/C3UiKjN6tATKXLzwxWc1iXh4wXTn5RzbwF9+GsqqHtSVGbEwxjHJmR4DyLG
 KrTW+f0a2vBT85j6hbY7Fyj2OqNoKA2k1gsRGAAKsToe3i6ZwOO/4PglZm41szUf3n
 CLxCWd0LKfXammfVpMyD0uLJVKOrvYQN7D8S+KM0=
MIME-Version: 1.0
In-Reply-To: <1566299605-15641-8-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-8-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 07/11] clk: imx: scu: add suspend/resume support
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:09:43 -0700
Message-Id: <20190906170944.B861620578@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100945_224902_E79D7844 
X-CRM114-Status: GOOD (  12.52  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-08-20 04:13:21)
> Clock state will be lost when its power domain is completely off
> during system suspend/resume. So we save and restore the state
> accordingly in suspend/resume callback.

And this doesn't need any coordination with other clks in the clk tree
right?

> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> index edc39d7..8d9cfa2 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -46,6 +46,10 @@ struct clk_scu {
>         struct clk_hw hw;
>         u16 rsrc_id;
>         u8 clk_type;
> +
> +       /* for state save&restore */
> +       bool is_enabled;
> +       u32 rate;
>  };
>  
>  /*
> @@ -425,6 +429,9 @@ struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
>                 hw = ERR_PTR(ret);
>         }
>  
> +       if (dev)
> +               dev_set_drvdata(dev, clk);
> +
>         return hw;
>  }
>  
> @@ -481,10 +488,52 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
>         return 0;
>  }
>  
> +int __maybe_unused imx_clk_scu_suspend(struct device *dev)

static?

> +{
> +       struct clk_scu *clk = dev_get_drvdata(dev);
> +
> +       clk->rate = clk_hw_get_rate(&clk->hw);
> +       clk->is_enabled = clk_hw_is_enabled(&clk->hw);
> +
> +       if (clk->rate)
> +               dev_dbg(dev, "save rate %d\n", clk->rate);
> +
> +       if (clk->is_enabled)
> +               dev_dbg(dev, "save enabled state\n");
> +
> +       return 0;
> +}
> +
> +int __maybe_unused imx_clk_scu_resume(struct device *dev)

static?

> +{
> +       struct clk_scu *clk = dev_get_drvdata(dev);
> +       int ret = 0;
> +
> +       if (clk->rate) {
> +               ret = clk_scu_set_rate(&clk->hw, clk->rate, 0);
> +               dev_dbg(dev, "restore rate %d %s\n", clk->rate,
> +                       !ret ? "success" : "failed");
> +       }
> +
> +       if (clk->is_enabled) {
> +               ret = clk_scu_prepare(&clk->hw);
> +               dev_dbg(dev, "restore enabled state %s\n",
> +                       !ret ? "success" : "failed");
> +       }
> +
> +       return ret;
> +}
> +
> +const struct dev_pm_ops imx_clk_scu_pm_ops = {

static?

> +       SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_scu_suspend,
> +                                     imx_clk_scu_resume)
> +};
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

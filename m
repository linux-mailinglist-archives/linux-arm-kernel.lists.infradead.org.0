Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD8F18C0ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buPND49pLSlYiyPOye6D48OsUY+nWuBZSoU0USnq86k=; b=cjCsJhNq4AzfvC
	EYYwP06e/5pjsxp4trEqq/LxcG6+XD1CQAJx7M58xcmbHX1fZ0T/iT0TRwJn7giF4lNpIqbu4Srl8
	obMTwBmBmv1j04/zEPxJe4oxtaVeZLV1Ytx2CXr2RllC70mL4dqAUzuMe92tnMII8msy8+LGZYJu+
	woyhpiGHr8Hf3kPxKeiJAhNMtYkwWJXD2we2AkiXhJmkL/222r8GqJW3TcBq/9W8LLkYn8gO7OjgK
	fsCA+8Scz8iL7PqdBcvUmayxRwXU3izHghY0aINQHc835PrXDd+/+7nqQgmmhl5jtl85L7wdNX8Zl
	DMTmwxOpOzj3163t4e6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1Jm-0006mr-H5; Thu, 19 Mar 2020 19:59:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Jd-0006mR-NW
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:58:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EBF7206D7;
 Thu, 19 Mar 2020 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584647933;
 bh=yCgZtR0DYZus2gadAfCLRdCWgaBH+dubDXrtA7e0syk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=wt+e1Pu9k2l9WmnnuMKWY/ZpKF2D2PIKWz9jfDOywCBDxERi7SNrsjsKvnNegbA2Y
 VePqK5sSsMk+BumN+On6CYElmEs/gRcxt7ccNq769W0L//9MoN9+Si0znmJFO/yPwC
 qvQ8YH4jGExtV3XX4SZVCX2/O4gqvGNe3vVvN4AI=
MIME-Version: 1.0
In-Reply-To: <1584502004-11349-1-git-send-email-Anson.Huang@nxp.com>
References: <1584502004-11349-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-pllv3: Use readl_poll_timeout() for PLL
 lock wait
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, allison@lohutok.net,
 festevam@gmail.com, gustavo@embeddedor.com, kernel@pengutronix.de,
 kstewart@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, s.hauer@pengutronix.de, shawnguo@kernel.org,
 tglx@linutronix.de
Date: Thu, 19 Mar 2020 12:58:52 -0700
Message-ID: <158464793223.152100.9637932949695874103@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125853_787594_30599CF1 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-03-17 20:26:44)
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index df91a82..3dfa9c3 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -53,23 +56,14 @@ struct clk_pllv3 {
>  
>  static int clk_pllv3_wait_lock(struct clk_pllv3 *pll)
>  {
> -       unsigned long timeout = jiffies + msecs_to_jiffies(10);
>         u32 val = readl_relaxed(pll->base) & pll->power_bit;
>  
>         /* No need to wait for lock when pll is not powered up */
>         if ((pll->powerup_set && !val) || (!pll->powerup_set && val))
>                 return 0;
>  
> -       /* Wait for PLL to lock */
> -       do {
> -               if (readl_relaxed(pll->base) & BM_PLL_LOCK)
> -                       break;
> -               if (time_after(jiffies, timeout))
> -                       break;
> -               usleep_range(50, 500);
> -       } while (1);
> -
> -       return readl_relaxed(pll->base) & BM_PLL_LOCK ? 0 : -ETIMEDOUT;
> +       return readl_poll_timeout(pll->base, val, val & BM_PLL_LOCK, 500,

Did you want to use readl_relaxed_poll_timeout() to keep it the same as
before?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

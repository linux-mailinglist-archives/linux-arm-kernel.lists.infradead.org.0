Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8E4ABE78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7c7qvchx2EIAfyx4AIzgAyIvI4RHW+SfUztkSlsgls=; b=lhWziA+0j3k6T4
	PEjDg79e3Leqo9mVwHIENbrlwwJW6YTDFNmLpirvlBNXqydnweBD4li0TJjIbp4tkV6ajuTMuOkzJ
	geXJWXhms+cs38mZvuQOJB6tvW1wmiZddY2ArjSMi1ihGDzrRcyPrw+dimU4rUn0SWiwMrarT/uf9
	cnV1DQKSMV3sWD6zbr3ZjT21rpNN1f/2PuS6RHi5BjeXINUujUb1b0qVyW2tV+CJycHZkcArckIs3
	EH5IceL5nPM0JEZeXmn3SIJGZ1R8XZWX29drDvbbmDpbZ3L1iyAxQOCAN0+tSXHZj1Qbd9veRlzel
	8bPFwf7GpLB77aMZtFMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6HpE-0004rV-GV; Fri, 06 Sep 2019 17:15:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hp0-0004rA-Fg
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:14:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 167BF20640;
 Fri,  6 Sep 2019 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790094;
 bh=Fk8SG2kR+SS8znjkPZThYMqwvLJSJpeoX3XJkNQW8Mw=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=NPcuOp9W489RuyDxA3gPyNxJ/r5A3+sCy/8hkEsqKM249eggL1qa57JAmJrToTg8p
 KbUMzf6EvO51BDSY4YxRZr/vhxDsqNSde4EUeFJLDe2Zgw8oExS90KYGXErMIUiFle
 TiK1mrAyj7JzaeqVcSTJ0JPPZtSbjTp3CeB28Btk=
MIME-Version: 1.0
In-Reply-To: <1566299605-15641-12-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-12-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 11/11] clk: imx: lpcg: add suspend/resume support
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:14:53 -0700
Message-Id: <20190906171454.167BF20640@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_101454_545593_52D530D5 
X-CRM114-Status: GOOD (  10.44  )
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

Quoting Dong Aisheng (2019-08-20 04:13:25)
> diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
> index 3c092a0..4df0818 100644
> --- a/drivers/clk/imx/clk-lpcg-scu.c
> +++ b/drivers/clk/imx/clk-lpcg-scu.c
> @@ -33,6 +33,9 @@ struct clk_lpcg_scu {
>         void __iomem *reg;
>         u8 bit_idx;
>         bool hw_gate;
> +
> +       /* for state save&restore */
> +       u32 state;
>  };
>  
>  #define to_clk_lpcg_scu(_hw) container_of(_hw, struct clk_lpcg_scu, hw)
> @@ -112,5 +115,35 @@ struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
>                 hw = ERR_PTR(ret);
>         }
>  
> +       if (dev)
> +               dev_set_drvdata(dev, clk);
> +
>         return hw;
>  }
> +
> +int __maybe_unused imx_clk_lpcg_scu_suspend(struct device *dev)

static?

> +{
> +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> +
> +       clk->state = readl_relaxed(clk->reg);
> +       dev_dbg(dev, "save lpcg state 0x%x\n", clk->state);
> +
> +       return 0;
> +}
> +
> +int __maybe_unused imx_clk_lpcg_scu_resume(struct device *dev)

static?

> +{
> +       struct clk_lpcg_scu *clk = dev_get_drvdata(dev);
> +
> +       /* FIXME: double write in case a failure */
 
What does this mean? Sometimes writes don't work unless the CPU issues
them twice?

> +       writel(clk->state, clk->reg);
> +       writel(clk->state, clk->reg);
> +       dev_dbg(dev, "restore lpcg state 0x%x\n", clk->state);
> +
> +       return 0;
> +}
> +
> +const struct dev_pm_ops imx_clk_lpcg_scu_pm_ops = {
> +       SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_clk_lpcg_scu_suspend,
> +                                     imx_clk_lpcg_scu_resume)
> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

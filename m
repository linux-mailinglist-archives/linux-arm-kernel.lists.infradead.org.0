Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592DA12D2C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EHDmBKjybBVzG6MFgY0Nqus7SSFbxEYaSjj34+QnTw=; b=RpJh6PZ/NzVqLH
	wdew3LRM/FKjuCrFdMYBoTTk9zHAIkWhlvayHGW5l6iJY1ciCclhKnTbEH29kLw6oOd1MUAIQIJ4x
	+BezO94bHlfowdgjGHFPg2qOX2EKY8v9Nd0ukFVaIX12caJ3axkg3kFO4eKHdjSIY4HQNUpuLmYMv
	MkMOKb+VBe3Y0kCgl8gxJw3z/Kb7g4ST79x/LLlWzxluKYXkN2CxwfQTQFDnqBrNpX3vTNTtLRrZQ
	FAPxhNWAJqHJmrsaF1cJfaeJHcixSd5lbu70B1eFt4qWh5suHwQtTHcoj1OEO7xw0mo7TXRpZ058j
	bHPHaCULoUIHWdm+U/Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyxk-0008KY-Kl; Mon, 30 Dec 2019 17:36:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyxC-000830-Rs
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:35:45 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 631BD2077B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 17:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577727340;
 bh=YjZsLJP99nDwq2E3J4ovBTUTnTY/uRPMv60bV8MttJk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=l2pi99460cTcBY4y9/wxHor/yeLmALERgqd9fiCZPcmgvFQXSUyw1EmP01I5vNlf2
 3wR6zLvyb6oLzP79GH9JbBWEQggDkypZq1sLy3ZpRX4wBaYtDUAcWqGU1WCXgKxJPN
 NqKRFP+WOci6rj6qPx03rD6Xog+rEYpJfYIlZmoo=
Received: by mail-lj1-f181.google.com with SMTP id h23so34010224ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 09:35:40 -0800 (PST)
X-Gm-Message-State: APjAAAXxBqzCKWN6Gn+U98LUHFP73SEWafaiv4oFvLg5oBQU9qRQjCGY
 gPisQscKoYE5T5BoKJFbIWFz10QEo0/hRco2BM4=
X-Google-Smtp-Source: APXvYqx7UTyUxh3G/Zh1ouhGolU28zgq58fP5O3EjtUGcFor7aORmjygYWFwL0U0IdRcWmbTP0VNKmbMEvWbVqGjvJs=
X-Received: by 2002:a05:651c:106f:: with SMTP id
 y15mr13370428ljm.63.1577727338476; 
 Mon, 30 Dec 2019 09:35:38 -0800 (PST)
MIME-Version: 1.0
References: <20191230084731.15776-1-yuehaibing@huawei.com>
In-Reply-To: <20191230084731.15776-1-yuehaibing@huawei.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Tue, 31 Dec 2019 02:35:02 +0900
X-Gmail-Original-Message-ID: <CAGTfZH36sbTn++gKq+cQOXAutXQbyjbzZ_0VeU2Y037hWnROqA@mail.gmail.com>
Message-ID: <CAGTfZH36sbTn++gKq+cQOXAutXQbyjbzZ_0VeU2Y037hWnROqA@mail.gmail.com>
Subject: Re: [PATCH -next] PM / devfreq: imx8m-ddrc: Fix inconsistent IS_ERR
 and PTR_ERR
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_093542_970118_62B55B08 
X-CRM114-Status: GOOD (  17.88  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 5:58 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix inconsistent IS_ERR and PTR_ERR in imx8m_ddrc_probe().
> Detected using Coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/devfreq/imx8m-ddrc.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
> index 53df792..bc82d36 100644
> --- a/drivers/devfreq/imx8m-ddrc.c
> +++ b/drivers/devfreq/imx8m-ddrc.c
> @@ -395,15 +395,27 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
>         }
>
>         priv->dram_core = devm_clk_get(dev, "core");
> +       if (IS_ERR(priv->dram_core)) {
> +               ret = PTR_ERR(priv->dram_core);
> +               dev_err(dev, "failed to fetch core clock: %d\n", ret);

If there is no special reason, just use 'get' instead of ' fetch' word.
s/fetch/get

> +               return ret;
> +       }
>         priv->dram_pll = devm_clk_get(dev, "pll");
> +       if (IS_ERR(priv->dram_pll)) {
> +               ret = PTR_ERR(priv->dram_pll);
> +               dev_err(dev, "failed to fetch pll clock: %d\n", ret);

ditto.

> +               return ret;
> +       }
>         priv->dram_alt = devm_clk_get(dev, "alt");
> +       if (IS_ERR(priv->dram_alt)) {
> +               ret = PTR_ERR(priv->dram_alt);
> +               dev_err(dev, "failed to fetch alt clock: %d\n", ret);

ditto.

> +               return ret;
> +       }
>         priv->dram_apb = devm_clk_get(dev, "apb");
> -       if (IS_ERR(priv->dram_core) ||
> -               IS_ERR(priv->dram_pll) ||
> -               IS_ERR(priv->dram_alt) ||
> -               IS_ERR(priv->dram_apb)) {
> -               ret = PTR_ERR(priv->devfreq);
> -               dev_err(dev, "failed to fetch clocks: %d\n", ret);
> +       if (IS_ERR(priv->dram_apb)) {
> +               ret = PTR_ERR(priv->dram_apb);
> +               dev_err(dev, "failed to fetch apb clock: %d\n", ret);

ditto.

>                 return ret;
>         }
>
> --
> 2.7.4
>
>


-- 
Best Regards,
Chanwoo Choi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

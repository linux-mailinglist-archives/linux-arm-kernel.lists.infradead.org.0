Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9683BF78B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 19:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Huvto4cj7WxRHxLJdduROtFhRgvOy/fPhY+5uBJ1Yg=; b=TGmMyHOO+kOYD7Uxs38L5WdL4b
	MUxRVdkh7PGs837vpN5Jcn/nE+/a6OGYKnpz+CeIFCzre6Q/E2ljDGEjqZX2g8h8wPEZ7mZHOTpQD
	D7eP2GHyMwjOjV8ZU8YtY7HY23u/N6LNMwBiP5ChgA7xBPdx//OBbz1xJC4hedkAc85QqPyfo+GDZ
	7FBY2AV8chqSmLKdFU1SWVTbzzg+dF0XWsQ0fzjAfziROe2M7FxjtzIRoXYUYvXH0ixmPdvKfRtgo
	CwVRmP+fnioiSziJiTipuitqN2ZW7021EWnCZc0PycoRxCCurhvy4FmKmpXjqNFomjA89TUHzNmpQ
	PDzlQIAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDXVy-0003BT-A0; Thu, 26 Sep 2019 17:25:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDXVm-0002Vr-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 17:25:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so1911192pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 10:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=t8KSaOsUA0A5+mnKTZ8gR5rlbkOnzjQQsfjJ840XQJk=;
 b=A4JJp7qYcNE79wFFw4ug9NrWVG1ouENyKepTkUqyu7bQIMdRc6liLU2w3bG5seaQuT
 LSO+YCCywdnVWigb9qRkIMsvB+XTbIlnWTZxGC8LWCbjCLarTkrN6FqCB9fmu7sJgTGr
 m6T8uV0jsUJbohPR8HsMHw/N2P3nCr3TybgZBckxRuJ1k43A79nn1eDFiVlz7aqMTFjy
 QGHIKO6kxObLdhC8hVgxbKPyTPfnq8mdoId5uyeIYf1HFRRLVgaGdeBqc+i/dLyRwwhI
 YT3HU0j9ZQWpJx2wTuqaBS9qh6rMzAFJXjmyo1MFgHeXpm/gY03qVA7AENSwAefDqTUl
 cujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=t8KSaOsUA0A5+mnKTZ8gR5rlbkOnzjQQsfjJ840XQJk=;
 b=Kw7vsEyc04nCWpsc6W9PNb+wHCY+Z6dDXx3aeuQ+u37ARShMICXzVmWMOcSNxKJoIo
 HvbCtKJqgjqABNUNag/1v+MLpl6EWEzk1YVATIAU7SyzGhsGqVXatvcBLteDAwqFGEjl
 SWaLbxidSY1eUg0binc9Q//P3SLtSyifZcUHxOOBlIrKJvY4FnLFwpUsjss2wj+Rk61Z
 TmydgesE98VoZzFWmwSa+zEcANqTP6/qyQTcG54Fafb4AgpYLU5FbPluNANy2rY0uLJF
 fxGCymJG66iB8GA9WI7vkXU7v0sUQh4sYu8kS85TZGbEDZJS5YxYF70flvoKdFc8QHWX
 nOqg==
X-Gm-Message-State: APjAAAWFEXvGaHCzd5UDolPZZL5WkP559PykvEV5oZcc5qLzhBb4s6qa
 oRrqZGO6Mr2n3uJ+IVUWHEI=
X-Google-Smtp-Source: APXvYqx4m+E7/H+s5Lc/cis9LXP8X2+1ZKGkWbYibcJmL4EcS/TtoInNtol0fEES4fLZX1bOcPPTKA==
X-Received: by 2002:a17:90a:77ca:: with SMTP id
 e10mr4659549pjs.24.1569518701338; 
 Thu, 26 Sep 2019 10:25:01 -0700 (PDT)
Received: from arch-late ([12.206.46.61])
 by smtp.gmail.com with ESMTPSA id 127sm4941845pfw.6.2019.09.26.10.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 10:25:00 -0700 (PDT)
References: <20190926155539.GA20744@sausagefarm>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Jeeeun Evans <jeeeunevans@gmail.com>
Subject: Re: [PATCH] staging: media: imx: Use devm_platform_ioremap_resource().
In-reply-to: <20190926155539.GA20744@sausagefarm>
Date: Thu, 26 Sep 2019 18:24:59 +0100
Message-ID: <m3wodvgec4.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_102502_854608_DF3D51C6 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, festevam@gmail.com, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, p.zabel@pengutronix.de,
 slongerbeam@gmail.com, mchehab@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeeeun,
On Thu 26 Sep 2019 at 16:55, Jeeeun Evans wrote:
> This patch fixes a warning by coccicheck:
> drivers/staging/media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use devm_platform_ioremap_resource for state -> regs
>
> Use devm_platform_ioremap_resource helper which wraps platform_get_resource()
> and devm_ioremap_resource() together.
>
> Signed-off-by: Jeeeun Evans <jeeeunevans@gmail.com>
>

Thanks for the patch.
LGTM.

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

---
Cheers,
	Rui


>  drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..bf21db38441f 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
>  static int mipi_csis_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct resource *mem_res;
>  	struct csi_state *state;
>  	int ret;
>
> @@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  	mipi_csis_phy_init(state);
>  	mipi_csis_phy_reset(state);
>
> -	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	state->regs = devm_ioremap_resource(dev, mem_res);
> +	state->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(state->regs))
>  		return PTR_ERR(state->regs);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

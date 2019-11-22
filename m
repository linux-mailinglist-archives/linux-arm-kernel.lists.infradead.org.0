Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A331071E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 13:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4ClTZuNdwMwPndeqYXcwpgatZuVoFflW2BlBz7aY5Q=; b=Kcf/qA79pNE5R6
	BRB03IqJ693/3Vw5zqN8/cp07p1r5nmDEaneF1nf9w/1QaXkNChntba1o4t8yC4Z5Pg8ODJIOc4r4
	m4HqXJxjjQkCXTiu2Z9W5Ktmbde9n3xi4Zf8M3rjjTN7ti9lptLOXVdT7fGgWgNlvDTp1fVVfx7V5
	HwK8NbzT+C1tyZZ1DVo1Kw5WfBE4b86Hd14RwIRUFmDSvYPIqTwfWSzbaXmhfYXzKlBOfzLXHtkhY
	Djb6v9WuxVyBOkUZbo4+nyPU/AN1oYBo0N4U7P1fBISTdhU0AaL4gwjlerf3psmW7Uvwd5Nk1HWVm
	tn5RV5aurXOjqgaI9cAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7d7-0006t1-OR; Fri, 22 Nov 2019 12:01:41 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY7cx-0006s1-4C
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 12:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574424087;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=jxObSotcSgtqTEF3MASbg2EkxaL6xBePX9zqO02kJio=;
 b=ZBl1j7qqiXTCCKgO3z3jbSbIsWXivgdGTZZQOPl8LXPjvupvBupANtxGrDnd+ODvhv
 ED4EEbF4DqsbRBf2hNFrm62Ks3J9ZfD2nlsRWEPgdIF0bj6wpCq5nFSgShrkpOeVJEmQ
 qGnvlf4O6sJt+8L3kasSDn2PPLXECu3Qq8uwf9RllLczuNxptW6mAYLktFaDHxA3127O
 T5s8p5jiZ9wlo9qu5MJVEGa2r4FzsRAsTEwy5BapZYiL8KFhzby+Ihfr+RmpAubUqCF+
 fRZ1BkIMwg08cTI7exkghLTWfPjnXfo5bTIDypNjlSp+vyhkdPZuHhClzfgAUXjDrAKg
 82GA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8fxIc6p"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id e07688vAMC1Q4Id
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 22 Nov 2019 13:01:26 +0100 (CET)
Date: Fri, 22 Nov 2019 13:01:25 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] drm/mcde: Do not needlessly logically and with 3
Message-ID: <20191122120035.GB2478@gerhold.net>
References: <20191122072508.25677-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122072508.25677-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_040131_746501_9F07CB30 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 08:25:08AM +0100, Linus Walleij wrote:
> The i index i always 0..3 in these statements so there
> is no need to tag "& 3" to clamp it to 3 here. Make
> the operator precedence explicit even if it's correct
> as it is, the paranthesis creates less cognitive stress
> for humans.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index dc07b534f01f..21cee4d9d2fd 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -237,25 +237,25 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
>  	if (txlen > 0) {
>  		val = 0;
>  		for (i = 0; i < 4 && i < txlen; i++)
> -			val |= tx[i] << (i & 3) * 8;
> +			val |= tx[i] << (i * 8);
>  	}
>  	writel(val, d->regs + DSI_DIRECT_CMD_WRDAT0);
>  	if (txlen > 4) {
>  		val = 0;
>  		for (i = 0; i < 4 && (i + 4) < txlen; i++)
> -			val |= tx[i + 4] << (i & 3) * 8;
> +			val |= tx[i + 4] << (i * 8);
>  		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT1);
>  	}
>  	if (txlen > 8) {
>  		val = 0;
>  		for (i = 0; i < 4 && (i + 8) < txlen; i++)
> -			val |= tx[i + 8] << (i & 3) * 8;
> +			val |= tx[i + 8] << (i * 8);
>  		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT2);
>  	}
>  	if (txlen > 12) {
>  		val = 0;
>  		for (i = 0; i < 4 && (i + 12) < txlen; i++)
> -			val |= tx[i + 12] << (i & 3) * 8;
> +			val |= tx[i + 12] << (i * 8);
>  		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT3);
>  	}
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

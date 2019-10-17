Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20F8DA908
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=28eaP52BQ9G5czyQCNyztSFbirjyNZLwv+qub7H3fGs=; b=jvQtllqfTQS7XkHRJ0SxQatsIO
	eUtPD7ZenyWJXWig7oikk/c/+AP3TErgJFbkzixBrWCDCcswjaixxtmXYIXcAc095WOBzDSIjZSpt
	6w+rcIfuy/fCZwGA/IGghqHILy42KTiNCVhlp9vdc/7qLQsshQ4vnBegVaaki0F8m9EiFK+A7ngS2
	gyyn5U3AjGZtRgkxNqO1S9SNOzdcnknalDU3LZZpqqoOzSftLNYnPbq2Atb5x1OQzXo4hfTRJgxVJ
	ajPa71vq9TD3Sm3KFy2ytfErXz7clNmziuWY9T2eK7SrWUZS+muOfAReviu3Th/m2+3cNFAfVL2g7
	/zdSFKGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2Mu-0004rD-Vc; Thu, 17 Oct 2019 09:46:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Ml-0004qf-Aj
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:46:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so1577701wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 02:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=HKy0scgKD2Yqtf85mglqediv2brLo+GCB1Q93X6euAo=;
 b=WuaWhX4a2YttbDW1uaoNrQa8MGElT2XHF+EH1vrh+FhKdJ7zerR1iOBaQLR9V4And+
 erCM0k4fsG6I7tXe/gPaplriKFpi/DpIms4+UWhyO2pqsec85FYZ7IV8Q/U9D7EZSpEd
 t0jAjzctzu/mzoif0XszF32ycjQ0+Nx0WpFXKbaDOIfwcWtyPV0ercNjE40OrDdqKyk0
 pnOkfP29TCzKCCAo+9GQwF15UJ+hZ02YJ3UgvX/Rt8LB6aK+PeYivQUHZDhlHDY/eidf
 82uy2VQ8ZWMCPe2sNLnAlOBcYmCOk8DP9tForqbHLWTLfhZVKYG7+m4Jsu5aiHRmkO7Y
 qOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=HKy0scgKD2Yqtf85mglqediv2brLo+GCB1Q93X6euAo=;
 b=gtK72svjqFfT5MqezsEhw9TDDFGIf6D81R6vZCkHkKcUu8KNypTs3daGVLd5heeqKa
 qiBsr4Il+/tFWr4A3r4yEN/apI6o4ZnQBDlBxZv1aV4d29Anu+HPqQhyb6jnANv1c1VS
 6Wb26hgwrUJOWv/f4RSR0LcURZipIEBv8U1SzKtxMnmXt+g6yvfLZrB+8o2QAGcpxU8U
 vJQ4D4uLnqt0fFMTBXFv5viD0LAPlqbz+kixXFfvPCupjKCOPB4wQPqGMzdxnZC5MfUW
 OdS/9nvk3E+PvdyGjbTHP9l/CwVKR9UVUzjMgCs9gAlPaa7Mh/MftNronBHCjdhO0VIs
 1SGw==
X-Gm-Message-State: APjAAAXadiLmAysN/Mo9/cMRPK3GH88dGfzjuSgFy/JWFJ4jHEcnxkfA
 RVumv6o7KSIcewZVEz67HlF0jj3mwz0=
X-Google-Smtp-Source: APXvYqxrXHe+FRRJ2WwWs57//iOV5M+rIWiIDpk9WzExeUemaBkFY9x6xk6p7+jfLAgGOzcY00CGjQ==
X-Received: by 2002:adf:f547:: with SMTP id j7mr2346059wrp.26.1571305601811;
 Thu, 17 Oct 2019 02:46:41 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id w17sm1678983wra.34.2019.10.17.02.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:46:41 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191015135915.6530-1-hslester96@gmail.com>
Date: Thu, 17 Oct 2019 10:46:38 +0100
Message-ID: <m3zhhzr9fl.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024643_392931_95BBF0E7 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chuhong,
many thanks for the patch.

On Tue 15 Oct 2019 at 14:59, Chuhong Yuan wrote:
> devm_regulator_get may return an error but mipi_csis_phy_init misses
> a check for it.
> This may lead to problems when regulator_set_voltage uses the unchecked
> pointer.
> This patch adds a check for devm_regulator_get to avoid potential risk.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

---
Cheers,
	Rui

> ---
> Changes in v2:
>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>
>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..e8a6acaa969e 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>  static int mipi_csis_phy_init(struct csi_state *state)
>  {
>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> +	if (IS_ERR(state->mipi_phy_regulator))
> +		return PTR_ERR(state->mipi_phy_regulator);
>
>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>  				     1000000);
> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>
> -	mipi_csis_phy_init(state);
> +	ret = mipi_csis_phy_init(state);
> +	if (ret < 0)
> +		return ret;
> +
>  	mipi_csis_phy_reset(state);
>
>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

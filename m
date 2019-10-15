Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90521D7151
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2IjbI1xtT/LDTiQ9LDOj3/mFqVcmwY21phupY6DUcao=; b=OJGp49K34YQI0NDcnXXEivkb7a
	JoAEIne29riJlRjwYXbf87WZMV/Ovuf5PJihR54rBO3bTGX6OjeUY+0Esb5nrXdZF5JmdO6OokaBO
	gOK+8TbcVWT6FLTkKSLoQ6OOzmX2jq4AShjSc0SPBqPV2UTxQOrtJJOZ41qNrj3TBrWzSWb2sMXCj
	J9vQaHXQfJtijzfyzq/HmEdB5Bp31r2D+Azvmx01uTzaq/nvOnj0v7zBe6sz1BVUBHh6BoLaND/8E
	Q7hGubVS9InQ+vnyik0Jcd1CRylksXnc2rbYGi5DNCxIVQr98Ca0ztQ1TwkD/I/SzA6Fvg039cC+Z
	LEtfV/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIPi-0001Ul-8k; Tue, 15 Oct 2019 08:42:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIPN-0001OY-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:42:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id n14so22706620wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 01:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Alk2iYvP1zhS1Vsxyz1ENDltR7DNnK/DdAFNKV0PUVw=;
 b=HPC6BuNV8j9u4GZjxKCxoY5RREbeSrCviqnJSe7bX9+Mz4/Ou/Y9YJfCz9D6x5YDJN
 FPfze7R3WjjunFuZ7BTxjlj9zeZRJzIv5QwElj6bGpHm80r1uAkybYsje5HSVM+2NFwg
 okWGBK3N+IHtYpPvyQqh8PWgleHiWLfaTVIU08wX80EZFskkvb87rkGeRvnDWfk89KCu
 IgJWRobMxvlThOjJFQ8cTYimw/cyOOpegxEHHwfkSkuivf2kzEL9dFf5lp0/093hBmrI
 I+I7fkoLrJo0gxg6wqlRIw4tvg+AF768tPLChUkL43L+S3EzP1I5VV2vB2RtSVkqAj5v
 MBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Alk2iYvP1zhS1Vsxyz1ENDltR7DNnK/DdAFNKV0PUVw=;
 b=f228oPkCprmJWXf+QsX4WW/A024eWz7ZxC7727RGCWkRK4ZP8Cd/4y/7340N4U7H4H
 EYOV6m8OW2gqdoFT7qtXTu4lkAEGVkc/M2BAHrbryukYprEA5tTlhjVOrmJu9JPkP04d
 +vbZJLJV2zYgpIPkPdHpYr0EP9EbT5B7OT0O+WPP1QOOIISHl9xgFnEyXhkV/4LQJTyV
 3xO/hyAyRSY3XwLEiAJ4DCpog7lRIM+j87udNvMm14mJFANjkRMy1SDLSealEI4dXNZL
 tbx+Qjwd3VrIoGhnFm51IYmeJITYyu3m1hiEJZkiV4xSJhbOvOfCFUEV+YXl5RRoiSIw
 eouQ==
X-Gm-Message-State: APjAAAWFc1312oDxMRsky9GrTde8SvEVp3B18TsLVf5tZ+kyO0q0trGd
 HPvEzF/RDeowH//DFJlxh+w=
X-Google-Smtp-Source: APXvYqx2bycIPnDtHKFh/xJsJXsS+Tg6XyXhmAOeu2Ar9KLDQ3WxO6d6EJTK67tMcZ2zx3XYKeedhw==
X-Received: by 2002:adf:e40c:: with SMTP id g12mr30931259wrm.216.1571128939235; 
 Tue, 15 Oct 2019 01:42:19 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id u10sm19454220wmm.0.2019.10.15.01.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 01:42:17 -0700 (PDT)
References: <20191014020847.9203-1-hslester96@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add a check for devm_regulator_get
In-reply-to: <20191014020847.9203-1-hslester96@gmail.com>
Date: Tue, 15 Oct 2019 09:42:16 +0100
Message-ID: <m3sgnuv1qv.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014221_374449_8B139744 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Thanks for the patch.

On Mon 14 Oct 2019 at 03:08, Chuhong Yuan wrote:
> devm_regulator_get may return an error but mipi_csis_phy_init misses
> a check for it.
> This may lead to problems when regulator_set_voltage uses the unchecked
> pointer.
> This patch adds a check for devm_regulator_get to avoid potential risk.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..9a07b54c4ab1 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>  static int mipi_csis_phy_init(struct csi_state *state)
>  {
>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> +	if (IS_ERR(state->mipi_phy_regulator))
> +		return PTR_ERR(state->mipi_phy_regulator);

This regulator is marked as mandatory in the device tree entry,
however it looks good to me to have this check, even because it
can return -EPROBE_DEFER and we need to retry.

But for that we may need to extend this patch to make the caller
of this (mipi_csis_probe), to also really care about the returned
code.

Cheers,
   Rui

>
>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>  				     1000000);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

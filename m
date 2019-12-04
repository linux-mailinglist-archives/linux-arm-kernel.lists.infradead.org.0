Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CACC112C26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diQP0JO41q+RrhOTZyIPOh7iv+6AqD/OIzrZyW+7T/U=; b=HRZjY6vQPgOXNC
	Ys5inMcoyI4TMtAqlvby/1rqCC6dUbpQwEQ0+Ua7Os4zEIOWtdi/kFM0Oq6iDBr6+plAjn/WI2zXk
	/tYQHfMRKtcji3+leXaXmXMu/kShSQx25P8V5nKm5lhKCMFTv5xnV7pbGUU/jFZ9srjTX6eX9CXRH
	IzniEe5AAXP/rWmo4PayP+n0VNAyq7rKOXz4pv/urlKvqID2w3k+sPytkgC/UsC34LgVdm2em/bX0
	/gFoqizhxyNYIkDV14tJxfZ18BkHgu8WkqSZJ8GgPf26qNS6GwYAgeMK/Qv8fjVje9/FSE6/n7kkz
	iGeseyPczz3Si/6RmTUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUEA-0001gb-BP; Wed, 04 Dec 2019 12:57:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDO-0001Fp-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:57:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so8505494wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 04:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WX9DsnxjR1TLkIQAS0BjsZD23PSgQu93DSuzJlaRss8=;
 b=CjK94ZRk2M/LKqEEX5rm/3WkZf/HiI3Q+vVXDbZOZxQNFGaqW6DwTHkkkx84vRfS+M
 U4ORtkjPBA9iSMbi9wpu7YmMFTp+pNz3ylxcjalwvJv2KZQBId8X2noNPl++SsRNODK7
 QHPvskaMNV5R762Lpb7nY4iTA+SdVhlMhJxfRgfvM6jxwD1ZNI97gcI1rUhzyzNaVE+Q
 k0Bc2/yGbWtp6U/eTSBRlksg5lobZN4iEcrEFCI2rqfgwYhIgxNwI1rIPCeNNltPaVVM
 rHvfdkl+vcc+QKkCwM59zcflNAcevYc8jww4nTJSaG3Zq6ZEE7D6XZBEvNXC3R/zck1W
 +j6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WX9DsnxjR1TLkIQAS0BjsZD23PSgQu93DSuzJlaRss8=;
 b=I7Z21o5Wtz4tuo9VDhlwUbZQkalyx6tzL8Tcg8bnIMzqDCOR3a5PGr6PLEmB+k1Vcn
 NpJwPDLtUdL+g4cporXJNoMAeBMX/wGNY1rsBO5BEQORMSm6jfCrNU1xkGOh9Ke9lS9B
 zoI6i2fQWnajaWxQgH/yxCgOwgz9QS7xJ7yhHXaiPxWrrsOICvDDi+Qo/G+WW83pJTbP
 Llb9rqDrq10TUUs3pKFKG67teZABqpNAhT2FFFljP+fd4L8oJdbJ4P28lqDyiAuTzoTy
 gAWTC3Cr+YzZFmAeYNacv1NIj3VCBLoUquXacpsINA7X55f/xNSk/k2lqSYouAnpsdjG
 58vA==
X-Gm-Message-State: APjAAAVcexMl6qBsHSZ6qWbi0QH3QYjymARtrPRGU3foDkPzDZ1CS7J2
 wJDuZ4ltcNpsSmgvD7+mNt4rdPQRd4N9XRLMP6s=
X-Google-Smtp-Source: APXvYqzndsNueQS92Xe4B1d71REsjlvqx9ynvD8CvVkru+ORVDr1gVmjag6dLc6gMBN+1fpeYUjla8YjTCCO/YsvQMA=
X-Received: by 2002:adf:dd52:: with SMTP id u18mr3950790wrm.131.1575464228649; 
 Wed, 04 Dec 2019 04:57:08 -0800 (PST)
MIME-Version: 1.0
References: <20191204124816.1415359-1-colin.king@canonical.com>
In-Reply-To: <20191204124816.1415359-1-colin.king@canonical.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 4 Dec 2019 14:56:57 +0200
Message-ID: <CAEnQRZAEExdNS+=aSFb86OCgWfezEFHYvoAJBV4=DshEprRGrA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: SOF: imx8: fix memory allocation failure check on
 priv->pd_dev
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_045711_009627_8E2A60C0 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel-janitors@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 2:49 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The memory allocation failure check for priv->pd_dev is incorrectly
> pointer checking priv instead of priv->pd_dev. Fix this.
>
> Addresses-Coverity: ("Logically dead code")
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

Good catch! Thanks Colin!

> ---
>  sound/soc/sof/imx/imx8.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
> index cfefcfd92798..9d926b1df0d7 100644
> --- a/sound/soc/sof/imx/imx8.c
> +++ b/sound/soc/sof/imx/imx8.c
> @@ -209,7 +209,7 @@ static int imx8_probe(struct snd_sof_dev *sdev)
>
>         priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
>                                           sizeof(*priv->pd_dev), GFP_KERNEL);
> -       if (!priv)
> +       if (!priv->pd_dev)
>                 return -ENOMEM;
>
>         priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

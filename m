Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8083D9B09C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ejtrLFMWAe5fPlHBsojMLuSGyafTivdv8eqgN7ryL4=; b=Y51/rViLyKlGud
	xQQOQQxXzq3/+wvQVNhnu0V6tpsTkN+OtcKOqmhnO8sl3BBS1ZgeY4j9oXfbAUHWE11zJnkybdohB
	0VVZRklzprS5G9vcwYLr/P0nRNnp51TGnL5yzSRn2sgHOIzvAjD6YbnkRYnU+VZePu7S93uhBgqM3
	SAesLCx1r9QaAdRs+XAfi8nfZR9jd7+fwar7s2+HNmdH8fcSMd8QW/RnG7RGB3vrYgz7QR//xxlMD
	6lEcEvUCZx3ZdO7SZkqzfmcIlfdzFss/AgUGlQzDgqgnSMxZULTlbpTKMMxQUliqoUw/88+gsofEN
	t76c5BzOIbuPGKrvq3sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19Tg-0001Oz-4g; Fri, 23 Aug 2019 13:19:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19TY-0001OI-IU
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 13:19:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id s18so8648136wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 06:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LZPOX0INdRlOUvoefxV/HDc1vutqvPxYj4fWM1wy0rw=;
 b=mUnOqF6uNCM6LcdyehIFjzjsqAEof9B3kEFEJZUVN62H3iSJhkiiVCYHQ96YMhS7pg
 WWQxX7Zi4CQ/Hh3F8NxgU/YpVIdxTlD8WDG2Qtaq/ydXMvpj3C8idH/Ml46oVakYSRxD
 6W3Tj1DIeuKn/rRGwr3eC0wJZCyMqsBKqGFmTNSeBrrr23oJNlbCIcaHm6u6FFoocaC/
 nmyGYShss+ThniPimc4+KAPMoD9enuctPgOIRGG+NrkXuYMVi7TBln7NIqhMZxoyR75g
 wPyvuX4jjMhc9QpsgJzCdI02ckNVcKlWZfPj2tL4KCFYZJviAwZuhb6IEUrGk3yGizqd
 /Z6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LZPOX0INdRlOUvoefxV/HDc1vutqvPxYj4fWM1wy0rw=;
 b=Ostgi0E85uQyxKMthzniD7qBk6fRqOwpE7Of8FFEABZHXUXAcBpKR7AL16sjuSBIoo
 DOeGjmQR7hFlTAaXXqY+QmLL7JJ3vGtLQmoXux7DpwM6UFt0Mywpx1bhh84+zs0+utu1
 sRH5QOX3/ohjU9mDGxBVJcU/ijU85jotzaJXuGtF0tKon0l9StIyBCH4iB5/SSiRYbvB
 ZKjGT70E3ldp+1z7eqBPnEV02oxxZroPK+Qe7EDhwSt+/Y51GW1Js30l+oFqqwwDRIpg
 cAIz3KQ1zUd2pnyCciEgfl9JQEaKxVBQcrb9P1FCpWD7viZBSWs1MNO4jSKRYaLVZR/a
 wofg==
X-Gm-Message-State: APjAAAVE+EUkdxeUmB1ZjeQuitsJn9hRmrABM1zdPfd0cYtWzcEIuiLz
 1ijQ4dcI1D0zkgYnzb0aEqWzWBDJZSeQ3iicxXQ=
X-Google-Smtp-Source: APXvYqwyGM+XjqB1+xj7Yj+k9wbVw5I8l/PwOau11tLzSRWm/a4VmG0taIHdQ+qFDPb+UCQEGmlZKo4bD9c+QGFI4wc=
X-Received: by 2002:a5d:5408:: with SMTP id g8mr5348355wrv.201.1566566369129; 
 Fri, 23 Aug 2019 06:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190823125939.30012-1-yuehaibing@huawei.com>
In-Reply-To: <20190823125939.30012-1-yuehaibing@huawei.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 23 Aug 2019 16:19:17 +0300
Message-ID: <CAEnQRZA3reBF=H58596-e1xRLHLz5pVHZVhVgiXEmbV-wwOctg@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Make some functions
 static
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_061932_615874_4D8B3496 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:12 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Fix sparse warnings:
>
> sound/soc/sof/imx/imx8.c:104:6: warning: symbol 'imx8_dsp_handle_reply' was not declared. Should it be static?
> sound/soc/sof/imx/imx8.c:115:6: warning: symbol 'imx8_dsp_handle_request' was not declared. Should it be static?
> sound/soc/sof/imx/imx8.c:336:5: warning: symbol 'imx8_get_bar_index' was not declared. Should it be static?
> sound/soc/sof/imx/imx8.c:341:6: warning: symbol 'imx8_ipc_msg_data' was not declared. Should it be static?
> sound/soc/sof/imx/imx8.c:348:5: warning: symbol 'imx8_ipc_pcm_params' was not declared. Should it be static?
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  sound/soc/sof/imx/imx8.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
> index e502f58..6404724 100644
> --- a/sound/soc/sof/imx/imx8.c
> +++ b/sound/soc/sof/imx/imx8.c
> @@ -101,7 +101,7 @@ static int imx8_get_window_offset(struct snd_sof_dev *sdev, u32 id)
>         return MBOX_OFFSET;
>  }
>
> -void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
> +static void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
>  {
>         struct imx8_priv *priv = imx_dsp_get_data(ipc);
>         unsigned long flags;
> @@ -112,7 +112,7 @@ void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
>         spin_unlock_irqrestore(&priv->sdev->ipc_lock, flags);
>  }
>
> -void imx8_dsp_handle_request(struct imx_dsp_ipc *ipc)
> +static void imx8_dsp_handle_request(struct imx_dsp_ipc *ipc)
>  {
>         struct imx8_priv *priv = imx_dsp_get_data(ipc);
>
> @@ -333,21 +333,21 @@ static int imx8_remove(struct snd_sof_dev *sdev)
>  }
>
>  /* on i.MX8 there is 1 to 1 match between type and BAR idx */
> -int imx8_get_bar_index(struct snd_sof_dev *sdev, u32 type)
> +static int imx8_get_bar_index(struct snd_sof_dev *sdev, u32 type)
>  {
>         return type;
>  }
>
> -void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
> -                      struct snd_pcm_substream *substream,
> -                      void *p, size_t sz)
> +static void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
> +                             struct snd_pcm_substream *substream,
> +                             void *p, size_t sz)
>  {
>         sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
>  }
>
> -int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
> -                       struct snd_pcm_substream *substream,
> -                       const struct sof_ipc_pcm_params_reply *reply)
> +static int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
> +                              struct snd_pcm_substream *substream,
> +                              const struct sof_ipc_pcm_params_reply *reply)
>  {
>         return 0;
>  }
> --
> 2.7.4
>
>
> _______________________________________________
> Alsa-devel mailing list
> Alsa-devel@alsa-project.org
> https://mailman.alsa-project.org/mailman/listinfo/alsa-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

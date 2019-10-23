Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2DEE1448
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0p5tv3c+RSEkgIjhd7+lyEU1CDzrxOCf3Hob7TIsns=; b=IfJDS76iGnDiuF
	pDHp6LGby7c+5RGgBUAiHD/fCfVXXohEi7Eqa3xNBQw6hlUw9xb2fZBXkiv/FinAxDFsUuhY7BKFe
	xgpaFHBB9P3JL+sYsGgIS/VPRCQyr4CR71boiyGGF2hKYG/jwvAqt0l0M6t1nEa/OShrPC1CFoxj0
	r3YYiwTxLI5VjTN4is8P+aJtOuCuxSO4Cqzjs2Z1GFPZEiUiHRIj4zZ//tIbbFRFoVChqDTHfvU5V
	W3AjFixkCEXAuN7xdq9RNDKaLyhKFNQUUf7+D5FUMt4ZekdVckI6FGnA48feviSaWRzgihesU9FqZ
	Ob/PfbFH4AVk5CA7MJ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNC4s-0007od-5m; Wed, 23 Oct 2019 08:33:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNC4g-0007mw-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:32:59 +0000
Received: by mail-ot1-x341.google.com with SMTP id 53so5078227otv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 01:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L8bkA9mtw+vWpI8oRxFifBMw8ummqV2rsVRmeQUbBco=;
 b=viCUfLzzS1NUVQ5Tnwemu4lRHQh7rs8CcijmjomS/9Miv9Fu+1airI68eF8A8nJSyM
 546inlstZ+rsV3j10IwzBsycIFGDPHrgXpTekkK2mvUwZ8G3lCLjyeEM7EQy/lZHZhaB
 E5ZzJt4Q/pPYmawXeV71ABnjju8sA8DJIMrKRYDgXJbiwCuKZsPLIjF+dRKIDvkcbLbB
 PqQsxIkRG98Hk2GjN6zHwsA4r1gwOzIDXX1ehjEkdS0m14uNImJD2Ybj2n3J9f6LxhoR
 vIFuKY91tEAHwK1Lh0VLR3AqD94qvyZtf73j7lbvTR4BDSKOqQihceTRTuyCyrprb6I3
 jZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L8bkA9mtw+vWpI8oRxFifBMw8ummqV2rsVRmeQUbBco=;
 b=F3RB8zF7bDaDWnUoSwr+rrn2E+9bKpDcVrAOH/3FNI/8loSvNIVE/7ORa6tp623bKR
 P3xqjHeB5Q4uRAEZ0h98RwMrPdhc3OnaKTsKx+xxb/k3j74vHatSuaPNGoDaNUEn4KCV
 oghRcvaSkdB4HVId4RtjIT3gR9gxyHQWY8glP7/BUwJUmKQl0mxhCjo1vLOCejVNJVvS
 e5Wg6TPUmcoepXswZDiQc2GcYx/AGEAWcxpn15lTYjQvc7QsCMmR+xMu6Lt0ApZ05U4i
 IEaII/HcRYIU7oKLmWiUukArom8i8V9pOmbDr7+Y7R41tgQayepXu6DB43vHzjR9KS/z
 +GPA==
X-Gm-Message-State: APjAAAUL9fjOL+E1/M9hLWn/PIiP6nbuSOdHipaf6wSpVBFyu+EHbXak
 XVPh2rFJ5uou3HDnzerAuPs/Had/HubF/EHFtf5frA==
X-Google-Smtp-Source: APXvYqx9C835htw9b+vjF88aUM7e4S/FRS+3eHUvwsbpuC8bReEl39lomHdHjZsPRkBvLfkVQLrdUBNmVyoQXSiyMP0=
X-Received: by 2002:a9d:7d12:: with SMTP id v18mr4103680otn.103.1571819576961; 
 Wed, 23 Oct 2019 01:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191023063103.44941-1-maowenan@huawei.com>
In-Reply-To: <20191023063103.44941-1-maowenan@huawei.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 23 Oct 2019 16:32:46 +0800
Message-ID: <CA+Px+wX7-tn-rXeKqnPtp74tU5cLxhJwF6XZ_jeQX-tnAfvO5g@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
To: Mao Wenan <maowenan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_013258_261103_B35087D9 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arm-kernel@lists.infradead.org,
 ALSA development <alsa-devel@alsa-project.org>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuehaibing@huawei.com,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?U2h1bmxpIFdhbmcgKOeOi+mhuuWIqSk=?= <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, tglx@linutronix.de,
 Jaroslav Kysela <perex@perex.cz>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:31 PM Mao Wenan <maowenan@huawei.com> wrote:
>
> If SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A=y,
> below errors can be seen:
> sound/soc/codecs/cros_ec_codec.o: In function `send_ec_host_command':
> cros_ec_codec.c:(.text+0x534): undefined reference to `cros_ec_cmd_xfer_status'
> cros_ec_codec.c:(.text+0x101c): undefined reference to `cros_ec_get_host_event'
>
> This is because it will select SND_SOC_CROS_EC_CODEC
> after commit 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV"),
> but SND_SOC_CROS_EC_CODEC depends on CROS_EC.
>
> Fixes: 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV")
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  sound/soc/mediatek/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
> index 8b29f39..a656d20 100644
> --- a/sound/soc/mediatek/Kconfig
> +++ b/sound/soc/mediatek/Kconfig
> @@ -125,7 +125,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
>         select SND_SOC_MAX98357A
>         select SND_SOC_BT_SCO
>         select SND_SOC_TS3A227E
> -       select SND_SOC_CROS_EC_CODEC
> +       select SND_SOC_CROS_EC_CODEC if CROS_EC
>         help
>           This adds ASoC driver for Mediatek MT8183 boards
>           with the MT6358 TS3A227E MAX98357A audio codec.
> --
> 2.7.4
>

Just realized your patch seems not showing in the list
(https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/thread.html).
I have no idea why.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

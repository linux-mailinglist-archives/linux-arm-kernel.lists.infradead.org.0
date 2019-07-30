Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F61E79D46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 02:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJTjcw4I0GO8jvjMmP/ozr50L7+xO4zMzijrQgZTtKQ=; b=I4kiXtfMSzZpTh
	loShHf6Tl591Ir4A+6XazzGYceGXTtxt+AAzbwP09/DlIKL3+kzMz64OBq2Lgkc4570tJKjZ8Hi0X
	VdoxRP8O5PwkXopEQ6d10ReEmGGu+NYcPkogtdEH5avHQq7HY3GZsK75OPGXwUP6OioccsGAHfUTT
	wrN/m8yrpCs9cIoKvLG89LfhTyoPtyTmOdbw/q08WlL1E7+A8KIeIiMLJjoDlvaaV//MBdxn8LxVO
	GIGEQwhGK0EgT/WM5zlyZs7zxn2xHen2sRQtwH8eIH92/rPnXvGyKbgBe5aHM3hx65S+oIIGPM3FI
	GthoAIN8e09IcmRp7Fyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFrK-0000f7-9W; Tue, 30 Jul 2019 00:19:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFr9-0000ek-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 00:19:08 +0000
Received: by mail-ot1-x344.google.com with SMTP id l15so7218774oth.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 17:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u0ArfUSv+bDdiXAzoVwDZAdkECVAFeS5rxWrcZIaivM=;
 b=kDXhCZfFyPVxA9S92cjCiuuHKsixwefElD+SzN0O4NtCmkS9YhByjxplWz1ZJdp1w/
 ExcTKZxsd4A7tPeRvdkisyYzUmG4OahUvl654qK4c1PiL5tNE4SweK7QROaynUq3z0dS
 HLrv1f0qE6Kego1MJQ6StObV8TbmWCZgba53AdO1Sfd8T8ML34tCuX76xOEB//2oF2ui
 +Vbk1ufbpv9s1/tyucovIb9uLXIi7B2jNiC8nAO2VRT8rxfFnrQrAVZeFVnr57m7ETg6
 5M/Elp0xegNq5+o5TD5oExWsDneasB9mQs01Inpdm/uPT/3+1mIS75fBIJv6cfTutjRq
 BfCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u0ArfUSv+bDdiXAzoVwDZAdkECVAFeS5rxWrcZIaivM=;
 b=QKIumUgAs+Dc9xEj8cGy/SC2/F1Eoh2a2RqpLUgmTzf6uxzrIb8I/h87fIU5JL2esS
 7XsXw7UcSudyCi6/bT9Ux79NGhnxp76mtsktKz8ubR155iuHRPw7UAZd6Eovyovkonm1
 KiH4pE8Ne5Ap0JcrlA6rzcXx0jqyX0VmLVhfucpvuprZkyjMR/Nbpf+jB3qk55qNTBlo
 VvuBYWBLoXPQgYfDgsovgHWY+iKJVsuKe/We/TGt1HP1Ul5wnAKYFeYwK2Qpc1G9ZwEt
 uCGge/jlUvdNNdGv08hLzwJz+rCqrhdr+pPd4rDsQn+oDEqfYbamXiJW+lJYjYhqhgCT
 6u6Q==
X-Gm-Message-State: APjAAAXkDq/1yjr5+pthQQfWw+D8n7SvBaUDGozmPfjookxwPsD1j6fK
 uO34LNEnhHSEVVrN0yuBARRjXMyjSqGoANdLbpzMtw==
X-Google-Smtp-Source: APXvYqyJBtzCTMXZyQea+FqMxwWmCcNPdV8ozhydB+D7e+wiMyzPqRU84ufjK5hDSmoRk7My4Vr/zZUWkFZvgoKlt80=
X-Received: by 2002:a9d:bd6:: with SMTP id 80mr17742541oth.263.1564445945492; 
 Mon, 29 Jul 2019 17:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190729152130.27955-1-codekipper@gmail.com>
In-Reply-To: <20190729152130.27955-1-codekipper@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 29 Jul 2019 17:19:04 -0700
Message-ID: <CA+E=qVd3rd0qxY+eV=zTnPy1e9zeVbthMn3ieLqCkbTwEPJFYA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ASoC: sun4i-i2s: Incorrect SR and WSS
 computation
To: Marcus Cooper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_171907_369381_EFFE5C56 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chen-Yu Tsai <wens@csie.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 8:21 AM <codekipper@gmail.com> wrote:
>
> From: Marcus Cooper <codekipper@gmail.com>
>
> The A64 audio codec uses the original I2S block but the SR and
> WSS computation currently assigned is for the newer block.
>
> Fixes: 619c15f7fac9 (ASoC: sun4i-i2s: Change SR and WSS computation)

Looks like we need this fix for 5.3.

> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Reviewed-by: Vasily Khoruzhick <anarsoul@gmail.com>


> ---
>  sound/soc/sunxi/sun4i-i2s.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 9b2232908b65..7fa5c61169db 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -1002,8 +1002,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
>         .field_rxchanmap        = REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>         .field_txchansel        = REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
>         .field_rxchansel        = REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
> -       .get_sr                 = sun8i_i2s_get_sr_wss,
> -       .get_wss                = sun8i_i2s_get_sr_wss,
> +       .get_sr                 = sun4i_i2s_get_sr,
> +       .get_wss                = sun4i_i2s_get_wss,
>  };
>
>  static int sun4i_i2s_init_regmap_fields(struct device *dev,
> --
> 2.22.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190729152130.27955-1-codekipper%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

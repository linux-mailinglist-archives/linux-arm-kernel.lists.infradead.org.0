Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5901A081C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unFid1N+Mb0Mu7bmP2tPIsid05fZ0cKK/cG8a2ULHlA=; b=rYr4rfqhg9WzTu
	mli9ZkFLIZMfwaK+3lNpdWg8eaMxWyrudOieOD1F+basp4vvncjxkDWnTcxd4VAi7S8pnK2SwzBN9
	ZBDb+9Ppf1Fdux5x5rFNQPFpskJ6x9J1772JP+RClOdo8l6UqPouRN96OBxPAoGxGYiuIWfX0zUUg
	0qOD36wVzmxYu93B3nZVMTxlSQbfzjNPCfUX2wrfMMi337+QQnD4xje54Xg0B+3wPuzggb6A+uZ2e
	qg6fBKMwvDjiyVcyIfCbDeuzY1hei8Q3YVxgMPZUSjpnJlOudlL2etxSzT/mpMGC2uBclQSKXaQ9S
	grdO/uKcoDnosCz5Cyqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiWF-0005cT-CQ; Tue, 07 Apr 2020 07:19:35 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiW8-0005br-IE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:19:29 +0000
Received: by mail-ot1-f68.google.com with SMTP id c9so694716otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:19:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g+XZ6eWRxT51LkvH11c8+ThbAOFhSXYL8LBe1VIqCNE=;
 b=PYDBRC2WNLcPW/JkMI4wY21A/mSS4qw97Sxcir0lVlyX9m1RGk2gQttiEJovA+HVYs
 CC+ga2pZ7w5pMEFnA3cvUNaygruNm79WxhsXs2EHAxVuSZ5WbXODEX4I6gin+8RWhvDp
 U/7yuV1caiy6QKv+JIOxFuu9rb/ASELbkKR7hYezrikTH/59pyIRAihZCW6wMfmjtG5l
 v3emulH+oUu5qVAr9rjFCVRRLvo6wJRZEujAvlBAuDPy9Ppih6ENTqN37qY6zK/C+gFZ
 S24OUsgbGe+KDbBaGYLYSX4Ihtkx0iabP29V2KwbLTFlXrZykZyicQ8b2xEWiEOVnD2m
 GosA==
X-Gm-Message-State: AGi0Pua/gW9aaQC7KebReWjXASgqVKciuSuf7koS0nsLXCe9FMevo5eo
 S9xkMPV9TB/li+dhGPNNB4JBnZ9bJMqE5psNXC0=
X-Google-Smtp-Source: APiQypLUdsK7yU153RxjOxhNIxV/Xw9ACw8OtsLh0XZapYyedux3wnO9XAP0vLKBN6rHQlllM5GrmxNfKkWy8xkAWUo=
X-Received: by 2002:a9d:7590:: with SMTP id s16mr479079otk.250.1586243965762; 
 Tue, 07 Apr 2020 00:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1586191361-16598-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 09:19:14 +0200
Message-ID: <CAMuHMdX4sGzVWPFYLBiySastZSR2afqMHxmaEh-WhRMAcXFeMQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] media: i2c: ov5645: Turn probe error into warning
 for xvclk frequency mismatch
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_001928_602062_4174A5F6 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Apr 6, 2020 at 6:43 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> PLL's on platforms might not be so accurate enough to generate the
> required clock frequency, so instead of erroring out on xvlck frequency

xvclk? (but see below)

> mismatch just warn the user and continue ahead in probe.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Like for 2/5, what about the xvclk naming?

> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1103,11 +1103,8 @@ static int ov5645_probe(struct i2c_client *client)
>         }
>         /* external clock must be 24MHz, allow 1% tolerance */
>         xclk_freq = clk_get_rate(ov5645->xclk);
> -       if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> -               dev_err(dev, "external clock frequency %u is not supported\n",
> -                       xclk_freq);
> -               return -EINVAL;
> -       }
> +       if (xclk_freq < 23760000 || xclk_freq > 24240000)
> +               dev_warn(dev, "xvclk mismatched, modes are based on 24MHz\n");

Calling it "xvclk" here will confuse the user, as the clock is named
"xclk" in DT?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

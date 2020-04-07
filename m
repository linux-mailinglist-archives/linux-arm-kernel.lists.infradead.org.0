Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED7F1A0810
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLOwk38iU4M0l9rWieAFRvPyPKGKnP0+IuqUJY8OAbw=; b=Ah0Q7vZIUXSIIR
	adKN7NiccCVeeltNhYARCmAFjEX36eL73IkNkaGuG4L4gGSaNpjMlGsJZq3caLFvRAucaLm49fulG
	3zQg2UbWlTDjwLdl1iW6mmr8FQEZKDFYy4QIavcF7e4A1Ndefn/cVsmJmSmnrW5ht7CJ5IeEzTOXu
	Xqm3d0vBB6iopnlovAdfSTEz0cvKW3AMKD9mZa+yvg+aZsVX4X52tl7Da9Igf2/Pp1QGnmc3FQ2xR
	3eR1jsyhpTq6tdUgNVDRkF8hU8ahwyJHqC4EEMaXl3iIxpExh3Zzaj1WsRsVQksO/BOpu1vI09F8e
	UrNFaodeRvxWqQXDRkGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiU2-0005HY-BW; Tue, 07 Apr 2020 07:17:18 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiTs-0005GR-09
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:17:09 +0000
Received: by mail-ot1-f65.google.com with SMTP id a49so2038699otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B5xikFbGzKAB1v4tOO+dSzm/t4TIX3m1tvCf8H29tf4=;
 b=EAysxpwVUbjMCYi1dGN/LafGjOTROliQhWqH86H5cKQO//sca1TLaeedbbX5uw07x2
 hbbvWNe9WNRKvHNnIQApHQvSmVlCXZgIT7sAE0fSmIe3qvosgrtPNVNqSmRqs2VqI9LV
 dD5csXmFD7qB9ZLgYFmLXgmPWgnCwfyDF7zSB70oIfWAVbDhcCS3LzcuWFTLCereDEBC
 OW18HondmqwpPD3N7dYEQ6MRaeAQzK978sBQ5mB1mEmd8mumC+fMner9wiVaeCkzA+Ha
 m4vJva6+Aye0DbVO7JEVIm/Z32c5xT4JQIK0MvtQ3GDdxBXB7G8L3TPOsqcNyhJvqofg
 CCpg==
X-Gm-Message-State: AGi0PubXOv5AAWEHUEh6S/ajPBncQUsGlU12gnB9TH24K5/udMNc3Wa+
 1RugHMFDZ2wnV13uluoyGehFWOp/2X9Sv+5m7n0=
X-Google-Smtp-Source: APiQypJP8g3xsKxDPZaxH+T8RAbLqRK/iXSCL5Pslbnj35O4awJBo1POCr17AHqI64KksRj2Tzx+fDqkrn/Qx9erX9g=
X-Received: by 2002:a05:6830:15c2:: with SMTP id
 j2mr439913otr.107.1586243827132; 
 Tue, 07 Apr 2020 00:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 09:16:55 +0200
Message-ID: <CAMuHMdWiVLt23a0JBDX6ZiKDiru9-ecgt3XF4Y5qzVOWXhLcCw@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_001708_039462_56B4AE05 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
> Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> 24MHz. So instead making clock-frequency as dt-property just let the
> driver enforce the required clock frequency.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

However, still wondering about the "xvclk" name above and in the definition
below.  Is this the naming from the datasheet?
The DT bindings nor the driver use the "xvclk" naming.

> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -61,6 +61,8 @@
>  #define OV5645_SDE_SAT_U               0x5583
>  #define OV5645_SDE_SAT_V               0x5584
>
> +#define OV5645_XVCLK_FREQ              24000000
> +

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

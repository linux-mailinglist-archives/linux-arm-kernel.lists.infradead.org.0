Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A87F132889
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:13:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pau91gt3HPeVjaCZGb3heiB0m1c34jjVARDkSrIewGs=; b=Hzr28gUVJU0YL7
	SkMxvlH1oeWVEmy530Q7qh5bnp+ruh4HE/i+jJnesFk88edC0eYcjK3Tb41B0SYjXUVTFQmbv3PSN
	CvKcpfOOWIwmKa2i1u19h7ylXm2u6eoa8V0wL4LOmEOwJnoRo/2nyLs8HbZl5o9XTWlG7rCILieFJ
	YfSveDRTUrvJ8e4sf+N+dwgg3gKJJXGyC90tz2pk/F2KaFBRRRaqJ6eAFBYSN1G0SaLry3rGa1TC3
	dJHHSalow4qwTpUO38SDOaoFWiVNtUIYRXz2N/nrIhKh6IRWcHkEiR2a640JauUMRDijRwlpDwOcR
	EFcbH/bESlyypUbnGmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iopbf-0002ad-L5; Tue, 07 Jan 2020 14:13:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iopbZ-0002aF-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:13:10 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so50452361edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 06:13:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vzbQTQQ8YrGcCU1DHCvXvb8FijYzGpFW8q4kbWunqlw=;
 b=FiP2R63XLxVgUoIIuGe2oGybrOYCeqMEeOuKhZLidFSVGW+Wkg17l9dNr6HYDljwqT
 YLRdOTLTPlSRs9oqx2MdLNSSe/HzUy0sIexvSdweck/fEG7wSuAPCsaPAV/D0+hLdxB/
 UaZMJCl7yMMGOJhjRWOCOT0Ois6H9Ffe8ZTOIppQ1UyvYD4cxGlNw4IhqYArNBdWrmvr
 qkCufIuRQHSlqPGpeZQiIui1pbW6x8UZ7K+2OZKV7tkHSNicAkwW+HaRV1kw/IYXjP82
 I6shXfzxuE2gpIckwEOp1hM5ahkzf287fyC7qOVd35rk1D09mSdlzDQwFjKy0Nz3taEE
 sjbQ==
X-Gm-Message-State: APjAAAWaFc+E9YFqZJNHTYsSrhJlZ61p2oe687FgOAqFlj0PjERhPnAW
 nch03wV24nV34QC2QShl4Hg0FjQuXfw=
X-Google-Smtp-Source: APXvYqyPk0wiec4AFGLYw5s0WyxEfKjgnmmB+4sp2w/wwzzUhGn3SMcBE5PEIpjrsLf8PqeJTSmgYQ==
X-Received: by 2002:a17:906:4d46:: with SMTP id
 b6mr111395708ejv.79.1578406386292; 
 Tue, 07 Jan 2020 06:13:06 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id z25sm7342845edr.25.2020.01.07.06.13.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 06:13:06 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id p17so19592910wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 06:13:05 -0800 (PST)
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr37961855wmp.109.1578406385556; 
 Tue, 07 Jan 2020 06:13:05 -0800 (PST)
MIME-Version: 1.0
References: <20191219092000.949052-1-maxime@cerno.tech>
 <20191219092000.949052-2-maxime@cerno.tech>
In-Reply-To: <20191219092000.949052-2-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 7 Jan 2020 22:12:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v654ZSVKsKD2ndcXmbmdc57YtSMMBF1EaxY4+TPV5=Mz_A@mail.gmail.com>
Message-ID: <CAGb2v654ZSVKsKD2ndcXmbmdc57YtSMMBF1EaxY4+TPV5=Mz_A@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/sun4i: drc: Make sure we enforce the clock rate
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_061309_135955_7C0D945B 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:20 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The DRC needs to run at 300MHz to be functional. This was done so far
> using assigned-clocks in the device tree, but that is easy to forget, and
> dosen't provide any other guarantee than the rate is going to be roughly
> the one requested at probe time.
>
> Therefore it's pretty fragile, so let's just use the exclusive clock API to
> enforce it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/sun4i/sun6i_drc.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_drc.c b/drivers/gpu/drm/sun4i/sun6i_drc.c
> index f7ab72244796..ddb52da90103 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_drc.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_drc.c
> @@ -57,6 +57,7 @@ static int sun6i_drc_bind(struct device *dev, struct device *master,
>                 goto err_disable_bus_clk;
>         }
>         clk_prepare_enable(drc->mod_clk);
> +       clk_set_rate_exclusive(drc->mod_clk, 300000000);

I wonder what would happen if this fails...
>
>         return 0;
>
> @@ -72,6 +73,7 @@ static void sun6i_drc_unbind(struct device *dev, struct device *master,
>  {
>         struct sun6i_drc *drc = dev_get_drvdata(dev);
>
> +       clk_rate_exclusive_put(drc->mod_clk);

and we try to do the put regardless...

ChenYu

>         clk_disable_unprepare(drc->mod_clk);
>         clk_disable_unprepare(drc->bus_clk);
>         reset_control_assert(drc->reset);
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

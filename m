Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728C81760A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 18:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4Em5gQ1jzma7t5Tg7PkVwMXVuH6xMkGQZuxb53cupk=; b=aJ5AxCrv6U6727
	DL4KXmYnH2WXQKOWjQhRkCjgoCeEh+CWDRRFew8HoXf/l+N64TFPVcITdrhR7qI1QRgLYYlqSOjLa
	Lv2FwP29eRMQrDZJAjWuqhVVtcSMi08L2bXbgGlaUTcEH5OODwHbHc/1go2XPotgPysGm5vPUSrgl
	yrybe3PqdJtjbXk+8/y7sgkg7V0AiJ2863VmHJdwM59tWQ5/1C/mPNyxfIDE3uZQS6+9I0bbJ6QsB
	0lG915Ac6JdCeMHzcRvAigTyEJ04yl/MsPV+Q3rnBLZ79tTYXXr9dOYyCqFNptzisv1MNENAjkOJi
	70G7/YQwP072oFT+/G6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oRg-0001sw-7d; Mon, 02 Mar 2020 17:01:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oRX-0001rb-5y
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 17:01:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id r17so629104wrj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 09:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=JxxZMXsVW1OlUAj2yQJ6ZF+K072kLAsn2WXP+512A/M=;
 b=G//D/RNJf7ItaCMkYYyhrVVoLHbmg+VdXhMwiw86M2PluaUELtampqk8xrbWLKMLqe
 wDF6bck4vxs+t2ye9djT5PqWyAngPJSwNSuWytRndAweD5E9TdzAcOMNjOpOyQNtZZZg
 r7vL6QxW0b3sBA7umhlOFOrPG88rJermRECnzifaNjrCU0zarr6CZ6TLwVTnV4KbC7Dz
 KKCLPYE2Dbc/TUsbpqgaCjNK+2s1i2B07rTF8WBiOaoSBJ93SrGx7UA6IdL5G6Z1Qdsj
 uktYR5gQeIpnWGXqf4kRgvEeN+l3bmxU2AD9cznl/S5X2ZM5XmTsbVcBGYTB9Wc/54/p
 +mVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=JxxZMXsVW1OlUAj2yQJ6ZF+K072kLAsn2WXP+512A/M=;
 b=GH2D42195MN8ec/kCGI8hslIaxDInaBBVWjfJwD9WcKXvhMfpJQvYBeXJe+2muLFBC
 8VAp2LYzUbc/XkhWacmuUbrizZ7fs2iSHtCP3h9w1xPQv/++HDJFyvNAgLI+umR8nyOn
 9Cu/frzpwtkFs2GZqphe6myVM8d5Pj5CqVhxrbGi9pWxz4msEtxPxQ96kPE/LoE+7rGC
 6WMk/sxstiv3pl7bCm+IvDOngZYGVFuG3fMab+0FkD2zH08bQdI91X8evl/3Sgdqal+z
 lslC0PbAqMhLy56j0NYeeEI+PD3u0TaXDIXdNoNOrTMyF4KKdxAdEq3Z0hakENnlPOCF
 iVVw==
X-Gm-Message-State: ANhLgQ3tHejbg1ePdTtkD/257hsiBVrPSGpHXpysOkxcjtgzMqyD2iFM
 pF54duW9TEWgSc+9M+E3gdaXRA==
X-Google-Smtp-Source: ADFU+vvbCDhbjKnBTJ0P9gUMwbINUDb4htWjCWs1X4yIjcZsa/sq2I2rF81VVO4nPsuCrCG5FapnZA==
X-Received: by 2002:adf:df8f:: with SMTP id z15mr533884wrl.184.1583168481691; 
 Mon, 02 Mar 2020 09:01:21 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p10sm23628037wrx.81.2020.03.02.09.01.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 09:01:21 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCHv2 2/2] clk: meson: g12a: set cpub_clk flags to
 CLK_IS_CRITICAL
In-Reply-To: <20200302125310.742-3-linux.amoon@gmail.com>
References: <20200302125310.742-1-linux.amoon@gmail.com>
 <20200302125310.742-3-linux.amoon@gmail.com>
Date: Mon, 02 Mar 2020 18:01:20 +0100
Message-ID: <7hlfoir8rj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_090123_363329_17B161E7 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anand Moon <linux.amoon@gmail.com> writes:

> On Odroid n2, cpub_clk is not geting enable, which lead the stalling
> at booting of the device,

First, how is the CPU_B clk related to the SD card issue described in
the cover letter?  I think this patch is attempting to fix something
unrelated to the SD card.  Please separate from this series (or describe
in detail how it's related to the SD card booting.)

Also, we're missing lots of details here to be able to help.  Are you
using the u-boot from hardkernel?  your own?  something else?  What's
the version?

Can you share logs (including u-boot logs) showing how your kernel is
booting and full kernel boot log (including the stalls.)

> updating flags to CLK_IS_CRITICAL which help enable all the parent for
> cpub_clk.

With current mainline, I've tested DVFS using CPUfreq on both clusters
on odroid-n2, and both clusters are booting, so I don't understand the
need for this patch.  

It's not related to your problem (I don't think) but for the regulators
used by each cluster, the PWM driver is needed, and there's a bug/race
in the probing of the PWM regulators used for CPU_B.  If you make the
PWM regulators, built-in this problem goes away for CPUfreq.

Just for kicks, can you build your kernel with CONFIG_PWM_MESON=y
(currently defaults to =n) and see if you have any better results with
booting.

And FYI, any use of CLK_IS_CRITICAL will be very highly scrutinized.
You will need detailed justification for adding this flag since it most
often is just masking some other bug.

Kevin

> Fixes: ffae8475b90c (clk: meson: g12a: add notifiers to handle cpu clock change);
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Previous changes
> 	fix the commit $subject and $message as previously I was
>         wrong on the my findings.
>         Added the Fixed tags to the commit.
>
> Following Neil's suggestion, I have prepared this patch.
> https://patchwork.kernel.org/patch/11177441/#22964889
> ---
>  drivers/clk/meson/g12a.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
> index d2760a021301..7237d08b4112 100644
> --- a/drivers/clk/meson/g12a.c
> +++ b/drivers/clk/meson/g12a.c
> @@ -681,7 +681,7 @@ static struct clk_regmap g12b_cpub_clk = {
>  			&g12a_sys_pll.hw
>  		},
>  		.num_parents = 2,
> -		.flags = CLK_SET_RATE_PARENT,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>  	},
>  };
>  
> -- 
> 2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

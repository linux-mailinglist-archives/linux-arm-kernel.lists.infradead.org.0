Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A71B0397
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BETsqORXZLBlRe/4/I3J7QNF1LJZVkY6crzQI7IlvV8=; b=kTFleqTfPapTNb
	JSyPdEIbLxlJBYRIcZsRwMvhP2IRCFggeVk9uJLma4350NNuq5aU4//J+Q7YcY+2egY9JihK33bxm
	iqLEkwVhqTG0/bbwYqTl5TD6B+3B5EQrIlsyaOruvJqEX0tnRwzMMhilmD4cO811AJ1UUc3+Vye/l
	rqhP59aDrH/C4uLAVBWwx9Qsdot0rLkfJMhgq9UaqS+HLZ1rHNKBDcbe2xHabZfQnRmTsnH20ml1k
	hi/GbTRPPlQn+29OpnlDOH+oPCyuL8KMV2bzbN24wGKgEeIvNSMr6G6WpE0cHvl7cVbdhmuBjIsbj
	POlb7priyIxASBdtC6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRLq-0007uI-Gv; Mon, 20 Apr 2020 08:00:22 +0000
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRLh-0007tf-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:00:15 +0000
Received: by mail-oo1-f67.google.com with SMTP id q204so1934322ooq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 01:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L9g4AhkR3JwqVlvWzeZ5xr0LO3a2RpWbbv6vUZyv4P8=;
 b=gccYG3NWKKVJKpLPW4dpvm4IpW1evHYRxSYxk1MXGY4XoevJsFSu6r/6BuFQshcDTF
 9ffWesU7bcfhVHoBquQefcH+IeAlcFNI81ZH9cX2xGx9Ek2RdEQOwDylBAieatlcDzN+
 EMvloJfTBbmtuhZy66OgZu3/cnFHPIPrTg08PiEdc+5GqEpIS/eJ1ECxSJKTVNr+Pyls
 sMA+wC5qNdp+GaB5xfY9ik2asXun2zOp7bvEadrls76gwvsVtzmEaEBWDFz2T3gsCx0p
 O8IaM537JY/Hz49W5TEgvHKgjAJoQraAeWHzJ+yS0zKOf0EPDMJT1XHAPcaPrgjXVgCk
 Fcew==
X-Gm-Message-State: AGi0PuYuukhyzBkALuY3pXTx8ZLLKovOVraJXY3SZnqJqPZN/x6RhMRV
 /NBJdjViHCKB04io13FbB59mBJkLequGRQYG35c=
X-Google-Smtp-Source: APiQypJ7ZmuO7XxEHm2YprX8BbvP5Mh+b0yixyzgiEjnieh/jH/MF3PTui1Uv25flfuAKmypj7f5vO+ha+5Lon7wJ3g=
X-Received: by 2002:a4a:e8db:: with SMTP id h27mr3930938ooe.40.1587369612407; 
 Mon, 20 Apr 2020 01:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200415124923.2510-1-geert+renesas@glider.be>
In-Reply-To: <20200415124923.2510-1-geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2020 10:00:00 +0200
Message-ID: <CAMuHMdXLu2C1qM7kkhc20jhKF3RZaj2YA9mh4H4jRRjp6vWe=A@mail.gmail.com>
Subject: Re: [PATCH] ARM: shmobile: defconfig: Refresh for v5.7-rc1
To: Magnus Damm <magnus.damm@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_010013_779197_A36ECFEF 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 2:49 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> Update the defconfig for Renesas ARM boards:
>   - Enable CONFIG_DRM_DISPLAY_CONNECTOR (for HDMI, VGA, and composite
>     display connectors on various R-Car H1, Gen2, and RZ/G1 boards,
>     since commit 0c275c30176b2e78 ("drm/bridge: Add bridge driver for
>     display connectors")),
>   - Disable CONFIG_VIRTIO_MENU and CONFIG_VHOST_MENU (should not default
>     to yes).
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> To be queued in renesas-devel for v5.8.

> --- a/arch/arm/configs/shmobile_defconfig
> +++ b/arch/arm/configs/shmobile_defconfig

> @@ -170,6 +171,8 @@ CONFIG_RTC_DRV_DA9063=y
>  CONFIG_DMADEVICES=y
>  CONFIG_RCAR_DMAC=y
>  CONFIG_RENESAS_USB_DMAC=y
> +# CONFIG_VIRTIO_MENU is not set
> +# CONFIG_VHOST_MENU is not set
>  CONFIG_STAGING=y
>  CONFIG_STAGING_BOARD=y
>  # CONFIG_IOMMU_SUPPORT is not set

I'm dropping this hunk, as it does not affect code generation.

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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F8C60999
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RCk4c7g5abT0cMS96itJBfy/GlniKnH+cWgRWep0a0=; b=H1WDBOKB3Y2+iU
	IyBumow8vB8C6iDPGf7xROHKuDl9KkoTKponKt++HqlF5h9wo/CH6vbCAVmMUKbhVqjXtn4IMCrZ1
	IltsEVvgugTOtJA4fMFJ2QhyBddIVc8xCzre4+bJcccuexp/nFTL5tkpVFvd0GoRN1N/OXg5Q+qvp
	YW/XoLywPZByuHlmp8p/Gat9c7+Zhbl/ADge2AzTNLMS0/yBEKFNF/cL9HIH88AeO++q18H592upo
	aOHfS4zFEsEoSnmYapCzZl49yl1YvxPlJ6DSalvK7OgGtm0DbdWBDF/pteAq2wWSPy2B3uVu80XjZ
	UBjhtNi8NwV666ReQBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQQs-0001hG-Dm; Fri, 05 Jul 2019 15:47:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNY-0005i8-9A
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DrtkCOU3d35z8J32aN8s3zZgpzBWbHJuGIW4lFwRsYw=; b=NrgeTu20F6OCLxkHPXOuW2Bwu
 imNcf+RlyHzJQte071r0NCoOAQ8KL/xMcfH7U9C2B+HRjh9Qld/DPd0pCz/Kj/wNnqzctAMWWYlpB
 s4OtpZwwat5dShaaQDanch9jsfylRKCaZn37fa5PmyxaelV9rpmy7FaMoYTVKQW3G3flaeqWD1Z+S
 LpzuQ+FRWojp9ltKXSZrpbJkE75o/UhmeguOcBNnliYHjImLgQ4tgMbZ2Es1NgRMvtj+ZWhR5Q5pt
 lrOpHD5jdYQ+padRsWzbxn4Sxp6jCHFO2PEkjijfLzXWlvvzNnpWlcXvaQ37Fp8YnpPfSF/fcVhLK
 81/JZVVug==;
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJur-0000g4-22
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:50:02 +0000
Received: by mail-ed1-f66.google.com with SMTP id s49so7589584edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 01:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DrtkCOU3d35z8J32aN8s3zZgpzBWbHJuGIW4lFwRsYw=;
 b=HrE8/pBVkVgcpP8dRX3kRM1NvI2f7FejlhpUbygZm+BeO7iu12LPxdZv/fhErpCOyD
 x57pEr/gguOkO+wzkxvuXeKFHOPiVybWOin3vJG6RcMeD5CHZfEonLbgNm3PWRE9avO9
 9RbTtvQhvybjOpJwrohn/Pwr3KL3I+olUA9sRrHOTZF7RaCiBVVXhGrTrVN1tyIGV4xz
 2IIz4pYFwEKjzPTXdFQb8Hq/JrTlhduDNS4js5351+HOInBOMN/rtcYA3AZ9HvRmWMei
 ejdZB4xyaSfK72EVCu1vJK7CGFcijL4eFKXLGOsPJvkl5D8lWOhDB6z7yvG2ZUoET1RY
 3maA==
X-Gm-Message-State: APjAAAVYNVOGOecHOMGqclFzT+WBIHTtV6hBjZDGHpkxz/heKq3FGBgC
 vunQfLviszIHSZSGigRTn9sdIjWsKq8=
X-Google-Smtp-Source: APXvYqymlv9lsDSBVACztbkvKK2E0+HVuChK7j51KxdgbgPUcYxQNvVuBu+ZQOhi376OmDGw01Is8Q==
X-Received: by 2002:a17:906:a4cf:: with SMTP id
 cc15mr2386603ejb.12.1562316537243; 
 Fri, 05 Jul 2019 01:48:57 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id i1sm1566690ejo.32.2019.07.05.01.48.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 01:48:55 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id r1so2732071wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 01:48:55 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr2777076wrv.167.1562316534957; 
 Fri, 05 Jul 2019 01:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190513142410.9299-1-um@mutluit.com>
In-Reply-To: <20190513142410.9299-1-um@mutluit.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 5 Jul 2019 16:48:44 +0800
X-Gmail-Original-Message-ID: <CAGb2v67OEa+ge7qpbNa5R7DCpgwKfs4T8KHTKe4fnuQYwzJURQ@mail.gmail.com>
Message-ID: <CAGb2v67OEa+ge7qpbNa5R7DCpgwKfs4T8KHTKe4fnuQYwzJURQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v3] drivers: ata: ahci_sunxi: Increased
 SATA/AHCI DMA TX/RX FIFOs
To: Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Uenal Mutlu <um@mutluit.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, FUKAUMI Naoki <naobsd@gmail.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-ide@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Oliver Schinagl <oliver@schinagl.nl>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stefan Monnier <monnier@iro.umontreal.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 10:24 PM Uenal Mutlu <um@mutluit.com> wrote:
>
> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS, ie.
> TX_TRANSACTION_SIZE and RX_TRANSACTION_SIZE) from default 0x0 each
> to 0x3 each, gives a write performance boost of 120 MiB/s to 132 MiB/s
> from lame 36 MiB/s to 45 MiB/s previously.
> Read performance is above 200 MiB/s.
> [tested on SSD using dd bs=4K/8K/12K/16K/20K/24K/32K: peak-perf at 12K]
>
> Tested on the SBCs Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 which
> are based on the Allwinner A20 32bit-SoC (ARMv7-a / arm-linux-gnueabihf).
> These devices are RaspberryPi-like small devices.
>
> This problem of slow SATA write-speed with these small devices lasts
> for about 7 years now (beginning with the A10 SoC). Many commentators
> throughout the years wrongly assumed the slow write speed was a
> hardware limitation. This patch finally solves the problem, which
> in fact was just a hard-to-find software problem due to lack of
> SATA/AHCI documentation by the SoC-maker Allwinner Technology.
>
> Lists of the affected sunxi and other boards and SoCs with SATA using
> the ahci_sunxi driver:
>   $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>   and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
>   See also http://linux-sunxi.org/Category:Devices_with_SATA_port
>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Uenal Mutlu <um@mutluit.com>

Tested-by: Chen-Yu Tsai <wens@csie.org>

on a Lamabo R1 as well.

Maybe we could merge this soon so it makes the next merge window?

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

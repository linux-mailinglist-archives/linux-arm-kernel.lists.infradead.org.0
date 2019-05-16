Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6029D1FFD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43ploU1jWI1ueohGrJ/5Jp7JU5ojue6I1FeNZX91kac=; b=Sxny7GvVKb+hgR
	OxdAqnRNBQZG3QWglepxWHpvluyez1Ys/F22/qzEFXxHQOyd05WqGjtag1f7ZaaabmUoFNy4/NKY6
	sGW72gMjcY5eze5OulOUS/XkPlJHPJ4BPBNqnO528VncoBxEyB83lW/+av5IholU1CXuwbPvvlkxT
	tBaER/pQXjaHyV/wB7fn/qWqIwzFD3pVaHZT26zkkwszL5nFIOatAiwHlLNvSoDBEMbqsl9EkUdzI
	yZ2jswqrsMzbkWK16yYOfHvYuoaKvLR6CALtxbHErfm1LIf1ay/HZA6IwVI21hK3ajhOiKjXytPBw
	Y/pk21fOFPRKqBK8mndQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA9u-0000ah-NS; Thu, 16 May 2019 06:46:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7Z-0004x2-79
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id h19so2016606ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BhdVXLoJWMfzNzrRx3QHIA0XVbPekInrRo+E7wUe0oU=;
 b=QGg8it0LFXrhiHOL2cIDoPFSVJFb/6RU+b9EnGgVvbrDZwB2ufxFfQQJZyhqOyyhQL
 dh9bnFzcOp18FWKdG/vTjKN4GwXIuQMLroOD/OYw/cRqbw7+a4hIREdK43snVI5wECNA
 9X13z8jHT/y8jQ4Sveq5Zojk/JxViqrWErz10mdZ5SWuMCRPvX3WT9QUjpXMMdVah5k3
 HQ9x47BThbznmTjzLUUbPo2L2Obn5TEAqL2oFxOP1TfeBv5ytx9RyUyXCRebvO6EmREL
 6DzjXf3UZ5B5AoWTLRdbbeaOrEo0NTM874D3TtL8ZepDzl4B016HRInNFkNdFI5ioOI6
 r2ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BhdVXLoJWMfzNzrRx3QHIA0XVbPekInrRo+E7wUe0oU=;
 b=lExV/wDoupBQxwPfr7xSVlBIua8Pvgk1KklJU8qdJbrk0u4TPG/vjuGkBhfHdgWGMa
 WOiVXxzUcBnQKUHLuFy83u/4+mk/KWGQXD8uc/dRKMxLe9ORiOU9Rsl8xUktmHgmwwyr
 93+cu9cERPeNYU9WwexJQNcr9LrGRsR1d0atUdLU67G40Y/ZOA3HNmb6LcVLtHc8mrn2
 B1snua6OSIbbxTC/NMEoWbB4zVWpuBTS2J0fps3Bbqnatan3mIS5lsbevKtrCyhRz3dp
 HWczh9W3m0j1rei/VxJjQMPeYaQS5bEeUYl5+vGIeUNrp4wxWKKcWqYAF2I9Lo8ElOdp
 4SiA==
X-Gm-Message-State: APjAAAV1tQKrNjtwCgu2/oUgFbLJ6gao3GSBgGGA8o/0Ep3/jnoo9tpV
 xDg5YoMGi2aBb6zt4W9nktdX3A==
X-Google-Smtp-Source: APXvYqzYMXapYUQF89ctTMRbtZyqwyxvLzNnVa0MvQ1kSHJS3ghKK3A7SCPv/b2sh7mVxo50gpjH6A==
X-Received: by 2002:a2e:63d1:: with SMTP id s78mr23873278lje.166.1557989043709; 
 Wed, 15 May 2019 23:44:03 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b23sm782451lfg.41.2019.05.15.23.44.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:44:02 -0700 (PDT)
Date: Wed, 15 May 2019 23:27:27 -0700
From: Olof Johansson <olof@lixom.net>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] Opt out of scripts/get_maintainer.pl
Message-ID: <20190516062727.ur5bgzt2bukcste2@localhost>
References: <d1427cd2-9111-025c-1a97-d0fa498f1a03@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1427cd2-9111-025c-1a97-d0fa498f1a03@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234405_781422_0F7D4ADD 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 02:47:57PM +0200, Marc Gonzalez wrote:
> A few months ago, I submitted a trivial arm64 defconfig update.
> get_maintainer.pl now outputs my address for every defconfig tweak.
> Add me to .get_maintainer.ignore to opt out of these notifications.
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
>  .get_maintainer.ignore | 1 +
>  1 file changed, 1 insertion(+)

Applied to arm/late.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

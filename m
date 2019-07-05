Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C390D60A13
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 18:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiaa3ih2/cBi7ypVq0VOD57xIl4spm0zuDqF1XTZ5JI=; b=lupXtgdt4NaXGl
	Y09V1f85M6f8ZwRRm01W2p35k+kHN+hJAR+e6ryKLQjvDDZCjEMZxiDlNfraoWHNSPgbDiECuM0lb
	GVOhdJRzeAjGm2kPcUK0n7bEQOYtCqV5/lRaA4k+7gZ0PobsST36FKhzWUHaJtiusKyWZIduM5ruY
	GDOY3EfUY29Hah7yUM4K8tOCOFfYNQHu1A70VOW8jzoSn5mMXaIriiTOFt4mXegfSq8ZXooZK3Cwo
	+zIl/yVVIcMSSJq7A0mOHUZrsFCh0+jIGHgX6lhRPRC8pV7J5pkRNK5JrTvA+x8SgO7Wh5jKLJTKS
	+DyrxSSbooJkCAdwe+vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQuQ-00020z-0v; Fri, 05 Jul 2019 16:18:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQuH-00020L-NY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 16:17:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so4803075plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 09:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0I5KUts4VK47WZ4vJqCHUl93jM/IRvCySns2OuZKj5U=;
 b=i9sFNsbbwhBUwn2kzFjOMQ+J1FA1ixrVIsSqUR9F2AMXvy/w7lOnNtn1pmqqoGOZeO
 SrI8U9d39OKR9lfF/YPcxiFPKsbro8D0ADO65DeQLBgTlFlfm6UTL1hFWKLfDTo82FUw
 TF7g56Vg+GhvFl4PXBkWrikkcteMF9BUbPPdkD7KxJs0NlPfsEJZFyBwN7AAl0XSMRns
 3SCA6vdJG67WWpfjvkA5b6eE9t/anTl/9VcwavLMXODs9WUmCjKCmtZRRoHTckM12DE9
 Lzre8a3OFvyS8KgEvyn4Pgf75nPTewY9xe+5hX72QvZNf/1BxuEx4XtGMmkfu4Pi1gXD
 zxiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0I5KUts4VK47WZ4vJqCHUl93jM/IRvCySns2OuZKj5U=;
 b=sUZKsNdN0J053mlWtS0KI+LkoZukhK9f0P6Js+66Bx0JqXi/S0Wc33ykR54iVmeJ1N
 Wh5vxYUJLk+RQwKWdtm/bsPixdBmgznNyy8NRIKV8OxYzq0Y+YUWx896IQ3xoE7ULVhH
 LZYW7PxKNGyxjwU38vYxrppBJhxXTsiaY0kcyO9IC52BvltlNtOWkNoqQVxZoJXLuRyn
 O4ziNRIec4212c51MDGG2ZLb/S+mIvev7f8EIXjR6/wwkHySLZ3tSsAeSrMTaW2z8SrQ
 0bcaWUVBYtVO8zM/u8x7CTfq1M0g/XRKh8vLdlEhh3/BXduHa+crCi7VnvyzFyVfj5Kt
 INjg==
X-Gm-Message-State: APjAAAUOmfOu/uopk/PTRCX0PxdasU3q8pFm8GPimX0GYf7SSTYDIsZ3
 d4wakoTximZ08WSUgkNx07x6aQ==
X-Google-Smtp-Source: APXvYqzxEuhVW3KDLiQAp3uXNeKs3THT2g+AY1h90RyNz5d71niFsZLZg/AxNcJenf7+oIBrLlnpPA==
X-Received: by 2002:a17:902:8f93:: with SMTP id
 z19mr6355312plo.97.1562343472095; 
 Fri, 05 Jul 2019 09:17:52 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id h6sm10118921pfb.20.2019.07.05.09.17.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 09:17:50 -0700 (PDT)
Subject: Re: [PATCH v3] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA
 TX/RX FIFOs
To: Uenal Mutlu <um@mutluit.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-ide@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190513142410.9299-1-um@mutluit.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <95b399ff-86ef-134b-7c55-d4205cbe9eed@kernel.dk>
Date: Fri, 5 Jul 2019 10:17:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190513142410.9299-1-um@mutluit.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_091753_823798_269574B6 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Oliver Schinagl <oliver@schinagl.nl>,
 Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Pablo Greco <pgreco@centosproject.org>, FUKAUMI Naoki <naobsd@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Stefan Monnier <monnier@iro.umontreal.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/19 8:24 AM, Uenal Mutlu wrote:
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
>    $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>    and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
>    See also http://linux-sunxi.org/Category:Devices_with_SATA_port

Applied for 5.3, thanks.

-- 
Jens Axboe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

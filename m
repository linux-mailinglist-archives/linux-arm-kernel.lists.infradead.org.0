Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31252B623
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThiRB1npSMxH+T87+1q4U8OjIo2k+g8XghIaTT1D39g=; b=ivgdaNCZBMWsJP
	OEypJz7Nlf5k/oZtCnYzJWdlkXHCv4+1QWiIobrnT3hxf9AMYyRZx1ySZjNvFioyeE8ylnTJaVAK9
	U3u1aeiZIHIsNy71A70rhPng7p0f1ipuW5ytgGMZqNEMVfn3JJ1khCvwdpdXQnCkRBR2we706pYYl
	C9aoBVQMjs6X+mLsxfwT9xu1/B0GZzkFgA7ze8xVvYuFFXIiTyjPJzfvnHkqy7o8H1BL3pWGz5jhq
	3LVUqdmoBcYN0i2702a+NTlFj8lovxVUbT/T+rMBQ1goIOjrvnhbqPE5Q3HG+0PBwaimuWltvNP1d
	Hc/uzcsk/fUQcYBq4Upw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFVg-0000GG-Up; Mon, 27 May 2019 13:17:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFVX-0000DK-2R; Mon, 27 May 2019 13:17:44 +0000
Received: by mail-wr1-x441.google.com with SMTP id h1so2774754wro.4;
 Mon, 27 May 2019 06:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3CdhkKFfggu7RKyEGJPDR3uKtKfRfN9PzQkEoRGpys0=;
 b=RbFHF85ICbSpB/QDeuBoxpPshiJs01zY4pu/8n9Lf3BNzE4SFyL/GyytRGewLvfrPo
 2SDaDIMtzrrdACNFufY1J9BG5RMntHYFdQZ9KdGNiSpf5Ii+VdlPrRo2G7fsVxBRTNLN
 J1iKR6bK3sZ4mw3u79gezUI2/eCWN45qwQ5RubnV6Zw6OQFLOJjrYcLr1erCTdw+iRac
 CNbXnm+xzAIGSw5+CSghe/JflH4LpDc3NJzcQuBXR1X4Uv4W0o3pIxwV0zL0746Q6N7r
 VifVZCTVWUSX+uChCR7uBMMOnUW+VjxnHyXA3VW+Dq5T8FXYBqg+DNAl0h7762vib/5/
 oKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3CdhkKFfggu7RKyEGJPDR3uKtKfRfN9PzQkEoRGpys0=;
 b=eayfGQAkPFbyiJ7e50FYVOFJ1q/tGgMpy5a5TQiihMPb6uYrlXz504R0hAicey+KxR
 ZlsO97R2z/mSMAa7sC1KVnlJ85vZPKJ2qfkTioeDAknDzxdKzadj9LIgZ2IQGbhPRlFI
 MSj/CQHMRgVW9xdt+jlw2iupdLISnMxzoGgGXq60LaN2p/qf6bChmizrnLnv+2oZjFyV
 h/06dGLYdz09CkcJcKAtEES9IvCxkSvjVO6x/Tj4tQczEjdTuLtmhqhgNt1Y93XxUxuM
 i/4TJAQVcEufT12EfqKX79IoZ+S2ambXhIbOLNuK6eMNJJWUjb7xlWFqxX/UC0aJV5P0
 X3QQ==
X-Gm-Message-State: APjAAAUP783G6gtjHKBgkc+gQyBsDpMMIyVcDhUJT25fT3idUiDpXRFg
 3GHsarjtHxaeraG+EwplLX6X3O4ytm8wZydj4Iw=
X-Google-Smtp-Source: APXvYqxwsgyqKq3v6r0+iHi/zVPWhJzn/oWLFri6jGvIXh+zaY6enrZ38Uj3PrCQ1+XWh5tnUc1T76NEJbrPh7coDvQ=
X-Received: by 2002:a5d:5406:: with SMTP id g6mr9664403wrv.286.1558963061338; 
 Mon, 27 May 2019 06:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
 <20190524181936.29470-2-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190524181936.29470-2-martin.blumenstingl@googlemail.com>
From: hex dump <hexdump0815@gmail.com>
Date: Mon, 27 May 2019 15:17:47 +0200
Message-ID: <CAKTihDV-zee+rodgg=h1xgBnyiq2oSg4UcaURtCcGCN-Qa4rsw@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: meson8b: mxq: improve support for the
 TRONFY MXQ S805
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_061743_140952_D8D566A1 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hexdump0815[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hexdump0815[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 8:19 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The TRONFY MXQ comes with either 1GB or 2GB RAM.
>
> Both variants share (like most boards based on Amlogic reference
> designs):
> - 10/100 PHY (IC Plus IP101GR) with GPIOH_4 being the reset line and
>   GPIOH_3 the interrupt line
> - SD card slot with the card detection GPIO at CARD_6
> - VCCK is generated by PWM_C with a period of 1148ns and XTAL as input
>   clock
> - USB OTG exposed on one of the USB-A connectors
> - 4-port USB hub with 3 ports exposed to the outside
>
> There seem the multiple board revision out there according to various
> forum posts:
> - storage: eMMC or NAND flash
> - wifi: Ampak AP6210 or Realtek 8189
>
> Add support for the following functionality:
> - SoC temperature (hwmon)
> - changing the CPU voltage
> - Ethernet connectivity
> - SD card
> - USB
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: hexdump <hexdump0815@googlemail.com>

BEFORE (no patches from this series applied):
the mxq device was not really useable with the old mainline dtb as
most peripeherals were not supported

AFTER (the patch applied):
the rresulting dtb works perfectly fine with my mxq device and all
mentioned supported functions work as expected

best wishes - hexdump

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

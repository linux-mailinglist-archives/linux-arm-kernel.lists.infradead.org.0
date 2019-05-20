Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C38123FE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRODDJcZzACotICwwtr9mhVsPVn/yuLq6QRlysE74Uc=; b=bFAOhKZ77t8zbQ
	S9x9aIKJxd7sufJvK+DRyYXnbkBEmT4xXJ4ucEDnL1zue2ZufykmPkUBsNwBoUwZszeDpUGseBKfa
	sUCzPoJVDpmeekOM+ZcT66tT9XVkC+QRzodNwyzASdh8TAT6fHPbOypZOfMuviPinyj4V3yhs9LXd
	7FzQNGzSgAuArT+VkPJlphXS/is3y2dN3m1cKpBG3yT4Ihq9JV9EEZorbf7wNOwxv0trtAOVajCHF
	rglyjZYgq83d6n64BTxspZzI5pKVxIxBrlW/q/DpIz3d7nuGHKvqpE0l91t269tMM2QVaqM2FifeB
	VKTJ0yyoauTpDT+QmhgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmf8-00069V-8J; Mon, 20 May 2019 18:05:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmey-00068H-Mm; Mon, 20 May 2019 18:05:18 +0000
Received: by mail-oi1-x244.google.com with SMTP id w9so8891338oic.9;
 Mon, 20 May 2019 11:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sqegw++Yw9W0senX8mZTb0hrOapXpOg1QLniaiwM7Vo=;
 b=gmI2WSwZdASnVy5GAPRxwVNe9ATPQyv5f3tewWssV57Rz/5OlchcFxDcUPh4s5pe1m
 4Qtmnyz44KZ5CyIeovQ+G2uRFCqsePreMPvZl6jxj19iQ5CwQqd52ca+mXWUuyc6uNPp
 v3iI5d5v1WOXCO9h8zq9A7vcFclv2o5iN2DaDYk9apSSXB9ZJ4E9Avnwufyb0zy24PtS
 gjsWJ0ez4jerYdKcx3UDerwvoFAeSfyX+J8XeyQquvYDnhTXK9OTCwk/tG70XtSzMdeI
 Fow6mAvapkp9RA2syZp48mhZwzILKTlrWVOrUn7a3jjVBmWZgGupVui/YCMxKEQGiibc
 MKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sqegw++Yw9W0senX8mZTb0hrOapXpOg1QLniaiwM7Vo=;
 b=C+ounD9PNPNmNmSzFI02oPsnhi3wwk/FmJU1xT3HslqpNAaIQWqSu8PauGlb0RjxTB
 Szr5TJkvJRx8bsEn3y5YmkJS1IPb2lg9IXBPsXUVLxGKWYxaA9LcObDWgss9wpuyc5L2
 twctUjL1IUBMH7h/7Hi2Q1XRX3PIBEWB3WdL4ITKHSd6Iae5DALPy5y1N91MWiHZzDu4
 b0UfrDsdBhRrAekyf5/WoNaGzVEWeKaFU5aVequKByE7lbMH8OzGSbbigaPaLfUGGMTx
 Ya2TMXpdUn1X02k8aTIQDByw3I3HDNw97NrNVYhQlQ7lFqaq2OIisJyyBeT99z2G/6m8
 nvuQ==
X-Gm-Message-State: APjAAAUQjoJLAVxPaxHJCK1EjPNaDoDpENAymSugg9scE47clgy+U1ok
 wZA2GEl/v56zJKqVRsK8DwX7YvvtD+4DSMP/31Fs+qZiWto=
X-Google-Smtp-Source: APXvYqy5wrpiF0Oa7atFdm07772NlHGHpDzWywsOAOFzEgmadfaQe9V+SUAWUu2O7uDlntw1Oj2zjL0GOE0plQd4DLc=
X-Received: by 2002:aca:5b06:: with SMTP id p6mr312861oib.129.1558375515793;
 Mon, 20 May 2019 11:05:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143812.2801-1-narmstrong@baylibre.com>
 <20190520143812.2801-4-narmstrong@baylibre.com>
In-Reply-To: <20190520143812.2801-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:05:04 +0200
Message-ID: <CAFBinCAdruBA0MygM3iCOsMT3L=ncuuXK_MVPEFD7FK=Vu0BBQ@mail.gmail.com>
Subject: Re: [PATCH 03/10] ARM: dts: meson6: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110516_738100_15895563 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 4:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm/boot/dts/meson6.dtsi | 44 +----------------------------------
>  1 file changed, 1 insertion(+), 43 deletions(-)
>
> diff --git a/arch/arm/boot/dts/meson6.dtsi b/arch/arm/boot/dts/meson6.dtsi
> index 65585255910a..39903172ea7c 100644
> --- a/arch/arm/boot/dts/meson6.dtsi
> +++ b/arch/arm/boot/dts/meson6.dtsi
> @@ -1,48 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
I believe this should be GPL-2.0+ OR MIT as explained in [0]


Martin


[0] https://patchwork.kernel.org/patch/10951479/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

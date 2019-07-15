Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BE16997C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leQHd5aK6CJ2UcDBjGAIvtISKrwcRBrSBLVt6kq8ngo=; b=BUZwi1iI2g3/Gk
	m6geHHfa0bZPC1a4HO/5iGs4tRiqWeYtNo6Cowon8G+bo6IbmpnUyWZBn+re6kFFZDZs6GWViv75a
	ZyXDse//hhJCLxXefF31BCDLm5mrz6n11QbSz32RIAF6+wi5un7It1Dtv/jVdzYR2e9a6qL4JMIFJ
	wJIzcRxwY7HWmuV5+KiwhuSARcQwXpEOpSQIoUcDcFaC60Qk0m04gtGYxsSZ62UsKA8VBcmkZbe1m
	5IpmosSkR5qR+h2KvInZr4wdgbRVWONUmFhrh/KJ0YtduXrr0ErPphHet9NkXXXfTsKzsKSjvB5cY
	BB9kUHZir2qaONmjpLXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4OP-0006CD-Tt; Mon, 15 Jul 2019 17:04:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4O8-0006BA-Mb
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:03:47 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CF44212F5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 17:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563210224;
 bh=rjrlrnQPDBPyEI2VvOI7m0hccqKp54THKXzQCNuj7e8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rD0dF+yCPBgLJ83N++laHPgUXgCYGAMz72tCRtdR8UGZKaN70hvg/XOtOAQglbDmg
 G89e88qOwY2fe8WqBu5ApgXpAqOOVcczcWs2prqWcWewX7h8rF6gJN105q/T1aiRvU
 USG4hd3jDr+PTIiK0elLNX7e1NozVpX8HYEvRdtA=
Received: by mail-qt1-f181.google.com with SMTP id r6so12196889qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:03:44 -0700 (PDT)
X-Gm-Message-State: APjAAAWrv2y9/S5KwGIbsF96LLqB9oq/50Em0IZOteqxsMuckXbznYsA
 eX7b44poVY+iADQjT0fAEV/11SvcTX+RmK74Wg==
X-Google-Smtp-Source: APXvYqwJvWYWvEZ7jhvuIO0kny3nJ2FG1ki4BA/d03vXMpzs2ob165VOtQejHnSTXliJm/t+yYCx8Ni0kj3f+zn0LUM=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr19043100qtc.143.1563210223567; 
 Mon, 15 Jul 2019 10:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-8-icenowy@aosc.io>
In-Reply-To: <20190713034634.44585-8-icenowy@aosc.io>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 15 Jul 2019 11:03:32 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLk0EkF5YK6AvK0JFMH7JbdFvYK2XKh37rJv651DZ_M2g@mail.gmail.com>
Message-ID: <CAL_JsqLk0EkF5YK6AvK0JFMH7JbdFvYK2XKh37rJv651DZ_M2g@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: arm: sunxi: add binding for Lichee
 Zero Plus core board
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_100345_928815_33581CFE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 9:49 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> The Lichee Zero Plus is a core board made by Sipeed, with a microUSB
> connector on it, TF slot or WSON8 SD chip, optional eMMC or SPI Flash.
> It has a gold finger connector for expansion, and UART is available from
> reserved pins w/ 2.54mm pitch. The board can use either SoChip S3 or
> Allwinner V3L SoCs.
>
> Add the device tree binding of the basic version of the core board --
> w/o eMMC or SPI Flash, w/ TF slot or WSON8 SD, and use S3 SoC.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> No changes since v3.
>
> Patch introduced in v2.
>
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>


Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4305737D8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIlUD98GvCDezrzlnD5PnD1WIJY+V+kVZndzFGKtHFs=; b=EB9/xNc11A0P1y
	uCaSCdXNOBaEDrATfOc+ddiqsfAicg6buiuwDEshsrmKh74Im5JAEfw7fhctWhHvn9MdQYiwcqhxX
	9sy/ROBfu+OkdQg/GvNyAYWXFMyfWZRsnkkEnDxjwUysICicXRyFSugfAXJh2RTdYGxH/3hkKgm4W
	+Qtcc496gF8/EtUq9bAbAYtIWGrX3jE1BgceKVA7PamqL0MCgE7c1ELxXp4W3UADAByf8CsvuuVoj
	H8IHku+sOxJdwtm7a8mrMHsI1W0HONWrUP792gcYyK4ZTNmubCNpvqEb7aVat7kC/IFNUdayTUkf+
	iXAmvmgbDUj11aOKrwAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyLr-0004NR-Jj; Thu, 06 Jun 2019 19:47:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyLO-00042C-9u; Thu, 06 Jun 2019 19:46:58 +0000
Received: by mail-ot1-x342.google.com with SMTP id j19so3141155otq.2;
 Thu, 06 Jun 2019 12:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=apUohLJFv/6Ma/Odfu3BrkIEtoUfH61u2PuyTYCjZvg=;
 b=cDwW5mVxP7Q24RCc61BUOR351XLtcuEjXUZ7l9Ld7d3UHg41U+1qXkEQo+teFO44dz
 yZzd1PdPcO9KwpNAb/sS6ffMLzFXONJlcmsefoynlVfYz4hUj5vJ5+cV44K1qSbYGNon
 6h1s4WbmNEbGRDArcdHt90ob0/uiy9PyvfeWa+BDgQaETs4Nl7ELIoIrPCETOqHKzAuE
 KK55l2jvoxIsFGCJf15SEF0og2a1Lx0nRYgbMd40AbR9BDbt3U3wnYipVG1vZ8JoghQJ
 Wz4Gs6D9OyYlKfWLETUIS6lXzqAxp7MaJvctWLXmERLXDjk/U7wru/46ez1NrafI/ghJ
 /QHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=apUohLJFv/6Ma/Odfu3BrkIEtoUfH61u2PuyTYCjZvg=;
 b=pb0vaO/nj+KU+6d2/pdrI0wpQ6YwQFfSkvlu6v0AUmvXoj4K7q+7/2DY1I7T6hALpS
 MPr2bcfZrbJTHRSXw5+fBhtoGurXnKUVgY0HlO6Ro7hbxaj/vhP9h0RPu2ETt4ErCw/f
 Pl6j988Oi7cjroXMMoJPUUtLBYXD/ZmUu12/OlTOVP0aqjy8qOZ81CduhWeS+9vBO7lL
 QUG3TqVwQGaBMVqkV4/R97D7vd4FMzrCt7FopqAYltXkyMcfPvIiFCKo/Eb/aodcIp87
 H3CiUZ7vYMv8jEd2ntJ2vuP/I01hRrcPu2w+xzSNCCu/K7AHnqtkQRuT8O9+qWf1VwCv
 MElw==
X-Gm-Message-State: APjAAAXr+zdZRjz0QmC1aw3i1B/FmNwf9eeUazuat/epltBMfvJeOS0M
 buALfH0baSvYiYh2t26XV1506kiSeJXOXSHtqSU=
X-Google-Smtp-Source: APXvYqyEecKKROAJgJ0f1bUKxcE/zJpLbenKfwbAR5m1rOjlR1UHNjL8uTKGU/flEXz51JoivrypOyNQGFv7rtlwHLI=
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr15661176otp.6.1559850397104; 
 Thu, 06 Jun 2019 12:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190603100357.16799-1-narmstrong@baylibre.com>
 <20190603100357.16799-5-narmstrong@baylibre.com>
In-Reply-To: <20190603100357.16799-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:46:26 +0200
Message-ID: <CAFBinCAJUjwnLgqAxykpvZkeENENaJP4KT0hEje2yV=4Yutu2Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124639_060516_348B0F9D 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Jun 3, 2019 at 12:04 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The SEI510 embeds an AP6398S SDIO module, let's add the
> corresponding SDIO, PWM clock and mmc-pwrseq nodes.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with the comment below addressed:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +&pwm_ef {
> +       status = "okay";
> +       pinctrl-0 = <&pwm_e_pins>;
> +       pinctrl-names = "default";
> +};
on the other boards we list the input clock explicitly here (I assume
to avoid jitter due to a less precise parent which may be the chip
default or set by the bootloader)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

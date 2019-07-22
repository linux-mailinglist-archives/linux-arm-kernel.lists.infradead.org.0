Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791D3708DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pCur9ptiU0Q1eC6/UBd69SS0plSBTE4g+zU0MOtWtM=; b=pG/zXZiIWXYsK2
	b3YcN6H83guReqdog4++yh3SrYDo4bjhliDYVXilSuXjWafugj2iIwNqBTySF/JPvk23XcqfVBALV
	AH0Rs8cYzI5FC6pMyVO8hRzYHEu26KwLyDxVIwPFxfC4zSK41KNXmw5XpzE9li6jWxqpEXJyV4EQH
	UWBHa2Eg+nqSckVlrmelB7EzDPnGF44Bk71ZwPW37Zpilop14Ozns91tEsbEKGZtAOSnm0wYqLqiJ
	HJ8BMwt6D1cMFzXB06mmxQ2slTUhc5wPpwgyyJlWTw0kK3HvpfjiMGis9S9b5961ekW0WaTAtczGj
	oAMUwESvloxTuHQM6Krw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdLq-0001YJ-9w; Mon, 22 Jul 2019 18:47:58 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdLb-0001Xx-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:47:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so2874487otq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aC1MLxLbjDg5tOzPiyVil8Be4/KhIGolhfOdnXDjtBE=;
 b=a/SPgKgtMHEdYvP1ujLe27UWsqf7cBVVME1tq3pKmJc6b83inBBubiAdSQckX+VKbG
 NMiOeacyFUgN0Qt19RTEwwPT60/w8OyT7FsZutliKE1iXT7iAB5PXEBx7BYKXiNZfH8q
 MF7lGbAelaec9OuYlnC4Mp9B7PfHQpJ7fUA99cfrk5ijZizuyFAhxRAvDekrMOOz3Gen
 7qV5snjmYlHafHWT2AQK/LeRCwUiqhg0Vlar9IN/RRt8Ktr5nA+9wRIxopDqu+I+xDwV
 Jc3FCInW4B1XPn3GIvYd+4BICjqmE09mOcrVpVYrSXl+ID0WjJJqVUA2r0N2FDhpOdQS
 2oGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aC1MLxLbjDg5tOzPiyVil8Be4/KhIGolhfOdnXDjtBE=;
 b=QNnb2ioKvbplbssT7tnBMm53WxqhuTAuKiGe3A6NrKLCObyTHdjPe/PEhSaiHiT9gk
 7AhJdKIN3L2C8Ujfj/8bnWGQv3vRFjK/G0bOFfHQMQIq9eSI1ir8Wh1/GWfzruXemHaM
 lC9apxyzN2oeOdCSdNy3/un2UtVaK6nKdAnCEOUpkQiWKtk0Xq1Y92dGcKs2LYEulGoV
 QROAlmh2fOi7CH3dl5ROmhIUumi1ar/+8XGly2jcg79m4xhK3w8dssCbwNKyDrB4Vg4V
 55bzjJALXUxbDFifQKlEkEepXu970Ug555C6Dz7O5gu5F+RCOpwZNLF7Ea3gPrgQEZRa
 T2gw==
X-Gm-Message-State: APjAAAWd3KTXibnMQO4ibGXbjhSoe3STmAmXIRRhPiBvJS5CxwEwk3kY
 DkSZP/FYmUHIBW106lT1FrEq2Hwj4dV7EASvk44=
X-Google-Smtp-Source: APXvYqz7FTaxBbgoBulSD/5MeRxUZjfIzP2icEYwqRHNrphiJ8v0/gXcEbEuwHUZ6peLJ89JG8ockAPkEj2/P6ileAw=
X-Received: by 2002:a9d:4109:: with SMTP id o9mr29072586ote.353.1563821262309; 
 Mon, 22 Jul 2019 11:47:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190722150414.9F97668B20@verein.lst.de>
In-Reply-To: <20190722150414.9F97668B20@verein.lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 22 Jul 2019 11:47:33 -0700
Message-ID: <CA+E=qVdoqkpLvRULOQLLY6heOCNYEizfqBCV4iTrCMEj6HfDZg@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Add anx6345 DP/eDP bridge for Olimex Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_114743_563613_C78E0B9A 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, "Bcc:duwe"@lst.de,
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:04 AM Torsten Duwe <duwe@lst.de> wrote:
>
> ANX6345 LVTTL->eDP video bridge, driver with device tree bindings.
>
> Changes from v2:
>
> * use SPDX-IDs throughout
>
> * removed the panel output again, as it was not what Maxime had in mind.
>   At least the Teres-I does very well without. No connector spec, no "quirks"[1],
>   just plain EDID at work.

You still need a panel to put backlight in there. Otherwise backlight
will stay on when display is turned off.

>
> * binding clarifications and cosmetic changes as suggested by Andrzej
>
> Changes from v1:
>
> * fixed up copyright information. Most code changes are only moves and thus
>   retain copyright and module ownership. Even the new analogix-anx6345.c originates
>   from the old 1495-line analogix-anx78xx.c, with 306 insertions and 987 deletions
>   (ignoring the trivial anx78xx -> anx6345 replacements) 306 new vs. 508 old...
>
> * fixed all minor formatting issues brought up
>
> * merged previously separate new analogix_dp_i2c module into existing analogix_dp
>
> * split additional defines into a preparatory patch
>
> * renamed the factored-out common functions anx_aux_* -> anx_dp_aux_*, because
>   anx_...aux_transfer was exported globally. Besides, it is now GPL-only exported.
>
> * moved chip ID read into a separate function.
>
> * keep the chip powered after a successful probe.
>   (There's a good chance that this is the only display during boot!)
>
> * updated the binding document: LVTTL input is now required, only the output side
>   description is optional.
>
>  Laurent: I have also looked into the drm_panel_bridge infrastructure,
>  but it's not that trivial to convert these drivers to it.
>
> Changes from the respective previous versions:
>
> * the reset polarity is corrected in DT and the driver;
>   things should be clearer now.
>
> * as requested, add a panel (the known innolux,n116bge) and connect
>   the ports.
>
> * renamed dvdd?? to *-supply to match the established scheme
>
> * trivial update to the #include list, to make it compile in 5.2
>
> --------------
> [1] I hesitate to associate information about a connected panel with that term.
>     But should it be neccessary for maximum power saving (e.g. pinebooks),
>     it would be good to have something here, regardless of nomenclature.
>
>         Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

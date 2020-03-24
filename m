Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9A3191A08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyULnqIaa9rClblcnWsp6/ArAGLYL5oN0oVDqqS4YB8=; b=UjttB9xg3mxuDi
	THdlB2MMiexjP8A4lQ2FCtHeZJwHdpif8yXV4yZVRB7I7IPtrKOa1RUmOXx3WwgH4NNcMTlWXumVs
	nVgOVrSzBZaUDFIMoWTcp7mTHd+y6PYy9rVEULzLeNwhz6R3Oko5DU5jmwwYNo4bF9pG81/+QAb5C
	5tnEzoMEVEvyzheomBb0hyq3Nao3M9C1Aj4hjkw+Um5MezqcEerJumVQjJhGmgGx8QaaMobOOo31I
	Af2xPI5yp+HW5Btl+4lz2fIWm5NnpEnOqCL0/UnNyu+inWMiL+JGTd8cl9HDDrYIZ3qfzgqhQUKaW
	mYTp18LEResaUIXy5bYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpKX-0000vq-2C; Tue, 24 Mar 2020 19:35:17 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpKK-0000K3-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:35:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id 19so19886915ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 12:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=e0wTObJ08RVlnsiArj9gwShr2d4p9qtkVTHwSjLAzow=;
 b=DK2S9+6j9KGtB+U8ylYOlNV2DVU70arttAXObYJ0oTXa6BOrLf9+gbnyj/PqN3X0mt
 RjjtcailfvOx5tUiFPKTJUGP7rWdHY24ZVQqaamiy/JF82tIAI/V71JtbY//N2BlJNP4
 OZpyzlmPdfcfisxOkGgJc0m+yfqTvbEuaAp7ZPXu+Ygs63V+tBXgi7mp8CeuH8RxaBVs
 eNHas9j3FuVOFysmaI3aTA2xkFi8t3ksU3AXqi5DSpRz/NoeEfiJjrxrlSXkZ5nq3Fwx
 KGLl6ThOEcQOg/Tm1LKmg+GfIx0KsT/WFnzvyf3ofAgXBNSzV9js8J/VPiK3JWh1VUDv
 CNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=e0wTObJ08RVlnsiArj9gwShr2d4p9qtkVTHwSjLAzow=;
 b=ul0ymUhCM4SEBaixIVdHkISi3QHedmj2bIB0IRW2DinLNfR7tUePJCjZnC2O70G08i
 i5Iw03/5uua1ezfEg8pp+GvK2CB2Z04U0KWhW4LC5PyRvaSHD7xyEkVbw8ui4xQe3xnF
 nmJpuEM+Hl2pqQbrOz0/WsNiWXj+n3nDQDIFj3OqU9jF0SbSxPehqHNtnJ2e4iEXQBJp
 djO2/vmgNnGE7Ibf96JamYj3/vNWbckq32LfUQ9sXhb1LeX5CnJn9NUgTrZuyi7e2OyM
 j/i2FXvI35znZINglbZ7gYAfuNmn11r5ZUWNZ4AsujEctBSmjsyuNY8myNCiKBvp1SFo
 tsGA==
X-Gm-Message-State: ANhLgQ2sWmWf+x5XU/2L5rkfrOaLxo+XmY2T3jg051VCtuCvI7gVRFUn
 KH5Rhi7uQR/7Vbm8yQs9HbsIU+jYgMJbL4WxB8k=
X-Google-Smtp-Source: ADFU+vtR0T6QWse42XxH9cPngbBhP7L+wmNFP2DjiGQUffZhWB/3y876D0GfC4X3TViS4JAgfxSBjxgnaT5p6bewcwk=
X-Received: by 2002:a05:651c:30b:: with SMTP id
 a11mr7059917ljp.164.1585078502370; 
 Tue, 24 Mar 2020 12:35:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584730033.git.agx@sigxcpu.org>
 <22f34fb7cf7ee4262cf63372aee90bc8e5ae3f35.1584730033.git.agx@sigxcpu.org>
In-Reply-To: <22f34fb7cf7ee4262cf63372aee90bc8e5ae3f35.1584730033.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 24 Mar 2020 16:34:53 -0300
Message-ID: <CAOMZO5Du-ZP7Wxm2eh8WaFoCk_kWomgH57ayJrBB0PzhuAA+mw@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] drm/bridge: Add NWL MIPI DSI host controller
 support
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_123504_529007_F9953293 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Lee Jones <lee.jones@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXIgMjAsIDIwMjAgYXQgMzo0OSBQTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IFRoaXMgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZSBOV0wg
TUlQSSBEU0kgSG9zdCBjb250cm9sbGVyIGZvdW5kIG9uCj4gaS5NWDggU29Dcy4KPgo+IEl0IGFk
ZHMgc3VwcG9ydCBmb3IgdGhlIGkuTVg4TVEgYnV0IHRoZSBzYW1lIElQIGNhbiBiZSBmb3VuZCBv
bgo+IGUuZy4gdGhlIGkuTVg4UVhQLgo+Cj4gSXQgaGFzIGJlZW4gdGVzdGVkIG9uIHRoZSBMaWJy
ZW0gNSBkZXZraXQgdXNpbmcgbXhzZmIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPgo+IENvLWRldmVsb3BlZC1ieTogUm9iZXJ0IENoaXJhcyA8cm9i
ZXJ0LmNoaXJhc0BueHAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVy
dC5jaGlyYXNAbnhwLmNvbT4KPiBUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGly
YXNAbnhwLmNvbT4KPiBUZXN0ZWQtYnk6IE1hcnRpbiBLZXBwbGluZ2VyIDxtYXJ0aW4ua2VwcGxp
bmdlckBwdXJpLnNtPgoKUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWls
LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK

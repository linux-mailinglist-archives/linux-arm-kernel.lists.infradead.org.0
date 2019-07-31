Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5137C534
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrMUzzZDTD5CRB4TNAhuTg3z7S51lRfdEfVzwCO2AMU=; b=QVA0M2bUE1DjUB
	Dbi655uvyk3rMY/IXHKkpjzRCsztBwh1SQdL83TjLn4TvBwIqKTC+K0rdvlwsU4d1qosV9pwvRPXY
	1tmRqjH3BxNylpzJH/7uKWPIWUYuPJyApgaptBJt4gDOlhG9DcY3e7gVir58UMVjQMMwr08ht8nav
	SHlUpt6bepT0flBGuE7qDlc01Y2wVtQCa1OHFv31jnNuYd+NToIQF/XhCtBD1roaE439yGtNJhwuq
	JA8OaqdHHf2aKiqhec1ghaG4ls+QW+++pEjwVXzODcawYjvJeW/RL9tiFyuvwXN5ZEoPmDpfcqUkK
	mDybJlNpG7ZTM+p6rERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsppa-0007ya-Nc; Wed, 31 Jul 2019 14:43:54 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsppP-0007y5-9f
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:43:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id c9so47592773lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KPXFjjONkZjk+QhsiqsCSSD7dqbWf2ywnlPRvZ8gixI=;
 b=l/8ghr+t920KkX4P/sZvL73iKiZu4M4l+Y51L8wmWkr0PAY9KZcE75OFeo5KKVLGhM
 cZZXhyHqJLXznkgDawUG3lP+GVGxN0mBQDaVA8CLv08Dw6Rgc6b2ReIjA6Pbep6ycNYX
 AU0XwyiKfKWjZuIbNoc+e/KquQMk/19e0u7IRn6o6qUZCJxCBWT9k+bMHfCZBm5OLbEt
 uDqJG907R4mC5ky5U1wP66iRG5FhMz0mkw0jHJ2XeXu1a8ftkwqcTM2iXEPkAFv+N1Wl
 HMmnHQQkDOkGlp0w3u0SIS9u7QIRP3Ac35Ii32NeGDU8boPn0ufVDVbH9I9KWvH7YziD
 HH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KPXFjjONkZjk+QhsiqsCSSD7dqbWf2ywnlPRvZ8gixI=;
 b=a2A2OGFuViz87d3jTUyHb53zcnEW3eGMwkYTIkdA53BR0Fq/EtrQv11AEH6KnwziF/
 JNp82mLazjG27bESqhZ9TmiBmm5tIebqvFVIMYGgM8kfIMY9e44oG/3jVIk8/LKGeQeu
 SaXGkLVWHqNLB8qKJ5G0QXWg3VaIXzNhmz/DNukykecPxAi5Ro8wULRCNkV7O2/BBrDl
 E7sq/v6jwT6+We6v7rrOzZv/SH/eyreiEO8/c3Ih5eAEFNTk47czhqw154YFpVk1PAzy
 OoEg28i0xlJb5sWBL62+Cbvm50+oInnPXBYVJys81dV7q4/DFk0WCWgN4Si+syTzKhVc
 Mt0A==
X-Gm-Message-State: APjAAAXQvVyIYyo/z/p6tS1FBJTiAyesALa0LrCQX3eG5HscxFld4Oca
 BSA4nldnrfrpon1odKLKlv/qbsDhwhGBiQ1dM7E=
X-Google-Smtp-Source: APXvYqygpHQFKPnj6BO1hqHn6Ij7xVfMs5QdPNXO/94e/Hw1RB9FX/CJz9+niC5JDPx4i0aT0dMN3KSX76AWC9rswW8=
X-Received: by 2002:a19:cbd3:: with SMTP id
 b202mr59221363lfg.185.1564584221471; 
 Wed, 31 Jul 2019 07:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
 <20190731143532.GA1935@bogon.m.sigxcpu.org>
In-Reply-To: <20190731143532.GA1935@bogon.m.sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 11:43:47 -0300
Message-ID: <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_074343_343051_2815BE84 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAxMTozNSBBTSBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPiB3cm90ZToKCj4gVGhlIGlkZWEgaXMgdG8gaGF2ZQo+Cj4gICAg
ICIlc2FibGluZyBwbGF0Zm9ybSBjbG9ja3MiLCBlbmFibGUgPyAiZW4iIDogImRpcyIpOwo+Cj4g
ZGVwZW5kaW5nIHdoZXRoZXIgY2xvY2tzIGFyZSBlbmFibGVkL2Rpc2FibGVkLgoKWWVzLCBJIHVu
ZGVyc3Rvb2QgdGhlIGlkZWEsIGJ1dCB0aGlzIHdvdWxkIHByaW50OgoKZW5zYWJsaW5nIG9yIGRp
c3NhYmxpbmcgOi0pCgo+ID4gU2FtZSBoZXJlLiBQbGVhc2UgcmV0dXJuICdpbnQnIGluc3RlYWQu
Cj4KPiBUaGlzIGlzIGZyb20gZHJtX2JyaWRnZV9mdW5jcyBzbyB0aGUgcHJvdG90eXBlIGlzIGZp
eGVkLiBJJ20gbm90IHN1cmUKPiBob3cgd2hhdCdzIHRoZSBiZXN0IHdheSB0byBidWJibGUgdXAg
ZmF0YWwgZXJyb3JzIHRocm91Z2ggdGhlIGRybSBsYXllcj8KCk9rLCBzbyBsZXQncyBub3QgY2hh
bmdlIHRoaXMgb25lLgoKPiBJIHdlbnQgZm9yIERSTV9ERVZfRVJST1IoKSBzaW5jZSB0aGF0IHdo
YXQgaSB1c2VkIGluIHRoZSByZXN0IG9mIHRoZQo+IGRyaXZlciBhbmQgdGhlc2Ugb25lcyB3ZXJl
IG9taXNzaW9uLiBIb3BlIHRoYXQncyBvLmsuCgpObyBzdHJvbmcgcHJlZmVyZW5jZXMgaGVyZS4g
SSBqdXN0IHRoaW5rIGRldl9lcnIoKSBlYXNpZXIgdG8gdHlwZSBhbmQgc2hvcnRlci4KClRoYW5r
cyBmb3IgdGhpcyB3b3JrIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=

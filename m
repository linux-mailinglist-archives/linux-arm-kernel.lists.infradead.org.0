Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6C87CAB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuWssJbUjSgfaHIxGkZGnsgKzPZ5zfE9lfzDefGSG2o=; b=sR3kSYz6p6wSyh
	TexyLr7yCxzxMYegD3ve3QPkfTIDGKjYOf1YFqrXp6KXuLpT+FW7CsbdwFU4OO94DJW0S421u6CHF
	d5aqNeoMxmt6hktaNxRmMFYvdLvmP8KMQnriDGfhRw3PbYGFbABiQ5ikHY8G/trFm/MalzOkVhoU+
	6xZ9ujyecv+k0dnQWrPp6cqAAxtbQvaRhztuQGt88uR3KHpgrETBhUlfE1zfEqx8Ek/2GDEaLAIzJ
	r6lg7brCiZnZrqGMvR7daP4CRjnaWbutSDNYCK7+f/oexu24NJNGBGwagQ0IP0uEsWSu0JEH3PMJp
	fLXdqnEA1Vv+Fa5vKzOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssau-0007k7-LA; Wed, 31 Jul 2019 17:40:56 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssam-0007hW-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:40:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so66465527ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 10:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q4EnWjuoFwvcg+PQNQKDl7SJ3NRTDjvZysMShIcjoKI=;
 b=EEGiqtvzdTGgq8ThRpTRzSRRTP6VrSrlPO4IYYXSqpYLJ1pWHT/smy+zbIF9spBxdG
 OPhZlUiy86fYmMqsbJ+fR75XB09QgUuke4Bs8aa9PYGkrTqbahFJVfjl93nk0Q3ff36o
 4CNAKmIBe5E32PDAW7yKpvLxNuV1lPeTQUHA7iJHMdqmLX+3nLVkm0utsFCM5H/+5JXa
 cBmKEid218rblPtIjLKPhBu5EWKqEkzkwF5vunTY0SixI56msLOoXv2XPukyyoSH7Ve0
 1euc7zpXBnh6gBCuZ/uLrqxkrgPUuqlZAXL7Q36Q29fJ3is4HY3M9XrjfIGJL1jp8j8S
 2l7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q4EnWjuoFwvcg+PQNQKDl7SJ3NRTDjvZysMShIcjoKI=;
 b=uWsapciWdHM8COqqh5AR7pM71VGe+pt8itbuNPPQ/004iQ3kotHbqu92Y89QCpG/b+
 aI8/LfqPlTzUywpW/8RBVrZE531oHkRmu3fy5YJHI8EqAkNlEoCSBrQzIPJft0GOLhnY
 w9aBoeJxUCOzsv6t2k8nBgVZ0lHgrWOJTygWZvqbOnm/TlQNGFzHOXDxb7tb7bseJhm8
 Lg6jHODJuS8YPQQeOLbNMw2mxLXMdjXQSepofYiBgw75hrEStdVrQDYE684Qk9rWJsxj
 WmhEHRsS3SYOP5C6idkWpDPh3zN6QvRhmIWQAT+w9sfCmTpd0f2PEkZUYZJ8f+aoktaR
 d0Zw==
X-Gm-Message-State: APjAAAUCmNHFM6cAemUM4iR2qzLY37WFiDVY+SL7zkaf3510DY4lU0Xi
 Ir38yIRBh1TJwCaO2eVy5ob87uO+Y6SD0BGLaDE=
X-Google-Smtp-Source: APXvYqyt0Od36zT0596GjCdSHptbQnUWvWqMyOnVl/5FQep+ssyLLf+KxKKOId+xoiOrQ+OT9NTjMGldgO9EObJPhWk=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr14933002ljb.211.1564594845880; 
 Wed, 31 Jul 2019 10:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563983037.git.agx@sigxcpu.org>
 <20190731143532.GA1935@bogon.m.sigxcpu.org>
 <CAOMZO5Djoi7EuXapkg+dQ6HR2oZZHrw+vnjc837Gxee-Nh00Hw@mail.gmail.com>
 <13373313.BzCyiC4ED7@jernej-laptop>
In-Reply-To: <13373313.BzCyiC4ED7@jernej-laptop>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 14:40:57 -0300
Message-ID: <CAOMZO5Ak7QFzEM8Qt5XAZBa1CB602fygK+FBDK2iTvxWA4y+oA@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_104048_688779_A29BCDED 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTo0MCBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0PiB3cm90ZToKCj4gPiBZZXMsIEkgdW5kZXJzdG9vZCB0aGUgaWRlYSwg
YnV0IHRoaXMgd291bGQgcHJpbnQ6Cj4gPgo+ID4gZW5zYWJsaW5nIG9yIGRpc3NhYmxpbmcgOi0p
Cj4KPiBObywgaXQgd291bGRuJ3QuIFRoYXQgZXh0cmEgInMiIGlzIHBhcnQgb2YgIiVzIiwgZS5n
LiBwYXJ0IG9mIGZvcm1hdCBzcGVjaWZpZXIuCgpPcHMsIHlvdSBhcmUgcmlnaHQuIFNvcnJ5IGFi
b3V0IHRoYXQhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==

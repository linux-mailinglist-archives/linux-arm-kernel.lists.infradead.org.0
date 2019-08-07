Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9AE84B19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWQvyVFiLtp84QGDmGoR67xpvR0zn5kDYm5sjjDKf/0=; b=c+AR52bGGvHDDs
	3GkprHAL+UZrgxqQXkNdvRS97OD+LKNfPb3QoBphDt+ZtPS5L+ilWP3d/RdA/VMgOm2Xum/GLufd7
	coQdhQjQSBOrd6Xws/5zR9JaX8V0GQlhaPkqgss0lZurMPOjHFVss/psxb+YCmBcjODSlbzYEL4WA
	dssD0EGxzdUmSG3R4XENgyhcP4IEuOE3mUFnF6b11f+05o+cxtJ4WrOXlGZJ7P41QkCFp5Ukgl8r+
	1bLbopi0ztBTPE7cZu2mCkzlihUTvaY2q9YkYS9av5DCiEennObjhMm4Zhh0BpEarhE6fR7fzMrUX
	9fyYDpplL8w6BxphpKHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKXz-00022Z-5w; Wed, 07 Aug 2019 11:56:03 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKXk-000228-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:55:50 +0000
Received: by mail-qk1-x743.google.com with SMTP id s22so65587040qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 04:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SYVsSHsvSWXRztrf3IuVhfzf5yR2eq8e4OeojMpGXV4=;
 b=MvVp0PhouLDFbAzPC6BlPhwnjMq6wj4aKW+xqnyO4EpFpbnlmYNShTSj2QvZyC2cwo
 id+9iDAv2VuLz4ZkOVmpWD1iFCrwBLFEzgrsVH7lrHNpz3794rZO51JvOwAAtLZKxLag
 KuferNUkbVm+v83TZ3zD0XXQ2ZXvook4I1m8N86QUeZ/JH7AT1mPxoVIhYstrgX7Du+a
 Us50AGkRmA3jrnvewEbut09BEHBAtTdwhhwW7cWPiC8wTo7iwH/9xwmZYsG0GKzbXmOA
 JfRO1GBWleE+OiE3Rry//QTfz0UyU5RMxzecKNz68fhKbBiH6J+Gnrl4QNF+hwmmjLYk
 BZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SYVsSHsvSWXRztrf3IuVhfzf5yR2eq8e4OeojMpGXV4=;
 b=SLGFviNSop+XrRDl5oMTL8liCQqefYs8XOtYmNvwnUCfbB74iMNS9PQhFvXbvkr9QD
 6X0gGwoE0HiW2J0kkv9SFYrPhEZDTmAcsN5VI9lSEbuhXlGF+Q1WDxOzHvtxmOR7RjBv
 NOgbZg6gyGysp73SrbqllyjXgh8/62Zqwz/lR03tTVTOCJnc3PfDc0iBE6Hh8lYZvzfP
 WobYvVgf07UX2f5yXhAhdESZB2qCOrG78F5J+1A4JgSIXILYIs7MSSexAGddXIhBrIht
 EPnSntH7ZE87MAMmFo6AgFC+9JzxvVBb+MBCVWym7xI0Je2Jf61H60DDJT8pRqujxgBU
 7D4Q==
X-Gm-Message-State: APjAAAVkCoDi639VQTRANIlayCgz9VjP9+es6CO2P61yJvLxQctbICz/
 1b2VhymCqb2X7KEJJQTDcZML3gZaHdyZWOONJF2/bA==
X-Google-Smtp-Source: APXvYqwEsXcr4FpH9gDfLIkM8xlP9ZUuM0nR3mM2uKxsKf/UACxOWHfAXNmHuJ/ZKRMRUNo55y8wJzZDblUivvVNr2A=
X-Received: by 2002:a37:4d16:: with SMTP id a22mr8030512qkb.103.1565178944593; 
 Wed, 07 Aug 2019 04:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-9-sam@ravnborg.org>
In-Reply-To: <20190804201637.1240-9-sam@ravnborg.org>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Wed, 7 Aug 2019 13:55:33 +0200
Message-ID: <CA+M3ks4weUp8wtZktTj9TwLis=x4EyyRjOYh6eavvw_CxuKkuA@mail.gmail.com>
Subject: Re: [PATCH v1 08/16] drm/sti: fix opencoded use of drm_panel_*
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_045548_331959_8FD2C361 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgZGltLiA0IGFvw7t0IDIwMTkgw6AgMjI6MTcsIFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4gYSDDqWNyaXQgOgo+Cj4gVXNlIHRoZSBkcm1fcGFuZWxfKGVuYWJsZXxkaXNhYmxlfGdl
dF9tb2RlcykgZnVuY3Rpb25zLgoKQXBwbGllZCBvbiBkcm0tbWlzYy1uZXh0LApUaGFua3MuCgpC
ZW5qYW1pbgoKPgo+IFNpZ25lZC1vZmYtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9y
Zz4KPiBDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+
Cj4gQ2M6IFZpbmNlbnQgQWJyaW91IDx2aW5jZW50LmFicmlvdUBzdC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9zdGkvc3RpX2R2by5jIHwgOCArKystLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9zdGkvc3RpX2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfZHZvLmMK
PiBpbmRleCA5ZTZkNWQ4YjcwMzAuLmU1NTg3MDE5MGJmNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vc3RpL3N0aV9kdm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2R2
by5jCj4gQEAgLTIyMSw4ICsyMjEsNyBAQCBzdGF0aWMgdm9pZCBzdGlfZHZvX2Rpc2FibGUoc3Ry
dWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPgo+ICAgICAgICAgd3JpdGVsKDB4MDAwMDAwMDAsIGR2
by0+cmVncyArIERWT19ET0ZfQ0ZHKTsKPgo+IC0gICAgICAgaWYgKGR2by0+cGFuZWwpCj4gLSAg
ICAgICAgICAgICAgIGR2by0+cGFuZWwtPmZ1bmNzLT5kaXNhYmxlKGR2by0+cGFuZWwpOwo+ICsg
ICAgICAgZHJtX3BhbmVsX2Rpc2FibGUoZHZvLT5wYW5lbCk7Cj4KPiAgICAgICAgIC8qIERpc2Fi
bGUvdW5wcmVwYXJlIGR2byBjbG9jayAqLwo+ICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KGR2by0+Y2xrX3BpeCk7Cj4gQEAgLTI2Miw4ICsyNjEsNyBAQCBzdGF0aWMgdm9pZCBzdGlfZHZv
X3ByZV9lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPiAgICAgICAgIGlmIChjbGtf
cHJlcGFyZV9lbmFibGUoZHZvLT5jbGspKQo+ICAgICAgICAgICAgICAgICBEUk1fRVJST1IoIkZh
aWxlZCB0byBwcmVwYXJlL2VuYWJsZSBkdm8gY2xrXG4iKTsKPgo+IC0gICAgICAgaWYgKGR2by0+
cGFuZWwpCj4gLSAgICAgICAgICAgICAgIGR2by0+cGFuZWwtPmZ1bmNzLT5lbmFibGUoZHZvLT5w
YW5lbCk7Cj4gKyAgICAgICBkcm1fcGFuZWxfZW5hYmxlKGR2by0+cGFuZWwpOwo+Cj4gICAgICAg
ICAvKiBTZXQgTFVUICovCj4gICAgICAgICB3cml0ZWwoY29uZmlnLT5sb3dieXRlLCAgZHZvLT5y
ZWdzICsgRFZPX0xVVF9QUk9HX0xPVyk7Cj4gQEAgLTM0MCw3ICszMzgsNyBAQCBzdGF0aWMgaW50
IHN0aV9kdm9fY29ubmVjdG9yX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yKQo+ICAgICAgICAgc3RydWN0IHN0aV9kdm8gKmR2byA9IGR2b19jb25uZWN0b3ItPmR2bzsK
Pgo+ICAgICAgICAgaWYgKGR2by0+cGFuZWwpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBkdm8t
PnBhbmVsLT5mdW5jcy0+Z2V0X21vZGVzKGR2by0+cGFuZWwpOwo+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gZHJtX3BhbmVsX2dldF9tb2Rlcyhkdm8tPnBhbmVsKTsKPgo+ICAgICAgICAgcmV0dXJu
IDA7Cj4gIH0KPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

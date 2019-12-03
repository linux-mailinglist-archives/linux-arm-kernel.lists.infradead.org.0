Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0488F10FECE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oatRn5Ns6TeEC80CERGYR74dg5TE2mJRslH4Elf8Vq8=; b=epCuOClfXjiif+
	zz8Tu6dO8uQu6amrnWQDoWLONPNRRAQGrZ8E3ntn3Z8uCB5zydfhBRb+QKibVCMMgFq2ANHibhrQw
	pnRYRBGwH8R92c6GQCvCHx6XAZCHAKG62EkZ2WKBbKyHqSZeQyuuW5B9hJLPI7o6MtbeRsPmCxIPH
	GPWZRA8KVC/ndga3VptoaQokUWXr7PYfUPYHmYrGhCsHKFKIXRDRgmscxKsDIHuC15JUMeAgeZWbF
	RFSRhMzQFf96X27RcIjfZU+BovRQ6PjTA3Lap7hbQ9eTZ1mIA7xe7fiER20Qjj3CGlrflLwio/e2U
	3K4WpvpWYAAGHrzYJu9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Dg-00016a-BW; Tue, 03 Dec 2019 13:28:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8DT-00012E-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:27:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id l18so2973582lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w5kvvsNqTWUYowCw16IbU3x1YCmaOiYf5tGr6DU/4Oo=;
 b=Kf2TrLzoeW7GPO93jICax9H7npFli7nKkPrAa/7pensbMPErLdSyO5cAPXKjgJ5SwW
 dQrNoMOKIZ0oZKLp96BDVuif4EmGi5MgCrhh0N20691gPfYKiIWpucl1bpxPv8HyWwEO
 sV/o0T5vo3zUWjf4mn/5JFm4iQ9eVy7Qwu71lDN9Y0jhqghCBoOVDyB/uDoKZVeoM5qE
 lirCwRmMcZeJCvVkm4a8hz6Ijs6Aw/lR6XRBXo/Au/eoIX7M/1cljIRGuyDeppCzGaRX
 SiP6V0C53L9KztUCT76fN77bWsENOXX1T2+wgpTdxmhUZRMwMYpW+0PGCrTHVh2H+JbJ
 2ZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w5kvvsNqTWUYowCw16IbU3x1YCmaOiYf5tGr6DU/4Oo=;
 b=UDDucPlSnJ/czXN0BEiKOhVFKmsy828oajfaVaDdPVVvMnOYTaaHqx9KSdJ23jtMOL
 MZLAlTfqZeaixGrIPK/o5qQUec/K6gtjiuEtc8YIERKFwcNd2EksRxdq1y1Thq3ud/Xb
 45NG6IhvWp5oJn6rl3Majm5vYRzh0fI+8eOe8j2T2irGETrEECFfpwIVIqPzEzCskaDX
 g84qBRPvP7YrmZAZhVqxlj+6aaFXOzkkQ5kJkBOtYWyD4kW/d2ESYjtMTjuMuDIow4ES
 cMUOJxKg+S2Ne2sp6u9oMeGRKI/9HoPb7E166jrxW59BMEZJm2bL3ZXIwVKyqv47PRQt
 HZvg==
X-Gm-Message-State: APjAAAXR9zI0t4WyEuuFAiWGamWf4y8+R73JiCJQUPdGOAB6PQQFWe0c
 y3PMmw19Kjo3s3NB1Q2+xEX1NgX47cMckLxeFkw53Q==
X-Google-Smtp-Source: APXvYqyofMBPFWLLzB1STopamPLWqp8a6SLsme2LKB0JzU+G9blqUgnpYL5l6F2TBybbdU6uzjI0Yo9WQ+oH5mP/T40=
X-Received: by 2002:a19:f701:: with SMTP id z1mr2657953lfe.133.1575379666036; 
 Tue, 03 Dec 2019 05:27:46 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-9-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-9-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 14:27:34 +0100
Message-ID: <CACRpkdbiyVcUDrxuCK_wgsB6Vn+XZptsc9H3zB0cXxjeOtw+Ug@mail.gmail.com>
Subject: Re: [PATCH v1 08/26] drm/panel: drop drm_device from drm_panel
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052747_459962_A7A32A48 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Stefan Mavrodiev <stefan@olimex.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMiwgMjAxOSBhdCA4OjMzIFBNIFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4gd3JvdGU6Cgo+IFRoZSBwYW5lbCBkcml2ZXJzIHVzZWQgZHJtX3BhbmVsLmRybSBmb3Ig
dHdvIHB1cnBvc2VzOgo+IDEpIEFyZ3VtZW50IHRvIGRybV9tb2RlX2R1cGxpY2F0ZSgpCj4gMikg
ZHJtLT5kZXYgd2FzIHVzZWQgaW4gZXJyb3IgbWVzc2FnZXMKPgo+IFRoZSBmaXJzdCB1c2FnZSBp
cyByZXBsYWNlZCB3aXRoIGRybV9jb25uZWN0b3IuZGV2Cj4gLSBkcm1fY29ubmVjdG9yIGlzIGFs
cmVhZHkgY29ubmVjdGVkIHRvIGEgZHJtX2RldmljZQo+ICAgYW5kIHdlIGhhdmUgYSB2YWxpZCBj
b25uZWN0b3IKPgo+IFRoZSBzZWNvbmQgdXNhZ2UgaXMgcmVwbGFjZWQgd2l0aCBkcm1fcGFuZWwu
ZGV2Cj4gLSB0aGlzIG1ha2VzIGRyaXZlcnMgbW9yZSBjb25zaXN0ZW50IGluIHRoZWlyIGRldiBh
cmd1bWVudAo+ICAgdXNlZCBmb3IgZGV2X2VycigpIGFuZCBmcmllbmRzCj4KPiBXaXRoIHRoZXNl
IHJlcGxhY2VtZW50cyB0aGVyZSBhcmUgbm8gbW9yZSB1c2VzIG9mIGRybV9wYW5lbC5kcm0sCj4g
c28gaXQgaXMgcmVtb3ZlZCBmcm9tIHN0cnVjdCBkcm1fcGFuZWwuCj4gV2l0aCB0aGlzIGNoYW5n
ZSBkcm1fcGFuZWxfYXR0YWNoKCkgYW5kIGRybV9wYW5lbF9kZXRhY2goKQo+IG5vIGxvZ25lciBo
YXMgYW55IHVzZSBhcyB0aGV5IGFyZSBlbXB0eSBmdW5jdGlvbnMuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Cj4gQ2M6IFRoaWVycnkgUmVkaW5nIDx0
aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPExhdXJlbnQu
cGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiBDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJv
cmcub3JnPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gQ2M6
IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5v
cmc+Cj4gQ2M6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IENjOiBT
dGVmYW4gTWF2cm9kaWV2IDxzdGVmYW5Ab2xpbWV4LmNvbT4KPiBDYzogUm9iZXJ0IENoaXJhcyA8
cm9iZXJ0LmNoaXJhc0BueHAuY29tPgo+IENjOiAiR3VpZG8gR8O8bnRoZXIiIDxhZ3hAc2lneGNw
dS5vcmc+Cj4gQ2M6IFB1cmlzbSBLZXJuZWwgVGVhbSA8a2VybmVsQHB1cmkuc20+CgpSZXZpZXdl
ZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxp
bnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK

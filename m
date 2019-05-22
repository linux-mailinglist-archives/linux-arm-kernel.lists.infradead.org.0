Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC0D270C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6iwor/v4NYPzqdZrBjPhfPifYtFqn3TfJTnumE23Rw=; b=eCRT4qkLubLRr5
	YcHpfhjyXFimqrQz7/0dYc0CAni3aERnNrwUNv19Fl/zEU5I7uQbPbcv1YwESXBtoA7skHFu62Qfr
	oRQFGljM85I5019dmnwyToMGO8S6//9qvsBPhoIoIv27YNXJrhhnYIj3hs/N+oWXwRzmSdXkkbVro
	9ZX0lBsQdgu5F4AwilzO1en7q343Yjj3zYppIvE0Jkrc4FvdzlO0JH0S0yDTIvAgvR5xHBftSuIUG
	Vk4VAHnw0r5+Av3o6OCLKiiTFDc53tS+DHQhCGHYcDrap83AMBYRDt9ENv9m5Pr6vwMS110nw7SUD
	GpytenIAIxX4HbB4nO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXkl-0001jP-DU; Wed, 22 May 2019 20:22:23 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXkZ-0001hv-So
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:22:16 +0000
Received: by mail-qk1-x744.google.com with SMTP id q197so2375122qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 13:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmy7j+V2kfqtYYz1WddkagE0DXlderr4yqX5VeQ0jxE=;
 b=Wv7fYjcBuPUYR9MTgyDgURjkjHlUrU+vf2Rjh5kikh+aeZcuBsA45dQS0W772uQXyR
 wJy78nYNEK2ip1KWnGM2LE22p5ty2akRWDyauopLTLGmMOimVzjTRVfFCtf1un/wRAhF
 H39a8cuaCC555EA90d9ghjrpvYjUMsCiJYkUByOaPQzw83C2xylldr98kJUHCtnGmcLy
 ZKCvmW1B9b0npeIxz4U15fKa2mrqGczcA47ac45qCszR0woi68ptU/PdMxnm5xrBbvIY
 jqHC27QIKbDoyUxjHvLVb6+EEAh2qcJtkbObfDMEZWzFgOk5einIXqDBdrI/NOjAONzY
 Br6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zmy7j+V2kfqtYYz1WddkagE0DXlderr4yqX5VeQ0jxE=;
 b=ji7nCbT+rWxsAY5VSKSs1d879SLykFVTuD/EQCOViIbfPQeuLY9alQkh8jFm7M5hyX
 4tT9cITRXAEsPjUR65w9qE5Uu062Z83rOJANmiGpawJ0ytdU8T8KPmh4vyfJyRyZQobF
 +lRbNfvA5hKtrXB28wBbzsQb7dFqrUzY7tATbV5ODatBvUBkONyteNjNeYA59AJmSeXV
 Mp4wiySwzYkOnjc2YO0oO67zqt6cyP/WGkv/9wNu+F3QcyoGBef3VC7URzRg0d1F6ioU
 fpFivZdJq25PSK0Dkmcrvv3NbflzK0SaBLbSvmud7Dg3hxvKw6qnJhlCl5MwPP4RyAmQ
 kN0A==
X-Gm-Message-State: APjAAAUyDj5PWybqgAQEDyxpWXeDTK2WT6Qjv5rGrEJtOjl7njqvSHP2
 DHKODagUGokVuBNtt/XU9yxyyg==
X-Google-Smtp-Source: APXvYqyr5JtWJBxoh41hbTAkOsXHCvEtb3C3/m7M5P7Ry9zlF0gq04xYFw3DvF+dqaIxFQ/JKexWLA==
X-Received: by 2002:a05:620a:141c:: with SMTP id
 d28mr40026915qkj.18.1558556529503; 
 Wed, 22 May 2019 13:22:09 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id t187sm4546863qkh.10.2019.05.22.13.22.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:22:09 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Fix warning about unhandled enum value
Date: Wed, 22 May 2019 16:21:54 -0400
Message-Id: <20190522202207.223110-1-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_132215_385792_0144D93C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Hans Verkuil <hansverk@cisco.com>, David Airlie <airlied@linux.ie>,
 Uma Shankar <uma.shankar@intel.com>, Sean Paul <seanpaul@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpGaXhlcyB0aGUgZm9sbG93
aW5nIGJ1aWxkIHdhcm5pbmc6CmRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jOjMy
NzoyOiB3YXJuaW5nOiBlbnVtZXJhdGlvbiB2YWx1ZSDigJhIRE1JX0lORk9GUkFNRV9UWVBFX0RS
TeKAmSBub3QgaGFuZGxlZCBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQoKSW50cm9kdWNlZCB3aXRoIHRo
ZSBhZGRpdGlvbiBvZiBIRE1JX0lORk9GUkFNRV9UWVBFX0RSTSBpbiB0aGUgY29tbWl0CmJlbG93
LCBidXQgdGhlIGNvZGUgcmVhbGx5IHNob3VsZCBoYXZlIGJlZW4gZnV0dXJlLXByb29mZWQgZnJv
bSB0aGUKc3RhcnQuCgpGaXhlczogMmNkYmZkNjZhODI5ICgiZHJtOiBFbmFibGUgSERSIGluZm9m
cmFtZSBzdXBwb3J0IikKQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNj
OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1heGltZSBSaXBh
cmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5
LnJ1bj4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3ogPGIuem9s
bmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEhhbnMgVmVya3VpbCA8aGFuc3ZlcmtAY2lzY28uY29tPgpD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtZmJkZXZAdmdlci5r
ZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3Jn
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIHwgMyArKysKIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5j
CmluZGV4IGUwNGU2YzI5M2QzOS4uMTBjYzk5MTBmMTY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2hkbWkuYwpAQCAtMzQxLDYgKzM0MSw5IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX2h3X3Nl
bmRfaW5mb19mcmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksIHU4ICpidWZmZXIsCiAJCWN0cmxf
ZnJhbWVfZW4gPSBWU19FTjsKIAkJY3RybF9yZWcgPSBHUkxfQUNQX0lTUkNfQ1RSTDsKIAkJYnJl
YWs7CisJZGVmYXVsdDoKKwkJZGV2X2VycihoZG1pLT5kZXYsICJVbmtub3duIGluZm9mcmFtZSB0
eXBlICVkXG4iLCBmcmFtZV90eXBlKTsKKwkJcmV0dXJuOwogCX0KIAltdGtfaGRtaV9jbGVhcl9i
aXRzKGhkbWksIGN0cmxfcmVnLCBjdHJsX2ZyYW1lX2VuKTsKIAltdGtfaGRtaV93cml0ZShoZG1p
LCBHUkxfSU5GT0ZSTV9UWVBFLCBmcmFtZV90eXBlKTsKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUg
RW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

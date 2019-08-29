Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB13A18A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcHDVNOhU2EGW6iCHZ3Br9PyteF4J8ExM/+69fwkn1I=; b=tmI6OgAWxa0Sxg
	siXEJP7jkyBlX1JU3WCZLnF9x4BvQ+BBzB/g4nSBpLoZF+yca5V0qlgM6mFt9f3pIPLGsWwSdgctl
	WVibdU9pEBzH4kObLoeerwxXumfsc+eIAg4kPwUgun0mEaqMjbNfdjDsCY45sJ5mV6R09gHHUWIny
	Q/2rbiFv75wJpmcAUoEARHsGjGVorjwwuTA/gAdv0lGr3WZg3kZAo2/ZM8ZSWk9uz/Y97aRHG6KX8
	lCbEip6MQPAdCE5dCVUBFhDHdwRla1Bj4UE5PXqp182lQimWphz52iosjAJ2XdWNxHhaSZjP935qd
	e7mrCIV8wq34ueeNDsVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ies-0001wU-KH; Thu, 29 Aug 2019 11:32:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdF-0000eD-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 912F420033A;
 Thu, 29 Aug 2019 13:30:24 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 842CB200335;
 Thu, 29 Aug 2019 13:30:24 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D5BD320613;
 Thu, 29 Aug 2019 13:30:23 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 08/14] drm/mxsfb: Add max-memory-bandwidth property for
 MXSFB
Date: Thu, 29 Aug 2019 14:30:09 +0300
Message-Id: <1567078215-31601-9-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043026_162918_84D5C453 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVjYXVzZSBvZiBzdGFiaWxpdHkgaXNzdWVzLCB3ZSBtYXkgd2FudCB0byBsaW1pdCB0aGUgbWF4
aW11bSBiYW5kd2lkdGgKcmVxdWlyZWQgYnkgdGhlIE1YU0ZCIChlTENESUYpIGRyaXZlci4KClNp
Z25lZC1vZmYtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KVGVzdGVk
LWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9teHNmYi9teHNmYl9kcnYuYyB8IDQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5oIHwgIDIgKysKIDIgZmls
ZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9teHNmYi9teHNmYl9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuYwpp
bmRleCBmOTViYTYzLi5kODY4NmM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIv
bXhzZmJfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jCkBAIC0x
NTgsNiArMTU4LDQ5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2hlbHBl
cl9mdW5jcyBteHNmYl9tb2RlX2NvbmZpZ19oZWxwZXJzID0gewogCS5hdG9taWNfY29tbWl0X3Rh
aWwgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9ycG0sCiB9OwogCitlbnVtIGRybV9t
b2RlX3N0YXR1cyBteHNmYl9waXBlX21vZGVfdmFsaWQoc3RydWN0IGRybV9jcnRjICpjcnRjLAor
CQkJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKK3sKKwlzdHJ1Y3Qg
ZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUgPQorCQljb250YWluZXJfb2YoY3J0Yywgc3Ry
dWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlLCBjcnRjKTsKKwlzdHJ1Y3QgbXhzZmJfZHJtX3By
aXZhdGUgKm14c2ZiID0gZHJtX3BpcGVfdG9fbXhzZmJfZHJtX3ByaXZhdGUocGlwZSk7CisJdTMy
IGJwcDsKKwl1NjQgYnc7CisKKwlpZiAoIXBpcGUtPnBsYW5lLnN0YXRlLT5mYikKKwkJYnBwID0g
MzI7CisJZWxzZQorCQlicHAgPSBwaXBlLT5wbGFuZS5zdGF0ZS0+ZmItPmZvcm1hdC0+ZGVwdGg7
CisKKwlidyA9IG1vZGUtPmNydGNfY2xvY2sgKiAxMDAwOworCWJ3ID0gYncgKiBtb2RlLT5oZGlz
cGxheSAqIG1vZGUtPnZkaXNwbGF5ICogKGJwcCAvIDgpOworCWJ3ID0gZGl2X3U2NChidywgbW9k
ZS0+aHRvdGFsICogbW9kZS0+dnRvdGFsKTsKKworCWlmIChteHNmYi0+bWF4X2J3ICYmIChidyA+
IG14c2ZiLT5tYXhfYncpKQorCQlyZXR1cm4gTU9ERV9CQUQ7CisKKwlyZXR1cm4gTU9ERV9PSzsK
K30KKworc3RhdGljIGludCBteHNmYl9waXBlX2NoZWNrKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3Bs
YXlfcGlwZSAqcGlwZSwKKwkJCSAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSwKKwkJCSAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+ZmI7CisJc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqb2xkX2ZiID0gcGlwZS0+cGxhbmUuc3RhdGUtPmZiOworCisJLyogZm9yY2UgJ21v
ZGVfY2hhbmdlZCcgd2hlbiBmYiBwaXRjaGVzIGNoYW5nZWQsIHNpbmNlCisJICogdGhlIHBpdGNo
IHJlbGF0ZWQgcmVnaXN0ZXJzIGNvbmZpZ3VyYXRpb24gb2YgTENESUYKKwkgKiBjYW4gbm90IGJl
IGRvbmUgd2hlbiBMQ0RJRiBpcyBydW5uaW5nLgorCSAqLworCWlmIChvbGRfZmIgJiYgbGlrZWx5
KCFjcnRjX3N0YXRlLT5tb2RlX2NoYW5nZWQpKSB7CisJCWlmIChvbGRfZmItPnBpdGNoZXNbMF0g
IT0gZmItPnBpdGNoZXNbMF0pCisJCQljcnRjX3N0YXRlLT5tb2RlX2NoYW5nZWQgPSB0cnVlOwor
CX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgdm9pZCBteHNmYl9waXBlX2VuYWJsZShzdHJ1
Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUsCiAJCQkgICAgICBzdHJ1Y3QgZHJtX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSkKQEAgLTI0NCw2ICsyODcsOCBAQCBzdGF0aWMgdm9pZCBteHNmYl9waXBlX2Rp
c2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSkKIH0KIAog
c3RhdGljIHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9mdW5jcyBteHNmYl9mdW5jcyA9
IHsKKwkubW9kZV92YWxpZAk9IG14c2ZiX3BpcGVfbW9kZV92YWxpZCwKKwkuY2hlY2sgICAgICAg
ICAgPSBteHNmYl9waXBlX2NoZWNrLAogCS5lbmFibGUJCT0gbXhzZmJfcGlwZV9lbmFibGUsCiAJ
LmRpc2FibGUJPSBteHNmYl9waXBlX2Rpc2FibGUsCiAJLnVwZGF0ZQkJPSBteHNmYl9waXBlX3Vw
ZGF0ZSwKQEAgLTI4Myw2ICszMjgsOSBAQCBzdGF0aWMgaW50IG14c2ZiX2xvYWQoc3RydWN0IGRy
bV9kZXZpY2UgKmRybSwgdW5zaWduZWQgbG9uZyBmbGFncykKIAlpZiAoSVNfRVJSKG14c2ZiLT5j
bGtfZGlzcF9heGkpKQogCQlteHNmYi0+Y2xrX2Rpc3BfYXhpID0gTlVMTDsKIAorCW9mX3Byb3Bl
cnR5X3JlYWRfdTMyKGRybS0+ZGV2LT5vZl9ub2RlLCAibWF4LW1lbW9yeS1iYW5kd2lkdGgiLAor
CQkJICAgICAmbXhzZmItPm1heF9idyk7CisKIAlyZXQgPSBkbWFfc2V0X21hc2tfYW5kX2NvaGVy
ZW50KGRybS0+ZGV2LCBETUFfQklUX01BU0soMzIpKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5oCmluZGV4IDhmYjY1ZDMuLmExNzgxNzMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmgKQEAgLTMyLDYgKzMyLDggQEAgc3RydWN0IG14c2ZiX2Ry
bV9wcml2YXRlIHsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvcgkJKmNvbm5lY3RvcjsKIAlzdHJ1Y3Qg
ZHJtX3BhbmVsCQkqcGFuZWw7CiAJc3RydWN0IGRybV9icmlkZ2UJCSpicmlkZ2U7CisKKwl1MzIJ
CQkJbWF4X2J3OwogfTsKIAogaW50IG14c2ZiX3NldHVwX2NydGMoc3RydWN0IGRybV9kZXZpY2Ug
KmRldik7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

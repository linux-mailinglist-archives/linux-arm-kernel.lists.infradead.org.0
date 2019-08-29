Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07533A18AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r21kbn1D7qj9pr9ddfOU3akfQtSn0AMTJ59bUqWAQPo=; b=guC/TzmJPvfZEn
	aZdKQjIqfigDnJAfTs7e/wM1l3TmnVNa4HdT1d49u9P8nb5eFahUYfzYXwFPUkqGAFXH9/fUJ29O0
	TK2LFRmDzbCOi9KkP1dffZ2oawF24wgagj3XhpiW+CdUFyiCHXl39iaiI7CoXuTN0+fMA8rSZZxxe
	MV+uHYwgxg/3orKpWfN2qokCzjEoIZYJPGGk20HxjBiKutCORvNx8oAYHRM07hGJV1zBgN6p84zPA
	6kyrFpsXS+rZSGSgYjSMlpI7S+wnAXXraPVgG/ydTv5buJ8OMUMfJepm3OKvT59oWjrjzE4WRRCN7
	PR3dXCPJ97ACnuPOh9qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IgB-00036p-Fe; Thu, 29 Aug 2019 11:33:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdL-0000lP-Ga
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:33 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4960020033A;
 Thu, 29 Aug 2019 13:30:30 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3CAAF200336;
 Thu, 29 Aug 2019 13:30:30 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 506AA20613;
 Thu, 29 Aug 2019 13:30:29 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 14/14] drm/mxsfb: Add support for live pixel format change
Date: Thu, 29 Aug 2019 14:30:15 +0300
Message-Id: <1567078215-31601-15-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043031_757071_EADB37DD 
X-CRM114-Status: GOOD (  10.32  )
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

VGhpcyBJUCByZXF1aXJlcyBmdWxsIHN0b3AgYW5kIHJlLXN0YXJ0IHdoZW4gY2hhbmdpbmcgZGlz
cGxheSB0aW1pbmdzLApidXQgd2UgY2FuIGNoYW5nZSB0aGUgcGl4ZWwgZm9ybWF0IHdoaWxlIHJ1
bm5pbmcuCgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5j
b20+ClRlc3RlZC1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIHwgMTYgKysrKysrKysrKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL214
c2ZiL214c2ZiX2NydGMuYwppbmRleCAzMTc1NzVlLi41NjA3ZmMwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9teHNm
Yi9teHNmYl9jcnRjLmMKQEAgLTQ5NCw2ICs0OTQsNyBAQCB2b2lkIG14c2ZiX3BsYW5lX2F0b21p
Y191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYiwKIAlzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMgPSAmcGlwZS0+Y3J0YzsKIAlzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpuZXdfc3Rh
dGUgPSBwaXBlLT5wbGFuZS5zdGF0ZTsKIAlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBp
cGUtPnBsYW5lLnN0YXRlLT5mYjsKKwlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpvbGRfZmIgPSBz
dGF0ZS0+ZmI7CiAJc3RydWN0IGRybV9wZW5kaW5nX3ZibGFua19ldmVudCAqZXZlbnQ7CiAJdTMy
IGZiX2FkZHIsIHNyY19vZmYsIHNyY193LCBzdHJpZGUsIGNwcCA9IDA7CiAKQEAgLTUxMCw3ICs1
MTEsNyBAQCB2b2lkIG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9w
cml2YXRlICpteHNmYiwKIAl9CiAJc3Bpbl91bmxvY2tfaXJxKCZjcnRjLT5kZXYtPmV2ZW50X2xv
Y2spOwogCi0JaWYgKCFmYikKKwlpZiAoIWZiIHx8ICFvbGRfZmIpCiAJCXJldHVybjsKIAogCWZi
X2FkZHIgPSBteHNmYl9nZXRfZmJfcGFkZHIobXhzZmIpOwpAQCAtNTMzLDQgKzUzNCwxNyBAQCB2
b2lkIG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpt
eHNmYiwKIAkJc3JjX3cgPSBuZXdfc3RhdGUtPnNyY193ID4+IDE2OwogCQlteHNmYl9zZXRfZmJf
aGNyb3AobXhzZmIsIHNyY193LCBzdHJpZGUpOwogCX0KKworCWlmIChvbGRfZmItPmZvcm1hdC0+
Zm9ybWF0ICE9IGZiLT5mb3JtYXQtPmZvcm1hdCkgeworCQlzdHJ1Y3QgZHJtX2Zvcm1hdF9uYW1l
X2J1ZiBvbGRfZm10X2J1ZjsKKwkJc3RydWN0IGRybV9mb3JtYXRfbmFtZV9idWYgbmV3X2ZtdF9i
dWY7CisKKwkJRFJNX0RFVl9ERUJVR19EUklWRVIoY3J0Yy0+ZGV2LT5kZXYsCisJCQkJIlN3aXRj
aGluZyBwaXhlbCBmb3JtYXQ6ICVzIC0+ICVzXG4iLAorCQkJCWRybV9nZXRfZm9ybWF0X25hbWUo
b2xkX2ZiLT5mb3JtYXQtPmZvcm1hdCwKKwkJCQkJCSAgICAmb2xkX2ZtdF9idWYpLAorCQkJCWRy
bV9nZXRfZm9ybWF0X25hbWUoZmItPmZvcm1hdC0+Zm9ybWF0LAorCQkJCQkJICAgICZuZXdfZm10
X2J1ZikpOworCQlteHNmYl9zZXRfcGl4ZWxfZm10KG14c2ZiLCB0cnVlKTsKKwl9CiB9Ci0tIAoy
LjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK

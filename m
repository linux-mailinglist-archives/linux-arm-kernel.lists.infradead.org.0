Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C77976CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wcdr1hCuqrFHtTMPSNJdGIVO4FxXZuZ9D2dM0XpJuk=; b=BxvzEYrBpkGv8E
	J3mi6doQEb0nUChrogyO76PrwrMC1ZDvpUIvBiogUimZpw6egk3NE+bCDSSNxKDKMzCEqyED6Kd9E
	xm7fI4+vmt7W4BGPl2TEYpJhUPoTqvgPAhdtgF0gN3FFk0k7QRR/D3qdBVLIJ0KfQaspLeWd4WmA2
	ZieIbLqLpQp5Hd3boEDcx4Dha3pNBTDiKGgIV17bQRPirMA6+9MNKFWE/wPj01BNk8KfIkkrVd3WA
	S7Nb6O0Nuj2UkNQWIuRGYCDX+fSAYovNOh2T7R7/DLi6hIuJXMAm1BBKZzzVtkz4JX8yLwUnRHXso
	NEVoWeVpPBhXAar0yMTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Nfi-00027P-4n; Wed, 21 Aug 2019 10:16:54 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfA-00024m-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 970FF200241;
 Wed, 21 Aug 2019 12:16:17 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A3A9200005;
 Wed, 21 Aug 2019 12:16:17 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D1213205D3;
 Wed, 21 Aug 2019 12:16:16 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 02/15] drm/mxsfb: Read bus flags from bridge if present
Date: Wed, 21 Aug 2019 13:15:42 +0300
Message-Id: <1566382555-12102-3-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031620_711255_0FDFCA6A 
X-CRM114-Status: GOOD (  10.46  )
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

RnJvbTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KClRoZSBicmlkZ2UgbWlnaHQg
aGF2ZSBzcGVjaWFsIHJlcXVpcm1lbnRlcyBvbiB0aGUgaW5wdXQgYnVzLiBUaGlzCmlzIGUuZy4g
dXNlZCBieSB0aGUgaW14LW53bCBicmlkZ2UuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPgpSZXZpZXdlZC1ieTogU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWdu
ZXIuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYyB8IDUgKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJt
L214c2ZiL214c2ZiX2NydGMuYwppbmRleCBkZTA5YjkzLi5iNjlhY2U4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
eHNmYi9teHNmYl9jcnRjLmMKQEAgLTIwOSw3ICsyMDksNyBAQCBzdGF0aWMgdm9pZCBteHNmYl9j
cnRjX21vZGVfc2V0X25vZmIoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYikKIHsKIAlz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtID0gbXhzZmItPnBpcGUuY3J0Yy5kZXY7CiAJc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKm0gPSAmbXhzZmItPnBpcGUuY3J0Yy5zdGF0ZS0+YWRqdXN0ZWRfbW9k
ZTsKLQljb25zdCB1MzIgYnVzX2ZsYWdzID0gbXhzZmItPmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZv
LmJ1c19mbGFnczsKKwl1MzIgYnVzX2ZsYWdzID0gbXhzZmItPmNvbm5lY3Rvci0+ZGlzcGxheV9p
bmZvLmJ1c19mbGFnczsKIAl1MzIgdmRjdHJsMCwgdnN5bmNfcHVsc2VfbGVuLCBoc3luY19wdWxz
ZV9sZW47CiAJaW50IGVycjsKIApAQCAtMjMzLDYgKzIzMyw5IEBAIHN0YXRpYyB2b2lkIG14c2Zi
X2NydGNfbW9kZV9zZXRfbm9mYihzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiKQogCiAJ
Y2xrX3NldF9yYXRlKG14c2ZiLT5jbGssIG0tPmNydGNfY2xvY2sgKiAxMDAwKTsKIAorCWlmICht
eHNmYi0+YnJpZGdlICYmIG14c2ZiLT5icmlkZ2UtPnRpbWluZ3MpCisJCWJ1c19mbGFncyA9IG14
c2ZiLT5icmlkZ2UtPnRpbWluZ3MtPmlucHV0X2J1c19mbGFnczsKKwogCURSTV9ERVZfREVCVUdf
RFJJVkVSKGRybS0+ZGV2LCAiUGl4ZWwgY2xvY2s6ICVka0h6IChhY3R1YWw6ICVka0h6KVxuIiwK
IAkJCSAgICAgbS0+Y3J0Y19jbG9jaywKIAkJCSAgICAgKGludCkoY2xrX2dldF9yYXRlKG14c2Zi
LT5jbGspIC8gMTAwMCkpOwotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

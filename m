Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F0AA18A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBaEWksvBQsDprv+5pdvU0nL0o1Q4XBULOrzEH9916o=; b=I1/5xZCCyLbus4
	zeU+2A4PyzTC0gohO2D9G9qZdhNP8WIaQtQj2DXfP8p1DWZJal0g6IFbJ0miof0LFuI1J9BmJ5P9c
	aElpoEgAbJ3mpaivUZCOo7djKyd4WU80L9l3LWz3nbkrb82vxdV5xIGliCAcOjebNrUmoZAOUsAuJ
	McaEN9RwarhYtsIbE56dD/jwBqLHsBDGJrBGHqk/uUL7YBYv42YbUTSFLNT41MoQ3VUFpQtYlTPaA
	AHW0MsJQC8ckDtwQHxIJHNqBAsF3gT2BU86EHCUjh7jagS9ylIynFRz7UOhUbhPDixlwB1p1JiW/3
	YwyJuvg4lVh9UNHyalzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IfQ-0002Ov-Np; Thu, 29 Aug 2019 11:32:40 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdI-0000hX-AF
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:30 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 29CAC20033E;
 Thu, 29 Aug 2019 13:30:27 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D38D200335;
 Thu, 29 Aug 2019 13:30:27 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 43D0120613;
 Thu, 29 Aug 2019 13:30:26 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 11/14] drm/mxsfb: Improve the axi clock usage
Date: Thu, 29 Aug 2019 14:30:12 +0300
Message-Id: <1567078215-31601-12-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043028_670035_6DB8F7F9 
X-CRM114-Status: GOOD (  14.73  )
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

Q3VycmVudGx5LCB0aGUgZW5hYmxlIG9mIHRoZSBheGkgY2xvY2sgcmV0dXJuIHN0YXR1cyBpcyBp
Z25vcmVkLCBjYXVzaW5nCmlzc3VlcyB3aGVuIHRoZSBlbmFibGUgZmFpbHMgdGhlbiB3ZSB0cnkg
dG8gZGlzYWJsZSBpdC4gVGhlcmVmb3JlLCBpdCBpcwpiZXR0ZXIgdG8gY2hlY2sgdGhlIHJldHVy
biBzdGF0dXMgYW5kIGRpc2FibGUgaXQgb25seSB3aGVuIGVuYWJsZQpzdWNjZWVkZWQuCkFsc28s
IHJlbW92ZSB0aGUgaGVscGVyIGZ1bmN0aW9ucyBhcm91bmQgY2xrX2F4aSwgc2luY2Ugd2UgY2Fu
IGRpcmVjdGx5CnVzZSB0aGUgY2xrIEFQSSBmdW5jdGlvbiBmb3IgZW5hYmxlL2Rpc2FibGUgdGhl
IGNsb2NrLiBUaG9zZSBmdW5jdGlvbnMKYXJlIGFscmVhZHkgY2hlY2tpbmcgZm9yIE5VTEwgY2xr
IGFuZCByZXR1cm5pbmcgMCBpZiB0aGF0J3MgdGhlIGNhc2UuCgpTaWduZWQtb2ZmLWJ5OiBSb2Jl
cnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+CkFja2VkLWJ5OiBMZW9uYXJkIENyZXN0
ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgpUZXN0ZWQtYnk6IEd1aWRvIEfDvG50aGVyIDxh
Z3hAc2lneGNwdS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYyB8
ICA4ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMgIHwgMzIgKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNm
Yl9kcnYuaCAgfCAgMyAtLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMjYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Ny
dGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRjLmMKaW5kZXggYTRiYTM2OC4u
ZTcyN2Y1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCkBAIC00MDgsNyArNDA4LDcg
QEAgdm9pZCBteHNmYl9jcnRjX2VuYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2Zi
KQogewogCWRtYV9hZGRyX3QgcGFkZHI7CiAKLQlteHNmYl9lbmFibGVfYXhpX2NsayhteHNmYik7
CisJY2xrX3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGtfYXhpKTsKIAl3cml0ZWwoMCwgbXhzZmIt
PmJhc2UgKyBMQ0RDX0NUUkwpOwogCW14c2ZiX2NydGNfbW9kZV9zZXRfbm9mYihteHNmYik7CiAK
QEAgLTQyNSw3ICs0MjUsNyBAQCB2b2lkIG14c2ZiX2NydGNfZW5hYmxlKHN0cnVjdCBteHNmYl9k
cm1fcHJpdmF0ZSAqbXhzZmIpCiB2b2lkIG14c2ZiX2NydGNfZGlzYWJsZShzdHJ1Y3QgbXhzZmJf
ZHJtX3ByaXZhdGUgKm14c2ZiKQogewogCW14c2ZiX2Rpc2FibGVfY29udHJvbGxlcihteHNmYik7
Ci0JbXhzZmJfZGlzYWJsZV9heGlfY2xrKG14c2ZiKTsKKwljbGtfZGlzYWJsZV91bnByZXBhcmUo
bXhzZmItPmNsa19heGkpOwogfQogCiB2b2lkIG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3Ry
dWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYiwKQEAgLTQ1MSw4ICs0NTEsOCBAQCB2b2lkIG14
c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYiwK
IAogCXBhZGRyID0gbXhzZmJfZ2V0X2ZiX3BhZGRyKG14c2ZiKTsKIAlpZiAocGFkZHIpIHsKLQkJ
bXhzZmJfZW5hYmxlX2F4aV9jbGsobXhzZmIpOworCQljbGtfcHJlcGFyZV9lbmFibGUobXhzZmIt
PmNsa19heGkpOwogCQl3cml0ZWwocGFkZHIsIG14c2ZiLT5iYXNlICsgbXhzZmItPmRldmRhdGEt
Pm5leHRfYnVmKTsKLQkJbXhzZmJfZGlzYWJsZV9heGlfY2xrKG14c2ZiKTsKKwkJY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKG14c2ZiLT5jbGtfYXhpKTsKIAl9CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
ZHJ2LmMKaW5kZXggZDg2ODZjNy4uODg4YjUyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L214c2ZiL214c2ZiX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYu
YwpAQCAtOTQsMTggKzk0LDYgQEAgZHJtX3BpcGVfdG9fbXhzZmJfZHJtX3ByaXZhdGUoc3RydWN0
IGRybV9zaW1wbGVfZGlzcGxheV9waXBlICpwaXBlKQogCXJldHVybiBjb250YWluZXJfb2YocGlw
ZSwgc3RydWN0IG14c2ZiX2RybV9wcml2YXRlLCBwaXBlKTsKIH0KIAotdm9pZCBteHNmYl9lbmFi
bGVfYXhpX2NsayhzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiKQotewotCWlmIChteHNm
Yi0+Y2xrX2F4aSkKLQkJY2xrX3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGtfYXhpKTsKLX0KLQot
dm9pZCBteHNmYl9kaXNhYmxlX2F4aV9jbGsoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNm
YikKLXsKLQlpZiAobXhzZmItPmNsa19heGkpCi0JCWNsa19kaXNhYmxlX3VucHJlcGFyZShteHNm
Yi0+Y2xrX2F4aSk7Ci19Ci0KIC8qKgogICogbXhzZmJfYXRvbWljX2hlbHBlcl9jaGVjayAtIHZh
bGlkYXRlIHN0YXRlIG9iamVjdAogICogQGRldjogRFJNIGRldmljZQpAQCAtMjY1LDI1ICsyNTMs
MzEgQEAgc3RhdGljIHZvaWQgbXhzZmJfcGlwZV91cGRhdGUoc3RydWN0IGRybV9zaW1wbGVfZGlz
cGxheV9waXBlICpwaXBlLAogc3RhdGljIGludCBteHNmYl9waXBlX2VuYWJsZV92Ymxhbmsoc3Ry
dWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlICpwaXBlKQogewogCXN0cnVjdCBteHNmYl9kcm1f
cHJpdmF0ZSAqbXhzZmIgPSBkcm1fcGlwZV90b19teHNmYl9kcm1fcHJpdmF0ZShwaXBlKTsKKwlp
bnQgcmV0ID0gMDsKKworCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShteHNmYi0+Y2xrX2F4aSk7
CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKIAogCS8qIENsZWFyIGFuZCBlbmFibGUgVkJMQU5L
IElSUSAqLwotCW14c2ZiX2VuYWJsZV9heGlfY2xrKG14c2ZiKTsKIAl3cml0ZWwoQ1RSTDFfQ1VS
X0ZSQU1FX0RPTkVfSVJRLCBteHNmYi0+YmFzZSArIExDRENfQ1RSTDEgKyBSRUdfQ0xSKTsKIAl3
cml0ZWwoQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRX0VOLCBteHNmYi0+YmFzZSArIExDRENfQ1RS
TDEgKyBSRUdfU0VUKTsKLQlteHNmYl9kaXNhYmxlX2F4aV9jbGsobXhzZmIpOworCWNsa19kaXNh
YmxlX3VucHJlcGFyZShteHNmYi0+Y2xrX2F4aSk7CiAKLQlyZXR1cm4gMDsKKwlyZXR1cm4gcmV0
OwogfQogCiBzdGF0aWMgdm9pZCBteHNmYl9waXBlX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1f
c2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSkKIHsKIAlzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUg
Km14c2ZiID0gZHJtX3BpcGVfdG9fbXhzZmJfZHJtX3ByaXZhdGUocGlwZSk7CiAKKwlpZiAoY2xr
X3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGtfYXhpKSkKKwkJcmV0dXJuOworCiAJLyogRGlzYWJs
ZSBhbmQgY2xlYXIgVkJMQU5LIElSUSAqLwotCW14c2ZiX2VuYWJsZV9heGlfY2xrKG14c2ZiKTsK
IAl3cml0ZWwoQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRX0VOLCBteHNmYi0+YmFzZSArIExDRENf
Q1RSTDEgKyBSRUdfQ0xSKTsKIAl3cml0ZWwoQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRLCBteHNm
Yi0+YmFzZSArIExDRENfQ1RSTDEgKyBSRUdfQ0xSKTsKLQlteHNmYl9kaXNhYmxlX2F4aV9jbGso
bXhzZmIpOworCWNsa19kaXNhYmxlX3VucHJlcGFyZShteHNmYi0+Y2xrX2F4aSk7CiB9CiAKIHN0
YXRpYyBzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfZnVuY3MgbXhzZmJfZnVuY3MgPSB7
CkBAIC00NDQsNyArNDM4LDcgQEAgc3RhdGljIGlycXJldHVybl90IG14c2ZiX2lycV9oYW5kbGVy
KGludCBpcnEsIHZvaWQgKmRhdGEpCiAJc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYiA9
IGRybS0+ZGV2X3ByaXZhdGU7CiAJdTMyIHJlZzsKIAotCW14c2ZiX2VuYWJsZV9heGlfY2xrKG14
c2ZiKTsKKwljbGtfcHJlcGFyZV9lbmFibGUobXhzZmItPmNsa19heGkpOwogCiAJcmVnID0gcmVh
ZGwobXhzZmItPmJhc2UgKyBMQ0RDX0NUUkwxKTsKIApAQCAtNDUzLDcgKzQ0Nyw3IEBAIHN0YXRp
YyBpcnFyZXR1cm5fdCBteHNmYl9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkICpkYXRhKQogCiAJ
d3JpdGVsKENUUkwxX0NVUl9GUkFNRV9ET05FX0lSUSwgbXhzZmItPmJhc2UgKyBMQ0RDX0NUUkwx
ICsgUkVHX0NMUik7CiAKLQlteHNmYl9kaXNhYmxlX2F4aV9jbGsobXhzZmIpOworCWNsa19kaXNh
YmxlX3VucHJlcGFyZShteHNmYi0+Y2xrX2F4aSk7CiAKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmggYi9kcml2ZXJz
L2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmgKaW5kZXggYTE3ODE3My4uNTRjMDY0NCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9teHNmYi9teHNmYl9kcnYuaApAQCAtMzksOSArMzksNiBAQCBzdHJ1Y3QgbXhzZmJfZHJt
X3ByaXZhdGUgewogaW50IG14c2ZiX3NldHVwX2NydGMoc3RydWN0IGRybV9kZXZpY2UgKmRldik7
CiBpbnQgbXhzZmJfY3JlYXRlX291dHB1dChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKIAotdm9p
ZCBteHNmYl9lbmFibGVfYXhpX2NsayhzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiKTsK
LXZvaWQgbXhzZmJfZGlzYWJsZV9heGlfY2xrKHN0cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAqbXhz
ZmIpOwotCiB2b2lkIG14c2ZiX2NydGNfZW5hYmxlKHN0cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAq
bXhzZmIpOwogdm9pZCBteHNmYl9jcnRjX2Rpc2FibGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRl
ICpteHNmYik7CiB2b2lkIG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2Ry
bV9wcml2YXRlICpteHNmYiwKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

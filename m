Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C5448632
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZC4Z4O9fxK5GZ8GyulKHBiwtnFF16J+KNcsdQEkCKMg=; b=IzvRVSAfxKIy/o
	sWCP0PUfUdr4A/nGMYMlW2tt4KpaZ9pf+wKMyL05CuJ9ohaX+tvfs/yz3IaTCoY5sSL7rHc/37l37
	Et78cAOQjTLxmoEI23/zLzvyrxM+/dRvfmfd6Z21ISFfMtex2qwRKImGMbxNbRrHKDIoKbYaPq9UB
	mDehhjua2XfaaSqvj2OqH1KK5X1VIuxGIgWMbESM43aErpG89Fy+Ohf/+dk1HJZjSegREvuI8dgUe
	O+xQBqQUSpCu7VIJctlUqh6suLj4kS42QzLGUDuVhMvelHFoq26dWIrEC1GysZFkrAghQ/bChOP6C
	u0LmN7qSa0cCFGOxdEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct2u-0000Ko-IK; Mon, 17 Jun 2019 14:55:44 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszi-0005Ei-MM
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:29 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EE357200017;
 Mon, 17 Jun 2019 14:52:09 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 04/12] drm/client: Change drm_client_panel_rotation name
Date: Mon, 17 Jun 2019 16:51:31 +0200
Message-Id: <8cb0f0d9569d41685bbf30a1538da6578cd2769b.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075227_361522_C1E3A158 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGRybV9jbGllbnRfcGFuZWxfcm90YXRpb24gZnVuY3Rpb24gaGFzIGJlZW4gdXNlZCBzbyBm
YXIgdG8gc2V0IHRoZQpkZWZhdWx0IHJvdGF0aW9uIGJhc2VkIG9uIHRoZSBwYW5lbCBvcmllbnRh
dGlvbi4KCkhvd2V2ZXIsIHdlIGNhbiBoYXZlIG1vcmUgc291cmNlcyBvZiBpbmZvcm1hdGlvbiB0
byBtYWtlIHRoYXQgZGVjaXNpb24sCnN0YXJ0aW5nIHdpdGggdGhlIGNvbW1hbmQgbGluZSB0aGF0
IHdlIHdpbGwgaW50cm9kdWNlIGxhdGVyIGluIHRoaXMgc2VyaWVzLgoKQ2hhbmdlIHRoZSBuYW1l
IHRvIHJlbW92ZSB0aGUgcGFuZWwgbWVudGlvbi4KClJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5u
ZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4
aW1lLnJpcGFyZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9t
b2Rlc2V0LmMgfCAxMiArKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVy
LmMgICAgICB8ICAyICstCiBpbmNsdWRlL2RybS9kcm1fY2xpZW50LmggICAgICAgICAgICAgfCAg
MiArLQogMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jCmluZGV4IGI0ZTVmYjBhMTdjZi4uNDg2OWEw
MTcwYmVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jCkBAIC04MDQsMTkgKzgw
NCwxOSBAQCBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1fY2xpZW50X2Rl
diAqY2xpZW50LCB1bnNpZ25lZCBpbnQgd2lkdGgsIAogRVhQT1JUX1NZTUJPTChkcm1fY2xpZW50
X21vZGVzZXRfcHJvYmUpOwogCiAvKioKLSAqIGRybV9jbGllbnRfcGFuZWxfcm90YXRpb24oKSAt
IENoZWNrIHBhbmVsIG9yaWVudGF0aW9uCisgKiBkcm1fY2xpZW50X3JvdGF0aW9uKCkgLSBDaGVj
ayB0aGUgaW5pdGlhbCByb3RhdGlvbiB2YWx1ZQogICogQG1vZGVzZXQ6IERSTSBtb2Rlc2V0CiAg
KiBAcm90YXRpb246IFJldHVybmVkIHJvdGF0aW9uIHZhbHVlCiAgKgotICogVGhpcyBmdW5jdGlv
biBjaGVja3MgaWYgdGhlIHByaW1hcnkgcGxhbmUgaW4gQG1vZGVzZXQgY2FuIGh3IHJvdGF0ZSB0
byBtYXRjaAotICogdGhlIHBhbmVsIG9yaWVudGF0aW9uIG9uIGl0cyBjb25uZWN0b3IuCisgKiBU
aGlzIGZ1bmN0aW9uIGNoZWNrcyBpZiB0aGUgcHJpbWFyeSBwbGFuZSBpbiBAbW9kZXNldCBjYW4g
aHcgcm90YXRlCisgKiB0byBtYXRjaCB0aGUgcm90YXRpb24gbmVlZGVkIG9uIGl0cyBjb25uZWN0
b3IuCiAgKgogICogTm90ZTogQ3VycmVudGx5IG9ubHkgMCBhbmQgMTgwIGRlZ3JlZXMgYXJlIHN1
cHBvcnRlZC4KICAqCiAgKiBSZXR1cm46CiAgKiBUcnVlIGlmIHRoZSBwbGFuZSBjYW4gZG8gdGhl
IHJvdGF0aW9uLCBmYWxzZSBvdGhlcndpc2UuCiAgKi8KLWJvb2wgZHJtX2NsaWVudF9wYW5lbF9y
b3RhdGlvbihzdHJ1Y3QgZHJtX21vZGVfc2V0ICptb2Rlc2V0LCB1bnNpZ25lZCBpbnQgKnJvdGF0
aW9uKQorYm9vbCBkcm1fY2xpZW50X3JvdGF0aW9uKHN0cnVjdCBkcm1fbW9kZV9zZXQgKm1vZGVz
ZXQsIHVuc2lnbmVkIGludCAqcm90YXRpb24pCiB7CiAJc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciA9IG1vZGVzZXQtPmNvbm5lY3RvcnNbMF07CiAJc3RydWN0IGRybV9wbGFuZSAqcGxh
bmUgPSBtb2Rlc2V0LT5jcnRjLT5wcmltYXJ5OwpAQCAtODU3LDcgKzg1Nyw3IEBAIGJvb2wgZHJt
X2NsaWVudF9wYW5lbF9yb3RhdGlvbihzdHJ1Y3QgZHJtX21vZGVfc2V0ICptb2Rlc2V0LCB1bnNp
Z25lZCBpbnQgKnJvdGF0CiAKIAlyZXR1cm4gdHJ1ZTsKIH0KLUVYUE9SVF9TWU1CT0woZHJtX2Ns
aWVudF9wYW5lbF9yb3RhdGlvbik7CitFWFBPUlRfU1lNQk9MKGRybV9jbGllbnRfcm90YXRpb24p
OwogCiBzdGF0aWMgaW50IGRybV9jbGllbnRfbW9kZXNldF9jb21taXRfYXRvbWljKHN0cnVjdCBk
cm1fY2xpZW50X2RldiAqY2xpZW50LCBib29sIGFjdGl2ZSkKIHsKQEAgLTkwMiw3ICs5MDIsNyBA
QCBzdGF0aWMgaW50IGRybV9jbGllbnRfbW9kZXNldF9jb21taXRfYXRvbWljKHN0cnVjdCBkcm1f
Y2xpZW50X2RldiAqY2xpZW50LCBib29sIAogCQlzdHJ1Y3QgZHJtX3BsYW5lICpwcmltYXJ5ID0g
bW9kZV9zZXQtPmNydGMtPnByaW1hcnk7CiAJCXVuc2lnbmVkIGludCByb3RhdGlvbjsKIAotCQlp
ZiAoZHJtX2NsaWVudF9wYW5lbF9yb3RhdGlvbihtb2RlX3NldCwgJnJvdGF0aW9uKSkgeworCQlp
ZiAoZHJtX2NsaWVudF9yb3RhdGlvbihtb2RlX3NldCwgJnJvdGF0aW9uKSkgewogCQkJc3RydWN0
IGRybV9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7CiAKIAkJCS8qIENhbm5vdCBmYWlsIGFzIHdl
J3ZlIGFscmVhZHkgZ290dGVuIHRoZSBwbGFuZSBzdGF0ZSBhYm92ZSAqLwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJf
aGVscGVyLmMKaW5kZXggNDI4NTJjYWU3NDliLi4xOTg0ZTVjNTRkNTggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9m
Yl9oZWxwZXIuYwpAQCAtMTcyMiw3ICsxNzIyLDcgQEAgc3RhdGljIHZvaWQgZHJtX3NldHVwX2Ny
dGNzX2ZiKHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIpCiAKIAkJbW9kZXNldC0+ZmIg
PSBmYl9oZWxwZXItPmZiOwogCi0JCWlmIChkcm1fY2xpZW50X3BhbmVsX3JvdGF0aW9uKG1vZGVz
ZXQsICZyb3RhdGlvbikpCisJCWlmIChkcm1fY2xpZW50X3JvdGF0aW9uKG1vZGVzZXQsICZyb3Rh
dGlvbikpCiAJCQkvKiBSb3RhdGluZyBpbiBoYXJkd2FyZSwgZmJjb24gc2hvdWxkIG5vdCByb3Rh
dGUgKi8KIAkJCXN3X3JvdGF0aW9ucyB8PSBEUk1fTU9ERV9ST1RBVEVfMDsKIAkJZWxzZQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2NsaWVudC5oIGIvaW5jbHVkZS9kcm0vZHJtX2NsaWVu
dC5oCmluZGV4IGYyZDVlZDc0NTczMy4uNzJkNTFkMWU5ZGQ5IDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9kcm1fY2xpZW50LmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2NsaWVudC5oCkBAIC0xNTMs
NyArMTUzLDcgQEAgdm9pZCBkcm1fY2xpZW50X2ZyYW1lYnVmZmVyX2RlbGV0ZShzdHJ1Y3QgZHJt
X2NsaWVudF9idWZmZXIgKmJ1ZmZlcik7CiBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0X2NyZWF0ZShz
dHJ1Y3QgZHJtX2NsaWVudF9kZXYgKmNsaWVudCk7CiB2b2lkIGRybV9jbGllbnRfbW9kZXNldF9m
cmVlKHN0cnVjdCBkcm1fY2xpZW50X2RldiAqY2xpZW50KTsKIGludCBkcm1fY2xpZW50X21vZGVz
ZXRfcHJvYmUoc3RydWN0IGRybV9jbGllbnRfZGV2ICpjbGllbnQsIHVuc2lnbmVkIGludCB3aWR0
aCwgdW5zaWduZWQgaW50IGhlaWdodCk7Ci1ib29sIGRybV9jbGllbnRfcGFuZWxfcm90YXRpb24o
c3RydWN0IGRybV9tb2RlX3NldCAqbW9kZXNldCwgdW5zaWduZWQgaW50ICpyb3RhdGlvbik7Citi
b29sIGRybV9jbGllbnRfcm90YXRpb24oc3RydWN0IGRybV9tb2RlX3NldCAqbW9kZXNldCwgdW5z
aWduZWQgaW50ICpyb3RhdGlvbik7CiBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0X2NvbW1pdF9mb3Jj
ZShzdHJ1Y3QgZHJtX2NsaWVudF9kZXYgKmNsaWVudCk7CiBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0
X2NvbW1pdChzdHJ1Y3QgZHJtX2NsaWVudF9kZXYgKmNsaWVudCk7CiBpbnQgZHJtX2NsaWVudF9t
b2Rlc2V0X2RwbXMoc3RydWN0IGRybV9jbGllbnRfZGV2ICpjbGllbnQsIGludCBtb2RlKTsKLS0g
CmdpdC1zZXJpZXMgMC45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

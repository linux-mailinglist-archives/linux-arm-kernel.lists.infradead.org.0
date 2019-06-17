Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D386448630
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozyovz5IPgrLji7tqOm4OOHS4+2cax/N19QZqDG3W54=; b=Da356zXjA1ZZI+
	tTqTqcMAbQuLHofxx1/dmww4rzy42HaQSTQejg9bx+iumRHzvT2vGkXQHW26D4655OAxZlmHA/UeV
	iCByjx7ERyyZ88q5kmvzy+Dl1fxXEAll3CNXZB3hmpMcSJUaSxOsMomLJ/4g/fHJ6qY2YCN6mos4i
	wvNb1Vx9I21WygffWw6ORVjt2ZoQq5datMoM8BukXlLiiK+OcTdw8q/LwYt+2p1n7sBRbISTaF9Lj
	/9PV36psYgafMH9IMfwdwTjM/WJv795dlHdIgcFqJGx2OA5Nm4PQwT9mywsnEN0wDUwouYpOGIOps
	Nh6wjmHardL8g1B9thzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct2b-0007Bn-59; Mon, 17 Jun 2019 14:55:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszi-0005FN-OS
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:28 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A7983200012;
 Mon, 17 Jun 2019 14:52:22 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 08/12] drm/connector: Introduce a TV margins structure
Date: Mon, 17 Jun 2019 16:51:35 +0200
Message-Id: <38b773b03f15ec7a135cdf8f7db669e5ada20cf2.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075227_024561_F2545A43 
X-CRM114-Status: GOOD (  10.97  )
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

VGhlIFRWIG1hcmdpbnMgaGFzIGJlZW4gZGVmaW5lZCBhcyBhIHN0cnVjdHVyZSBpbnNpZGUgdGhl
CmRybV9jb25uZWN0b3Jfc3RhdGUgc3RydWN0dXJlIHNvIGZhci4gSG93ZXZlciwgd2Ugd2lsbCBu
ZWVkIGl0IGluIG90aGVyCnN0cnVjdHVyZXMgYXMgd2VsbCwgc28gbGV0J3MgbW92ZSB0aGF0IHN0
cnVjdHVyZSBkZWZpbml0aW9uIHNvIHRoYXQgaXQgY2FuCmJlIHJldXNlZC4KClJldmlld2VkLWJ5
OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogTWF4
aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmggfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9j
b25uZWN0b3IuaAppbmRleCA4ZWViZTA0MzJjNzMuLmIyMmUzMTUwZTMzZCAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0
b3IuaApAQCAtNDY0LDEzICs0NjQsMzcgQEAgaW50IGRybV9kaXNwbGF5X2luZm9fc2V0X2J1c19m
b3JtYXRzKHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvLAogCQkJCSAgICAgdW5zaWduZWQg
aW50IG51bV9mb3JtYXRzKTsKIAogLyoqCisgKiBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90dl9tYXJn
aW5zIC0gVFYgY29ubmVjdG9yIHJlbGF0ZWQgbWFyZ2lucworICoKKyAqIERlc2NyaWJlcyB0aGUg
bWFyZ2lucyBpbiBwaXhlbHMgdG8gcHV0IGFyb3VuZCB0aGUgaW1hZ2Ugb24gVFYKKyAqIGNvbm5l
Y3RvcnMgdG8gZGVhbCB3aXRoIG92ZXJzY2FuLgorICovCitzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90
dl9tYXJnaW5zIHsKKwkvKioKKwkgKiBAYm90dG9tOiBCb3R0b20gbWFyZ2luIGluIHBpeGVscy4K
KwkgKi8KKwl1bnNpZ25lZCBpbnQgYm90dG9tOworCisJLyoqCisJICogQGxlZnQ6IExlZnQgbWFy
Z2luIGluIHBpeGVscy4KKwkgKi8KKwl1bnNpZ25lZCBpbnQgbGVmdDsKKworCS8qKgorCSAqIEBy
aWdodDogUmlnaHQgbWFyZ2luIGluIHBpeGVscy4KKwkgKi8KKwl1bnNpZ25lZCBpbnQgcmlnaHQ7
CisKKwkvKioKKwkgKiBAdG9wOiBUb3AgbWFyZ2luIGluIHBpeGVscy4KKwkgKi8KKwl1bnNpZ25l
ZCBpbnQgdG9wOworfTsKKworLyoqCiAgKiBzdHJ1Y3QgZHJtX3R2X2Nvbm5lY3Rvcl9zdGF0ZSAt
IFRWIGNvbm5lY3RvciByZWxhdGVkIHN0YXRlcwogICogQHN1YmNvbm5lY3Rvcjogc2VsZWN0ZWQg
c3ViY29ubmVjdG9yCi0gKiBAbWFyZ2luczogbWFyZ2lucyAoYWxsIG1hcmdpbnMgYXJlIGV4cHJl
c3NlZCBpbiBwaXhlbHMpCi0gKiBAbWFyZ2lucy5sZWZ0OiBsZWZ0IG1hcmdpbgotICogQG1hcmdp
bnMucmlnaHQ6IHJpZ2h0IG1hcmdpbgotICogQG1hcmdpbnMudG9wOiB0b3AgbWFyZ2luCi0gKiBA
bWFyZ2lucy5ib3R0b206IGJvdHRvbSBtYXJnaW4KKyAqIEBtYXJnaW5zOiBUViBtYXJnaW5zCiAg
KiBAbW9kZTogVFYgbW9kZQogICogQGJyaWdodG5lc3M6IGJyaWdodG5lc3MgaW4gcGVyY2VudAog
ICogQGNvbnRyYXN0OiBjb250cmFzdCBpbiBwZXJjZW50CkBAIC00ODEsMTIgKzUwNSw3IEBAIGlu
dCBkcm1fZGlzcGxheV9pbmZvX3NldF9idXNfZm9ybWF0cyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5m
byAqaW5mbywKICAqLwogc3RydWN0IGRybV90dl9jb25uZWN0b3Jfc3RhdGUgewogCWVudW0gZHJt
X21vZGVfc3ViY29ubmVjdG9yIHN1YmNvbm5lY3RvcjsKLQlzdHJ1Y3QgewotCQl1bnNpZ25lZCBp
bnQgbGVmdDsKLQkJdW5zaWduZWQgaW50IHJpZ2h0OwotCQl1bnNpZ25lZCBpbnQgdG9wOwotCQl1
bnNpZ25lZCBpbnQgYm90dG9tOwotCX0gbWFyZ2luczsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90
dl9tYXJnaW5zIG1hcmdpbnM7CiAJdW5zaWduZWQgaW50IG1vZGU7CiAJdW5zaWduZWQgaW50IGJy
aWdodG5lc3M7CiAJdW5zaWduZWQgaW50IGNvbnRyYXN0OwotLSAKZ2l0LXNlcmllcyAwLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=

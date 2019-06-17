Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B1F4860C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7m6omANDUtNEmqyFWQNRKsAJYOVKmZeDkXeXu2vlfY=; b=YVu/giDd2uRlyt
	cyxRfWcB6b/7ZU97N8TcogwThLNXbD4CTZrw+QJISA4YFovcazjt68kPPQ8z5Rz/VpmlD930zWEY+
	RtyLwz4EzQ8J5dgs7kstPeLZNS3CoP1iLx45uTAgm3qRC78DRZgjVZq7qmSSi5jjEzpa5wSby0mPI
	6Qb03cFoOMw/13ZWT+F4GeLhHrpr4CFGxk89/DsCXPE1wWN8cPW0DjAtrTRtePydT9990U5EFbI0g
	AoJi2NXZkGNBf7UmZxFzxxjaz3vFegpQio00zf+zSvDV2ybjVDmA8CMVaaTZucDrI7mcUcu3tFRZj
	ksBWO372WNDws2Nhdn7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcszR-0004ps-6D; Mon, 17 Jun 2019 14:52:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszA-0004pG-0g
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:51:53 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 140A3FF802;
 Mon, 17 Jun 2019 14:51:40 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 01/12] drm/connector: Add documentation for drm_cmdline_mode
Date: Mon, 17 Jun 2019 16:51:28 +0200
Message-Id: <963c893c16c6a25fc469b53c726f493d99bdc578.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075152_219096_118910D0 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

VGhlIHN0cnVjdCBkcm1fY21kbGluZV9tb2RlIGhvbGRzIHRoZSByZXN1bHQgb2YgdGhlIGNvbW1h
bmQgbGluZSBwYXJzZXJzLgpIb3dldmVyLCBpdCB3YXNuJ3QgZG9jdW1lbnRlZCBzbyBmYXIsIHNv
IGxldCdzIGRvIHRoYXQuCgpSZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJv
bm5lcy5vcmc+ClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9v
dGxpbi5jb20+Ci0tLQogaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIHwgODYgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4NCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25u
ZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAppbmRleCBjNmY4NDg2ZDhiOGYu
LmM4MDI3ODBiMGJmYyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCisr
KyBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaApAQCAtOTIzLDE4ICs5MjMsMTAwIEBAIHN0
cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIHsKIAkJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5l
Y3Rvcl9zdGF0ZSAqc3RhdGUpOwogfTsKIAotLyogbW9kZSBzcGVjaWZpZWQgb24gdGhlIGNvbW1h
bmQgbGluZSAqLworLyoqCisgKiBzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSAtIERSTSBNb2RlIHBh
c3NlZCB0aHJvdWdoIHRoZSBrZXJuZWwgY29tbWFuZC1saW5lCisgKgorICogRWFjaCBjb25uZWN0
b3IgY2FuIGhhdmUgYW4gaW5pdGlhbCBtb2RlIHdpdGggYWRkaXRpb25hbCBvcHRpb25zCisgKiBw
YXNzZWQgdGhyb3VnaCB0aGUga2VybmVsIGNvbW1hbmQgbGluZS4gVGhpcyBzdHJ1Y3R1cmUgYWxs
b3dzIHRvCisgKiBleHByZXNzIHRob3NlIHBhcmFtZXRlcnMgYW5kIHdpbGwgYmUgZmlsbGVkIGJ5
IHRoZSBjb21tYW5kLWxpbmUKKyAqIHBhcnNlci4KKyAqLwogc3RydWN0IGRybV9jbWRsaW5lX21v
ZGUgeworCS8qKgorCSAqIEBzcGVjaWZpZWQ6CisJICoKKwkgKiBIYXMgYSBtb2RlIGJlZW4gcmVh
ZCBmcm9tIHRoZSBjb21tYW5kLWxpbmU/CisJICovCiAJYm9vbCBzcGVjaWZpZWQ7CisKKwkvKioK
KwkgKiBAcmVmcmVzaF9zcGVjaWZpZWQ6CisJICoKKwkgKiBEaWQgdGhlIG1vZGUgaGF2ZSBhIHBy
ZWZlcnJlZCByZWZyZXNoIHJhdGU/CisJICovCiAJYm9vbCByZWZyZXNoX3NwZWNpZmllZDsKKwor
CS8qKgorCSAqIEBicHBfc3BlY2lmaWVkOgorCSAqCisJICogRGlkIHRoZSBtb2RlIGhhdmUgYSBw
cmVmZXJyZWQgQlBQPworCSAqLwogCWJvb2wgYnBwX3NwZWNpZmllZDsKLQlpbnQgeHJlcywgeXJl
czsKKworCS8qKgorCSAqIEB4cmVzOgorCSAqCisJICogQWN0aXZlIHJlc29sdXRpb24gb24gdGhl
IFggYXhpcywgaW4gcGl4ZWxzLgorCSAqLworCWludCB4cmVzOworCisJLyoqCisJICogQHlyZXM6
CisJICoKKwkgKiBBY3RpdmUgcmVzb2x1dGlvbiBvbiB0aGUgWSBheGlzLCBpbiBwaXhlbHMuCisJ
ICovCisJaW50IHlyZXM7CisKKwkvKioKKwkgKiBAYnBwOgorCSAqCisJICogQml0cyBwZXIgcGl4
ZWxzIGZvciB0aGUgbW9kZS4KKwkgKi8KIAlpbnQgYnBwOworCisJLyoqCisJICogQHJlZnJlc2g6
CisJICoKKwkgKiBSZWZyZXNoIHJhdGUsIGluIEhlcnR6LgorCSAqLwogCWludCByZWZyZXNoOwor
CisJLyoqCisJICogQHJiOgorCSAqCisJICogRG8gd2UgbmVlZCB0byB1c2UgcmVkdWNlZCBibGFu
a2luZz8KKwkgKi8KIAlib29sIHJiOworCisJLyoqCisJICogQGludGVybGFjZToKKwkgKgorCSAq
IFRoZSBtb2RlIGlzIGludGVybGFjZWQuCisJICovCiAJYm9vbCBpbnRlcmxhY2U7CisKKwkvKioK
KwkgKiBAY3Z0OgorCSAqCisJICogVGhlIHRpbWluZ3Mgd2lsbCBiZSBjYWxjdWxhdGVkIHVzaW5n
IHRoZSBWRVNBIENvb3JkaW5hdGVkCisJICogVmlkZW8gVGltaW5ncyBpbnN0ZWFkIG9mIGxvb2tp
bmcgdXAgdGhlIG1vZGUgZnJvbSBhIHRhYmxlLgorCSAqLwogCWJvb2wgY3Z0OworCisJLyoqCisJ
ICogQG1hcmdpbnM6CisJICoKKwkgKiBBZGQgbWFyZ2lucyB0byB0aGUgbW9kZSBjYWxjdWxhdGlv
biAoMS44JSBvZiB4cmVzIHJvdW5kZWQKKwkgKiBkb3duIHRvIDggcGl4ZWxzIGFuZCAxLjglIG9m
IHlyZXMpLgorCSAqLwogCWJvb2wgbWFyZ2luczsKKworCS8qKgorCSAqIEBmb3JjZToKKwkgKgor
CSAqIElnbm9yZSB0aGUgaG90cGx1ZyBzdGF0ZSBvZiB0aGUgY29ubmVjdG9yLCBhbmQgZm9yY2Ug
aXRzCisJICogc3RhdGUgdG8gb25lIG9mIHRoZSBEUk1fRk9SQ0VfKiB2YWx1ZXMuCisJICovCiAJ
ZW51bSBkcm1fY29ubmVjdG9yX2ZvcmNlIGZvcmNlOwogfTsKIAotLSAKZ2l0LXNlcmllcyAwLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=

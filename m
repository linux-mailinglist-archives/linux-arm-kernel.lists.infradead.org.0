Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05D94861C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZm7n7Pn1QiTbUB+L7umlLCZO9iB3VFOsH87EjB5Jxk=; b=oySMJC7QCxk9t2
	0kODHgtfT7LdP9IpLytdEQVkh4OBfwbwYVZb+ouLqQkoLGrahgV2iFCsdpXMH53eI5Ce0docpQUo+
	9u+Haz9U4G2SE/oYrA8qInEsOvDOQzXc2jxklLE1YFNsshqvUl58OqRIGC7/URKAoTg16Pax+dW7k
	ePGuJefM22GdzcFtG1XYYBw4NAKn0EiklhPQoE294I9MuEMepskvw3z2osKay2GsrWQ7xDUMTTbti
	xjqALUKuh/8+onZ1LuHzsQjkTavBuG+eBsOCgZkrtlZyVVtlHZ/cRAhX7xoKMDgrBwvIRDbAzAJzL
	GjJrxEBeIRgLk6DCAuyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct0a-0005dQ-6G; Mon, 17 Jun 2019 14:53:20 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszH-0004rw-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:02 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DF809E0017;
 Mon, 17 Jun 2019 14:51:47 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 10/12] drm/atomic: Add a function to reset connector TV
 properties
Date: Mon, 17 Jun 2019 16:51:37 +0200
Message-Id: <84a7b657f09303a2850e1cc79e68f623547f3fdd.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075159_633018_453EDB80 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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

RHVyaW5nIHRoZSBjb25uZWN0b3IgcmVzZXQsIGlmIHRoYXQgY29ubmVjdG9yIGhhcyBhIFRWIHBy
b3BlcnR5LCBpdCBuZWVkcwp0byBiZSByZXNldCB0byB0aGUgdmFsdWUgcHJvdmlkZWQgb24gdGhl
IGNvbW1hbmQgbGluZS4KClByb3ZpZGUgYSBoZWxwZXIgdG8gZG8gdGhhdC4KClJldmlld2VkLWJ5
OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogTWF4
aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogaW5j
bHVkZS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaCAgICAgfCAgMSArCiAyIGZpbGVzIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pY19zdGF0ZV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRl
X2hlbHBlci5jCmluZGV4IDdkNzM0N2E2ZjE5NC4uNDZkYzI2NGEyNDhiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuYwpAQCAtMzgwLDYgKzM4MCwyNCBAQCB2b2lk
IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNldChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQogRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2hlbHBlcl9jb25uZWN0b3JfcmVz
ZXQpOwogCiAvKioKKyAqIGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl90dl9yZXNldCAtIFJl
c2V0cyBUViBjb25uZWN0b3IgcHJvcGVydGllcworICogQGNvbm5lY3RvcjogRFJNIGNvbm5lY3Rv
cgorICoKKyAqIFJlc2V0cyB0aGUgVFYtcmVsYXRlZCBwcm9wZXJ0aWVzIGF0dGFjaGVkIHRvIGEg
Y29ubmVjdG9yLgorICovCit2b2lkIGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl90dl9yZXNl
dChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBkcm1fY21kbGlu
ZV9tb2RlICpjbWRsaW5lID0gJmNvbm5lY3Rvci0+Y21kbGluZV9tb2RlOworCXN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpzdGF0ZSA9IGNvbm5lY3Rvci0+c3RhdGU7CisKKwlzdGF0ZS0+dHYu
bWFyZ2lucy5sZWZ0ID0gY21kbGluZS0+dHZfbWFyZ2lucy5sZWZ0OworCXN0YXRlLT50di5tYXJn
aW5zLnJpZ2h0ID0gY21kbGluZS0+dHZfbWFyZ2lucy5yaWdodDsKKwlzdGF0ZS0+dHYubWFyZ2lu
cy50b3AgPSBjbWRsaW5lLT50dl9tYXJnaW5zLnRvcDsKKwlzdGF0ZS0+dHYubWFyZ2lucy5ib3R0
b20gPSBjbWRsaW5lLT50dl9tYXJnaW5zLmJvdHRvbTsKK30KK0VYUE9SVF9TWU1CT0woZHJtX2F0
b21pY19oZWxwZXJfY29ubmVjdG9yX3R2X3Jlc2V0KTsKKworLyoqCiAgKiBfX2RybV9hdG9taWNf
aGVscGVyX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUgLSBjb3B5IGF0b21pYyBjb25uZWN0b3Ig
c3RhdGUKICAqIEBjb25uZWN0b3I6IGNvbm5lY3RvciBvYmplY3QKICAqIEBzdGF0ZTogYXRvbWlj
IGNvbm5lY3RvciBzdGF0ZQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2F0b21pY19zdGF0
ZV9oZWxwZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmgKaW5kZXgg
NGU2ZDJlN2E0MGI4Li5lNDU3N2NjMTE2ODkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9h
dG9taWNfc3RhdGVfaGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2F0b21pY19zdGF0ZV9o
ZWxwZXIuaApAQCAtNjIsNiArNjIsNyBAQCB2b2lkIGRybV9hdG9taWNfaGVscGVyX3BsYW5lX2Rl
c3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiB2b2lkIF9fZHJtX2F0b21pY19o
ZWxwZXJfY29ubmVjdG9yX3Jlc2V0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJ
CQkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7CiB2b2lkIGRybV9h
dG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNldChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yKTsKK3ZvaWQgZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3R2X3Jlc2V0KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwogdm9pZAogX19kcm1fYXRvbWljX2hlbHBlcl9jb25u
ZWN0b3JfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJ
CQkJCSAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpzdGF0ZSk7Ci0tIApnaXQtc2VyaWVz
IDAuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

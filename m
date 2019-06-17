Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7614861D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mWYNCUUneGMNqQcmzcxjUfxUJ8r7NTVxOIp2+M4lDM=; b=bkSkNIkvS7UTfL
	4fL3pP9I83OSujBrtRSE278QQoD2+RjodF2hv75yxQ8yB7Ztd6hFR9aazUMu1WQEiEW2xJ/hJWFtd
	kAHKm2S+RMMx+3iCWnzCfzlT/jWqsTi7jxaj0F6UR6fXV7kz7kNMAwX2eTwRO++yxsn9r7/nPzr0f
	ba+dyIkO3FnwqmuWq1/fE48W1x2P2hk0rNvs+WD1micjBFSvIfGAlmNxfnbP1pflFCIh7LiU5qh4a
	qjfSQzaILPFre0SqGcLINAxBqyQHrp6RlAgVgkfRrTQ8fnayJpG7KXhQpsBrXhRh4kcGCXD+p+neG
	zGr2Oi5q0aTho+F5PY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct0t-0005u5-Ki; Mon, 17 Jun 2019 14:53:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszH-0004rv-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:04 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 16AD7E0008;
 Mon, 17 Jun 2019 14:51:52 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 11/12] drm/selftests: Add command line parser selftests
Date: Mon, 17 Jun 2019 16:51:38 +0200
Message-Id: <735348d3a475ce0bcc88b46e093ab149023bb202.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075159_829740_310C7B1C 
X-CRM114-Status: GOOD (  14.35  )
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

VGhlIGNvbW1hbmQgbGluZSBwYXJzZXIgaXMgcHJldHR5IHRvdWdoIHRvIGdldCByaWdodCBhbmQg
dmVyeSBlcnJvciBwcm9uZSwKc28gbGV0J3MgYWRkIGEgc2VsZnRlc3QgdG8gdHJ5IHRvIGNhdGNo
IGFueSByZWdyZXNzaW9uLgoKUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRy
b25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJv
b3RsaW4uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy9kcm1fY21kbGlu
ZV9zZWxmdGVzdHMuaCAgIHwgIDU1ICstCiBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3Qt
ZHJtX2NtZGxpbmVfcGFyc2VyLmMgfCA5MTggKysrKysrKysrKysrKy0KIDMgZmlsZXMgY2hhbmdl
ZCwgOTc0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL2RybV9jbWRsaW5lX3NlbGZ0ZXN0cy5oCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy90ZXN0LWRybV9jbWRsaW5lX3Bh
cnNlci5jCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy9NYWtlZmlsZSBi
L2RyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvTWFrZWZpbGUKaW5kZXggOGVjNjRlY2YwZTM2Li5h
YWU4OGY4YTAxNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvTWFrZWZp
bGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy9NYWtlZmlsZQpAQCAtMyw0ICszLDQg
QEAgdGVzdC1kcm1fbW9kZXNldC15IDo9IHRlc3QtZHJtX21vZGVzZXRfY29tbW9uLm8gdGVzdC1k
cm1fcGxhbmVfaGVscGVyLm8gXAogICAgICAgICAgICAgICAgICAgICAgIHRlc3QtZHJtX2Zvcm1h
dC5vIHRlc3QtZHJtX2ZyYW1lYnVmZmVyLm8gXAogCQkgICAgICB0ZXN0LWRybV9kYW1hZ2VfaGVs
cGVyLm8KIAotb2JqLSQoQ09ORklHX0RSTV9ERUJVR19TRUxGVEVTVCkgKz0gdGVzdC1kcm1fbW0u
byB0ZXN0LWRybV9tb2Rlc2V0Lm8KK29iai0kKENPTkZJR19EUk1fREVCVUdfU0VMRlRFU1QpICs9
IHRlc3QtZHJtX21tLm8gdGVzdC1kcm1fbW9kZXNldC5vIHRlc3QtZHJtX2NtZGxpbmVfcGFyc2Vy
Lm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvZHJtX2NtZGxpbmVfc2Vs
ZnRlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL2RybV9jbWRsaW5lX3NlbGZ0ZXN0
cy5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYjQ1ODI0ZWM3Yzhm
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy9kcm1fY21kbGlu
ZV9zZWxmdGVzdHMuaApAQCAtMCwwICsxLDU1IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMCAqLworLyogTGlzdCBlYWNoIHVuaXQgdGVzdCBhcyBzZWxmdGVzdChmdW5jdGlv
bikKKyAqCisgKiBUaGUgbmFtZSBpcyB1c2VkIGFzIGJvdGggYW4gZW51bSBhbmQgZXhwYW5kZWQg
YXMgaWd0X19uYW1lIHRvIGNyZWF0ZQorICogYSBtb2R1bGUgcGFyYW1ldGVyLiBJdCBtdXN0IGJl
IHVuaXF1ZSBhbmQgbGVnYWwgZm9yIGEgQyBpZGVudGlmaWVyLgorICoKKyAqIFRlc3RzIGFyZSBl
eGVjdXRlZCBpbiBvcmRlciBieSBpZ3QvZHJtX21tCisgKi8KKworI2RlZmluZSBjbWRsaW5lX3Rl
c3QodGVzdCkJc2VsZnRlc3QodGVzdCwgdGVzdCkKKworY21kbGluZV90ZXN0KGRybV9jbWRsaW5l
X3Rlc3RfcmVzKQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX21pc3NpbmdfeCkK
K2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jlc19taXNzaW5nX3kpCitjbWRsaW5lX3Rl
c3QoZHJtX2NtZGxpbmVfdGVzdF9yZXNfYmFkX3kpCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVf
dGVzdF9yZXNfbWlzc2luZ195X2JwcCkKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jl
c192ZXNhKQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX3Zlc2FfcmJsYW5rKQor
Y21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX3JibGFuaykKK2NtZGxpbmVfdGVzdChk
cm1fY21kbGluZV90ZXN0X3Jlc19icHApCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9y
ZXNfYmFkX2JwcCkKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jlc19yZWZyZXNoKQor
Y21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JhZF9yZWZyZXNoKQorY21kbGluZV90
ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoKQorY21kbGluZV90ZXN0KGRybV9j
bWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoX2ludGVybGFjZWQpCitjbWRsaW5lX3Rlc3QoZHJt
X2NtZGxpbmVfdGVzdF9yZXNfYnBwX3JlZnJlc2hfbWFyZ2lucykKK2NtZGxpbmVfdGVzdChkcm1f
Y21kbGluZV90ZXN0X3Jlc19icHBfcmVmcmVzaF9mb3JjZV9vZmYpCitjbWRsaW5lX3Rlc3QoZHJt
X2NtZGxpbmVfdGVzdF9yZXNfYnBwX3JlZnJlc2hfZm9yY2Vfb25fb2ZmKQorY21kbGluZV90ZXN0
KGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoX2ZvcmNlX29uKQorY21kbGluZV90ZXN0
KGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoX2ZvcmNlX29uX2FuYWxvZykKK2NtZGxp
bmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jlc19icHBfcmVmcmVzaF9mb3JjZV9vbl9kaWdpdGFs
KQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoX2ludGVybGFj
ZWRfbWFyZ2luc19mb3JjZV9vbikKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jlc19t
YXJnaW5zX2ZvcmNlX29uKQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfcmVzX3Zlc2Ff
bWFyZ2lucykKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3Jlc19pbnZhbGlkX21vZGUp
CitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9yZXNfYnBwX3dyb25nX3BsYWNlX21vZGUp
CitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9uYW1lKQorY21kbGluZV90ZXN0KGRybV9j
bWRsaW5lX3Rlc3RfbmFtZV9icHApCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9uYW1l
X3JlZnJlc2gpCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9uYW1lX2JwcF9yZWZyZXNo
KQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfbmFtZV9yZWZyZXNoX3dyb25nX21vZGUp
CitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9uYW1lX3JlZnJlc2hfaW52YWxpZF9tb2Rl
KQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3RfbmFtZV9vcHRpb24pCitjbWRsaW5lX3Rl
c3QoZHJtX2NtZGxpbmVfdGVzdF9uYW1lX2JwcF9vcHRpb24pCitjbWRsaW5lX3Rlc3QoZHJtX2Nt
ZGxpbmVfdGVzdF9yb3RhdGVfMCkKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3JvdGF0
ZV85MCkKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X3JvdGF0ZV8xODApCitjbWRsaW5l
X3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF9yb3RhdGVfMjcwKQorY21kbGluZV90ZXN0KGRybV9jbWRs
aW5lX3Rlc3Rfcm90YXRlX2ludmFsaWRfdmFsKQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rl
c3Rfcm90YXRlX3RydW5jYXRlZCkKK2NtZGxpbmVfdGVzdChkcm1fY21kbGluZV90ZXN0X2htaXJy
b3IpCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxpbmVfdGVzdF92bWlycm9yKQorY21kbGluZV90ZXN0
KGRybV9jbWRsaW5lX3Rlc3RfbWFyZ2luX29wdGlvbnMpCitjbWRsaW5lX3Rlc3QoZHJtX2NtZGxp
bmVfdGVzdF9tdWx0aXBsZV9vcHRpb25zKQorY21kbGluZV90ZXN0KGRybV9jbWRsaW5lX3Rlc3Rf
aW52YWxpZF9vcHRpb24pCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rl
c3QtZHJtX2NtZGxpbmVfcGFyc2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3Qt
ZHJtX2NtZGxpbmVfcGFyc2VyLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi5iZWY0ZWRkZTZmOWYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vc2Vs
ZnRlc3RzL3Rlc3QtZHJtX2NtZGxpbmVfcGFyc2VyLmMKQEAgLTAsMCArMSw5MTggQEAKKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisvKgorICogQ29weXJpZ2h0IChjKSAyMDE5
IEJvb3RsaW4KKyAqLworCisjZGVmaW5lIHByX2ZtdChmbXQpICJkcm1fY21kbGluZTogIiBmbXQK
KworI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgorI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgor
CisjaW5jbHVkZSA8ZHJtL2RybV9jb25uZWN0b3IuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX21vZGVz
Lmg+CisKKyNkZWZpbmUgVEVTVFMgImRybV9jbWRsaW5lX3NlbGZ0ZXN0cy5oIgorI2luY2x1ZGUg
ImRybV9zZWxmdGVzdC5oIgorI2luY2x1ZGUgInRlc3QtZHJtX21vZGVzZXRfY29tbW9uLmgiCisK
K3N0YXRpYyBpbnQgZHJtX2NtZGxpbmVfdGVzdF9yZXModm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21v
ZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9m
b3JfY29ubmVjdG9yKCI3MjB4NDgwIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJCQkJCSAg
ICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS54cmVz
ICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKworCUZBSUxfT04obW9kZS5y
ZWZyZXNoX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUuYnBwX3NwZWNpZmllZCk7CisKKwlG
QUlMX09OKG1vZGUucmIpOworCUZBSUxfT04obW9kZS5jdnQpOworCUZBSUxfT04obW9kZS5pbnRl
cmxhY2UpOworCUZBSUxfT04obW9kZS5tYXJnaW5zKTsKKwlGQUlMX09OKG1vZGUuZm9yY2UgIT0g
RFJNX0ZPUkNFX1VOU1BFQ0lGSUVEKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRy
bV9jbWRsaW5lX3Rlc3RfcmVzX21pc3NpbmdfeCh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBk
cm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBt
b2RlID0geyB9OworCisJRkFJTF9PTihkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nv
bm5lY3RvcigieDQ4MCIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsK
KworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX21pc3Np
bmdfeSh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9
IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTihk
cm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiMTAyNHgiLAorCQkJCQkJ
CSAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICZtb2RlKSk7CisKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIGludCBkcm1fY21kbGluZV90ZXN0X3Jlc19iYWRfeSh2b2lkICppZ25vcmVkKQoreworCXN0
cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVf
bW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTihkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVf
Zm9yX2Nvbm5lY3RvcigiMTAyNHh0ZXN0IiwKKwkJCQkJCQkgICZjb25uZWN0b3IsCisJCQkJCQkJ
ICAmbW9kZSkpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxpbmVfdGVz
dF9yZXNfbWlzc2luZ195X2JwcCh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVj
dG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9
OworCisJRkFJTF9PTihkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3Rvcigi
MTAyNHgtMjQiLAorCQkJCQkJCSAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICZtb2RlKSk7CisKKwly
ZXR1cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90ZXN0X3Jlc192ZXNhKHZvaWQg
Kmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0
cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9w
YXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4ME0iLAorCQkJCQkJCSAgICZj
b25uZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7
CisJRkFJTF9PTihtb2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0ODAp
OworCisJRkFJTF9PTihtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5i
cHBfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5yYik7CisJRkFJTF9PTighbW9kZS5jdnQp
OworCUZBSUxfT04obW9kZS5pbnRlcmxhY2UpOworCUZBSUxfT04obW9kZS5tYXJnaW5zKTsKKwlG
QUlMX09OKG1vZGUuZm9yY2UgIT0gRFJNX0ZPUkNFX1VOU1BFQ0lGSUVEKTsKKworCXJldHVybiAw
OworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX3Zlc2FfcmJsYW5rKHZvaWQg
Kmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0
cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9w
YXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4ME1SIiwKKwkJCQkJCQkgICAm
Y29ubmVjdG9yLAorCQkJCQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQp
OworCUZBSUxfT04obW9kZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgw
KTsKKworCUZBSUxfT04obW9kZS5yZWZyZXNoX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUu
YnBwX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKCFtb2RlLnJiKTsKKwlGQUlMX09OKCFtb2RlLmN2
dCk7CisJRkFJTF9PTihtb2RlLmludGVybGFjZSk7CisJRkFJTF9PTihtb2RlLm1hcmdpbnMpOwor
CUZBSUxfT04obW9kZS5mb3JjZSAhPSBEUk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJu
IDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxpbmVfdGVzdF9yZXNfcmJsYW5rKHZvaWQgKmln
bm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVj
dCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJz
ZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4MFIiLAorCQkJCQkJCSAgICZjb25u
ZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7CisJ
RkFJTF9PTihtb2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0ODApOwor
CisJRkFJTF9PTihtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5icHBf
c3BlY2lmaWVkKTsKKworCUZBSUxfT04oIW1vZGUucmIpOworCUZBSUxfT04obW9kZS5jdnQpOwor
CUZBSUxfT04obW9kZS5pbnRlcmxhY2UpOworCUZBSUxfT04obW9kZS5tYXJnaW5zKTsKKwlGQUlM
X09OKG1vZGUuZm9yY2UgIT0gRFJNX0ZPUkNFX1VOU1BFQ0lGSUVEKTsKKworCXJldHVybiAwOwor
fQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcCh2b2lkICppZ25vcmVkKQor
eworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2Nt
ZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFu
ZF9saW5lX2Zvcl9jb25uZWN0b3IoIjcyMHg0ODAtMjQiLAorCQkJCQkJCSAgICZjb25uZWN0b3Is
CisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7CisJRkFJTF9P
Tihtb2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0ODApOworCisJRkFJ
TF9PTihtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04oIW1vZGUuYnBwX3NwZWNp
ZmllZCk7CisJRkFJTF9PTihtb2RlLmJwcCAhPSAyNCk7CisKKwlGQUlMX09OKG1vZGUucmIpOwor
CUZBSUxfT04obW9kZS5jdnQpOworCUZBSUxfT04obW9kZS5pbnRlcmxhY2UpOworCUZBSUxfT04o
bW9kZS5tYXJnaW5zKTsKKwlGQUlMX09OKG1vZGUuZm9yY2UgIT0gRFJNX0ZPUkNFX1VOU1BFQ0lG
SUVEKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVz
X2JhZF9icHAodm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0
b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxf
T04oZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIjcyMHg0ODAtdGVz
dCIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsKKworCXJldHVybiAw
OworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX3JlZnJlc2godm9pZCAqaWdu
b3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0
IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNl
X2NvbW1hbmRfbGluZV9mb3JfY29ubmVjdG9yKCI3MjB4NDgwQDYwIiwKKwkJCQkJCQkgICAmY29u
bmVjdG9yLAorCQkJCQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOwor
CUZBSUxfT04obW9kZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsK
KworCUZBSUxfT04oIW1vZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS5yZWZy
ZXNoICE9IDYwKTsKKworCUZBSUxfT04obW9kZS5icHBfc3BlY2lmaWVkKTsKKworCUZBSUxfT04o
bW9kZS5yYik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTihtb2RlLmludGVybGFjZSk7
CisJRkFJTF9PTihtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBEUk1fRk9S
Q0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxp
bmVfdGVzdF9yZXNfYmFkX3JlZnJlc2godm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9
IHsgfTsKKworCUZBSUxfT04oZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0
b3IoIjcyMHg0ODBAcmVmcmVzaCIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1v
ZGUpKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVz
X2JwcF9yZWZyZXNoKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29u
bmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlG
QUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4
MC0yNEA2MCIsCisJCQkJCQkJICAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICAmbW9kZSkpOworCUZB
SUxfT04oIW1vZGUuc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUueHJlcyAhPSA3MjApOworCUZB
SUxfT04obW9kZS55cmVzICE9IDQ4MCk7CisKKwlGQUlMX09OKCFtb2RlLnJlZnJlc2hfc3BlY2lm
aWVkKTsKKwlGQUlMX09OKG1vZGUucmVmcmVzaCAhPSA2MCk7CisKKwlGQUlMX09OKCFtb2RlLmJw
cF9zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS5icHAgIT0gMjQpOworCisJRkFJTF9PTihtb2Rl
LnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlMX09OKG1vZGUuaW50ZXJsYWNlKTsKKwlG
QUlMX09OKG1vZGUubWFyZ2lucyk7CisJRkFJTF9PTihtb2RlLmZvcmNlICE9IERSTV9GT1JDRV9V
TlNQRUNJRklFRCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90
ZXN0X3Jlc19icHBfcmVmcmVzaF9pbnRlcmxhY2VkKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0
IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2Rl
IG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9y
X2Nvbm5lY3RvcigiNzIweDQ4MC0yNEA2MGkiLAorCQkJCQkJCSAgICZjb25uZWN0b3IsCisJCQkJ
CQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7CisJRkFJTF9PTihtb2Rl
LnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0ODApOworCisJRkFJTF9PTigh
bW9kZS5yZWZyZXNoX3NwZWNpZmllZCk7CisJRkFJTF9PTihtb2RlLnJlZnJlc2ggIT0gNjApOwor
CisJRkFJTF9PTighbW9kZS5icHBfc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUuYnBwICE9IDI0
KTsKKworCUZBSUxfT04obW9kZS5yYik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTigh
bW9kZS5pbnRlcmxhY2UpOworCUZBSUxfT04obW9kZS5tYXJnaW5zKTsKKwlGQUlMX09OKG1vZGUu
Zm9yY2UgIT0gRFJNX0ZPUkNFX1VOU1BFQ0lGSUVEKTsKKworCXJldHVybiAwOworfQorCitzdGF0
aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX2JwcF9yZWZyZXNoX21hcmdpbnModm9pZCAqaWdu
b3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0
IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNl
X2NvbW1hbmRfbGluZV9mb3JfY29ubmVjdG9yKCI3MjB4NDgwLTI0QDYwbSIsCisJCQkJCQkJICAg
JmNvbm5lY3RvciwKKwkJCQkJCQkgICAmbW9kZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVk
KTsKKwlGQUlMX09OKG1vZGUueHJlcyAhPSA3MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4
MCk7CisKKwlGQUlMX09OKCFtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUu
cmVmcmVzaCAhPSA2MCk7CisKKwlGQUlMX09OKCFtb2RlLmJwcF9zcGVjaWZpZWQpOworCUZBSUxf
T04obW9kZS5icHAgIT0gMjQpOworCisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUu
Y3Z0KTsKKwlGQUlMX09OKG1vZGUuaW50ZXJsYWNlKTsKKwlGQUlMX09OKCFtb2RlLm1hcmdpbnMp
OworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBEUk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxpbmVfdGVzdF9yZXNfYnBwX3JlZnJlc2hf
Zm9yY2Vfb2ZmKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVj
dG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlM
X09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4MC0y
NEA2MGQiLAorCQkJCQkJCSAgICZjb25uZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlM
X09OKCFtb2RlLnNwZWNpZmllZCk7CisJRkFJTF9PTihtb2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlM
X09OKG1vZGUueXJlcyAhPSA0ODApOworCisJRkFJTF9PTighbW9kZS5yZWZyZXNoX3NwZWNpZmll
ZCk7CisJRkFJTF9PTihtb2RlLnJlZnJlc2ggIT0gNjApOworCisJRkFJTF9PTighbW9kZS5icHBf
c3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUuYnBwICE9IDI0KTsKKworCUZBSUxfT04obW9kZS5y
Yik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTihtb2RlLmludGVybGFjZSk7CisJRkFJ
TF9PTihtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBEUk1fRk9SQ0VfT0ZG
KTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVzX2Jw
cF9yZWZyZXNoX2ZvcmNlX29uX29mZih2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29u
bmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0g
eyB9OworCisJRkFJTF9PTihkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3Rv
cigiNzIweDQ4MC0yNEA2MGRlIiwKKwkJCQkJCQkgICZjb25uZWN0b3IsCisJCQkJCQkJICAmbW9k
ZSkpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxpbmVfdGVzdF9yZXNf
YnBwX3JlZnJlc2hfZm9yY2Vfb24odm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsg
fTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3JfY29ubmVjdG9y
KCI3MjB4NDgwLTI0QDYwZSIsCisJCQkJCQkJICAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICAmbW9k
ZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUueHJlcyAhPSA3
MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4MCk7CisKKwlGQUlMX09OKCFtb2RlLnJlZnJl
c2hfc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUucmVmcmVzaCAhPSA2MCk7CisKKwlGQUlMX09O
KCFtb2RlLmJwcF9zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS5icHAgIT0gMjQpOworCisJRkFJ
TF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlMX09OKG1vZGUuaW50ZXJs
YWNlKTsKKwlGQUlMX09OKG1vZGUubWFyZ2lucyk7CisJRkFJTF9PTihtb2RlLmZvcmNlICE9IERS
TV9GT1JDRV9PTik7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90
ZXN0X3Jlc19icHBfcmVmcmVzaF9mb3JjZV9vbl9hbmFsb2codm9pZCAqaWdub3JlZCkKK3sKKwlz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5l
X21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGlu
ZV9mb3JfY29ubmVjdG9yKCI3MjB4NDgwLTI0QDYwRCIsCisJCQkJCQkJICAgJmNvbm5lY3RvciwK
KwkJCQkJCQkgICAmbW9kZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVkKTsKKwlGQUlMX09O
KG1vZGUueHJlcyAhPSA3MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4MCk7CisKKwlGQUlM
X09OKCFtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUucmVmcmVzaCAhPSA2
MCk7CisKKwlGQUlMX09OKCFtb2RlLmJwcF9zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS5icHAg
IT0gMjQpOworCisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlM
X09OKG1vZGUuaW50ZXJsYWNlKTsKKwlGQUlMX09OKG1vZGUubWFyZ2lucyk7CisJRkFJTF9PTiht
b2RlLmZvcmNlICE9IERSTV9GT1JDRV9PTik7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGlu
dCBkcm1fY21kbGluZV90ZXN0X3Jlc19icHBfcmVmcmVzaF9mb3JjZV9vbl9kaWdpdGFsKHZvaWQg
Kmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0
cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwljb25uZWN0b3IuY29ubmVjdG9y
X3R5cGUgPSBEUk1fTU9ERV9DT05ORUNUT1JfRFZJSTsKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJz
ZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4MC0yNEA2MEQiLAorCQkJCQkJCSAg
ICZjb25uZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmll
ZCk7CisJRkFJTF9PTihtb2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0
ODApOworCisJRkFJTF9PTighbW9kZS5yZWZyZXNoX3NwZWNpZmllZCk7CisJRkFJTF9PTihtb2Rl
LnJlZnJlc2ggIT0gNjApOworCisJRkFJTF9PTighbW9kZS5icHBfc3BlY2lmaWVkKTsKKwlGQUlM
X09OKG1vZGUuYnBwICE9IDI0KTsKKworCUZBSUxfT04obW9kZS5yYik7CisJRkFJTF9PTihtb2Rl
LmN2dCk7CisJRkFJTF9PTihtb2RlLmludGVybGFjZSk7CisJRkFJTF9PTihtb2RlLm1hcmdpbnMp
OworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBEUk1fRk9SQ0VfT05fRElHSVRBTCk7CisKKwlyZXR1
cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90ZXN0X3Jlc19icHBfcmVmcmVzaF9p
bnRlcmxhY2VkX21hcmdpbnNfZm9yY2Vfb24odm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9k
ZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3JfY29u
bmVjdG9yKCI3MjB4NDgwLTI0QDYwaW1lIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJCQkJ
CSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS54
cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKworCUZBSUxfT04oIW1v
ZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS5yZWZyZXNoICE9IDYwKTsKKwor
CUZBSUxfT04oIW1vZGUuYnBwX3NwZWNpZmllZCk7CisJRkFJTF9PTihtb2RlLmJwcCAhPSAyNCk7
CisKKwlGQUlMX09OKG1vZGUucmIpOworCUZBSUxfT04obW9kZS5jdnQpOworCUZBSUxfT04oIW1v
ZGUuaW50ZXJsYWNlKTsKKwlGQUlMX09OKCFtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5m
b3JjZSAhPSBEUk1fRk9SQ0VfT04pOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJt
X2NtZGxpbmVfdGVzdF9yZXNfbWFyZ2luc19mb3JjZV9vbih2b2lkICppZ25vcmVkKQoreworCXN0
cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVf
bW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5l
X2Zvcl9jb25uZWN0b3IoIjcyMHg0ODBtZSIsCisJCQkJCQkJICAgJmNvbm5lY3RvciwKKwkJCQkJ
CQkgICAmbW9kZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVkKTsKKwlGQUlMX09OKG1vZGUu
eHJlcyAhPSA3MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4MCk7CisKKwlGQUlMX09OKG1v
ZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCisJRkFJTF9PTihtb2RlLmJwcF9zcGVjaWZpZWQpOwor
CisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlMX09OKG1vZGUu
aW50ZXJsYWNlKTsKKwlGQUlMX09OKCFtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5mb3Jj
ZSAhPSBEUk1fRk9SQ0VfT04pOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2Nt
ZGxpbmVfdGVzdF9yZXNfdmVzYV9tYXJnaW5zKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0IGRy
bV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlIG1v
ZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nv
bm5lY3RvcigiNzIweDQ4ME1tIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJCQkJCSAgICZt
b2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS54cmVzICE9
IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKworCUZBSUxfT04obW9kZS5yZWZy
ZXNoX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUuYnBwX3NwZWNpZmllZCk7CisKKwlGQUlM
X09OKG1vZGUucmIpOworCUZBSUxfT04oIW1vZGUuY3Z0KTsKKwlGQUlMX09OKG1vZGUuaW50ZXJs
YWNlKTsKKwlGQUlMX09OKCFtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBE
Uk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJt
X2NtZGxpbmVfdGVzdF9yZXNfaW52YWxpZF9tb2RlKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0
IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2Rl
IG1vZGUgPSB7IH07CisKKwlGQUlMX09OKGRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3Jf
Y29ubmVjdG9yKCI3MjB4NDgwZiIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1v
ZGUpKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfcmVz
X2JwcF93cm9uZ19wbGFjZV9tb2RlKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9jb25u
ZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUgPSB7
IH07CisKKwlGQUlMX09OKGRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3JfY29ubmVjdG9y
KCI3MjB4NDgwZS0yNCIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsK
KworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfbmFtZSh2b2lk
ICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlz
dHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVf
cGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIk5UU0MiLAorCQkJCQkJCSAgICZjb25u
ZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKHN0cmNtcChtb2RlLm5hbWUsICJO
VFNDIikpOworCUZBSUxfT04obW9kZS5yZWZyZXNoX3NwZWNpZmllZCk7CisJRkFJTF9PTihtb2Rl
LmJwcF9zcGVjaWZpZWQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJtX2NtZGxp
bmVfdGVzdF9uYW1lX2JwcCh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9y
IGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9Owor
CisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIk5U
U0MtMjQiLAorCQkJCQkJCSAgICZjb25uZWN0b3IsCisJCQkJCQkJICAgJm1vZGUpKTsKKwlGQUlM
X09OKHN0cmNtcChtb2RlLm5hbWUsICJOVFNDIikpOworCisJRkFJTF9PTihtb2RlLnJlZnJlc2hf
c3BlY2lmaWVkKTsKKworCUZBSUxfT04oIW1vZGUuYnBwX3NwZWNpZmllZCk7CisJRkFJTF9PTiht
b2RlLmJwcCAhPSAyNCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGlu
ZV90ZXN0X25hbWVfYnBwX3JlZnJlc2godm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9
IHsgfTsKKworCUZBSUxfT04oZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0
b3IoIk5UU0MtMjRANjAiLAorCQkJCQkJCSAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICZtb2RlKSk7
CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90ZXN0X25hbWVfcmVm
cmVzaCh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9
IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTihk
cm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiTlRTQ0A2MCIsCisJCQkJ
CQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsKKworCXJldHVybiAwOworfQorCitz
dGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3RfbmFtZV9yZWZyZXNoX3dyb25nX21vZGUodm9pZCAq
aWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3Ry
dWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oZHJtX21vZGVfcGFy
c2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIk5UU0NANjBtIiwKKwkJCQkJCQkgICZjb25u
ZWN0b3IsCisJCQkJCQkJICAmbW9kZSkpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQg
ZHJtX2NtZGxpbmVfdGVzdF9uYW1lX3JlZnJlc2hfaW52YWxpZF9tb2RlKHZvaWQgKmlnbm9yZWQp
Cit7CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1f
Y21kbGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKGRybV9tb2RlX3BhcnNlX2NvbW1h
bmRfbGluZV9mb3JfY29ubmVjdG9yKCJOVFNDQDYwZiIsCisJCQkJCQkJICAmY29ubmVjdG9yLAor
CQkJCQkJCSAgJm1vZGUpKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRs
aW5lX3Rlc3RfbmFtZV9vcHRpb24odm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsg
fTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3JfY29ubmVjdG9y
KCJOVFNDLHJvdGF0ZT0xODAiLAorCQkJCQkJCSAgICZjb25uZWN0b3IsCisJCQkJCQkJICAgJm1v
ZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7CisJRkFJTF9PTihzdHJjbXAobW9kZS5u
YW1lLCAiTlRTQyIpKTsKKwlGQUlMX09OKG1vZGUucm90YXRpb25fcmVmbGVjdGlvbiAhPSBEUk1f
TU9ERV9ST1RBVEVfMTgwKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRs
aW5lX3Rlc3RfbmFtZV9icHBfb3B0aW9uKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0IGRybV9j
b25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlIG1vZGUg
PSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5l
Y3RvcigiTlRTQy0yNCxyb3RhdGU9MTgwIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJCQkJ
CSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04oc3RyY21w
KG1vZGUubmFtZSwgIk5UU0MiKSk7CisJRkFJTF9PTihtb2RlLnJvdGF0aW9uX3JlZmxlY3Rpb24g
IT0gRFJNX01PREVfUk9UQVRFXzE4MCk7CisJRkFJTF9PTighbW9kZS5icHBfc3BlY2lmaWVkKTsK
KwlGQUlMX09OKG1vZGUuYnBwICE9IDI0KTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50
IGRybV9jbWRsaW5lX3Rlc3Rfcm90YXRlXzAodm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9k
ZSA9IHsgfTsKKworCUZBSUxfT04oIWRybV9tb2RlX3BhcnNlX2NvbW1hbmRfbGluZV9mb3JfY29u
bmVjdG9yKCI3MjB4NDgwLHJvdGF0ZT0wIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJCQkJ
CSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9kZS54
cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKwlGQUlMX09OKG1vZGUu
cm90YXRpb25fcmVmbGVjdGlvbiAhPSBEUk1fTU9ERV9ST1RBVEVfMCk7CisKKwlGQUlMX09OKG1v
ZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCisJRkFJTF9PTihtb2RlLmJwcF9zcGVjaWZpZWQpOwor
CisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlMX09OKG1vZGUu
aW50ZXJsYWNlKTsKKwlGQUlMX09OKG1vZGUubWFyZ2lucyk7CisJRkFJTF9PTihtb2RlLmZvcmNl
ICE9IERSTV9GT1JDRV9VTlNQRUNJRklFRCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGlu
dCBkcm1fY21kbGluZV90ZXN0X3JvdGF0ZV85MCh2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBk
cm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBt
b2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9j
b25uZWN0b3IoIjcyMHg0ODAscm90YXRlPTkwIiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJ
CQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9k
ZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKwlGQUlMX09OKG1v
ZGUucm90YXRpb25fcmVmbGVjdGlvbiAhPSBEUk1fTU9ERV9ST1RBVEVfOTApOworCisJRkFJTF9P
Tihtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5icHBfc3BlY2lmaWVk
KTsKKworCUZBSUxfT04obW9kZS5yYik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTiht
b2RlLmludGVybGFjZSk7CisJRkFJTF9PTihtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5m
b3JjZSAhPSBEUk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRp
YyBpbnQgZHJtX2NtZGxpbmVfdGVzdF9yb3RhdGVfMTgwKHZvaWQgKmlnbm9yZWQpCit7CisJc3Ry
dWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9t
b2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVf
Zm9yX2Nvbm5lY3RvcigiNzIweDQ4MCxyb3RhdGU9MTgwIiwKKwkJCQkJCQkgICAmY29ubmVjdG9y
LAorCQkJCQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxf
T04obW9kZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKwlGQUlM
X09OKG1vZGUucm90YXRpb25fcmVmbGVjdGlvbiAhPSBEUk1fTU9ERV9ST1RBVEVfMTgwKTsKKwor
CUZBSUxfT04obW9kZS5yZWZyZXNoX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUuYnBwX3Nw
ZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUucmIpOworCUZBSUxfT04obW9kZS5jdnQpOworCUZB
SUxfT04obW9kZS5pbnRlcmxhY2UpOworCUZBSUxfT04obW9kZS5tYXJnaW5zKTsKKwlGQUlMX09O
KG1vZGUuZm9yY2UgIT0gRFJNX0ZPUkNFX1VOU1BFQ0lGSUVEKTsKKworCXJldHVybiAwOworfQor
CitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rlc3Rfcm90YXRlXzI3MCh2b2lkICppZ25vcmVkKQor
eworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2Nt
ZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFu
ZF9saW5lX2Zvcl9jb25uZWN0b3IoIjcyMHg0ODAscm90YXRlPTI3MCIsCisJCQkJCQkJICAgJmNv
bm5lY3RvciwKKwkJCQkJCQkgICAmbW9kZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVkKTsK
KwlGQUlMX09OKG1vZGUueHJlcyAhPSA3MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4MCk7
CisJRkFJTF9PTihtb2RlLnJvdGF0aW9uX3JlZmxlY3Rpb24gIT0gRFJNX01PREVfUk9UQVRFXzI3
MCk7CisKKwlGQUlMX09OKG1vZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCisJRkFJTF9PTihtb2Rl
LmJwcF9zcGVjaWZpZWQpOworCisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0
KTsKKwlGQUlMX09OKG1vZGUuaW50ZXJsYWNlKTsKKwlGQUlMX09OKG1vZGUubWFyZ2lucyk7CisJ
RkFJTF9PTihtb2RlLmZvcmNlICE9IERSTV9GT1JDRV9VTlNQRUNJRklFRCk7CisKKwlyZXR1cm4g
MDsKK30KKworc3RhdGljIGludCBkcm1fY21kbGluZV90ZXN0X3JvdGF0ZV9pbnZhbGlkX3ZhbCh2
b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsK
KwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBtb2RlID0geyB9OworCisJRkFJTF9PTihkcm1fbW9k
ZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4MCxyb3RhdGU9NDIiLAor
CQkJCQkJCSAgJmNvbm5lY3RvciwKKwkJCQkJCQkgICZtb2RlKSk7CisKKwlyZXR1cm4gMDsKK30K
Kworc3RhdGljIGludCBkcm1fY21kbGluZV90ZXN0X3JvdGF0ZV90cnVuY2F0ZWQodm9pZCAqaWdu
b3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0
IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsKKworCUZBSUxfT04oZHJtX21vZGVfcGFyc2Vf
Y29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIjcyMHg0ODAscm90YXRlPSIsCisJCQkJCQkJICAm
Y29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMg
aW50IGRybV9jbWRsaW5lX3Rlc3RfaG1pcnJvcih2b2lkICppZ25vcmVkKQoreworCXN0cnVjdCBk
cm1fY29ubmVjdG9yIGNvbm5lY3RvciA9IHsgfTsKKwlzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSBt
b2RlID0geyB9OworCisJRkFJTF9PTighZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9j
b25uZWN0b3IoIjcyMHg0ODAscmVmbGVjdF94IiwKKwkJCQkJCQkgICAmY29ubmVjdG9yLAorCQkJ
CQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxfT04obW9k
ZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKwlGQUlMX09OKG1v
ZGUucm90YXRpb25fcmVmbGVjdGlvbiAhPSBEUk1fTU9ERV9SRUZMRUNUX1gpOworCisJRkFJTF9P
Tihtb2RlLnJlZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5icHBfc3BlY2lmaWVk
KTsKKworCUZBSUxfT04obW9kZS5yYik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTiht
b2RlLmludGVybGFjZSk7CisJRkFJTF9PTihtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5m
b3JjZSAhPSBEUk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRp
YyBpbnQgZHJtX2NtZGxpbmVfdGVzdF92bWlycm9yKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0
IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2Rl
IG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9y
X2Nvbm5lY3RvcigiNzIweDQ4MCxyZWZsZWN0X3kiLAorCQkJCQkJCSAgICZjb25uZWN0b3IsCisJ
CQkJCQkJICAgJm1vZGUpKTsKKwlGQUlMX09OKCFtb2RlLnNwZWNpZmllZCk7CisJRkFJTF9PTiht
b2RlLnhyZXMgIT0gNzIwKTsKKwlGQUlMX09OKG1vZGUueXJlcyAhPSA0ODApOworCUZBSUxfT04o
bW9kZS5yb3RhdGlvbl9yZWZsZWN0aW9uICE9IERSTV9NT0RFX1JFRkxFQ1RfWSk7CisKKwlGQUlM
X09OKG1vZGUucmVmcmVzaF9zcGVjaWZpZWQpOworCisJRkFJTF9PTihtb2RlLmJwcF9zcGVjaWZp
ZWQpOworCisJRkFJTF9PTihtb2RlLnJiKTsKKwlGQUlMX09OKG1vZGUuY3Z0KTsKKwlGQUlMX09O
KG1vZGUuaW50ZXJsYWNlKTsKKwlGQUlMX09OKG1vZGUubWFyZ2lucyk7CisJRkFJTF9PTihtb2Rl
LmZvcmNlICE9IERSTV9GT1JDRV9VTlNQRUNJRklFRCk7CisKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIGludCBkcm1fY21kbGluZV90ZXN0X21hcmdpbl9vcHRpb25zKHZvaWQgKmlnbm9yZWQpCit7
CisJc3RydWN0IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21k
bGluZV9tb2RlIG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5k
X2xpbmVfZm9yX2Nvbm5lY3RvcigiNzIweDQ4MCxtYXJnaW5fcmlnaHQ9MTQsbWFyZ2luX2xlZnQ9
MjQsbWFyZ2luX2JvdHRvbT0zNixtYXJnaW5fdG9wPTQyIiwKKwkJCQkJCQkgICAmY29ubmVjdG9y
LAorCQkJCQkJCSAgICZtb2RlKSk7CisJRkFJTF9PTighbW9kZS5zcGVjaWZpZWQpOworCUZBSUxf
T04obW9kZS54cmVzICE9IDcyMCk7CisJRkFJTF9PTihtb2RlLnlyZXMgIT0gNDgwKTsKKwlGQUlM
X09OKG1vZGUudHZfbWFyZ2lucy5yaWdodCAhPSAxNCk7CisJRkFJTF9PTihtb2RlLnR2X21hcmdp
bnMubGVmdCAhPSAyNCk7CisJRkFJTF9PTihtb2RlLnR2X21hcmdpbnMuYm90dG9tICE9IDM2KTsK
KwlGQUlMX09OKG1vZGUudHZfbWFyZ2lucy50b3AgIT0gNDIpOworCisJRkFJTF9PTihtb2RlLnJl
ZnJlc2hfc3BlY2lmaWVkKTsKKworCUZBSUxfT04obW9kZS5icHBfc3BlY2lmaWVkKTsKKworCUZB
SUxfT04obW9kZS5yYik7CisJRkFJTF9PTihtb2RlLmN2dCk7CisJRkFJTF9PTihtb2RlLmludGVy
bGFjZSk7CisJRkFJTF9PTihtb2RlLm1hcmdpbnMpOworCUZBSUxfT04obW9kZS5mb3JjZSAhPSBE
Uk1fRk9SQ0VfVU5TUEVDSUZJRUQpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZHJt
X2NtZGxpbmVfdGVzdF9tdWx0aXBsZV9vcHRpb25zKHZvaWQgKmlnbm9yZWQpCit7CisJc3RydWN0
IGRybV9jb25uZWN0b3IgY29ubmVjdG9yID0geyB9OworCXN0cnVjdCBkcm1fY21kbGluZV9tb2Rl
IG1vZGUgPSB7IH07CisKKwlGQUlMX09OKCFkcm1fbW9kZV9wYXJzZV9jb21tYW5kX2xpbmVfZm9y
X2Nvbm5lY3RvcigiNzIweDQ4MCxyb3RhdGU9MjcwLHJlZmxlY3RfeCIsCisJCQkJCQkJICAgJmNv
bm5lY3RvciwKKwkJCQkJCQkgICAmbW9kZSkpOworCUZBSUxfT04oIW1vZGUuc3BlY2lmaWVkKTsK
KwlGQUlMX09OKG1vZGUueHJlcyAhPSA3MjApOworCUZBSUxfT04obW9kZS55cmVzICE9IDQ4MCk7
CisJRkFJTF9PTihtb2RlLnJvdGF0aW9uX3JlZmxlY3Rpb24gIT0gKERSTV9NT0RFX1JPVEFURV8y
NzAgfCBEUk1fTU9ERV9SRUZMRUNUX1gpKTsKKworCUZBSUxfT04obW9kZS5yZWZyZXNoX3NwZWNp
ZmllZCk7CisKKwlGQUlMX09OKG1vZGUuYnBwX3NwZWNpZmllZCk7CisKKwlGQUlMX09OKG1vZGUu
cmIpOworCUZBSUxfT04obW9kZS5jdnQpOworCUZBSUxfT04obW9kZS5pbnRlcmxhY2UpOworCUZB
SUxfT04obW9kZS5tYXJnaW5zKTsKKwlGQUlMX09OKG1vZGUuZm9yY2UgIT0gRFJNX0ZPUkNFX1VO
U1BFQ0lGSUVEKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGRybV9jbWRsaW5lX3Rl
c3RfaW52YWxpZF9vcHRpb24odm9pZCAqaWdub3JlZCkKK3sKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciBjb25uZWN0b3IgPSB7IH07CisJc3RydWN0IGRybV9jbWRsaW5lX21vZGUgbW9kZSA9IHsgfTsK
KworCUZBSUxfT04oZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoIjcy
MHg0ODAsdGVzdD00MiIsCisJCQkJCQkJICAmY29ubmVjdG9yLAorCQkJCQkJCSAgJm1vZGUpKTsK
KworCXJldHVybiAwOworfQorCisjaW5jbHVkZSAiZHJtX3NlbGZ0ZXN0LmMiCisKK3N0YXRpYyBp
bnQgX19pbml0IHRlc3RfZHJtX2NtZGxpbmVfaW5pdCh2b2lkKQoreworCWludCBlcnI7CisKKwll
cnIgPSBydW5fc2VsZnRlc3RzKHNlbGZ0ZXN0cywgQVJSQVlfU0laRShzZWxmdGVzdHMpLCBOVUxM
KTsKKworCXJldHVybiBlcnIgPiAwID8gMCA6IGVycjsKK30KK21vZHVsZV9pbml0KHRlc3RfZHJt
X2NtZGxpbmVfaW5pdCk7CisKK01PRFVMRV9BVVRIT1IoIk1heGltZSBSaXBhcmQgPG1heGltZS5y
aXBhcmRAYm9vdGxpbi5jb20+Iik7CitNT0RVTEVfTElDRU5TRSgiR1BMIik7Ci0tIApnaXQtc2Vy
aWVzIDAuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==

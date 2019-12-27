Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A417412B6D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=priOzNUgx5vMbrbo9HQEryNoP81KNhDcce49Eb0okYQ=; b=q4CFwvCjfsqM5l
	OUvKqYGX2o/yFcOOn8KzQQJvrV+7w+XBxHXPqJc5xF2TQJwD1pa5O0Jpq8rdopScjUwh0rjyjKS4r
	Fk/vUZbWiUfUj/4yOXDiwEEVDM56jUh7Ux3N0et/Og64ZdR1Q724BD19Y/mQ6+PgtvSXU28K4DMnj
	Z25lYoWsMgeplz3eu4taYu7G7RjXsJQs/bDjKjfHJZ/eTADVsLwEy4799O5v8FFV1y1h9nuPbemnh
	KNVx6TA/RbIVuKAMK205E0oA0wZCwcPG9zk1bGLwD0pJExkX3JuXoc/1AVrjv80S9OBvlOwOZwd8j
	wO14LzbseVmn9KOQmy4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktgL-0003Tu-DI; Fri, 27 Dec 2019 17:45:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikte4-0000j0-9N
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:43:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A63B821744;
 Fri, 27 Dec 2019 17:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468607;
 bh=ta6P7W4Qxx76cOxWAlSlu27XJGWgczrHYC2HaYJxa4o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i1R8KvnO8Py5NUmbcgVF31xE7Rx4O/AvPkg8WjwzCCEsiM3knECYStBvI7myMf4Ul
 xlvmTGUfVfxuVC+9D3oo3TO+3p3BDPodA6bjr7iF4LnO2mgnDt6JJrpLarmVnWFW3C
 aEoXDN7CZojteSugWdAv3GXlRwhSoKg/ieZNvEwI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 127/187] clk: at91: fix possible deadlock
Date: Fri, 27 Dec 2019 12:39:55 -0500
Message-Id: <20191227174055.4923-127-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094328_410545_B627985B 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Stephen Boyd <sboyd@kernel.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgoK
WyBVcHN0cmVhbSBjb21taXQgNjk1NmViMzNhYmI1ZGVhYjJjZDkxNmI0YzMxMjI2YjU3NzM2YmMz
YyBdCgpMb2NrZGVwIHdhcm5zIGFib3V0IGEgcG9zc2libGUgY2lyY3VsYXIgbG9ja2luZyBkZXBl
bmRlbmN5IGJlY2F1c2UgdXNpbmcKc3lzY29uX25vZGVfdG9fcmVnbWFwKCkgd2lsbCBtYWtlIHRo
ZSBjcmVhdGVkIHJlZ21hcCBnZXQgYW5kIGVuYWJsZSB0aGUKZmlyc3QgY2xvY2sgaXQgY2FuIHBh
cnNlIGZyb20gdGhlIGRldmljZSB0cmVlLiBUaGlzIGNsb2NrIGlzIG5vdCBuZWVkZWQgdG8KYWNj
ZXNzIHRoZSByZWdpc3RlcnMgYW5kIHNob3VsZCBub3QgYmUgZW5hYmxlZCBhdCB0aGF0IHRpbWUu
CgpVc2UgdGhlIHJlY2VudGx5IGludHJvZHVjZWQgZGV2aWNlX25vZGVfdG9fcmVnbWFwIHRvIHNv
bHZlIHRoYXQgYXMgaXQgbG9va3MKdXAgdGhlIHJlZ21hcCBpbiB0aGUgc2FtZSBsaXN0IGJ1dCBk
b2Vzbid0IGNhcmUgYWJvdXQgdGhlIGNsb2Nrcy4KClJlcG9ydGVkLWJ5OiBNaWNoYcWCIE1pcm9z
xYJhdyA8bWlycS1saW51eEByZXJlLnFtcW0ucGw+ClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBC
ZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4KTGluazogaHR0cHM6Ly9sa21s
Lmtlcm5lbC5vcmcvci8yMDE5MTEyODEwMjUzMS44MTc1NDktMS1hbGV4YW5kcmUuYmVsbG9uaUBi
b290bGluLmNvbQpUZXN0ZWQtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUu
cW1xbS5wbD4KU2lnbmVkLW9mZi1ieTogU3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwub3JnPgpT
aWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVy
cy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2Ft
OXJsLmMgIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMgIHwgMiArLQogZHJp
dmVycy9jbGsvYXQ5MS9wbWMuYyAgICAgICAgIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1h
NWQyLmMgICAgIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQ0LmMgICAgIHwgMiArLQog
NiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jIGIvZHJpdmVycy9jbGsvYXQ5MS9h
dDkxc2FtOTI2MC5jCmluZGV4IDBhYWJlNDlhZWQwOS4uYTlkNDIzNDc1OGQ3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05MjYwLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9h
dDkxc2FtOTI2MC5jCkBAIC0zNDgsNyArMzQ4LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0OTFz
YW05MjZ4X3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCQlyZXR1cm47CiAJbWFp
bnh0YWxfbmFtZSA9IG9mX2Nsa19nZXRfcGFyZW50X25hbWUobnAsIGkpOwogCi0JcmVnbWFwID0g
c3lzY29uX25vZGVfdG9fcmVnbWFwKG5wKTsKKwlyZWdtYXAgPSBkZXZpY2Vfbm9kZV90b19yZWdt
YXAobnApOwogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTly
bC5jCmluZGV4IDBhYzM0Y2RhYTEwNi4uNzdmZTgzYTczYmY0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2Nsay9hdDkxL2F0OTFzYW05cmwuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwu
YwpAQCAtODMsNyArODMsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTlybF9wbWNfc2V0
dXAoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAkJcmV0dXJuOwogCW1haW54dGFsX25hbWUgPSBv
Zl9jbGtfZ2V0X3BhcmVudF9uYW1lKG5wLCBpKTsKIAotCXJlZ21hcCA9IHN5c2Nvbl9ub2RlX3Rv
X3JlZ21hcChucCk7CisJcmVnbWFwID0gZGV2aWNlX25vZGVfdG9fcmVnbWFwKG5wKTsKIAlpZiAo
SVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5
MS9hdDkxc2FtOXg1LmMgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05eDUuYwppbmRleCAwODU1
ZjNhODBjYzcuLjA4NmNmMGI0OTU1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkx
c2FtOXg1LmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMKQEAgLTE0Niw3ICsx
NDYsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTl4NV9wbWNfc2V0dXAoc3RydWN0IGRl
dmljZV9ub2RlICpucCwKIAkJcmV0dXJuOwogCW1haW54dGFsX25hbWUgPSBvZl9jbGtfZ2V0X3Bh
cmVudF9uYW1lKG5wLCBpKTsKIAotCXJlZ21hcCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChucCk7
CisJcmVnbWFwID0gZGV2aWNlX25vZGVfdG9fcmVnbWFwKG5wKTsKIAlpZiAoSVNfRVJSKHJlZ21h
cCkpCiAJCXJldHVybjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9wbWMuYyBiL2Ry
aXZlcnMvY2xrL2F0OTEvcG1jLmMKaW5kZXggMGIwM2NmYWUzYTlkLi5iNzE1MTVhY2RlYzEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvcG1jLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9w
bWMuYwpAQCAtMjc1LDcgKzI3NSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IHBtY19yZWdpc3Rlcl9v
cHModm9pZCkKIAogCW5wID0gb2ZfZmluZF9tYXRjaGluZ19ub2RlKE5VTEwsIHNhbWE1ZDJfcG1j
X2R0X2lkcyk7CiAKLQlwbWNyZWcgPSBzeXNjb25fbm9kZV90b19yZWdtYXAobnApOworCXBtY3Jl
ZyA9IGRldmljZV9ub2RlX3RvX3JlZ21hcChucCk7CiAJaWYgKElTX0VSUihwbWNyZWcpKQogCQly
ZXR1cm4gUFRSX0VSUihwbWNyZWcpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL3Nh
bWE1ZDIuYyBiL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkMi5jCmluZGV4IDBkZTExMDg3MzdkYi4u
ZmY3ZTNmNzI3MDgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYworKysg
Yi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYwpAQCAtMTYyLDcgKzE2Miw3IEBAIHN0YXRpYyB2
b2lkIF9faW5pdCBzYW1hNWQyX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCQly
ZXR1cm47CiAJbWFpbnh0YWxfbmFtZSA9IG9mX2Nsa19nZXRfcGFyZW50X25hbWUobnAsIGkpOwog
Ci0JcmVnbWFwID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKG5wKTsKKwlyZWdtYXAgPSBkZXZpY2Vf
bm9kZV90b19yZWdtYXAobnApOwogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYyBiL2RyaXZlcnMvY2xrL2F0OTEv
c2FtYTVkNC5jCmluZGV4IDI1YjE1NmQ0ZTY0NS4uYTZkZWU0YTNiNmU0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQu
YwpAQCAtMTM2LDcgKzEzNiw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQ0X3BtY19zZXR1
cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCQlyZXR1cm47CiAJbWFpbnh0YWxfbmFtZSA9IG9m
X2Nsa19nZXRfcGFyZW50X25hbWUobnAsIGkpOwogCi0JcmVnbWFwID0gc3lzY29uX25vZGVfdG9f
cmVnbWFwKG5wKTsKKwlyZWdtYXAgPSBkZXZpY2Vfbm9kZV90b19yZWdtYXAobnApOwogCWlmIChJ
U19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

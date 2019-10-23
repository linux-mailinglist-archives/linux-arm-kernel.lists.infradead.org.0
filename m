Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99604E1793
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a96rJv8OcoTPdq+kIXcykQ6MXA3rQlnUM9mf1uNAQNw=; b=ddMUwxZ8v+/Jwu
	lTojSuk+ojwL2b4S6X03f7Nvp0wrM8Rxhzc8nihHweHjw/xgVzYqDvhW0EMWJRRAOnYzMUuCXGkEW
	ykZZL5ixGtQVlhOgK4zHJ57tTn8sbF90RtnoFIr0zQyS5jhKijwXYX+BAG96ohi+9rO6vUrBnD63a
	wE+91lpa3DIbMKBWRpkdzhZtT+g0YPoEwPsWPYwQ2aAY0IwcUiPj5qR5I1EGeC8TD8MXsnDFu6Nax
	zj24tNYF2h/JWAY66dZOlX+s5dW3EzEKlxn9tb40tRZzX7akAwmmcgCnCKwED30NcoLxIFRrr6g4t
	oiDueTCI73BfiMBNVUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDf1-0005Md-Bu; Wed, 23 Oct 2019 10:14:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdz-0004if-SH; Wed, 23 Oct 2019 10:13:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3BF2DB506;
 Wed, 23 Oct 2019 10:13:29 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 03/11] reset: simple: Keep alphabetical order
Date: Wed, 23 Oct 2019 12:13:09 +0200
Message-Id: <20191023101317.26656-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031332_053553_FB5EFEE2 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Philipp Zabel <p.zabel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVzdG9yZSBhbHBoYWJldGljYWwgb3JkZXIgZm9yIEtjb25maWcgZGVwZW5kZW5jaWVzIGFuZCBo
ZWxwIHRleHQuCkNvbXBhdGlibGVzIGdvdCBvdXQgb2Ygb3JkZXIgdG9vLCBidXQgbm8gZnVuY3Rp
b25hbCBjaGFuZ2UgZG9uZSBoZXJlLgoKR29hbCBpcyB0byBtYWtlIGl0IG9idmlvdXMgd2hlcmUg
dG8gYWRkIG5ldyBwbGF0Zm9ybXMuCgpGaXhlczogNjRjNDdiNjI0ZjY0ICgicmVzZXQ6IEFkZCBy
ZXNldCBjb250cm9sbGVyIHN1cHBvcnQgZm9yIEJNMTg4MCBTb0MiKQpGaXhlczogMWQ3NTkyZjg0
ZjkyICgicmVzZXQ6IHNpbXBsZTogRW5hYmxlIGZvciBBU1BFRUQgc3lzdGVtcyIpCkZpeGVzOiA5
NmEyZjUwMzA1ZDEgKCJyZXNldDogYnVpbGQgc2ltcGxlIHJlc2V0IGNvbnRyb2xsZXIgZHJpdmVy
IGZvciBBZ2lsZXgiKQpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4K
U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYy
OiBOZXcgKHByZXBhcmVzIGZvciBmb2xsb3dpbmcgcGF0Y2ggZXh0ZW5kaW5nIGl0IHRvIFJlYWx0
ZWspCiAKIGRyaXZlcnMvcmVzZXQvS2NvbmZpZyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Jlc2V0
L0tjb25maWcgYi9kcml2ZXJzL3Jlc2V0L0tjb25maWcKaW5kZXggNDZmNzk4NmMzNTg3Li5mYWMz
NTZhOWI4MTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmVzZXQvS2NvbmZpZworKysgYi9kcml2ZXJz
L3Jlc2V0L0tjb25maWcKQEAgLTEyOSw3ICsxMjksNyBAQCBjb25maWcgUkVTRVRfU0NNSQogCiBj
b25maWcgUkVTRVRfU0lNUExFCiAJYm9vbCAiU2ltcGxlIFJlc2V0IENvbnRyb2xsZXIgRHJpdmVy
IiBpZiBDT01QSUxFX1RFU1QKLQlkZWZhdWx0IEFSQ0hfU1RNMzIgfHwgQVJDSF9TVFJBVElYMTAg
fHwgQVJDSF9TVU5YSSB8fCBBUkNIX1pYIHx8IEFSQ0hfQVNQRUVEIHx8IEFSQ0hfQklUTUFJTiB8
fCBBUkMgfHwgQVJDSF9BR0lMRVgKKwlkZWZhdWx0IEFSQ0hfQUdJTEVYIHx8IEFSQ0hfQVNQRUVE
IHx8IEFSQ0hfQklUTUFJTiB8fCBBUkNIX1NUTTMyIHx8IEFSQ0hfU1RSQVRJWDEwIHx8IEFSQ0hf
U1VOWEkgfHwgQVJDSF9aWCB8fCBBUkMKIAloZWxwCiAJICBUaGlzIGVuYWJsZXMgYSBzaW1wbGUg
cmVzZXQgY29udHJvbGxlciBkcml2ZXIgZm9yIHJlc2V0IGxpbmVzIHRoYXQKIAkgIHRoYXQgY2Fu
IGJlIGFzc2VydGVkIGFuZCBkZWFzc2VydGVkIGJ5IHRvZ2dsaW5nIGJpdHMgaW4gYSBjb250aWd1
b3VzLApAQCAtMTM4LDEwICsxMzgsMTAgQEAgY29uZmlnIFJFU0VUX1NJTVBMRQogCSAgQ3VycmVu
dGx5IHRoaXMgZHJpdmVyIHN1cHBvcnRzOgogCSAgIC0gQWx0ZXJhIFNvQ0ZQR0FzCiAJICAgLSBB
U1BFRUQgQk1DIFNvQ3MKKwkgICAtIEJpdG1haW4gQk0xODgwIFNvQwogCSAgIC0gUkNDIHJlc2V0
IGNvbnRyb2xsZXIgaW4gU1RNMzIgTUNVcwogCSAgIC0gQWxsd2lubmVyIFNvQ3MKIAkgICAtIFpU
RSdzIHp4Mjk2NyBmYW1pbHkKLQkgICAtIEJpdG1haW4gQk0xODgwIFNvQwogCiBjb25maWcgUkVT
RVRfU1RNMzJNUDE1NwogCWJvb2wgIlNUTTMyTVAxNTcgUmVzZXQgRHJpdmVyIiBpZiBDT01QSUxF
X1RFU1QKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

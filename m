Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90144E1799
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJyyztMjmWjb49DsaR0OYrKwfAQ1vIUmCRb59Q7CVxs=; b=Tjq8iJZolyPdJI
	Kz+Kre+pHOeXH6AUHUzZk34LiVXvEkcUgkLqrV9OnEWAtL4mLV4/ntv2hR/AvQkceGJQysrHUlJN5
	HIswT/5bejf9rF2DSMr0BkzyWTmFgKg0QrHsKkXK0V24MfP7sCHVqRFvmTdRPBrcPH2ErpBXkYZD7
	bFRAWSupfrPTHIwD2YPIu3jvq2YqqQPgB2uVw4BzUC+OKBiannsjlYVsauv3EcmZIG9zisJPtTono
	bNhKMjcbM2TDZYHIrx/jrmdfhHFWIkXBTV2uscj26PPQ6GkdIOFYYlTjO2V414owSoY4RWBEFFlXP
	SNsiv1QgKKpP2kbGXpnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDfI-0005bv-U1; Wed, 23 Oct 2019 10:14:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdz-0004id-N6; Wed, 23 Oct 2019 10:13:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1CD3FB514;
 Wed, 23 Oct 2019 10:13:29 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 04/11] reset: simple: Add Realtek RTD1195/RTD1295
Date: Wed, 23 Oct 2019 12:13:10 +0200
Message-Id: <20191023101317.26656-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031331_892879_44C2C7A6 
X-CRM114-Status: GOOD (  10.05  )
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIFJFU0VUX1NJTVBMRSBmb3IgQVJDSF9SRUFMVEVLLgpUaGV5IGNhbiByZXVzZSB0aGUg
RGVzaWduV2FyZSBiaW5kaW5ncyB0byBhdm9pZCBhIG5ldyBjb21wYXRpYmxlLgoKU2lnbmVkLW9m
Zi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYxIC0+IHYyOgog
KiBJbnN0ZWFkIG9mIGFkZGluZyBhIG5ldyBkcml2ZXIsIHJldXNlIHJlc2V0LXNpbXBsZSAoUGhp
bGlwcCkKIAogZHJpdmVycy9yZXNldC9LY29uZmlnIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Jlc2V0
L0tjb25maWcgYi9kcml2ZXJzL3Jlc2V0L0tjb25maWcKaW5kZXggZmFjMzU2YTliODE4Li4zYWQ3
ODE3Y2UxZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmVzZXQvS2NvbmZpZworKysgYi9kcml2ZXJz
L3Jlc2V0L0tjb25maWcKQEAgLTEyOSw3ICsxMjksNyBAQCBjb25maWcgUkVTRVRfU0NNSQogCiBj
b25maWcgUkVTRVRfU0lNUExFCiAJYm9vbCAiU2ltcGxlIFJlc2V0IENvbnRyb2xsZXIgRHJpdmVy
IiBpZiBDT01QSUxFX1RFU1QKLQlkZWZhdWx0IEFSQ0hfQUdJTEVYIHx8IEFSQ0hfQVNQRUVEIHx8
IEFSQ0hfQklUTUFJTiB8fCBBUkNIX1NUTTMyIHx8IEFSQ0hfU1RSQVRJWDEwIHx8IEFSQ0hfU1VO
WEkgfHwgQVJDSF9aWCB8fCBBUkMKKwlkZWZhdWx0IEFSQ0hfQUdJTEVYIHx8IEFSQ0hfQVNQRUVE
IHx8IEFSQ0hfQklUTUFJTiB8fCBBUkNIX1JFQUxURUsgfHwgQVJDSF9TVE0zMiB8fCBBUkNIX1NU
UkFUSVgxMCB8fCBBUkNIX1NVTlhJIHx8IEFSQ0hfWlggfHwgQVJDCiAJaGVscAogCSAgVGhpcyBl
bmFibGVzIGEgc2ltcGxlIHJlc2V0IGNvbnRyb2xsZXIgZHJpdmVyIGZvciByZXNldCBsaW5lcyB0
aGF0CiAJICB0aGF0IGNhbiBiZSBhc3NlcnRlZCBhbmQgZGVhc3NlcnRlZCBieSB0b2dnbGluZyBi
aXRzIGluIGEgY29udGlndW91cywKQEAgLTEzOSw2ICsxMzksNyBAQCBjb25maWcgUkVTRVRfU0lN
UExFCiAJICAgLSBBbHRlcmEgU29DRlBHQXMKIAkgICAtIEFTUEVFRCBCTUMgU29DcwogCSAgIC0g
Qml0bWFpbiBCTTE4ODAgU29DCisJICAgLSBSZWFsdGVrIFNvQ3MKIAkgICAtIFJDQyByZXNldCBj
b250cm9sbGVyIGluIFNUTTMyIE1DVXMKIAkgICAtIEFsbHdpbm5lciBTb0NzCiAJICAgLSBaVEUn
cyB6eDI5NjcgZmFtaWx5Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DBBF6DAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:56:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzTpO68FxTb1N1pgj4gR+REH4toumbWKgVMnG99ZdPU=; b=UAsuCEsQAPhbl8
	d5P75yW5ofT7U1Y+evY7R/23w4l3lMCMHYkkaICnc/Sz/JXLul467doUhmqNDYYqCiA7vU56FW+H5
	sN+Ft77zmNHxFrILwW1p+hFLg8GtoQtGo2ffcmgHMhkzWUnRyd6UJtJP6MYuE6Rq9yQCCFiF4pIgo
	2tOCH3uwCZB6WDHFUGPMYz4MhqJHKkD3SI+Huky3GsPtIZN32mpLHeiVHCJZuQP7cSKDu4VeWv+sW
	xwmcD3rBX/YLd/3PQfJb78lx21RCCt6nL5yDdKHOYhWIukhQtC0F8KxObljUCjxQQRJ6jFR4JyV/H
	y+J46Fypr0i7rebRHcNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1kb-0008Qt-L3; Mon, 11 Nov 2019 04:56:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1kQ-0008QL-F7; Mon, 11 Nov 2019 04:56:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E3D15B18C;
 Mon, 11 Nov 2019 04:56:16 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH] base: soc: Export soc_device_to_device() helper
Date: Mon, 11 Nov 2019 05:56:09 +0100
Message-Id: <20191111045609.7026-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-3-afaerber@suse.de>
References: <20191103013645.9856-3-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_205618_653605_268B7D62 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIG9mIHNvY19kZXZpY2VfdG9fZGV2aWNlKCkgaW4gZHJpdmVyIG1vZHVsZXMgY2F1c2VzIGEg
YnVpbGQgZmFpbHVyZS4KR2l2ZW4gdGhhdCB0aGUgaGVscGVyIGlzIG5pY2VseSBkb2N1bWVudGVk
IGluIGluY2x1ZGUvbGludXgvc3lzX3NvYy5oLApsZXQncyBleHBvcnQgaXQgYXMgR1BMIHN5bWJv
bC4KCnN0cnVjdCBzb2NfZGV2aWNlIGlzIGxvY2FsIHRvIHNvYy5jLCBzbyBpdCBjYW4ndCBiZSBp
bmxpbmVkIGludG8gdGhlCmhlYWRlciBvciBpbnRvIGRyaXZlciBjb2RlLgoKVGhpcyBzdGlsbCBo
YW5kbGVzIG9ubHkgdGhlIGNhc2UgdGhhdCBDT05GSUdfU09DX0JVUyBpcyBlbmFibGVkLgpTYW1l
IGFzIGNvbW1pdCBkYTY1YTE1ODlkYWNjN2VjNDRlYTA1NTdhMTRkNzBhMzlkOTkxZjMyICgiYmFz
ZTogc29jOgpQcm92aWRlIGEgZHVtbXkgaW1wbGVtZW50YXRpb24gb2Ygc29jX2RldmljZV9tYXRj
aCgpIikgd2UnZCBuZWVkIHRvCnByb3ZpZGUgYSBkdW1teSBpbmxpbmUgaW1wbGVtZW50YXRpb24g
dG8gY29wZSB3aXRoIENPTVBJTEVfVEVTVCwgdG9vLgoKUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0
IHJvYm90IDxsa3BAaW50ZWwuY29tPgpDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9y
Zz4KQ2M6IEJqb3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+CkNjOiBH
ZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpTaWduZWQtb2ZmLWJ5
OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogZHJpdmVycy9iYXNlL3Nv
Yy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Jhc2Uvc29jLmMgYi9kcml2ZXJzL2Jhc2Uvc29jLmMKaW5kZXggNGFmMTFhNDIzNDc1
Li43Mjg0ODU4N2NkNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYmFzZS9zb2MuYworKysgYi9kcml2
ZXJzL2Jhc2Uvc29jLmMKQEAgLTQxLDYgKzQxLDcgQEAgc3RydWN0IGRldmljZSAqc29jX2Rldmlj
ZV90b19kZXZpY2Uoc3RydWN0IHNvY19kZXZpY2UgKnNvY19kZXYpCiB7CiAJcmV0dXJuICZzb2Nf
ZGV2LT5kZXY7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChzb2NfZGV2aWNlX3RvX2RldmljZSk7CiAK
IHN0YXRpYyB1bW9kZV90IHNvY19hdHRyaWJ1dGVfbW9kZShzdHJ1Y3Qga29iamVjdCAqa29iaiwK
IAkJCQlzdHJ1Y3QgYXR0cmlidXRlICphdHRyLAotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

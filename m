Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147DB1FA4EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 02:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cuhTPipBFBO3gZdCt15G1xIXf1FKVvcigI80lxU4zU=; b=fHb/y0jrvuM4F0
	SmvEqAFaGVSQuFWM/MYjpftU+90q+BkipMIbrDjlfFJQRI/iXVU0Bw1HE7H2uRzMAib2yJXTeHuB6
	qlOquEAE1WiMV9TnVHYljeCtB5sgMN5Hjo4KlH4YI1PrYeOAgn3X7PaX0TsG6uL65XvDhrVq7qiPE
	Yd2VlRrxLpTe9BAs6EJ+284lrFDluZJJ9zm8n99MXJ9ztzjA3hUoBSYARpSds0Hsv+YXl9DdmXBx7
	zcYeM15mLjWfHE78d2pkW+evjW+QUbVj7FX21PqDov8ux2MZok2MJ7Z9PaR/JB8xN3Loe9IBAzyTH
	kUgS9HaMzjJMhJ//cw8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzBO-0001Ea-Dm; Tue, 16 Jun 2020 00:10:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzAc-0000Iu-Fh; Tue, 16 Jun 2020 00:09:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D9A91042;
 Mon, 15 Jun 2020 17:09:42 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 794253F73C;
 Mon, 15 Jun 2020 17:09:40 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: broonie@kernel.org, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com
Subject: [PATCH 2/3] spi: bcm2835: Micro-optimise IRQ handler
Date: Tue, 16 Jun 2020 01:09:28 +0100
Message-Id: <6b401cb521539caffab21f05b4c8cba6c9d27c6e.1592261248.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1592261248.git.robin.murphy@arm.com>
References: <cover.1592261248.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_170942_592377_9791B57B 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, lukas@wunner.de,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@martin.sperl.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIElSUSBoYW5kbGVyIG9ubHkgbmVlZHMgdGhlIHN0cnVjdCBzcGlfY29udHJvbGxlciBmb3Ig
dGhlIHNha2Ugb2YKdGhlIGNvbXBsZXRpb24gYXQgdGhlIGVuZCBvZiBhIHRyYW5zZmVyLiBQYXNz
aW5nIHRoZSBzdHJ1Y3QgYmNtMjgzNV9zcGkKZGlyZWN0bHkgYXMgdGhlIElSUSBkYXRhIGFsbG93
cyB0aGF0IGxldmVsIG9mIGluZGlyZWN0aW9uIHRvIGJlIHB1c2hlZAppbnRvIHRoZSBjb21wbGV0
aW9uIHBhdGggZm9yIHRoZSByZXZlcnNlIGxvb2t1cCwgYW5kIGF2b2lkZWQgZW50aXJlbHkKaW4g
YWxsIG90aGVyIGNhc2VzLgoKVGhpcyBzYXZlcyBvbmUgZXhwbGljaXQgbG9hZCBpbiB0aGUgY3Jp
dGljYWwgcGF0aCwgcGx1cyAoZm9yIGEgR0NDIDguMwpidWlsZCkgdHdvIHJlZ2lzdGVycyB3b3J0
aCBvZiBzdGFjayBmcmFtZSBvdmVyaGVhZC4KClNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8
cm9iaW4ubXVycGh5QGFybS5jb20+Ci0tLQogZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYyB8IDEw
ICsrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYyBiL2RyaXZlcnMvc3Bp
L3NwaS1iY20yODM1LmMKaW5kZXggNTI0YTkxZTUyMTExLi5hZWM3MGFjODkxMWUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc3BpL3NwaS1iY20yODM1LmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTI4
MzUuYwpAQCAtODYsNiArODYsNyBAQCBNT0RVTEVfUEFSTV9ERVNDKHBvbGxpbmdfbGltaXRfdXMs
CiAgKiBAY2xrOiBjb3JlIGNsb2NrLCBkaXZpZGVkIHRvIGNhbGN1bGF0ZSBzZXJpYWwgY2xvY2sK
ICAqIEBpcnE6IGludGVycnVwdCwgc2lnbmFscyBUWCBGSUZPIGVtcHR5IG9yIFJYIEZJRk8gwr4g
ZnVsbAogICogQHRmcjogU1BJIHRyYW5zZmVyIGN1cnJlbnRseSBwcm9jZXNzZWQKKyAqIEBjdGxy
OiBTUEkgY29udHJvbGxlciByZXZlcnNlIGxvb2t1cAogICogQHR4X2J1ZjogcG9pbnRlciB3aGVu
Y2UgbmV4dCB0cmFuc21pdHRlZCBieXRlIGlzIHJlYWQKICAqIEByeF9idWY6IHBvaW50ZXIgd2hl
cmUgbmV4dCByZWNlaXZlZCBieXRlIGlzIHdyaXR0ZW4KICAqIEB0eF9sZW46IHJlbWFpbmluZyBi
eXRlcyB0byB0cmFuc21pdApAQCAtMTI1LDYgKzEyNiw3IEBAIHN0cnVjdCBiY20yODM1X3NwaSB7
CiAJc3RydWN0IGNsayAqY2xrOwogCWludCBpcnE7CiAJc3RydWN0IHNwaV90cmFuc2ZlciAqdGZy
OworCXN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RscjsKIAljb25zdCB1OCAqdHhfYnVmOwogCXU4
ICpyeF9idWY7CiAJaW50IHR4X2xlbjsKQEAgLTM2Miw4ICszNjQsNyBAQCBzdGF0aWMgdm9pZCBi
Y20yODM1X3NwaV9yZXNldF9odyhzdHJ1Y3QgYmNtMjgzNV9zcGkgKmJzKQogCiBzdGF0aWMgaXJx
cmV0dXJuX3QgYmNtMjgzNV9zcGlfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmRldl9pZCkKIHsK
LQlzdHJ1Y3Qgc3BpX2NvbnRyb2xsZXIgKmN0bHIgPSBkZXZfaWQ7Ci0Jc3RydWN0IGJjbTI4MzVf
c3BpICpicyA9IHNwaV9jb250cm9sbGVyX2dldF9kZXZkYXRhKGN0bHIpOworCXN0cnVjdCBiY20y
ODM1X3NwaSAqYnMgPSBkZXZfaWQ7CiAJdTMyIGNzID0gYmNtMjgzNV9yZChicywgQkNNMjgzNV9T
UElfQ1MpOwogCiAJLyoKQEAgLTM4Nyw3ICszODgsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgYmNt
MjgzNV9zcGlfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmRldl9pZCkKIAkJLyogVHJhbnNmZXIg
Y29tcGxldGUgLSByZXNldCBTUEkgSFcgKi8KIAkJYmNtMjgzNV9zcGlfcmVzZXRfaHcoYnMpOwog
CQkvKiB3YWtlIHVwIHRoZSBmcmFtZXdvcmsgKi8KLQkJY29tcGxldGUoJmN0bHItPnhmZXJfY29t
cGxldGlvbik7CisJCWNvbXBsZXRlKCZicy0+Y3Rsci0+eGZlcl9jb21wbGV0aW9uKTsKIAl9CiAK
IAlyZXR1cm4gSVJRX0hBTkRMRUQ7CkBAIC0xMzEwLDYgKzEzMTEsNyBAQCBzdGF0aWMgaW50IGJj
bTI4MzVfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJY3Rsci0+ZGV2
Lm9mX25vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsKIAogCWJzID0gc3BpX2NvbnRyb2xsZXJfZ2V0
X2RldmRhdGEoY3Rscik7CisJYnMtPmN0bHIgPSBjdGxyOwogCiAJYnMtPnJlZ3MgPSBkZXZtX3Bs
YXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7CiAJaWYgKElTX0VSUihicy0+cmVncykp
IHsKQEAgLTEzNDQsNyArMTM0Niw3IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9zcGlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJICAgQkNNMjgzNV9TUElfQ1NfQ0xFQVJfUlgg
fCBCQ00yODM1X1NQSV9DU19DTEVBUl9UWCk7CiAKIAllcnIgPSBkZXZtX3JlcXVlc3RfaXJxKCZw
ZGV2LT5kZXYsIGJzLT5pcnEsIGJjbTI4MzVfc3BpX2ludGVycnVwdCwgMCwKLQkJCSAgICAgICBk
ZXZfbmFtZSgmcGRldi0+ZGV2KSwgY3Rscik7CisJCQkgICAgICAgZGV2X25hbWUoJnBkZXYtPmRl
diksIGJzKTsKIAlpZiAoZXJyKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgImNvdWxkIG5vdCBy
ZXF1ZXN0IElSUTogJWRcbiIsIGVycik7CiAJCWdvdG8gb3V0X2RtYV9yZWxlYXNlOwotLSAKMi4y
My4wLmRpcnR5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850813B83F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+1Vtkrq9qIBtZo8DEq4hMOLHrhgbeZUjA4pPmoqZtg=; b=BYpA0OEACF8hFp
	BClMVxbCWm74SngY/zjiOHUW+x8R/J+94GeYbnnIbDBrEyP95yV4ong90CYBOE0uf6Q6Dyt61MOah
	zmG6KqbUKXkyc6X/35fbaJqOfcaUqCiCsQWfap+f+MRmuV6rMwR7Nr63uKvY4wcnX6ezIHXqTzQSY
	7PemtZbLhk9d14qf6Yt6p//fpRJgGGJVHEy5CPskCPwx5Z4kHIfflgCLUfp/qFkruSp5/3Ii+i7xr
	6T2Z1a7LAgXHf5/SQwVTCtDMqDNvNrz8asWSPljGkQA2wu5yWgZGZHRld1BZZPbObY+ThU0UOLAqD
	Tp5707SMzNebgBC5AJVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM9O-0000hF-0I; Mon, 10 Jun 2019 15:23:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM9D-0000Rk-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:23:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71E802007F9;
 Mon, 10 Jun 2019 17:23:41 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 64A762007F0;
 Mon, 10 Jun 2019 17:23:41 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 07A29205E4;
 Mon, 10 Jun 2019 17:23:40 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: ls1028a: add crypto node
Date: Mon, 10 Jun 2019 18:23:31 +0300
Message-Id: <20190610152331.10057-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082348_245892_1A4AF843 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TFMxMDI4QSBoYXMgYSBTRUMgdjUuMCBjb21wYXRpYmxlIHNlY3VyaXR5IGVuZ2luZS4KClNpZ25l
ZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0KClRlc3Rl
ZCB3aXRoICJhcm0tc21tdS5kaXNhYmxlX2J5cGFzcz0wIiBrZXJuZWwgYm9vdCBwYXJhbWV0ZXIs
CnNpbmNlIElDSUQgKElzb2xhdGlvbiBDb250ZXh0IElELCBvdXQgb2Ygd2hpY2ggQVJNIFNNTVUg
c3RyZWFtIElECmlzIGRlcml2ZWQpIHByb2dyYW1taW5nIGFuZCBEVCBmaXgtdXAgc3VwcG9ydCBo
YXNuJ3QgYmVlbiBhZGRlZCB5ZXQKaW4gVS1ib290LgoKIC4uLi9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTAyOGEtcWRzLmR0cyAgICB8ICAxICsKIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTAyOGEtcmRiLmR0cyAgICB8ICAxICsKIC4uLi9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
ZnNsLWxzMTAyOGEuZHRzaSB8IDM5ICsrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgNDEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9mc2wtbHMxMDI4YS1xZHMuZHRzCmluZGV4IDRlZDE4Mjg3ZTA3Ny4uYzk3NjViYjRiZDdmIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1xZHMu
ZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXFkcy5k
dHMKQEAgLTE3LDYgKzE3LDcgQEAKIAljb21wYXRpYmxlID0gImZzbCxsczEwMjhhLXFkcyIsICJm
c2wsbHMxMDI4YSI7CiAKIAlhbGlhc2VzIHsKKwkJY3J5cHRvID0gJmNyeXB0bzsKIAkJZ3BpbzAg
PSAmZ3BpbzE7CiAJCWdwaW8xID0gJmdwaW8yOwogCQlncGlvMiA9ICZncGlvMzsKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzCmluZGV4IDRh
MjAzZjdkYTU5OC4uNzQ1ZWM0NjJiZmFlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS1yZGIuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2ZzbC1sczEwMjhhLXJkYi5kdHMKQEAgLTE2LDYgKzE2LDcgQEAKIAljb21wYXRp
YmxlID0gImZzbCxsczEwMjhhLXJkYiIsICJmc2wsbHMxMDI4YSI7CiAKIAlhbGlhc2VzIHsKKwkJ
Y3J5cHRvID0gJmNyeXB0bzsKIAkJc2VyaWFsMCA9ICZkdWFydDA7CiAJCXNlcmlhbDEgPSAmZHVh
cnQxOwogCX07CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wt
bHMxMDI4YS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEu
ZHRzaQppbmRleCBiYjM4NmRkMWQxYjEuLjAwNDhjMjYxMGEwOSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQorKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpCkBAIC0zODgsNiArMzg4LDQ1IEBA
CiAJCQkJICAgICA8R0lDX1NQSSAyMDggSVJRX1RZUEVfTEVWRUxfSElHSD4sIDxHSUNfU1BJIDIw
OSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKIAkJfTsKIAorCQljcnlwdG86IGNyeXB0b0A4MDAwMDAw
IHsKKwkJCWNvbXBhdGlibGUgPSAiZnNsLHNlYy12NS4wIiwgImZzbCxzZWMtdjQuMCI7CisJCQlm
c2wsc2VjLWVyYSA9IDwxMD47CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNl
bGxzID0gPDE+OworCQkJcmFuZ2VzID0gPDB4MCAweDAwIDB4ODAwMDAwMCAweDEwMDAwMD47CisJ
CQlyZWcgPSA8MHgwMCAweDgwMDAwMDAgMHgwIDB4MTAwMDAwPjsKKwkJCWludGVycnVwdHMgPSA8
R0lDX1NQSSAxMzkgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQlkbWEtY29oZXJlbnQ7CisKKwkJ
CXNlY19qcjA6IGpyQDEwMDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZzbCxzZWMtdjUuMC1qb2It
cmluZyIsCisJCQkJCSAgICAgImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CisJCQkJcmVnCT0gPDB4
MTAwMDAgMHgxMDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE0MCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKKwkJCX07CisKKwkJCXNlY19qcjE6IGpyQDIwMDAwIHsKKwkJCQljb21wYXRp
YmxlID0gImZzbCxzZWMtdjUuMC1qb2ItcmluZyIsCisJCQkJCSAgICAgImZzbCxzZWMtdjQuMC1q
b2ItcmluZyI7CisJCQkJcmVnCT0gPDB4MjAwMDAgMHgxMDAwMD47CisJCQkJaW50ZXJydXB0cyA9
IDxHSUNfU1BJIDE0MSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCX07CisKKwkJCXNlY19qcjI6
IGpyQDMwMDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZzbCxzZWMtdjUuMC1qb2ItcmluZyIsCisJ
CQkJCSAgICAgImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CisJCQkJcmVnCT0gPDB4MzAwMDAgMHgx
MDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE0MiBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKKwkJCX07CisKKwkJCXNlY19qcjM6IGpyQDQwMDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZz
bCxzZWMtdjUuMC1qb2ItcmluZyIsCisJCQkJCSAgICAgImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7
CisJCQkJcmVnCT0gPDB4NDAwMDAgMHgxMDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDE0MyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCX07CisJCX07CisKIAkJY2x1c3RlcjFfY29y
ZTBfd2F0Y2hkb2c6IHdhdGNoZG9nQGMwMDAwMDAgewogCQkJY29tcGF0aWJsZSA9ICJhcm0sc3A4
MDUiLCAiYXJtLHByaW1lY2VsbCI7CiAJCQlyZWcgPSA8MHgwIDB4YzAwMDAwMCAweDAgMHgxMDAw
PjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK

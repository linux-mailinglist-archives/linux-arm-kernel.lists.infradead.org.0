Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DF5A18A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8xDj+beYjKhGUg4Be5/187Enykz2j3OxmY0dWRGYdM=; b=mzj86PMTzR/9b4
	j6a+Val7hgTFibgHpwQzWycs+ieL3akgrN81wEUzUB+BjU1a8A5lbcL6RQkp99hXw6SKkNzBqSd4b
	0+5E+8VjNz16kaFrqOYHyamd4MXoBYYpFkOuemK8TBTTuCVvPQnsO8RUjUEF3Z67seM26YoA1wt2k
	wHNls/ua3QmOAh4NKc/Btxu6iHiFbLL2SlSGjpx24VOfchzVJxMLo6V86uKRVSpojx+obL/FOUSKN
	36UyfDEGQiz4o40O2nBbdprW4qYaIOQonsrr7nDQZnwmsJTDE3nwAiZ0WLpRXDgAeJ/jqG0ypiGS0
	kpMq4+aODoJyqnaFH0/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ifw-0002rB-Mm; Thu, 29 Aug 2019 11:33:12 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdK-0000k5-EV
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3CEE91A0149;
 Thu, 29 Aug 2019 13:30:29 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 38FC11A0010;
 Thu, 29 Aug 2019 13:30:29 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 48E9720613;
 Thu, 29 Aug 2019 13:30:28 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 13/14] drm/mxsfb: Add support for horizontal stride
Date: Thu, 29 Aug 2019 14:30:14 +0300
Message-Id: <1567078215-31601-14-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043030_781500_1720A091 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVzaWRlcyB0aGUgZUxDRElGIGJsb2NrLCB0aGVyZSBpcyBhbm90aGVyIElQIGJsb2NrLCB1c2Vk
IGluIHRoZSBwYXN0CmZvciBFUERDIHBhbmVscy4gU2luY2UgdGhlIGlNWC44bXEgZG9lc24ndCBo
YXZlIGFuIEVQREMgY29ubmVjdG9yLCB0aGlzCmJsb2NrIGlzIG5vdCBkb2N1bWVudGVkLCBidXQg
d2UgY2FuIHVzZSBpdCB0byBkbyBhZGRpdGlvbmFsIG9wZXJhdGlvbnMKb24gdGhlIGZyYW1lIGJ1
ZmZlci4KSW4gdGhpcyBjYXNlLCB3ZSBjYW4gdXNlIHRoZSBwaWdlb24gcmVnaXN0ZXJzIGZyb20g
dGhpcyBJUCBibG9jayBpbgpvcmRlciB0byBkbyBob3Jpem9udGFsIGNyb3Agb24gdGhlIGZyYW1l
IGJ1ZmZlciBwcm9jZXNzZWQgYnkgdGhlIGVMQ0RJRgpibG9jay4KClNpZ25lZC1vZmYtYnk6IFJv
YmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KVGVzdGVkLWJ5OiBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9j
cnRjLmMgfCA3OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9teHNm
Yi9teHNmYl9yZWdzLmggfCAxNiArKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA5MiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNm
Yi9teHNmYl9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCmluZGV4
IGExMmY1M2QuLjMxNzU3NWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNm
Yl9jcnRjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwpAQCAtMTUs
NiArMTUsNyBAQAogCiAjaW5jbHVkZSA8dmlkZW8vdmlkZW9tb2RlLmg+CiAKKyNpbmNsdWRlIDxk
cm0vZHJtX2F0b21pYy5oPgogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2lu
Y2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmJfY21hX2hlbHBlci5o
PgpAQCAtNDM1LDEzICs0MzYsNjYgQEAgdm9pZCBteHNmYl9jcnRjX2Rpc2FibGUoc3RydWN0IG14
c2ZiX2RybV9wcml2YXRlICpteHNmYikKIAljbGtfZGlzYWJsZV91bnByZXBhcmUobXhzZmItPmNs
a19heGkpOwogfQogCit2b2lkIG14c2ZiX3NldF9mYl9oY3JvcChzdHJ1Y3QgbXhzZmJfZHJtX3By
aXZhdGUgKm14c2ZiLCB1MzIgc3JjX3csIHUzMiBmYl93KQoreworCXUzMiBtYXNrX2NudCwgaHRv
dGFsLCBoY291bnQ7CisJdTMyIHZkY3RybDIsIHZkY3RybDMsIHZkY3RybDQsIHRyYW5zZmVyX2Nv
dW50OworCXUzMiBwaWdlb25fMTJfMCwgcGlnZW9uXzEyXzEsIHBpZ2Vvbl8xMl8yOworCisJaWYg
KHNyY193ID09IGZiX3cpIHsKKwkJd3JpdGVsKDB4MCwgbXhzZmItPmJhc2UgKyBIV19FUERDX1BJ
R0VPTl8xMl8wKTsKKwkJd3JpdGVsKDB4MCwgbXhzZmItPmJhc2UgKyBIV19FUERDX1BJR0VPTl8x
Ml8xKTsKKworCQlyZXR1cm47CisJfQorCisJdHJhbnNmZXJfY291bnQgPSByZWFkbChteHNmYi0+
YmFzZSArIExDRENfVjRfVFJBTlNGRVJfQ09VTlQpOworCWhjb3VudCA9IFRSQU5TRkVSX0NPVU5U
X0dFVF9IQ09VTlQodHJhbnNmZXJfY291bnQpOworCisJdHJhbnNmZXJfY291bnQgJj0gflRSQU5T
RkVSX0NPVU5UX1NFVF9IQ09VTlQoMHhmZmZmKTsKKwl0cmFuc2Zlcl9jb3VudCB8PSBUUkFOU0ZF
Ul9DT1VOVF9TRVRfSENPVU5UKGZiX3cpOworCXdyaXRlbCh0cmFuc2Zlcl9jb3VudCwgbXhzZmIt
PmJhc2UgKyBMQ0RDX1Y0X1RSQU5TRkVSX0NPVU5UKTsKKworCXZkY3RybDIgPSByZWFkbChteHNm
Yi0+YmFzZSArIExDRENfVkRDVFJMMik7CisJaHRvdGFsICA9IFZEQ1RSTDJfR0VUX0hTWU5DX1BF
UklPRCh2ZGN0cmwyKTsKKwlodG90YWwgICs9IGZiX3cgLSBoY291bnQ7CisJdmRjdHJsMiAmPSB+
VkRDVFJMMl9TRVRfSFNZTkNfUEVSSU9EKDB4M2ZmZmYpOworCXZkY3RybDIgfD0gVkRDVFJMMl9T
RVRfSFNZTkNfUEVSSU9EKGh0b3RhbCk7CisJd3JpdGVsKHZkY3RybDIsIG14c2ZiLT5iYXNlICsg
TENEQ19WRENUUkwyKTsKKworCXZkY3RybDQgPSByZWFkbChteHNmYi0+YmFzZSArIExDRENfVkRD
VFJMNCk7CisJdmRjdHJsNCAmPSB+U0VUX0RPVENMS19IX1ZBTElEX0RBVEFfQ05UKDB4M2ZmZmYp
OworCXZkY3RybDQgfD0gU0VUX0RPVENMS19IX1ZBTElEX0RBVEFfQ05UKGZiX3cpOworCXdyaXRl
bCh2ZGN0cmw0LCBteHNmYi0+YmFzZSArIExDRENfVkRDVFJMNCk7CisKKwkvKiBjb25maWd1cmUg
cmVsYXRlZCBwaWdlb24gcmVnaXN0ZXJzICovCisJdmRjdHJsMyAgPSByZWFkbChteHNmYi0+YmFz
ZSArIExDRENfVkRDVFJMMyk7CisJbWFza19jbnQgPSBHRVRfSE9SX1dBSVRfQ05UKHZkY3RybDMp
IC0gNTsKKworCXBpZ2Vvbl8xMl8wID0gUElHRU9OXzEyXzBfU0VUX1NUQVRFX01BU0soMHgyNCkJ
CXwKKwkJICAgICAgUElHRU9OXzEyXzBfU0VUX01BU0tfQ05UKG1hc2tfY250KQl8CisJCSAgICAg
IFBJR0VPTl8xMl8wX1NFVF9NQVNLX0NOVF9TRUwoMHg2KQkJfAorCQkgICAgICBQSUdFT05fMTJf
MF9QT0xfQUNUSVZFX0xPVwkJfAorCQkgICAgICBQSUdFT05fMTJfMF9FTjsKKwl3cml0ZWwocGln
ZW9uXzEyXzAsIG14c2ZiLT5iYXNlICsgSFdfRVBEQ19QSUdFT05fMTJfMCk7CisKKwlwaWdlb25f
MTJfMSA9IFBJR0VPTl8xMl8xX1NFVF9DTFJfQ05UKHNyY193KSB8CisJCSAgICAgIFBJR0VPTl8x
Ml8xX1NFVF9TRVRfQ05UKDB4MCk7CisJd3JpdGVsKHBpZ2Vvbl8xMl8xLCBteHNmYi0+YmFzZSAr
IEhXX0VQRENfUElHRU9OXzEyXzEpOworCisJcGlnZW9uXzEyXzIgPSAweDA7CisJd3JpdGVsKHBp
Z2Vvbl8xMl8yLCBteHNmYi0+YmFzZSArIEhXX0VQRENfUElHRU9OXzEyXzIpOworfQorCiB2b2lk
IG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNm
YiwKIAkJCSAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3Qg
ZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUgPSAmbXhzZmItPnBpcGU7CiAJc3RydWN0IGRy
bV9jcnRjICpjcnRjID0gJnBpcGUtPmNydGM7CisJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqbmV3
X3N0YXRlID0gcGlwZS0+cGxhbmUuc3RhdGU7CisJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIg
PSBwaXBlLT5wbGFuZS5zdGF0ZS0+ZmI7CiAJc3RydWN0IGRybV9wZW5kaW5nX3ZibGFua19ldmVu
dCAqZXZlbnQ7Ci0JZG1hX2FkZHJfdCBwYWRkcjsKKwl1MzIgZmJfYWRkciwgc3JjX29mZiwgc3Jj
X3csIHN0cmlkZSwgY3BwID0gMDsKIAogCXNwaW5fbG9ja19pcnEoJmNydGMtPmRldi0+ZXZlbnRf
bG9jayk7CiAJZXZlbnQgPSBjcnRjLT5zdGF0ZS0+ZXZlbnQ7CkBAIC00NTYsMTAgKzUxMCwyNyBA
QCB2b2lkIG14c2ZiX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IG14c2ZiX2RybV9wcml2YXRl
ICpteHNmYiwKIAl9CiAJc3Bpbl91bmxvY2tfaXJxKCZjcnRjLT5kZXYtPmV2ZW50X2xvY2spOwog
Ci0JcGFkZHIgPSBteHNmYl9nZXRfZmJfcGFkZHIobXhzZmIpOwotCWlmIChwYWRkcikgeworCWlm
ICghZmIpCisJCXJldHVybjsKKworCWZiX2FkZHIgPSBteHNmYl9nZXRfZmJfcGFkZHIobXhzZmIp
OworCWlmIChteHNmYi0+ZGV2ZGF0YS0+aXB2ZXJzaW9uID49IDQpIHsKKwkJY3BwID0gZmItPmZv
cm1hdC0+Y3BwWzBdOworCQlzcmNfb2ZmID0gKG5ld19zdGF0ZS0+c3JjX3kgPj4gMTYpICogZmIt
PnBpdGNoZXNbMF0gKworCQkJICAobmV3X3N0YXRlLT5zcmNfeCA+PiAxNikgKiBjcHA7CisJCWZi
X2FkZHIgKz0gZmItPm9mZnNldHNbMF0gKyBzcmNfb2ZmOworCX0KKworCWlmIChmYl9hZGRyKSB7
CiAJCWNsa19wcmVwYXJlX2VuYWJsZShteHNmYi0+Y2xrX2F4aSk7Ci0JCXdyaXRlbChwYWRkciwg
bXhzZmItPmJhc2UgKyBteHNmYi0+ZGV2ZGF0YS0+bmV4dF9idWYpOworCQl3cml0ZWwoZmJfYWRk
ciwgbXhzZmItPmJhc2UgKyBteHNmYi0+ZGV2ZGF0YS0+bmV4dF9idWYpOwogCQljbGtfZGlzYWJs
ZV91bnByZXBhcmUobXhzZmItPmNsa19heGkpOwogCX0KKworCWlmIChteHNmYi0+ZGV2ZGF0YS0+
aXB2ZXJzaW9uID49IDQgJiYKKwkgICAgdW5saWtlbHkoZHJtX2F0b21pY19jcnRjX25lZWRzX21v
ZGVzZXQobmV3X3N0YXRlLT5jcnRjLT5zdGF0ZSkpKSB7CisJCXN0cmlkZSA9IERJVl9ST1VORF9V
UChmYi0+cGl0Y2hlc1swXSwgY3BwKTsKKwkJc3JjX3cgPSBuZXdfc3RhdGUtPnNyY193ID4+IDE2
OworCQlteHNmYl9zZXRfZmJfaGNyb3AobXhzZmIsIHNyY193LCBzdHJpZGUpOworCX0KIH0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9teHNmYi9teHNmYl9kcnYuYwppbmRleCA4ODhiNTIwLi4wNmQzYmYwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L214c2ZiL214c2ZiX2Rydi5jCkBAIC0xMzMsNiArMTMzLDcgQEAgc3RhdGljIGludCBteHNmYl9h
dG9taWNfaGVscGVyX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCWlmIChvbGRfYnBw
ICE9IG5ld19icHApCiAJCQluZXdfc3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRydWU7CiAJfQorCiAJ
cmV0dXJuIHJldDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2Zi
X3JlZ3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmgKaW5kZXggMGY2M2Jh
MS4uZGYzMjc5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX3JlZ3Mu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfcmVncy5oCkBAIC0xNDUsNiArMTQ1
LDIyIEBACiAjZGVmaW5lIERFQlVHMF9IU1lOQwkJCUJJVCgyNikKICNkZWZpbmUgREVCVUcwX1ZT
WU5DCQkJQklUKDI1KQogCisvKiBwaWdlb24gcmVnaXN0ZXJzIGZvciBjcm9wICovCisjZGVmaW5l
IEhXX0VQRENfUElHRU9OXzEyXzAJCTB4YjAwCisjZGVmaW5lIEhXX0VQRENfUElHRU9OXzEyXzEJ
CTB4YjEwCisjZGVmaW5lIEhXX0VQRENfUElHRU9OXzEyXzIJCTB4YjIwCisKKyNkZWZpbmUgUElH
RU9OXzEyXzBfU0VUX1NUQVRFX01BU0soeCkJUkVHX1BVVCgoeCksIDMxLCAyNCkKKyNkZWZpbmUg
UElHRU9OXzEyXzBfU0VUX01BU0tfQ05UKHgpCVJFR19QVVQoKHgpLCAyMywgMTIpCisjZGVmaW5l
IFBJR0VPTl8xMl8wX1NFVF9NQVNLX0NOVF9TRUwoeCkJUkVHX1BVVCgoeCksIDExLCAgOCkKKyNk
ZWZpbmUgUElHRU9OXzEyXzBfU0VUX09GRlNFVCh4KQlSRUdfUFVUKCh4KSwgIDcsICA0KQorI2Rl
ZmluZSBQSUdFT05fMTJfMF9TRVRfSU5DX1NFTCh4KQlSRUdfUFVUKCh4KSwgIDMsICAyKQorI2Rl
ZmluZSBQSUdFT05fMTJfMF9QT0xfQUNUSVZFX0xPVwlCSVQoMSkKKyNkZWZpbmUgUElHRU9OXzEy
XzBfRU4JCQlCSVQoMCkKKworI2RlZmluZSBQSUdFT05fMTJfMV9TRVRfQ0xSX0NOVCh4KQlSRUdf
UFVUKCh4KSwgMzEsIDE2KQorI2RlZmluZSBQSUdFT05fMTJfMV9TRVRfU0VUX0NOVCh4KQlSRUdf
UFVUKCh4KSwgMTUsICAwKQorCiAjZGVmaW5lIE1YU0ZCX01JTl9YUkVTCQkJMTIwCiAjZGVmaW5l
IE1YU0ZCX01JTl9ZUkVTCQkJMTIwCiAjZGVmaW5lIE1YU0ZCX01BWF9YUkVTCQkJMHhmZmZmCi0t
IAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK

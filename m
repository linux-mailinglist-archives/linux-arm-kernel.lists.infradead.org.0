Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1C0A18AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrOdHf7M/PTIQ/r3UK7vulrFjKJmupshAE1G0iR24Y8=; b=oChgRb769AANCV
	XKI/vQHMx/RvB3XWXOctWHjWXz1B0EsgDYaHO6MoKzSGrfe7weNOhvhOhrdR+F0pYMh5LN44YM7j0
	aSsLLZE6uW/pVbwSaFLn40yZwrIFjr0QJMNuhJeJVZQkbMxwKMmO4LnJfe04iRdhcxM/F33Lo/SAX
	UxU7ydxSlJDjgGsvMehYOtv1uRqIiVONN/Qk5AEVjVJVIxmV7KSwf3/xuCCQMcdl1Ps3u5EDdoEre
	ENlM2i9Tay+VMsiuEChJ+N/Ejd7KXs+IZsDiuLQQB97CdWcJz7ahmDW6kLwh/gArPHopGzHNkBef/
	lchmQ7i5qa3GtIIQSq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Igg-0003bb-14; Thu, 29 Aug 2019 11:33:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdN-0000my-9P
 for linux-arm-kernel@bombadil.infradead.org; Thu, 29 Aug 2019 11:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x/WMBR81zzkKnrA0fg1pEAj7gWi14AxlqDxwg/QGWDM=; b=VvDSlAMzYdKaxiCMxaUlGfsOSw
 +4LseucPkG6Qg1MwRkNO0HRWMJ1+HRAzXGLN1hLP8wNcp86klHT7vfdjhW9ngY9WWelKGcme3jwAS
 ctfcmZjMTXbLMghADS/3SV0ur2pI1i1R069YrDozbO7bGSbmn63yXcWkKhdKKSaP4WizuZZG1GL3R
 hl6zZxvFjL8/aXh5iWqezF9XyisXGXIFJnoJ22jZ5tCevbooOxTcfBxv3D8psm3rw2aW0c3EtV6Sb
 ZZ2jt44IsJsQyuQ6iJFDnDmtVQoXvX3ABb9B/um7eyl9OeFM960poyO1+l+uaoz6Vr8ZI5O8usU19
 WcAJP4Tg==;
Received: from inva021.nxp.com ([92.121.34.21])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdI-0001wb-Lr
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3EDD820032E;
 Thu, 29 Aug 2019 13:30:26 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3191E200073;
 Thu, 29 Aug 2019 13:30:26 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5CAD320613;
 Thu, 29 Aug 2019 13:30:25 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 10/14] drm/mxsfb: Update mxsfb to support LCD reset
Date: Thu, 29 Aug 2019 14:30:11 +0300
Message-Id: <1567078215-31601-11-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGVMQ0RJRiBjb250cm9sbGVyIGhhcyBjb250cm9sIHBpbiBmb3IgdGhlIGV4dGVybmFsIExD
RCByZXNldCBwaW4uCkFkZCBzdXBwb3J0IGZvciBpdCBhbmQgYXNzZXJ0IHRoaXMgcGluIGluIGVu
YWJsZSBhbmQgZGUtYXNzZXJ0IGl0IGluCmRpc2FibGUuCgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQg
Q2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+ClRlc3RlZC1ieTogR3VpZG8gR8O8bnRoZXIg
PGFneEBzaWd4Y3B1Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5j
IHwgMTQgKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmgg
fCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCmluZGV4IDFiZTI5ZjUuLmE0YmEzNjggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwpAQCAtMjI0LDkgKzIyNCwxMiBAQCBzdGF0aWMg
dm9pZCBteHNmYl9lbmFibGVfY29udHJvbGxlcihzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14
c2ZiKQogCQljbGtfcHJlcGFyZV9lbmFibGUobXhzZmItPmNsa19kaXNwX2F4aSk7CiAJY2xrX3By
ZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGspOwogCi0JaWYgKG14c2ZiLT5kZXZkYXRhLT5pcHZlcnNp
b24gPj0gNCkKKwlpZiAobXhzZmItPmRldmRhdGEtPmlwdmVyc2lvbiA+PSA0KSB7CiAJCXdyaXRl
bChDVFJMMl9PVVRTVEFORElOR19SRVFTKFJFUV8xNiksCiAJCSAgICAgICBteHNmYi0+YmFzZSAr
IExDRENfVjRfQ1RSTDIgKyBSRUdfU0VUKTsKKwkJLyogQXNzZXJ0IExDRCBSZXNldCBiaXQgKi8K
KwkJd3JpdGVsKENUUkwyX0xDRF9SRVNFVCwgbXhzZmItPmJhc2UgKyBMQ0RDX1Y0X0NUUkwyICsg
UkVHX1NFVCk7CisJfQogCiAJLyogSWYgaXQgd2FzIGRpc2FibGVkLCByZS1lbmFibGUgdGhlIG1v
ZGUgYWdhaW4gKi8KIAl3cml0ZWwoQ1RSTF9ET1RDTEtfTU9ERSwgbXhzZmItPmJhc2UgKyBMQ0RD
X0NUUkwgKyBSRUdfU0VUKTsKQEAgLTI0NCwxMSArMjQ3LDE0IEBAIHN0YXRpYyB2b2lkIG14c2Zi
X2Rpc2FibGVfY29udHJvbGxlcihzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUgKm14c2ZiKQogewog
CXUzMiByZWc7CiAKLQlpZiAobXhzZmItPmRldmRhdGEtPmlwdmVyc2lvbiA+PSA0KQorCXdyaXRl
bChDVFJMX1JVTiwgbXhzZmItPmJhc2UgKyBMQ0RDX0NUUkwgKyBSRUdfQ0xSKTsKKworCWlmICht
eHNmYi0+ZGV2ZGF0YS0+aXB2ZXJzaW9uID49IDQpIHsKIAkJd3JpdGVsKENUUkwyX09VVFNUQU5E
SU5HX1JFUVMoMHg3KSwKIAkJICAgICAgIG14c2ZiLT5iYXNlICsgTENEQ19WNF9DVFJMMiArIFJF
R19DTFIpOwotCi0Jd3JpdGVsKENUUkxfUlVOLCBteHNmYi0+YmFzZSArIExDRENfQ1RSTCArIFJF
R19DTFIpOworCQkvKiBEZS1hc3NlcnQgTENEIFJlc2V0IGJpdCAqLworCQl3cml0ZWwoQ1RSTDJf
TENEX1JFU0VULCBteHNmYi0+YmFzZSArIExDRENfVjRfQ1RSTDIgKyBSRUdfQ0xSKTsKKwl9CiAK
IAkvKgogCSAqIEV2ZW4gaWYgd2UgZGlzYWJsZSB0aGUgY29udHJvbGxlciBoZXJlLCBpdCB3aWxs
IHN0aWxsIGNvbnRpbnVlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
cmVncy5oIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX3JlZ3MuaAppbmRleCBkYzRkYWEw
Li4wZjYzYmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfcmVncy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmgKQEAgLTEwOCw2ICsxMDgs
OCBAQAogI2RlZmluZSBDVFJMMl9MSU5FX1BBVFRFUk5fQkdSCTUKICNkZWZpbmUgQ1RSTDJfTElO
RV9QQVRURVJOX0NMUgk3CiAKKyNkZWZpbmUgQ1RSTDJfTENEX1JFU0VUCQkJQklUKDApCisKICNk
ZWZpbmUgVFJBTlNGRVJfQ09VTlRfU0VUX1ZDT1VOVCh4KQlSRUdfUFVUKCh4KSwgMzEsIDE2KQog
I2RlZmluZSBUUkFOU0ZFUl9DT1VOVF9HRVRfVkNPVU5UKHgpCVJFR19HRVQoKHgpLCAzMSwgMTYp
CiAjZGVmaW5lIFRSQU5TRkVSX0NPVU5UX1NFVF9IQ09VTlQoeCkJUkVHX1BVVCgoeCksIDE1LCAw
KQotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==

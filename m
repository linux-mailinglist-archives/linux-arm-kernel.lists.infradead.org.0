Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A029BA18A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SikYn/iiRGBkK7+MhkioRtNscApu1vMBCYY95P28etw=; b=WQ4eAL/8KsULbT
	YMEutMhBqTbVKVwGqqvENeMHGPe8xqseqeacBH0FLM/oacTmUaWzFdANQhLUxP6ZzzBJ7h63FLLMN
	9O/PiiUSOlvShytgc0F/7Wf0uY8KML0OTf4gGwmWB4x8MYLYLjPkkfDR+EsQr7vFYZpaPaN4OerQc
	VQThNn3GA+LzsH3NpdJQ31X93cqbNQXIoyZjKC+v2Aa7kugdfnSgsQ6GWOLxE7DZIs800Avb5XmUa
	tDdsO++O9PdqTVqMdlpNmCO8OOstCFe4nLecWhdcIJLXHuNyGYenN0ke+xk/RoXXf3k8gt4z5hCqM
	Mdh+2RKn/qUQpZbhhHRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IeK-0001Rm-1i; Thu, 29 Aug 2019 11:31:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdC-0000bM-QJ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A18BA200330;
 Thu, 29 Aug 2019 13:30:21 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9440C200073;
 Thu, 29 Aug 2019 13:30:21 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E65AA20613;
 Thu, 29 Aug 2019 13:30:20 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 04/14] drm/mxsfb: Reset vital registers for a proper
 initialization
Date: Thu, 29 Aug 2019 14:30:05 +0300
Message-Id: <1567078215-31601-5-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043023_002125_56F41E95 
X-CRM114-Status: UNSURE (   9.97  )
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
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29tZSBvZiB0aGUgcmVnaXN0ZXJzLCBsaWtlIExDRENfQ1RSTCwgQ1RSTDJfT1VUU1RBTkRJTkdf
UkVRUyBhbmQKQ1RSTDFfUkVDT1ZFUllfT05fVU5ERVJGTE9XIG5lZWRzIHRvIGJlIHByb3Blcmx5
IGNsZWFyZWQvaW5pdGlhbGl6ZWQKZm9yIGEgYmV0dGVyIHN0YXJ0IGFuZCBzdG9wIHJvdXRpbmUu
CgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+ClRl
c3RlZC1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIHwgMTIgKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9t
eHNmYl9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCmluZGV4IGI2
OWFjZTguLjVlNDRmNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9j
cnRjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwpAQCAtMTI3LDYg
KzEyNywxMCBAQCBzdGF0aWMgdm9pZCBteHNmYl9lbmFibGVfY29udHJvbGxlcihzdHJ1Y3QgbXhz
ZmJfZHJtX3ByaXZhdGUgKm14c2ZiKQogCQljbGtfcHJlcGFyZV9lbmFibGUobXhzZmItPmNsa19k
aXNwX2F4aSk7CiAJY2xrX3ByZXBhcmVfZW5hYmxlKG14c2ZiLT5jbGspOwogCisJaWYgKG14c2Zi
LT5kZXZkYXRhLT5pcHZlcnNpb24gPj0gNCkKKwkJd3JpdGVsKENUUkwyX09VVFNUQU5ESU5HX1JF
UVMoUkVRXzE2KSwKKwkJICAgICAgIG14c2ZiLT5iYXNlICsgTENEQ19WNF9DVFJMMiArIFJFR19T
RVQpOworCiAJLyogSWYgaXQgd2FzIGRpc2FibGVkLCByZS1lbmFibGUgdGhlIG1vZGUgYWdhaW4g
Ki8KIAl3cml0ZWwoQ1RSTF9ET1RDTEtfTU9ERSwgbXhzZmItPmJhc2UgKyBMQ0RDX0NUUkwgKyBS
RUdfU0VUKTsKIApAQCAtMTM2LDEyICsxNDAsMTkgQEAgc3RhdGljIHZvaWQgbXhzZmJfZW5hYmxl
X2NvbnRyb2xsZXIoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYikKIAl3cml0ZWwocmVn
LCBteHNmYi0+YmFzZSArIExDRENfVkRDVFJMNCk7CiAKIAl3cml0ZWwoQ1RSTF9SVU4sIG14c2Zi
LT5iYXNlICsgTENEQ19DVFJMICsgUkVHX1NFVCk7CisJd3JpdGVsKENUUkwxX1JFQ09WRVJZX09O
X1VOREVSRkxPVywgbXhzZmItPmJhc2UgKyBMQ0RDX0NUUkwxICsgUkVHX1NFVCk7CiB9CiAKIHN0
YXRpYyB2b2lkIG14c2ZiX2Rpc2FibGVfY29udHJvbGxlcihzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZh
dGUgKm14c2ZiKQogewogCXUzMiByZWc7CiAKKwlpZiAobXhzZmItPmRldmRhdGEtPmlwdmVyc2lv
biA+PSA0KQorCQl3cml0ZWwoQ1RSTDJfT1VUU1RBTkRJTkdfUkVRUygweDcpLAorCQkgICAgICAg
bXhzZmItPmJhc2UgKyBMQ0RDX1Y0X0NUUkwyICsgUkVHX0NMUik7CisKKwl3cml0ZWwoQ1RSTF9S
VU4sIG14c2ZiLT5iYXNlICsgTENEQ19DVFJMICsgUkVHX0NMUik7CisKIAkvKgogCSAqIEV2ZW4g
aWYgd2UgZGlzYWJsZSB0aGUgY29udHJvbGxlciBoZXJlLCBpdCB3aWxsIHN0aWxsIGNvbnRpbnVl
CiAJICogdW50aWwgaXRzIEZJRk9zIGFyZSBydW5uaW5nIG91dCBvZiBkYXRhCkBAIC0yOTUsNiAr
MzA2LDcgQEAgdm9pZCBteHNmYl9jcnRjX2VuYWJsZShzdHJ1Y3QgbXhzZmJfZHJtX3ByaXZhdGUg
Km14c2ZiKQogCWRtYV9hZGRyX3QgcGFkZHI7CiAKIAlteHNmYl9lbmFibGVfYXhpX2NsayhteHNm
Yik7CisJd3JpdGVsKDAsIG14c2ZiLT5iYXNlICsgTENEQ19DVFJMKTsKIAlteHNmYl9jcnRjX21v
ZGVfc2V0X25vZmIobXhzZmIpOwogCiAJLyogV3JpdGUgY3VyX2J1ZiBhcyB3ZWxsIHRvIGF2b2lk
IGFuIGluaXRpYWwgY29ycnVwdCBmcmFtZSAqLwotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

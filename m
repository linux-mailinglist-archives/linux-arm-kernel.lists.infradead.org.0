Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB784A18A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoNWLaCQlq7+JpPLW8/4RukcWoD/2zJmmIcfPMDrL/A=; b=ZnxR41RmFeOoU0
	AMocSn/3buxCO7fuZ+mIH5WiMXWhZPnJwUbP/cal+QnWLC0fWpIQZRDBhABUVWn42QQoXjbCeLZAZ
	CjrRC54wnWtrmdS5GMfBXuOHa8rdM6vePF8J8d7UqPaYSOtMQ/WFPhG4z43vqIzGfFnIThScqbdAy
	fO0PG4+fPH1CS8Ie0+S25lkyF8w+4EOXZBhI66+7thnrjS0x5pFtKmDWu76kHssolgZVSoW+eTdI0
	Z22F7CwgV4p2m1hUMcwHRPR6lh/r+qmK6/0EsB2bKys+60sRpvKiAhMVLgUJJh5w3XR/m6LexFuPB
	l3E2lJlcU6c8EH+ne4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ife-0002d1-MH; Thu, 29 Aug 2019 11:32:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdJ-0000j2-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 344F81A015C;
 Thu, 29 Aug 2019 13:30:28 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 318A31A0010;
 Thu, 29 Aug 2019 13:30:28 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 318D020613;
 Thu, 29 Aug 2019 13:30:27 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 12/14] drm/mxsfb: Clear OUTSTANDING_REQS bits
Date: Thu, 29 Aug 2019 14:30:13 +0300
Message-Id: <1567078215-31601-13-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043029_802074_EFF057EF 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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

Qml0IDIxIGNhbiBhbHRlciB0aGUgQ1RSTDJfT1VUU1RBTkRJTkdfUkVRUyB2YWx1ZSByaWdodCBh
ZnRlciB0aGUgZUxDRElGCmlzIGVuYWJsZWQsIHNpbmNlIGl0IGNvbWVzIHVwIHdpdGggZGVmYXVs
dCB2YWx1ZSBvZiAxICh0aGlzIGJlaGF2aW91cgpoYXMgYmVlbiBzZWVuIG9uIHNvbWUgaW14OCBw
bGF0Zm9ybXMpLgpJbiBvcmRlciB0byBmaXggdGhpcywgY2xlYXIgQ1RSTDJfT1VUU1RBTkRJTkdf
UkVRUyBiaXRzIGJlZm9yZSBzZXR0aW5nCml0cyB2YWx1ZS4KClNpZ25lZC1vZmYtYnk6IFJvYmVy
dCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KVGVzdGVkLWJ5OiBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRj
LmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJt
L214c2ZiL214c2ZiX2NydGMuYwppbmRleCBlNzI3ZjVlLi5hMTJmNTNkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
eHNmYi9teHNmYl9jcnRjLmMKQEAgLTIyNSw2ICsyMjUsMTMgQEAgc3RhdGljIHZvaWQgbXhzZmJf
ZW5hYmxlX2NvbnRyb2xsZXIoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYikKIAljbGtf
cHJlcGFyZV9lbmFibGUobXhzZmItPmNsayk7CiAKIAlpZiAobXhzZmItPmRldmRhdGEtPmlwdmVy
c2lvbiA+PSA0KSB7CisJCS8qCisJCSAqIE9uIHNvbWUgcGxhdGZvcm1zLCBiaXQgMjEgaXMgZGVm
YXVsdGVkIHRvIDEsIHdoaWNoIG1heSBhbHRlcgorCQkgKiB0aGUgYmVsb3cgc2V0dGluZy4gU28s
IHRvIG1ha2Ugc3VyZSB3ZSBoYXZlIHRoZSByaWdodCBzZXR0aW5nCisJCSAqIGNsZWFyIGFsbCB0
aGUgYml0cyBmb3IgQ1RSTDJfT1VUU1RBTkRJTkdfUkVRUy4KKwkJICovCisJCXdyaXRlbChDVFJM
Ml9PVVRTVEFORElOR19SRVFTKDB4NyksCisJCSAgICAgICBteHNmYi0+YmFzZSArIExDRENfVjRf
Q1RSTDIgKyBSRUdfQ0xSKTsKIAkJd3JpdGVsKENUUkwyX09VVFNUQU5ESU5HX1JFUVMoUkVRXzE2
KSwKIAkJICAgICAgIG14c2ZiLT5iYXNlICsgTENEQ19WNF9DVFJMMiArIFJFR19TRVQpOwogCQkv
KiBBc3NlcnQgTENEIFJlc2V0IGJpdCAqLwotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

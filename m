Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED3117A6F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1S/EjtA7JFaGLzyG6WkbbSoomKUj7+nfi93j/InayE=; b=BVBuHlBw598vye
	s4jqVoEd9DMkq45ZW8as7NXRQ8B/6oIkfyQnzPCrxZHPXKn9PbdvG4IkZdLRPf5ptCCW1OGzMP++n
	JPOL54mNm+zTNHZI2VmojkYisN9RvEpIfd0giAor7x9RBCHp+Fwv5bTEzt9rQ6ncDa8zEbZ1vYeLr
	sNHG/Y1NFHsnNEuKI7YiaLRpLTEavhHyE6YDcRlEKUDu50/STsu8rq3XzcfSrswb9XJaYYRIO321/
	KGPaF7XoX6urCh7Zv9oVj4vZC1p5FFZEF3kSOrpL/T4TuJz4/mA62TEvwmBd8Lm4nU2hVdtb3Hjz0
	0YSNmZSQ9I/xh5yg+ktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r3R-0006Jr-4O; Thu, 05 Mar 2020 14:00:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r2P-0004Lw-2G
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:59:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BBAAE200713;
 Thu,  5 Mar 2020 14:59:43 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AF47520070F;
 Thu,  5 Mar 2020 14:59:43 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1FCB42059D;
 Thu,  5 Mar 2020 14:59:43 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 5/5] arm64: dts: imx8mn: align name for crypto child nodes
Date: Thu,  5 Mar 2020 15:59:09 +0200
Message-Id: <20200305135909.8180-6-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305135909.8180-1-horia.geanta@nxp.com>
References: <20200305135909.8180-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_055945_241461_973A5A31 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogU2lsdmFubyBkaSBOaW5ubyA8c2lsdmFuby5kaW5pbm5vQG54cC5jb20+CgpjcnlwdG8g
Y2hpbGQgbm9kZXMgc2hvdWxkIHVzZSB0aGUgImpyIiBuYW1lICh3aXRob3V0IGFuIGluZGV4KSwK
YXMgaW5kaWNhdGVkIGluIHRoZSBEVCBiaW5kaW5nLgoKU2lnbmVkLW9mZi1ieTogU2lsdmFubyBk
aSBOaW5ubyA8c2lsdmFuby5kaW5pbm5vQG54cC5jb20+ClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdl
YW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtbi5kdHNpIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1uLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bW4uZHRzaQppbmRleCBmMjc3NTcyNDM3N2YuLmZmOWMxZWEzODEzMCAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kKQEAgLTU1NCwxOSArNTU0LDE5IEBACiAJCQkJ
CSA8JmNsayBJTVg4TU5fQ0xLX0lQR19ST09UPjsKIAkJCQljbG9jay1uYW1lcyA9ICJhY2xrIiwg
ImlwZyI7CiAKLQkJCQlzZWNfanIwOiBqcjBAMTAwMCB7CisJCQkJc2VjX2pyMDoganJAMTAwMCB7
CiAJCQkJCSBjb21wYXRpYmxlID0gImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CiAJCQkJCSByZWcg
PSA8MHgxMDAwIDB4MTAwMD47CiAJCQkJCSBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTA1IElSUV9U
WVBFX0xFVkVMX0hJR0g+OwogCQkJCX07CiAKLQkJCQlzZWNfanIxOiBqcjFAMjAwMCB7CisJCQkJ
c2VjX2pyMToganJAMjAwMCB7CiAJCQkJCSBjb21wYXRpYmxlID0gImZzbCxzZWMtdjQuMC1qb2It
cmluZyI7CiAJCQkJCSByZWcgPSA8MHgyMDAwIDB4MTAwMD47CiAJCQkJCSBpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTA2IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQkJCX07CiAKLQkJCQlzZWNfanIy
OiBqcjJAMzAwMCB7CisJCQkJc2VjX2pyMjoganJAMzAwMCB7CiAJCQkJCSBjb21wYXRpYmxlID0g
ImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CiAJCQkJCSByZWcgPSA8MHgzMDAwIDB4MTAwMD47CiAJ
CQkJCSBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE0IElSUV9UWVBFX0xFVkVMX0hJR0g+OwotLSAK
Mi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AA1A1897
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuyx/PnAv/1YGOoqNS7SpBfoXUaqCIqFLTuovknaWXI=; b=ev9N8B4PoYRx04
	lHtyRY4yi6XIEzQrofa4MTuy+0eERmj86NayA0rQi+UJYNsy7rwENVOI7h4UmcgyYqscE3JXUZtZG
	OZKQQW/KhhprWbA1qM8ISIHpz/jdlxB6tnMhLL7xymCfZiBZ5DgYdSUbaBJ+5R91Q3ysdVFnj6+qL
	2rhECvkuoZ0GmnqbjZUkYXYGwLIuRykpfyWd/9eJqv99iRjP/Rb6pRLkZWsF8xp7fwFgw8ZEKR23Q
	21Wu1ubcmLd4BdL8zWSAgq4RmQyrBukbKf4JJjzpdXrEgoF7dAR17mlOg1PZJELxme6gmDltXyM1F
	bAa5KdoZi/4GSzAjSJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Idl-0000uV-F8; Thu, 29 Aug 2019 11:30:57 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdC-0000ak-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E2E961A032E;
 Thu, 29 Aug 2019 13:30:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D6C571A032B;
 Thu, 29 Aug 2019 13:30:20 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3432D20613;
 Thu, 29 Aug 2019 13:30:20 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 03/14] drm/mxsfb: Add defines for the rest of registers
Date: Thu, 29 Aug 2019 14:30:04 +0300
Message-Id: <1567078215-31601-4-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043022_294285_9B7AA4FE 
X-CRM114-Status: UNSURE (   8.85  )
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

U29tZSBvZiB0aGUgZXhpc3RpbmcgcmVnaXN0ZXJzIGluIHRoaXMgY29udHJvbGxlciBhcmUgbm90
IGRlZmluZWQsIGJ1dAphbHNvIG5vdCB1c2VkLiBBZGQgdGhlbSB0byB0aGUgcmVnaXN0ZXIgZGVm
aW5pdGlvbnMsIHNvIHRoYXQgdGhleSBjYW4gYmUKZWFzaWx5IHVzZWQgaW4gZnV0dXJlIGltcHJv
dmVtZW50cyBvciBmaXhlcy4KClNpZ25lZC1vZmYtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5j
aGlyYXNAbnhwLmNvbT4KVGVzdGVkLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3Jn
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmggfCAxNSArKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL214c2ZiL214c2ZiX3JlZ3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9t
eHNmYl9yZWdzLmgKaW5kZXggOTMyZDdlYS4uNzE0MjZhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL214c2ZiL214c2ZiX3JlZ3MuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhz
ZmJfcmVncy5oCkBAIC0xNCwxOSArMTQsMzEgQEAKIAogI2RlZmluZSBMQ0RDX0NUUkwJCQkweDAw
CiAjZGVmaW5lIExDRENfQ1RSTDEJCQkweDEwCisjZGVmaW5lIExDRENfVjRfQ1RSTDIJCQkweDIw
CiAjZGVmaW5lIExDRENfVjNfVFJBTlNGRVJfQ09VTlQJCTB4MjAKICNkZWZpbmUgTENEQ19WNF9U
UkFOU0ZFUl9DT1VOVAkJMHgzMAogI2RlZmluZSBMQ0RDX1Y0X0NVUl9CVUYJCQkweDQwCiAjZGVm
aW5lIExDRENfVjRfTkVYVF9CVUYJCTB4NTAKICNkZWZpbmUgTENEQ19WM19DVVJfQlVGCQkJMHgz
MAogI2RlZmluZSBMQ0RDX1YzX05FWFRfQlVGCQkweDQwCisjZGVmaW5lIExDRENfVElNSU5HCQkJ
MHg2MAogI2RlZmluZSBMQ0RDX1ZEQ1RSTDAJCQkweDcwCiAjZGVmaW5lIExDRENfVkRDVFJMMQkJ
CTB4ODAKICNkZWZpbmUgTENEQ19WRENUUkwyCQkJMHg5MAogI2RlZmluZSBMQ0RDX1ZEQ1RSTDMJ
CQkweGEwCiAjZGVmaW5lIExDRENfVkRDVFJMNAkJCTB4YjAKKyNkZWZpbmUgTENEQ19EVklDVFJM
MAkJCTB4YzAKKyNkZWZpbmUgTENEQ19EVklDVFJMMQkJCTB4ZDAKKyNkZWZpbmUgTENEQ19EVklD
VFJMMgkJCTB4ZTAKKyNkZWZpbmUgTENEQ19EVklDVFJMMwkJCTB4ZjAKKyNkZWZpbmUgTENEQ19E
VklDVFJMNAkJCTB4MTAwCisjZGVmaW5lIExDRENfVjRfREFUQQkJCTB4MTgwCisjZGVmaW5lIExD
RENfVjNfREFUQQkJCTB4MWIwCiAjZGVmaW5lIExDRENfVjRfREVCVUcwCQkJMHgxZDAKICNkZWZp
bmUgTENEQ19WM19ERUJVRzAJCQkweDFmMAorI2RlZmluZSBMQ0RDX0FTX0NUUkwJCQkweDIxMAor
I2RlZmluZSBMQ0RDX0FTX0JVRgkJCTB4MjIwCisjZGVmaW5lIExDRENfQVNfTkVYVF9CVUYJCTB4
MjMwCiAKICNkZWZpbmUgQ1RSTF9TRlRSU1QJCQkoMSA8PCAzMSkKICNkZWZpbmUgQ1RSTF9DTEtH
QVRFCQkJKDEgPDwgMzApCkBAIC00NSwxMiArNTcsMTUgQEAKICNkZWZpbmUgQ1RSTF9ERjI0CQkJ
KDEgPDwgMSkKICNkZWZpbmUgQ1RSTF9SVU4JCQkoMSA8PCAwKQogCisjZGVmaW5lIENUUkwxX1JF
Q09WRVJZX09OX1VOREVSRkxPVwkoMSA8PCAyNCkKICNkZWZpbmUgQ1RSTDFfRklGT19DTEVBUgkJ
KDEgPDwgMjEpCiAjZGVmaW5lIENUUkwxX1NFVF9CWVRFX1BBQ0tBR0lORyh4KQkoKCh4KSAmIDB4
ZikgPDwgMTYpCiAjZGVmaW5lIENUUkwxX0dFVF9CWVRFX1BBQ0tBR0lORyh4KQkoKCh4KSA+PiAx
NikgJiAweGYpCiAjZGVmaW5lIENUUkwxX0NVUl9GUkFNRV9ET05FX0lSUV9FTgkoMSA8PCAxMykK
ICNkZWZpbmUgQ1RSTDFfQ1VSX0ZSQU1FX0RPTkVfSVJRCSgxIDw8IDkpCiAKKyNkZWZpbmUgQ1RS
TDJfT1VUU1RBTkRJTkdfUkVRU19fUkVRXzE2CQkoNCA8PCAyMSkKKwogI2RlZmluZSBUUkFOU0ZF
Ul9DT1VOVF9TRVRfVkNPVU5UKHgpCSgoKHgpICYgMHhmZmZmKSA8PCAxNikKICNkZWZpbmUgVFJB
TlNGRVJfQ09VTlRfR0VUX1ZDT1VOVCh4KQkoKCh4KSA+PiAxNikgJiAweGZmZmYpCiAjZGVmaW5l
IFRSQU5TRkVSX0NPVU5UX1NFVF9IQ09VTlQoeCkJKCh4KSAmIDB4ZmZmZikKLS0gCjIuNy40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=

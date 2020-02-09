Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B211D156CBF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 22:31:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aCBw0xUD6O2bhdiBgpPC96gTnQR1a0C6WibysAT8+K0=; b=ZK6IHIvfkcVCxZ
	SY9oORmmcSHwgORpru90X5EF/1aq/kzvTLnmpjmT6fgLSExuAr5sOL7Ec0+w7EzgOD3CqfXdk3Urj
	ERdRPwSZIMujukoRy3d4TDgRfGRUzhOI14CdTJjpllff5g7N3m3fyeroIKwTcUYuS8tuUuj0TkI7M
	v5/Dxq0mXLtu03HbziKMQSlfDPsqShIlh7AzAYk7ZWIZti7MUsiIn9BD3t+fvTGmJjVzwmZXL7tBP
	26/xcsq+iCS6LokfxYRliPwz2iNwrlChJSXwiSGdEGago3Myx9pRYBKwPIDiVhydnZ5ohfZ6kSqAw
	0Wxhon6RNhxSQ+3aiFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0uAy-0002Hc-Dr; Sun, 09 Feb 2020 21:31:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0uAo-0002Gg-2n
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 21:31:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j0uAe-0006zK-9R; Sun, 09 Feb 2020 22:31:16 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j0uAb-0005Km-N4; Sun, 09 Feb 2020 22:31:13 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] pwm: imx27: fix clk handling in pwm_imx27_apply()
Date: Sun,  9 Feb 2020 22:31:06 +0100
Message-Id: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_133126_497916_1AC20BA7 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHdtX2lteDI3X2FwcGx5KCkgZW5hYmxlcyB0aGUgY2xvY2tzIGlmIHRoZSBwcmV2aW91cyBQV00g
c3RhdGUgd2FzCmRpc2FibGVkLiBHaXZlbiB0aGF0IHRoZSBjbG9ja3MgYXJlIHN1cHBvc2VkIHRv
IGJlIGxlZnQgb24gaWZmIHRoZSBQV00KaXMgcnVubmluZywgdGhlIGRlY2lzaW9uIHRvIGRpc2Fi
bGUgdGhlIGNsb2NrcyBhdCB0aGUgZW5kIG9mIHRoZQpmdW5jdGlvbiBtdXN0IG5vdCBkZXBlbmQg
b24gdGhlIHByZXZpb3VzIHN0YXRlLgoKV2l0aG91dCB0aGlzIGZpeCB0aGUgZW5hYmxlIGNvdW50
IG9mIHRoZSB0d28gYWZmZWN0ZWQgY2xvY2tzIGluY3JlYXNlcwpieSBvbmUgd2hlbmV2ZXIgcHdt
X2FwcGx5IGNoYW5nZXMgZnJvbSBvbmUgZGlzYWJsZWQgc3RhdGUgdG8gYW5vdGhlci4KCkZpeGVz
OiBiZDg4ZDMxOWFiZTkgKCJwd206IGlteDI3OiBVbmNvbmRpdGlvbmFsbHkgd3JpdGUgc3RhdGUg
dG8gaGFyZHdhcmUiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1pbXgyNy5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wd20vcHdtLWlteDI3LmMgYi9kcml2ZXJzL3B3bS9wd20taW14MjcuYwpp
bmRleCAzNWE3YWM0MjI2OWMuLjdlNWVkMDE1Mjk3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20v
cHdtLWlteDI3LmMKKysrIGIvZHJpdmVycy9wd20vcHdtLWlteDI3LmMKQEAgLTI4OSw3ICsyODks
NyBAQCBzdGF0aWMgaW50IHB3bV9pbXgyN19hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0
cnVjdCBwd21fZGV2aWNlICpwd20sCiAKIAl3cml0ZWwoY3IsIGlteC0+bW1pb19iYXNlICsgTVgz
X1BXTUNSKTsKIAotCWlmICghc3RhdGUtPmVuYWJsZWQgJiYgY3N0YXRlLmVuYWJsZWQpCisJaWYg
KCFzdGF0ZS0+ZW5hYmxlZCkKIAkJcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJlcGFyZShjaGlw
KTsKIAogCXJldHVybiAwOwotLSAKMi4yNC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

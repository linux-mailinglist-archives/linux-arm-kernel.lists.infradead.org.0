Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30FB1584AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+X9CGiG8kyRmm9VLh2dTsCSqnf2/mB5j7+i4UkL5rY=; b=oY/+v2iCufLEeg
	VWJCYXRnovryNjcpAWr8u0RLeXvPZ/qhN1b/5gueNezI3suPae1DpCnjV0gh0V7lhUEUFtgM1PHKM
	McYQuVv70ZhwaaWnBRV5ilWzE2+hdD8nv8Kl1F43vJxITPTK5YjaiVTfAISe75EZhTjR9ms6TrJk9
	x6TNhxy9w5mCQmBavUUMYnjS77I6mMwRZCL8KOjurq9hkqBljj/qV2tpIv3WILlT/ApenwmPxjwV5
	rbgtVPS6rcWJJqA+9ILfvlrr0WGRGum3bdX4e6sy1yUfbDNavaikJQ8xs1EonJnlVnW7YFAWiOlcw
	Ed7xFzFf7fflX5MeFnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GWo-00040A-FR; Mon, 10 Feb 2020 21:23:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GWI-0003bg-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:23:08 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWC-0000yK-HW; Mon, 10 Feb 2020 22:23:00 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWA-00042s-V8; Mon, 10 Feb 2020 22:22:58 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/3] pwm: imx27: Simplify helper function to enable and
 disable clocks
Date: Mon, 10 Feb 2020 22:22:38 +0100
Message-Id: <20200210212240.25513-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
References: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
 <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_132306_345422_F3B4C163 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHdtX2lteDI3X2Nsa19wcmVwYXJlX2VuYWJsZSgpIHRvb2sgYSBwb2ludGVyIHRvIGEgc3RydWN0
IHB3bV9jaGlwIGp1c3QKdG8gY29udmVydCBpdCB0byBhIHN0cnVjdCBwd21faW14MjdfY2hpcCBw
b2ludGVyIHdoaWxlIGFsbCBjYWxsZXJzCmFscmVhZHkgaGF2ZSB0aGUgbGF0dGVyLiBEaXR0byBm
b3IgcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJlcGFyZSgpLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3B3bS9wd20taW14MjcuYyB8IDE3ICsrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3B3bS9wd20taW14MjcuYyBiL2RyaXZlcnMvcHdtL3B3bS1pbXgyNy5jCmluZGV4IDdlNWVkMDE1
Mjk3Ny4uZTA0YWU1NjZiYmY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20taW14MjcuYwor
KysgYi9kcml2ZXJzL3B3bS9wd20taW14MjcuYwpAQCAtOTYsOSArOTYsOCBAQCBzdHJ1Y3QgcHdt
X2lteDI3X2NoaXAgewogCiAjZGVmaW5lIHRvX3B3bV9pbXgyN19jaGlwKGNoaXApCWNvbnRhaW5l
cl9vZihjaGlwLCBzdHJ1Y3QgcHdtX2lteDI3X2NoaXAsIGNoaXApCiAKLXN0YXRpYyBpbnQgcHdt
X2lteDI3X2Nsa19wcmVwYXJlX2VuYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXApCitzdGF0aWMg
aW50IHB3bV9pbXgyN19jbGtfcHJlcGFyZV9lbmFibGUoc3RydWN0IHB3bV9pbXgyN19jaGlwICpp
bXgpCiB7Ci0Jc3RydWN0IHB3bV9pbXgyN19jaGlwICppbXggPSB0b19wd21faW14MjdfY2hpcChj
aGlwKTsKIAlpbnQgcmV0OwogCiAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGlteC0+Y2xrX2lw
Zyk7CkBAIC0xMTQsMTAgKzExMyw4IEBAIHN0YXRpYyBpbnQgcHdtX2lteDI3X2Nsa19wcmVwYXJl
X2VuYWJsZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXApCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB2
b2lkIHB3bV9pbXgyN19jbGtfZGlzYWJsZV91bnByZXBhcmUoc3RydWN0IHB3bV9jaGlwICpjaGlw
KQorc3RhdGljIHZvaWQgcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJlcGFyZShzdHJ1Y3QgcHdt
X2lteDI3X2NoaXAgKmlteCkKIHsKLQlzdHJ1Y3QgcHdtX2lteDI3X2NoaXAgKmlteCA9IHRvX3B3
bV9pbXgyN19jaGlwKGNoaXApOwotCiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteC0+Y2xrX3Bl
cik7CiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteC0+Y2xrX2lwZyk7CiB9CkBAIC0xMzAsNyAr
MTI3LDcgQEAgc3RhdGljIHZvaWQgcHdtX2lteDI3X2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAg
KmNoaXAsCiAJdTY0IHRtcDsKIAlpbnQgcmV0OwogCi0JcmV0ID0gcHdtX2lteDI3X2Nsa19wcmVw
YXJlX2VuYWJsZShjaGlwKTsKKwlyZXQgPSBwd21faW14MjdfY2xrX3ByZXBhcmVfZW5hYmxlKGlt
eCk7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybjsKIApAQCAtMTc1LDcgKzE3Miw3IEBAIHN0YXRp
YyB2b2lkIHB3bV9pbXgyN19nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAogCXN0YXRl
LT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgcHdtX2Nsayk7CiAKIAlp
ZiAoIXN0YXRlLT5lbmFibGVkKQotCQlwd21faW14MjdfY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGNo
aXApOworCQlwd21faW14MjdfY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteCk7CiB9CiAKIHN0YXRp
YyB2b2lkIHB3bV9pbXgyN19zd19yZXNldChzdHJ1Y3QgcHdtX2NoaXAgKmNoaXApCkBAIC0yNTks
NyArMjU2LDcgQEAgc3RhdGljIGludCBwd21faW14MjdfYXBwbHkoc3RydWN0IHB3bV9jaGlwICpj
aGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCWlmIChjc3RhdGUuZW5hYmxlZCkgewogCQlw
d21faW14Mjdfd2FpdF9maWZvX3Nsb3QoY2hpcCwgcHdtKTsKIAl9IGVsc2UgewotCQlyZXQgPSBw
d21faW14MjdfY2xrX3ByZXBhcmVfZW5hYmxlKGNoaXApOworCQlyZXQgPSBwd21faW14MjdfY2xr
X3ByZXBhcmVfZW5hYmxlKGlteCk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCkBAIC0y
OTAsNyArMjg3LDcgQEAgc3RhdGljIGludCBwd21faW14MjdfYXBwbHkoc3RydWN0IHB3bV9jaGlw
ICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCXdyaXRlbChjciwgaW14LT5tbWlvX2Jh
c2UgKyBNWDNfUFdNQ1IpOwogCiAJaWYgKCFzdGF0ZS0+ZW5hYmxlZCkKLQkJcHdtX2lteDI3X2Ns
a19kaXNhYmxlX3VucHJlcGFyZShjaGlwKTsKKwkJcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJl
cGFyZShpbXgpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0zNjEsNyArMzU4LDcgQEAgc3RhdGljIGlu
dCBwd21faW14MjdfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlpbXgg
PSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKIAotCXB3bV9pbXgyN19jbGtfZGlzYWJsZV91
bnByZXBhcmUoJmlteC0+Y2hpcCk7CisJcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJlcGFyZShp
bXgpOwogCiAJcmV0dXJuIHB3bWNoaXBfcmVtb3ZlKCZpbXgtPmNoaXApOwogfQotLSAKMi4yNC4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=

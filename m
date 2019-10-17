Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85EBDB762
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EDAzby8BFaqukt5l9VrRM7r7+xDnydW6OmHaBArZZSo=; b=ZRMqUay0O/Ldb0
	MtW/9minuq26H8iQIyr1Wt9GGiJQvQ6m/R6pJsYqh82ZzDrR8cjo/Pav0eVFNMHM+szJ+WGlJMTyG
	3X9qP+3TkmWJGZgflxt28O0494nGEnCf0EV+AX3i2ciXFlrwgl5OGKEjuWZxy8nPcKRfGo+qhsjUY
	v+h2Jobucf1V0zxSoBquSAWQ/L1n9L1DCcKC4nXNyQ80NISIkRmHNvQz7IX8Ak+MgoGHzbOzK1oBM
	c/TlfOJklf4G+E7xWpr7X3PIdZfyL5i9b1Wn6mNI7lM0WhTq1HIDSTLT9cLpb3Vr3oP7uXdEotzzt
	dmhuMqvvphW3LDRqfFRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBM4-0006S8-Q3; Thu, 17 Oct 2019 19:22:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBLu-0006RM-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:22:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iLBLo-0004v9-45; Thu, 17 Oct 2019 21:22:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iLBLn-00031d-8z; Thu, 17 Oct 2019 21:22:19 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] pwm: bcm-iproc: prevent unloading the driver module while in
 use
Date: Thu, 17 Oct 2019 21:22:18 +0200
Message-Id: <20191017192218.9042-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_122226_520538_27228B49 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG93bmVyIG1lbWJlciBvZiBzdHJ1Y3QgcHdtX29wcyBtdXN0IGJlIHNldCB0byBUSElTX01P
RFVMRSB0bwppbmNyZWFzZSB0aGUgcmVmZXJlbmNlIGNvdW50IG9mIHRoZSBtb2R1bGUgc3VjaCB0
aGF0IHRoZSBtb2R1bGUgY2Fubm90CmJlIHJlbW92ZWQgd2hpbGUgaXRzIGNvZGUgaXMgaW4gdXNl
LgoKRml4ZXM6IGRhYTVhYmM0MWM4MCAoInB3bTogQWRkIHN1cHBvcnQgZm9yIEJyb2FkY29tIGlQ
cm9jIFBXTSBjb250cm9sbGVyIikKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tYmNtLWlw
cm9jLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcHdtL3B3bS1iY20taXByb2MuYyBiL2RyaXZlcnMvcHdtL3B3bS1iY20taXByb2Mu
YwppbmRleCA1NmMzOGNmYWU5MmMuLjFmODI5ZWRkOGVlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9w
d20vcHdtLWJjbS1pcHJvYy5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1iY20taXByb2MuYwpAQCAt
MTg3LDYgKzE4Nyw3IEBAIHN0YXRpYyBpbnQgaXByb2NfcHdtY19hcHBseShzdHJ1Y3QgcHdtX2No
aXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiBzdGF0aWMgY29uc3Qgc3RydWN0IHB3
bV9vcHMgaXByb2NfcHdtX29wcyA9IHsKIAkuYXBwbHkgPSBpcHJvY19wd21jX2FwcGx5LAogCS5n
ZXRfc3RhdGUgPSBpcHJvY19wd21jX2dldF9zdGF0ZSwKKwkub3duZXIgPSBUSElTX01PRFVMRSwK
IH07CiAKIHN0YXRpYyBpbnQgaXByb2NfcHdtY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3976E5F6F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ASSpd3D5ohmkEtUL/r6IyB/ouG/0rSWr80TscyKbAos=; b=JWlNc8PujYeptR
	GcsESKBMakl+GkAUSrB45Kvjb/tLAFYNL2G/w8wl65X3wMKNmczUKZSoYwECTOhLvAjIKEKXgENNG
	h5STXmPrO+/zkX1veySF+ocWO3x/b3sq5ACl1K/d1jMkQvT3i4NFI2sZmCTkA/72QLvziLLl8gn+g
	kKobloLwfQhOQl51R1qjJ2BZ1+VQdzx58uTj34L8deq3q3L2cIqXvmKFyeTF5/aipXvYZMiAyYHOP
	PSTc9PcMqFNsNNYwOTnUgSdm+BXRYdY9VUWOcKr1fGtsfMXxEv6M/C53PAwFimEH0JwTko6vJ5xON
	EcXuvahoavg4xLmx3CKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizUs-0008OV-L3; Thu, 04 Jul 2019 11:01:50 +0000
Received: from 8.mo173.mail-out.ovh.net ([46.105.46.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizUf-0008Ng-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 11:01:39 +0000
Received: from player698.ha.ovh.net (unknown [10.108.35.131])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id DC2E610C4B0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jul 2019 13:01:30 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id 8525378DC2D5;
 Thu,  4 Jul 2019 11:01:17 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name of
 I2C buses
Date: Thu,  4 Jul 2019 13:00:53 +0200
Message-Id: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15891232762363794563
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrfedvgdefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_040138_045816_7CA947D2 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.46.122 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QSBmZXcgYm9hcmRzIHNldCBjbG9jayBmcmVxdWVuY3kgb2YgdGhlaXIgSTJDIGJ1c2VzIHdpdGgK
ImNsb2NrX2ZyZXF1ZW5jeSIgcHJvcGVydHkuIFRoZSByaWdodCBwcm9wZXJ0eSBpcyAiY2xvY2st
ZnJlcXVlbmN5Ii4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3Rp
ZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwt
MTR4MTQtZXZrLmR0c2kgIHwgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLWdlYW0uZHRz
ICAgICAgICB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1pc2lvdC5kdHNpICAgICAg
fCAyICstCiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwtcGljby1ob2JiaXQuZHRzIHwgMiArLQog
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBpY28tcGkuZHRzICAgICB8IDQgKystLQogNSBmaWxl
cyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLTE0eDE0LWV2ay5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsLTE0eDE0LWV2ay5kdHNpCmluZGV4IDkyMDdkNWQwNzFmMS4uZDU1NmY3YzU0MWNl
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwtMTR4MTQtZXZrLmR0c2kKKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLTE0eDE0LWV2ay5kdHNpCkBAIC0xMTIsNyArMTEy
LDcgQEAKIH07CiAKICZpMmMyIHsKLQljbG9ja19mcmVxdWVuY3kgPSA8MTAwMDAwPjsKKwljbG9j
ay1mcmVxdWVuY3kgPSA8MTAwMDAwPjsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBp
bmN0cmwtMCA9IDwmcGluY3RybF9pMmMyPjsKIAlzdGF0dXMgPSAib2theSI7CmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwtZ2VhbS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9p
bXg2dWwtZ2VhbS5kdHMKaW5kZXggYmM3N2YyNmEyZjFkLi42MTU3YTA1OGZlZWMgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1nZWFtLmR0cworKysgYi9hcmNoL2FybS9ib290
L2R0cy9pbXg2dWwtZ2VhbS5kdHMKQEAgLTE1Niw3ICsxNTYsNyBAQAogfTsKIAogJmkyYzIgewot
CWNsb2NrX2ZyZXF1ZW5jeSA9IDwxMDAwMDA+OworCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+
OwogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZwaW5jdHJsX2ky
YzI+OwogCXN0YXR1cyA9ICJva2F5IjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZ1bC1pc2lvdC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLWlzaW90LmR0c2kKaW5k
ZXggMjEzZTgwMmJmMzVjLi4yM2U2ZTJlN2FjZTkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZ1bC1pc2lvdC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1pc2lv
dC5kdHNpCkBAIC0xNDgsNyArMTQ4LDcgQEAKIH07CiAKICZpMmMyIHsKLQljbG9ja19mcmVxdWVu
Y3kgPSA8MTAwMDAwPjsKKwljbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwPjsKIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGluY3RybF9pMmMyPjsKIAlzdGF0dXMg
PSAib2theSI7CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwtcGljby1ob2Ji
aXQuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBpY28taG9iYml0LmR0cwppbmRleCAz
OWVlZWRkYWMzOWUuLjA5ZjdmZmE5YWQ4YyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnVsLXBpY28taG9iYml0LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwtcGlj
by1ob2JiaXQuZHRzCkBAIC00Myw3ICs0Myw3IEBACiB9OwogCiAmaTJjMiB7Ci0JY2xvY2tfZnJl
cXVlbmN5ID0gPDEwMDAwMD47CisJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMD47CiAJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjMj47CiAJc3Rh
dHVzID0gIm9rYXkiOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBpY28t
cGkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBpY28tcGkuZHRzCmluZGV4IGRlMDcz
NTdiMjdmYy4uNmNkN2Q1ODc3ZDIwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2
dWwtcGljby1waS5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBpY28tcGkuZHRz
CkBAIC00Myw3ICs0Myw3IEBACiB9OwogCiAmaTJjMiB7Ci0JY2xvY2tfZnJlcXVlbmN5ID0gPDEw
MDAwMD47CisJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMD47CiAJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjMj47CiAJc3RhdHVzID0gIm9rYXki
OwpAQCAtNTgsNyArNTgsNyBAQAogfTsKIAogJmkyYzMgewotCWNsb2NrX2ZyZXF1ZW5jeSA9IDwx
MDAwMDA+OworCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+OwogCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZwaW5jdHJsX2kyYzM+OwogCXN0YXR1cyA9ICJva2F5
IjsKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK

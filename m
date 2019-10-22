Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CDBE04CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaXZeC5f/fAlGFp3ksYm45qnbAGhLcOsMfEmEL4mMqI=; b=r1oYrZdqjr9Nup
	FaYRa06XLI7lJwpAlarn5X4hHoJXYg9F/IsO9HJeLMV3hD0fwlikGw/2CXxVbuwLkvNFQGo0YuN1v
	P4drgycIgAd1lWjWkTTnm4ZgwZxDylcDcQIE7nBHOqmHTjlT+KodTrsVaY0tdIuWFi9mCNlay5zhW
	qm6IWQKftX8UGAZYu8juTJNhZ8Bb48WJhxh/NLyRf9On3AsS76wXkuV4rHf+x03lDfsU9OjAkRECg
	3NZPsPOziA8MLHDrSwJp6/rzLGOu2WS309p2U21wGPZaf5VQTUU0ScrCuFD2OWoWMlbVfv5K0O6QJ
	eqe8PoyYV/dSiuVsbvLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu5Q-0002NS-0R; Tue, 22 Oct 2019 13:20:32 +0000
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu4N-0000OM-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:19:29 +0000
Received: from player793.ha.ovh.net (unknown [10.109.143.209])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 31D9F1B030E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:19:22 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 4DA2BB3E4403;
 Tue, 22 Oct 2019 13:19:08 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 7/9] ARM: dts: imx6qdl-apf6dev: rename usb-h1-vbus regulator
 to 5V
Date: Tue, 22 Oct 2019 15:16:53 +0200
Message-Id: <20191022131655.25737-8-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 133419140173681733
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061927_794400_C1A27F46 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.181.248 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [87.98.181.248 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyByZWd1bGF0b3Igc3VwcGxpZXMgb3RoZXIgZGV2aWNlcyBhbmQgbm90IG9ubHkgdXNiIGhv
c3QxIHNvCnJlbmFtZSBpdC4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxz
ZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9p
bXg2cWRsLWFwZjZkZXYuZHRzaSB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1hcGY2ZGV2LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWFwZjZkZXYu
ZHRzaQppbmRleCAzMzFkNTVhZTlhYzkuLjkwNjczNTVkODU0MSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2ZGV2LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1hcGY2ZGV2LmR0c2kKQEAgLTc0LDExICs3NCwxMiBAQAogCQlyZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMw
MDAwMD47CiAJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCXZpbi1zdXBwbHkgPSA8JnJlZ181dj47
CiAJfTsKIAotCXJlZ191c2JoMV92YnVzOiByZWd1bGF0b3ItdXNiLWgxLXZidXMgeworCXJlZ181
djogcmVndWxhdG9yLTV2IHsKIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwotCQly
ZWd1bGF0b3ItbmFtZSA9ICJ1c2JfaDFfdmJ1cyI7CisJCXJlZ3VsYXRvci1uYW1lID0gIjVWIjsK
IAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CiAJCXJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDUwMDAwMDA+OwogCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwpAQCAtMTIzLDYg
KzEyNCw3IEBACiAmY2FuMiB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJs
LTAgPSA8JnBpbmN0cmxfZmxleGNhbjI+OworCXhjZWl2ZXItc3VwcGx5ID0gPCZyZWdfNXY+Owog
CXN0YXR1cyA9ICJva2F5IjsKIH07CiAKQEAgLTIyMyw3ICsyMjUsNyBAQAogfTsKIAogJnVzYmgx
IHsKLQl2YnVzLXN1cHBseSA9IDwmcmVnX3VzYmgxX3ZidXM+OworCXZidXMtc3VwcGx5ID0gPCZy
ZWdfNXY+OwogCXBoeV90eXBlID0gInV0bWkiOwogCXN0YXR1cyA9ICJva2F5IjsKIH07Ci0tIAoy
LjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

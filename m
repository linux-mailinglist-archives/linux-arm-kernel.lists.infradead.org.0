Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539B6E04D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0YShsvdIrwQf1k3+DmSzGMZ4CoVAfTsV25bKQkA/LE=; b=iuqp0YHmPJ+gVu
	cw49Hf+V8c3ZRdiYivc/FRGQ6cylbauhvMwE2OGWzS7QSJ7eufViKIywcMs2+r3ngFUAB6O+iaBhl
	R9Crhe2rqn56bujqE99AZb8AiUNZj3kB6lkQbln3meQBpDB3KwOKlFzzt/9ooAIPjveF2kzqF6gbE
	B38OHWKUH0mlRZ7kudfdGIXqTYYV2cY+BYnp5qguSZ7dM7pTCLAm0lzC3yOYpiUyYhBQaAb+Oogos
	jBje6EkWofR6InXQYgPxHhgzpGON8emNw8NerSKU1IqhbYxlvYsuMESorqk7o2XgIWt4kMjVnxntK
	At+zj7Dbgp+eyGCYaDHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu6Q-0003XW-Bg; Tue, 22 Oct 2019 13:21:34 +0000
Received: from 2.mo178.mail-out.ovh.net ([46.105.39.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu4n-0000oU-O2
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:19:56 +0000
Received: from player793.ha.ovh.net (unknown [10.109.160.11])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 7BF677BE90
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:19:49 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id A5AE2B3E4570;
 Tue, 22 Oct 2019 13:19:35 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 9/9] ARM: dts: imx6qdl-apf6dev: use DRM bindings
Date: Tue, 22 Oct 2019 15:16:55 +0200
Message-Id: <20191022131655.25737-10-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 141018965105529925
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061954_069862_B6D687FB 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.39.61 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVzY3JpYmUgdGhlIHBhcmFsbGVsIExDRCB1c2luZyBzaW1wbGUgcGFuZWwgZHJpdmVyLgoKU2ln
bmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJt
YWRldXMuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNmRldi5kdHNpIHwg
NTAgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9p
bXg2cWRsLWFwZjZkZXYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNmRldi5k
dHNpCmluZGV4IGY2MTcwODliZTljYy4uMGFhZTk1ODY0MGRiIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2cWRsLWFwZjZkZXYuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9p
bXg2cWRsLWFwZjZkZXYuZHRzaQpAQCAtMjEsMzMgKzIxLDI3IEBACiAKIAlkaXNwMCB7CiAJCWNv
bXBhdGlibGUgPSAiZnNsLGlteC1wYXJhbGxlbC1kaXNwbGF5IjsKLQkJaW50ZXJmYWNlLXBpeC1m
bXQgPSAiYmdyNjY2IjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKLQkJcGluY3RybC0w
ID0gPCZwaW5jdHJsX2lwdTFfZGlzcDE+OwotCi0JCWRpc3BsYXktdGltaW5ncyB7Ci0JCQlsdzcw
MCB7Ci0JCQkJY2xvY2stZnJlcXVlbmN5ID0gPDMzMDAwMDMzPjsKLQkJCQloYWN0aXZlID0gPDgw
MD47Ci0JCQkJdmFjdGl2ZSA9IDw0ODA+OwotCQkJCWhiYWNrLXBvcmNoID0gPDk2PjsKLQkJCQlo
ZnJvbnQtcG9yY2ggPSA8OTY+OwotCQkJCXZiYWNrLXBvcmNoID0gPDIwPjsKLQkJCQl2ZnJvbnQt
cG9yY2ggPSA8MjE+OwotCQkJCWhzeW5jLWxlbiA9IDw2ND47Ci0JCQkJdnN5bmMtbGVuID0gPDQ+
OwotCQkJCWhzeW5jLWFjdGl2ZSA9IDwxPjsKLQkJCQl2c3luYy1hY3RpdmUgPSA8MT47Ci0JCQkJ
ZGUtYWN0aXZlID0gPDE+OwotCQkJCXBpeGVsY2xrLWFjdGl2ZSA9IDwxPjsKLQkJCX07Ci0JCX07
CisJCXBpbmN0cmwtMCA9IDwmcGluY3RybF9pcHUxX2Rpc3AwPjsKKworCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJcG9ydEAwIHsKKwkJCXJlZyA9IDww
PjsKIAotCQlwb3J0IHsKIAkJCWRpc3BsYXlfaW46IGVuZHBvaW50IHsKIAkJCQlyZW1vdGUtZW5k
cG9pbnQgPSA8JmlwdTFfZGkwX2Rpc3AwPjsKIAkJCX07CiAJCX07CisKKwkJcG9ydEAxIHsKKwkJ
CXJlZyA9IDwxPjsKKworCQkJZGlzcGxheV9vdXQ6IGVuZHBvaW50IHsKKwkJCQlyZW1vdGUtZW5k
cG9pbnQgPSA8JnBhbmVsX2luPjsKKwkJCX07CisJCX07CiAJfTsKIAogCWdwaW8ta2V5cyB7CkBA
IC03Niw2ICs3MCwxOCBAQAogCQl9OwogCX07CiAKKwlwYW5lbCB7CisJCWNvbXBhdGlibGUgPSAi
YXJtYWRldXMsc3QwNzAwLWFkYXB0IjsKKwkJcG93ZXItc3VwcGx5ID0gPCZyZWdfM3Azdj47CisJ
CWJhY2tsaWdodCA9IDwmYmFja2xpZ2h0PjsKKworCQlwb3J0IHsKKwkJCXBhbmVsX2luOiBlbmRw
b2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZkaXNwbGF5X291dD47CisJCQl9OworCQl9
OworCX07CisKIAlyZWdfM3AzdjogcmVndWxhdG9yLTNwM3YgewogCQljb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRvci1uYW1lID0gIjNQM1YiOwpAQCAtMzUxLDcgKzM1
Nyw3IEBACiAJCT47CiAJfTsKIAotCXBpbmN0cmxfaXB1MV9kaXNwMTogaXB1MWRpc3AxZ3JwIHsK
KwlwaW5jdHJsX2lwdTFfZGlzcDA6IGlwdTFkaXNwMGdycCB7CiAJCWZzbCxwaW5zID0gPAogCQkJ
TVg2UURMX1BBRF9ESTBfRElTUF9DTEtfX0lQVTFfREkwX0RJU1BfQ0xLCTB4MTAwYjEKIAkJCU1Y
NlFETF9QQURfREkwX1BJTjE1X19JUFUxX0RJMF9QSU4xNQkJMHgxMDBiMQotLSAKMi4yMS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=

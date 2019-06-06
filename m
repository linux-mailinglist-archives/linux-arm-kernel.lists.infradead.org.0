Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545B7379FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gQyTToHMv14ilMYFI9JMqWIw7YFRA5pFnDTegGrqh7o=; b=KuaWcTNskyoE12
	Bw3TiOsemgrQvEF0WMi5gjpJPPm601ooNfUVEjO2fXPiCez2pLt8dbqpV5m04HyyUkppwk2/+Ppvf
	PHNAYEAiuIRQLgHlJX6dV5BtyVGvoNIgncwxLbN5kiXKbGIvs5UnUVjWt0HL7CwqIe3K4lPs30uhO
	gItpB+eIkxRHdfoyjjMut6g3yxr6NCMEgsB5Y7rip6f4UdUPF+SHialumPwGYuVhrwcX7L4n26ufz
	mFACa4wjSQlBKrDh3lkcpCf8CPR+7CPrvVeo4a46LlOw4hPcHe8hU2nHSfHPW8HdJL5d/SaN86GpL
	SbuwaQfIoH3POwTN1pSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvXh-0000Fv-RA; Thu, 06 Jun 2019 16:47:09 +0000
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvXa-0000Fc-U2
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:47:04 +0000
Received: from player759.ha.ovh.net (unknown [10.109.143.146])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 26EFD19E0C3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  6 Jun 2019 18:46:59 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player759.ha.ovh.net (Postfix) with ESMTPSA id 4051B69C160A;
 Thu,  6 Jun 2019 16:46:47 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/1] ARM: dts: imx6ul: Add PXP node
Date: Thu,  6 Jun 2019 18:46:42 +0200
Message-Id: <20190606164642.11539-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4864450547657430039
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeggedguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094703_356203_227463C7 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.53.149 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIFBYUCBub2RlIGZvciBpLk1YNlVML0wgU29DLgoKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGll
biBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KIGFyY2gv
YXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpICB8IDkgKysrKysrKysrCiBhcmNoL2FybS9ib290L2R0
cy9pbXg2dWxsLmR0c2kgfCA2ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2dWwuZHRzaQppbmRleCBmMTAwMTJkZTVlYjYuLmEzYzAwNTM3M2FlMSAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnVsLmR0c2kKQEAgLTk3MSw2ICs5NzEsMTUgQEAKIAkJCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwogCQkJfTsKIAorCQkJcHhwOiBweHBAMjFjYzAwMCB7CisJCQkJY29tcGF0aWJs
ZSA9ICJmc2wsaW14NnVsLXB4cCI7CisJCQkJcmVnID0gPDB4MDIxY2MwMDAgMHg0MDAwPjsKKwkJ
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9j
a3MgPSA8JmNsa3MgSU1YNlVMX0NMS19QWFA+OworCQkJCWNsb2NrLW5hbWVzID0gImF4aSI7CisJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJCX07CisKIAkJCXFzcGk6IHNwaUAyMWUwMDAwIHsK
IAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bGwuZHRzaQppbmRleCAyMmU0YTMwN2ZhNTkuLmIwMTdlOTI1YmQ4NyAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bGwuZHRzaQpAQCAtMzQsNiArMzQsMTIgQEAKIAljb21wYXRpYmxlID0gImZzbCxpbXg2
dWxsLW9jb3RwIiwgInN5c2NvbiI7CiB9OwogCismcHhwIHsKKwljb21wYXRpYmxlID0gImZzbCxp
bXg2dWxsLXB4cCI7CisJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDggSVJRX1RZUEVfTEVWRUxfSElH
SD4sCisJCSAgICAgPEdJQ19TUEkgMTggSVJRX1RZUEVfTEVWRUxfSElHSD47Cit9OworCiAmdXNk
aGMxIHsKIAljb21wYXRpYmxlID0gImZzbCxpbXg2dWxsLXVzZGhjIiwgImZzbCxpbXg2c3gtdXNk
aGMiOwogfTsKLS0gCjIuMTkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

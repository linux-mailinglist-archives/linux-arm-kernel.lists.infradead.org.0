Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE03E991BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yklPofN1SSqPPz39YNCM1Icd3+S0kffndeDJlyUIBs=; b=I/UOqubPm5M09o
	EjNCcbap8aknYBo0aXeNs6ODVUvK7Y1sIZwqnDibWU2AwABIki99pa7a1F4uZCpfLPtEJO5RxSKT+
	G8KBlxeJwDWwIWBL33M5HIl5hbJF7r86RY+gGKMHc3SaMF64fNwMzgmz9h5bAAjGQC9xQlpLYPNCV
	/MlouaArtU4824SMDDFFa9ZDTrE5ITdHzmdGkDFrEt+H7mryhr532vRnIHpWo5/j+7GYAcJMOniEv
	3agdr9uFukyr9CV/PSA+CwjOzw9HumqHK6xCEfngAqbGDf7eFiGRz5gCh9uIH+HUgq9Xj1v4Ww00/
	Hg1YUZl11avLTOCuCUYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kzK-0004jg-FM; Thu, 22 Aug 2019 11:10:42 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kz5-0004jH-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:10:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 74D5AFB03;
 Thu, 22 Aug 2019 13:10:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPGs_PT9whdo; Thu, 22 Aug 2019 13:10:24 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 739494014F; Thu, 22 Aug 2019 13:10:23 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: imx8mq: Add mux controller to iomuxc_gpr
Date: Thu, 22 Aug 2019 13:10:23 +0200
Message-Id: <fa3b1df7fc5e74f375df5de53061d1a93d154b51.1566471985.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1566471985.git.agx@sigxcpu.org>
References: <cover.1566471985.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_041027_600694_08AA895D 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG9ubHkgbXV4IGNvbnRyb2xzIHRoZSBNSVBJIERTSSBpbnB1dCBzZWxlY3Rpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgOSArKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCmluZGV4IDRmZGQ2MGYyYzUxZS4uM2YzNTk0ZDk0ODVj
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQpAQCAtNDQwLDgg
KzQ0MCwxNSBAQAogCQkJfTsKIAogCQkJaW9tdXhjX2dwcjogc3lzY29uQDMwMzQwMDAwIHsKLQkJ
CQljb21wYXRpYmxlID0gImZzbCxpbXg4bXEtaW9tdXhjLWdwciIsICJmc2wsaW14NnEtaW9tdXhj
LWdwciIsICJzeXNjb24iOworCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1pb211eGMtZ3By
IiwgImZzbCxpbXg2cS1pb211eGMtZ3ByIiwKKwkJCQkJICAgICAic3lzY29uIiwgInNpbXBsZS1t
ZmQiOwogCQkJCXJlZyA9IDwweDMwMzQwMDAwIDB4MTAwMDA+OworCisJCQkJbXV4OiBtdXgtY29u
dHJvbGxlciB7CisJCQkJCWNvbXBhdGlibGUgPSAibW1pby1tdXgiOworCQkJCQkjbXV4LWNvbnRy
b2wtY2VsbHMgPSA8MT47CisJCQkJCW11eC1yZWctbWFza3MgPSA8MHgzNCAweDAwMDAwMDA0Pjsg
LyogTUlQSV9NVVhfU0VMICovCisJCQkJfTsKIAkJCX07CiAKIAkJCW9jb3RwOiBvY290cC1jdHJs
QDMwMzUwMDAwIHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

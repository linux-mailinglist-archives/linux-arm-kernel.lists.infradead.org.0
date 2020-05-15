Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AFB1D4EB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aem3l5bhPRWABqrqK8sC8qykWnxePpuCkykDkFykOJQ=; b=ZwSpdQcNg04xXa
	GgeoqwxqyOWXp9fDyIvb6dkdq59TrkkCg+CLErjY9E/EQ7qyADFRDH47ZE7gig73UchNWlOHgJqT0
	JUkLBP8HauqQy1Ol1utWB6oZcQS0swwL3rJJXGrL27e+3g80sW7rLRhOq/oCRv3meo4SjQIWZr+0A
	hxXWo6+JKiG+vvjA7Fl9gC1NkYCFI46uxG9zRmElEKEH+zB5G7q4FMQqdupGwRNnCcnDd80bpLIz3
	I5yBpS3jv8v4dHpyoH3XxmoKhrlFP5X65D6Z1Zu7IgBj30K2qMbblMfiIFkBEiTPTvkv8U/UeXoZI
	ebZ/ipBZ1eEc2v0fRUuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZa9n-0001Ys-6T; Fri, 15 May 2020 13:13:43 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8c-0000RL-75
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id BA145FB03;
 Fri, 15 May 2020 15:12:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7VPSUBShava6; Fri, 15 May 2020 15:12:26 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 98055445AC; Fri, 15 May 2020 15:12:15 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 6/6] arm64: dts: imx8mq-librem5-devkit: Enable MIPI DSI
 panel
Date: Fri, 15 May 2020 15:12:15 +0200
Message-Id: <7f91beb1ce51a88dbe43e69c8af35b8684c0ac4c.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1589548223.git.agx@sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061230_431261_46A5C14D 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIE1JUEkgTENEIHBhbmVsIG91dHB1dCBieSBhZGRpbmcgbm9kZXMgZm9yIHRoZSBOV0wg
RFNJIGhvc3QKY29udHJvbGxlciwgdGhlIG11eC1pbnB1dC1icmlkZ2UsIHRoZSBSb2NrdGVjaCBw
YW5lbCBhbmQgdGhlIGVMQ0RJRgpkaXNwbGF5IGNvbnRyb2xsZXIuCgpTaWduZWQtb2ZmLWJ5OiBH
dWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIC4uLi9kdHMvZnJlZXNjYWxlL2lt
eDhtcS1saWJyZW01LWRldmtpdC5kdHMgICB8IDgxICsrKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA4MSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKaW5kZXggN2ZjMzFjNzFh
NjI2Li5kOThmOWI4ZGVkZTggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwpAQCAtODQxLDYgKzg0MSw4NyBAQCBN
WDhNUV9JT01VWENfTkFORF9EQVRBMDNfR1BJTzNfSU85CTB4MTkgLyogV1dBTl9SRVNFVCAqLwog
CX07CiB9OwogCismbGNkaWYgeworCXN0YXR1cyA9ICJva2F5IjsKKworCXBvcnRAMCB7CisJCWxj
ZGlmX2RwaV9vdXQ6IGVuZHBvaW50IHsKKwkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHBpX211eF9m
cm9tX2xjZGlmPjsKKwkJfTsKKwl9OworfTsKKworJmlvbXV4Y19ncHIgeworCW1pcGlfbXV4OiBt
aXBpLW11eCB7CisJCWNvbXBhdGlibGUgPSAibXV4LWlucHV0LWJyaWRnZSI7CisJCW11eC1jb250
cm9scyA9IDwmbXV4IDA+OworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMg
PSA8MD47CisJCXN0YXR1cyA9ICJva2F5IjsKKwkJZGVmYXVsdC1pbnB1dCA9IDwwPjsKKworCQlw
b3J0cyB7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDA+Owor
CisJCQlwb3J0QDAgeworCQkJCXJlZyA9IDwwPjsKKworCQkJCWRwaV9tdXhfZnJvbV9sY2RpZjog
ZW5kcG9pbnQgeworCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmxjZGlmX2RwaV9vdXQ+OworCQkJ
CX07CisJCQl9OworCisJCQlwb3J0QDEgeyAvKiBkY3NzICovCisJCQkJcmVnID0gPDE+OworCQkJ
fTsKKworCQkJcG9ydEAyIHsKKwkJCQlyZWcgPSA8Mj47CisJCQkJZHBpX211eF9vdXQ6IGVuZHBv
aW50IHsKKwkJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZud2xfZHBpX2luPjsKKwkJCQl9OworCisJ
CQl9OworCQl9OworCX07Cit9OworCismbWlwaV9kc2kgeworCXN0YXR1cyA9ICJva2F5IjsKKwlw
YW5lbEAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrdGVjaCxqaDA1N24wMDkwMCI7CisJCXJlZyA9
IDwwPjsKKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHRfZHNpPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8
JmdwaW8zIDEzIEdQSU9fQUNUSVZFX0xPVz47CisJCXZjYy1zdXBwbHkgPSA8JnJlZ18ydjhfcD47
CisJCWlvdmNjLXN1cHBseSA9IDwmcmVnXzF2OF9wPjsKKwkJcG9ydEAwIHsKKwkJCXBhbmVsX2lu
OiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZud2xfZHNpX291dD47CisJCQl9
OworCQl9OworCX07CisKKwlwb3J0cyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6
ZS1jZWxscyA9IDwwPjsKKworCQlwb3J0QDAgeworCQkJcmVnID0gPDA+OworCQkJbndsX2RwaV9p
bjogZW5kcG9pbnQgeworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHBpX211eF9vdXQ+OworCQkJ
fTsKKwkJfTsKKwkJcG9ydEAxIHsKKwkJCXJlZyA9IDwxPjsKKwkJCW53bF9kc2lfb3V0OiBlbmRw
b2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZwYW5lbF9pbj47CisJCQl9OworCQl9Owor
CX07Cit9OworCiAmcGdjX2dwdSB7CiAJcG93ZXItc3VwcGx5ID0gPCZidWNrM19yZWc+OwogfTsK
LS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK

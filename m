Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6933FAAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QpdONxbD0ER5l80RffPdrMFdBBZmFBrBmAggidO2fP8=; b=Urs6U3GOf0T/uh
	tSa7hUFf4zNjSBXGM+d7aNfXoTOeZPZiqL9YSw8CEGKDBQgDZVKx0/wmw2yYnh5DZmAV4Ducv3kjM
	otQwzraOGBh1bjh6j72KKWjTha4+VdwwEGOqsplRiQzS2D5XYVNPa1cxOLFw8JfWxb9AFxaMTL7pa
	eG8AbSVrXtqKHfgnwdUbGDHefxuVMyI3/wT3uw8yRTDxJUnpPszCqv34ToLPIfVFb//vTx4kqy33h
	BJBWRZIIdk9LNhzduE6DffK5ulsw0jXVy46q4VPjTVSYMNh7allgdTo+4ZdIZL3zWKfSLauPzsbVd
	xXPMdA+ojhVzlBjcEdQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLT1O-0005nO-R6; Tue, 30 Apr 2019 13:42:10 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLT1F-0005mr-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:42:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 40B3FFB03;
 Tue, 30 Apr 2019 15:41:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MVPIx0ODc5we; Tue, 30 Apr 2019 15:41:58 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id CC8274027E; Tue, 30 Apr 2019 15:41:57 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq: Add a node for irqsteer
Date: Tue, 30 Apr 2019 15:41:57 +0200
Message-Id: <a08a0a2fdd2090f4f42fe50d8ed70ee08b2fbcaf.1556631673.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_064202_018535_1D8136B3 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbm9kZSBmb3IgdGhlIGlycXN0ZWVyIGludGVycnVwdCBjb250cm9sbGVyIGZvdW5kIG9u
IHRoZSBpTVg4TVEKU29DLgoKU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSB8
IDIxICsrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCmluZGV4IDJjYzkz
OWNmYmQ3NS4uY2UwZTEzN2VjOGVlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXEuZHRzaQpAQCAtNzk4LDYgKzc5OCwyNyBAQAogCQkJfTsKIAkJfTsKIAorCQlidXNAMzJj
MDAwMDAgeyAvKiBBSVBTNCAqLworCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLWFpcHMtYnVz
IiwgInNpbXBsZS1idXMiOworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxs
cyA9IDwxPjsKKwkJCXJhbmdlcyA9IDwweDMyYzAwMDAwIDB4MzJjMDAwMDAgMHg0MDAwMDA+Owor
CisJCQlpcnFzdGVlcjogaW50ZXJydXB0LWNvbnRyb2xsZXJAMzJlMmQwMDAgeworCQkJCWNvbXBh
dGlibGUgPSAiZnNsLGlteDhtLWlycXN0ZWVyIiwKKwkJCQkJICAgICAiZnNsLGlteC1pcnFzdGVl
ciI7CisJCQkJcmVnID0gPDB4MzJlMmQwMDAgMHgxMDAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTggSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1R
X0NMS19ESVNQX0FQQl9ST09UPjsKKwkJCQljbG9jay1uYW1lcyA9ICJpcGciOworCQkJCWZzbCxj
aGFubmVsID0gPDA+OworCQkJCWZzbCxudW0taXJxcyA9IDw2ND47CisJCQkJaW50ZXJydXB0LWNv
bnRyb2xsZXI7CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKKwkJCQkjaW50ZXJydXB0
LWNlbGxzID0gPDE+OworCQkJfTsKKwkJfTsKKwogCQlncHU6IGdwdUAzODAwMDAwMCB7CiAJCQlj
b21wYXRpYmxlID0gInZpdmFudGUsZ2MiOwogCQkJcmVnID0gPDB4MzgwMDAwMDAgMHg0MDAwMD47
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==

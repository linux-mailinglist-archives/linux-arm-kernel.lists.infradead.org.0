Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AF81B2A63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pO1kN3hoDXZNQdMa98gJGLTJnq5fm7z2cUaDgowXQ4=; b=ZkzxzIjdX5gRoC
	0osBQc83Jh6ETI/CTouDALhmWxSCSnoXpGvzuzxVncaBashFjd27qNs77kuB5Ngdy3PejXYqv70vU
	eMQ61EZkiI0A0+EnFaQI9/wrpM9n9qFFINL41N0ddzxCQ/W4/uDSmqw9j9o+dEcbVfUEcntkjT1vK
	p/AWyupMFFzKB2H9X/NqmTZCbVyrWYN9k3IYWaUeKRs9DyNw0Zp/okfralFLYx/qlvGMSTleHtbP2
	6zsAdbX/hi/ZrUaphee3ofeAchDXZ0m1hsg6+yE3pOLdkABPt2ohbzgcc1TuztYZshfvIhtRx3hrm
	CLhXlKk6A48kpFwQ1adw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu8W-0002qy-AH; Tue, 21 Apr 2020 14:44:32 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQu8J-0002pE-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:44:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id E9401FB02;
 Tue, 21 Apr 2020 16:44:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dcfIa4vMcMYR; Tue, 21 Apr 2020 16:44:15 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5C7F9400FA; Tue, 21 Apr 2020 16:44:14 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "Rob Herring" <robh+dt@kernel.org>, "Shawn Guo" <shawnguo@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Fabio Estevam" <festevam@gmail.com>, "NXP Linux Team" <linux-imx@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 "Martin Kepplinger" <martink@posteo.de>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Abel Vesa" <abel.vesa@nxp.com>, "Anson Huang" <Anson.Huang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Date: Tue, 21 Apr 2020 16:44:13 +0200
Message-Id: <1a084c980fb5373f15b03ad83a404fc37eac085e.1587480093.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587480093.git.agx@sigxcpu.org>
References: <cover.1587480093.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_074419_409253_0C92FFDD 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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

QWNjb3JkaW5nIHRvIHRoZSBpbXg4bXEgZGF0YSBzaGVldCBydW5uaW5nIFZERF9HUFUgYXQgMC45
ViBpcyBlbm91Z2gKd2hlbiBub3Qgb3ZlcmNsb2NraW5nIHRvIDFHSHogKHdoaWNoIHdlIGN1cnJl
bnRseSBkb24ndCBkbykuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8Z3VpZG8uZ3Vu
dGhlckBwdXJpLnNtPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1s
aWJyZW01LWRldmtpdC5kdHMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwppbmRleCAxMGVjYTk0MTk0YmUuLjA1MjZlYmYw
ZGEwZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxp
YnJlbTUtZGV2a2l0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEtbGlicmVtNS1kZXZraXQuZHRzCkBAIC0zMTgsNyArMzE4LDcgQEAgYnVjazNfcmVnOiBCVUNL
MyB7CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzAwMDAwPjsKIAkJCQlyZWd1bGF0
b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzAwMDAwPjsKIAkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKLQkJ
CQlyb2htLGR2cy1ydW4tdm9sdGFnZSA9IDwxMDAwMDAwPjsKKwkJCQlyb2htLGR2cy1ydW4tdm9s
dGFnZSA9IDw5MDAwMDA+OwogCQkJfTsKIAogCQkJYnVjazRfcmVnOiBCVUNLNCB7Ci0tIAoyLjI2
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==

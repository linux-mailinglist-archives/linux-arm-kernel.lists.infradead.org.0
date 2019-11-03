Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3660EED174
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdhWpCILRZocfeUt+ihPNkQs4buSPkKeyOM0Y2rXYvI=; b=DgcIoPsfRo6rKi
	5cBanmt7PV2DzC9DVUID5mw2kgIJfEu7PAyOGWI35IQOeWjMWCpWnG2iB2kL7JPyj2jdz+q90aHT/
	BtHut2JrnjYf/kGGVFfhDquUkQSEGBXZSEff71MB0tBEOv/uO/Pk8l0rE2dL7VkTJEqfiaJrViikC
	OQswOqqI/IuO67GVc0nUwymz9alQTdmBUideoGbV9otARS7oeLV3sDHzoB0qxwFaLACHoZwo44nEi
	V/Uqzd79QRDccJR0r13lX+0q0CG6LFV4XLi7Iy4PRGbokHEI2W5oj6aLToPcCvD8kV1Aog9qnj+Dj
	Sox/dWF1PaWMqPls/1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4rG-0006t6-2s; Sun, 03 Nov 2019 01:39:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pA-0004w8-SL; Sun, 03 Nov 2019 01:37:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8EA30B1F0;
 Sun,  3 Nov 2019 01:36:55 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 07/11] arm64: dts: realtek: rtd129x: Extend chip-info reg with
 CHIP_INFO1
Date: Sun,  3 Nov 2019 02:36:41 +0100
Message-Id: <20191103013645.9856-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183701_086309_47175EA4 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRpdGlvbmFsIHJlZ2lzdGVyIGlzIG5lZWRlZCB0byBkaXN0aW5ndWlzaCBSVEQxMjk2
IGZyb20gUlREMTI5NS4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwg
MyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCAxNWE3YzI0OTE1NWQu
LmZlYTdjMWVkN2QwOCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOXguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNp
CkBAIC04Niw3ICs4Niw4IEBACiAKIAkJY2hpcC1pbmZvQDk4MDFhMjAwIHsKIAkJCWNvbXBhdGli
bGUgPSAicmVhbHRlayxydGQxMTk1LWNoaXAiOwotCQkJcmVnID0gPDB4OTgwMWEyMDAgMHg4PjsK
KwkJCXJlZyA9IDwweDk4MDFhMjAwIDB4OD4sCisJCQkgICAgICA8MHg5ODAwNzAyOCAweDQ+Owog
CQl9OwogCiAJCXVhcnQxOiBzZXJpYWxAOTgwMWIyMDAgewotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

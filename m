Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C976F10EF42
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyqPqtMWEOKRhCaM5JlYMqW4JYr+J6VnIKGvVD/09sM=; b=YqkyKshPf3y2ib
	z1FV06HsGety4l87gYGPt8Cou3rIqSW/391ID/oXzJfBapaS5wxle0wjt9FtvCs7Wr8jzTG0wj95w
	cLMpO50kV6g2uWcwT9ycsxmTbtBKF7eS6jSbEi26MzeVEozbL2Nr0rEp5FfYoHqCr7o2oKLybsVK2
	TXCjSxF22+K60OqYfQU4sso8pwBKDfmXZmsmaMduoUfIs1i+b/r6xnvFXwGUusQpgR3zJFVq3D22x
	UU5VANADYLjcYvWBPyt+0Vdo0azeIIcnt9g717Bj09jnXWskzq+iBoGr9DVjlr3HMbxu/35W5XWUY
	ykXLz7Uy/+6Ssnt12BPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqMp-0005xX-IE; Mon, 02 Dec 2019 18:24:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKx-0004GF-01; Mon, 02 Dec 2019 18:22:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B4321AEF5;
 Mon,  2 Dec 2019 18:22:16 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 07/14] ARM: dts: rtd1195: Add reset nodes
Date: Mon,  2 Dec 2019 19:21:57 +0100
Message-Id: <20191202182205.14629-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102219_255882_D86933E0 
X-CRM114-Status: UNSURE (   8.28  )
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

QWRkIHJlc2V0IGNvbnRyb2xsZXIgbm9kZXMgZm9yIFJlYWx0ZWsgUlREMTE5NSBTb0MuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjE6IEZy
b20gUlREMTE5NSB2NCBzZXJpZXMgKEphbWVzIHdhbnRzIHRvIGNoYW5nZSB0aGUgY29tcGF0aWJs
ZSBzdHJpbmcpCiAKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSB8IDI2ICsrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQppbmRleCBhYzM3MzY2ZmY3YzQuLjg4Njg0NWU1MjIwNSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQpAQCAtMTQxLDcgKzE0MSwzMyBAQAogCX07CiB9OwogCismY3J0IHsK
KwlyZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7CisJCWNvbXBhdGlibGUgPSAic25wcyxkdy1s
b3ctcmVzZXQiOworCQlyZWcgPSA8MHgwIDB4ND47CisJCSNyZXNldC1jZWxscyA9IDwxPjsKKwl9
OworCisJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgeworCQljb21wYXRpYmxlID0gInNucHMs
ZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4NCAweDQ+OworCQkjcmVzZXQtY2VsbHMgPSA8MT47
CisJfTsKKworCXJlc2V0MzogcmVzZXQtY29udHJvbGxlckA4IHsKKwkJY29tcGF0aWJsZSA9ICJz
bnBzLGR3LWxvdy1yZXNldCI7CisJCXJlZyA9IDwweDggMHg0PjsKKwkJI3Jlc2V0LWNlbGxzID0g
PDE+OworCX07Cit9OworCiAmaXNvIHsKKwlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJAODgg
eworCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4ODggMHg0
PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07CisKIAl3ZHQ6IHdhdGNoZG9nQDY4MCB7CiAJ
CWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIjsKIAkJcmVnID0gPDB4Njgw
IDB4MTAwPjsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

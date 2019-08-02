Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F707F593
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bXEX3cyfhzpStqfEgW1brjVYgvK52IlbnkHEbVBnknU=; b=sC74ukrybaOX97
	dwHZSEEJh3IUY9PEbimCc2U9OU+f+SympRb3pFAoGX2Jn6IQjPOVwOukQZOdEXa7vIVyRJ3L+FqLf
	v7p7OygthoCwsGzNpWhkUl8i59ILZLRQ5sdkY931cRaNUjRKy3xJ2IoYoTJs9J+jib69MWxm+M+8V
	BZ+nlrtMDZpznynZEorwSAHhsXDwZz8XR65hvfpHjA7LGD5UHPPecyUt5w93qZwunuMPiAs+5JXdx
	7h4xDpI7RshXugp05mbTbLQBWAQ+WL9xYhot1onkAs0PYkZu+yhPlkEMKIpdFVimFShfLYSk+MYTg
	jKvlDCtoIj/kyKM9DhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVDm-0003QG-74; Fri, 02 Aug 2019 10:55:38 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVDf-0003P5-Mn
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:55:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 9ED5EFB03;
 Fri,  2 Aug 2019 12:55:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ugkm27Dqmsp; Fri,  2 Aug 2019 12:55:18 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4DE9A47246; Fri,  2 Aug 2019 12:55:18 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/imx: Drop unused imx-ipuv3-crtc.o build
Date: Fri,  2 Aug 2019 12:55:18 +0200
Message-Id: <e5484fa33bffec220fd0590b502a962da17c9c72.1564743270.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_035531_905311_7A1EFAE5 
X-CRM114-Status: UNSURE (   8.46  )
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

U2luY2UKCmNvbW1pdCAzZDFkZjk2YWQ0NjggKCJkcm0vaW14OiBtZXJnZSBpbXgtZHJtLWNvcmUg
YW5kIGlwdXYzLWNydGMgaW4gb25lIG1vZHVsZSIpCgppbXgtaXB1djMtY3J0Yy5vIGlzIGJ1aWx0
IHZpYSBpbXhkcm0tb2Jqcy4gU28gdGhlcmUncyBubyBuZWVkIHRvIGtlZXAgYW4KZXh0cmEgZW50
cnkgd2l0aCBhIG5vbiBleGlzdGluZyBjb25maWcgdmFsdWUgKENPTkZJR19EUk1fSU1YX0lQVVYz
KS4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2lteC9NYWtlZmlsZSB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaW14L01ha2VmaWxlIGIvZHJp
dmVycy9ncHUvZHJtL2lteC9NYWtlZmlsZQppbmRleCBhYjZjODNjYWNlYjcuLjIxY2RjYzJmYWFi
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2lteC9NYWtlZmlsZQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaW14L01ha2VmaWxlCkBAIC04LDUgKzgsNCBAQCBvYmotJChDT05GSUdfRFJNX0lN
WF9QQVJBTExFTF9ESVNQTEFZKSArPSBwYXJhbGxlbC1kaXNwbGF5Lm8KIG9iai0kKENPTkZJR19E
Uk1fSU1YX1RWRSkgKz0gaW14LXR2ZS5vCiBvYmotJChDT05GSUdfRFJNX0lNWF9MREIpICs9IGlt
eC1sZGIubwogCi1vYmotJChDT05GSUdfRFJNX0lNWF9JUFVWMykJKz0gaW14LWlwdXYzLWNydGMu
bwogb2JqLSQoQ09ORklHX0RSTV9JTVhfSERNSSkgKz0gZHdfaGRtaS1pbXgubwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=

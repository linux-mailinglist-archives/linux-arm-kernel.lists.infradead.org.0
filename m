Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C57633D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfmKCStSjJqvCb4b8hXoYGcVSiZULLKtGq77WluwtFM=; b=KGPg/Zcg0kJr/Z
	Yns8pSvuIcRAzpyO+mit3XIaKz1BZWK4HNuR+u9w6JczNI5jmUGAxF6aXlfrmP/VT/FJ90OVgHF/W
	OmOWq1VwNh5PShrqZiIvdyZoDguFtWq3UskzDzakGmaE1xhwzOKx3vUSaFGTtf+vrcISjfKuytXn5
	ah4DWdTQVv24a1VBIityl3/D2aTQHaI9IO7fLICUhmbH1w90fXnIAPed+GUL7IOxNMEokQAHlSp6B
	hBFaQ8/i748kYKF8hb5d/y8aE7ok41yd3ZKO5FTNVTvv8I/LINEDS5V7gV4FWdBGCZLcPtbdAauYp
	XHbgTnmLMtqOG8b6dHrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwr2-0005sA-Vm; Fri, 26 Jul 2019 09:49:37 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwql-0005qc-Tn
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:49:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id E25F2FB02;
 Fri, 26 Jul 2019 11:49:15 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtfFpcmoz3Q8; Fri, 26 Jul 2019 11:49:13 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0D36F46AA0; Fri, 26 Jul 2019 11:49:12 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>, Marek Vasut <marex@denx.de>,
 Stefan Agner <stefan@agner.ch>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] drm/mxsfb: Read bus flags from bridge if present
Date: Fri, 26 Jul 2019 11:49:12 +0200
Message-Id: <9390060f65f94722cb13101d4835d9048037f7a0.1564134488.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1564134488.git.agx@sigxcpu.org>
References: <cover.1564134488.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_024920_117044_2D73AE53 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

VGhlIGJyaWRnZSBtaWdodCBoYXZlIHNwZWNpYWwgcmVxdWlybWVudGVzIG9uIHRoZSBpbnB1dCBi
dXMuIFRoaXMKaXMgZS5nLiB1c2VkIGJ5IHRoZSBpbXgtbndsIGJyaWRnZS4KClNpZ25lZC1vZmYt
Ynk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L214c2ZiL214c2ZiX2NydGMuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIv
bXhzZmJfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwppbmRleCBl
ODRiYWMzYTU0MWQuLjNiOGViM2FjMTNiNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL214
c2ZiL214c2ZiX2NydGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5j
CkBAIC0yMTUsNyArMjE1LDcgQEAgc3RhdGljIHZvaWQgbXhzZmJfY3J0Y19tb2RlX3NldF9ub2Zi
KHN0cnVjdCBteHNmYl9kcm1fcHJpdmF0ZSAqbXhzZmIpCiB7CiAJc3RydWN0IGRybV9kZXZpY2Ug
KmRybSA9IG14c2ZiLT5waXBlLmNydGMuZGV2OwogCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpt
ID0gJm14c2ZiLT5waXBlLmNydGMuc3RhdGUtPmFkanVzdGVkX21vZGU7Ci0JY29uc3QgdTMyIGJ1
c19mbGFncyA9IG14c2ZiLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5mby5idXNfZmxhZ3M7CisJdTMy
IGJ1c19mbGFncyA9IG14c2ZiLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5mby5idXNfZmxhZ3M7CiAJ
dTMyIHZkY3RybDAsIHZzeW5jX3B1bHNlX2xlbiwgaHN5bmNfcHVsc2VfbGVuOwogCWludCBlcnI7
CiAKQEAgLTIzOSw2ICsyMzksOSBAQCBzdGF0aWMgdm9pZCBteHNmYl9jcnRjX21vZGVfc2V0X25v
ZmIoc3RydWN0IG14c2ZiX2RybV9wcml2YXRlICpteHNmYikKIAogCWNsa19zZXRfcmF0ZShteHNm
Yi0+Y2xrLCBtLT5jcnRjX2Nsb2NrICogMTAwMCk7CiAKKwlpZiAobXhzZmItPmJyaWRnZSAmJiBt
eHNmYi0+YnJpZGdlLT50aW1pbmdzKQorCQlidXNfZmxhZ3MgPSBteHNmYi0+YnJpZGdlLT50aW1p
bmdzLT5pbnB1dF9idXNfZmxhZ3M7CisKIAlEUk1fREVWX0RFQlVHX0RSSVZFUihkcm0tPmRldiwg
IlBpeGVsIGNsb2NrOiAlZGtIeiAoYWN0dWFsOiAlZGtIeilcbiIsCiAJCQkgICAgIG0tPmNydGNf
Y2xvY2ssCiAJCQkgICAgIChpbnQpKGNsa19nZXRfcmF0ZShteHNmYi0+Y2xrKSAvIDEwMDApKTsK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK

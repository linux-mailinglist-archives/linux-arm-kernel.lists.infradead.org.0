Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE91D18F7BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X0riLmoVnJjDRxvqsJB6NThttfCcB7rNuhtiC3BEXJg=; b=qDkTdYbjoTnKo3
	298En4UbfyynX3Tq8c9Viq3CgkVqXRcuZVKx8K5jNpYFXWlE/JMWdeNLLet82Pt2TdREQHoPZLP/t
	xSRJsUPmmAPPWKl0lxP/RK8/diDOq0q2kr5DDAgjW7mBlkoOqEOXueFbTO0G1itOMSX97UV+tFyuT
	BKVaUVtmpbdNOVUsDqzgj6ThHQXin50xc+zIAQwtkTmpQGp+MJDKwPUphHCVnay/hlx6CD9dgQRr3
	H1JRek1EIiizCumA4441h4lFrBOg6PkTMJqnn1pXlLRmorA4xW6wSjYan93md1KBk/4zBMXjJYTi9
	NYwVe2+4JDS8wMDZ8wvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGORs-0004CW-Nu; Mon, 23 Mar 2020 14:53:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGORl-0004BB-4m
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:52:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id BCAB6FB03;
 Mon, 23 Mar 2020 15:52:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-X3cVK12ioL; Mon, 23 Mar 2020 15:52:47 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id D9654412BE; Mon, 23 Mar 2020 15:52:46 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mxsfb: Make supported modifiers explicit
Date: Mon, 23 Mar 2020 15:52:46 +0100
Message-Id: <26877532e272c12a74c33188e2a72abafc9a2e1c.1584973664.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075257_352491_C57FA849 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

SW4gY29udHJhc3QgdG8gb3RoZXIgZGlzcGxheSBjb250cm9sbGVycyBvbiBpbXggbGlrZSBEQ1NT
IGFuZCBpcHV2MwpsY2RpZi9teHNmYiBkb2VzIG5vdCBzdXBwb3J0IGRldGlsaW5nIGUuZy4gdml2
YW50ZSB0aWxlZCBsYXlvdXRzLgpTaW5jZSBtZXNhIG1pZ2h0IGFzc3VtZSBvdGhlcndpc2UgbWFr
ZSBpdCBleHBsaWNpdCB0aGF0IG9ubHkKRFJNX0ZPUk1BVF9NT0RfTElORUFSIGlzIHN1cHBvcnRl
ZC4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214
c2ZiX2Rydi5jCmluZGV4IDc2MjM3OTUzMDkyOC4uZmM3MWU3YTdhMDJlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL214
c2ZiL214c2ZiX2Rydi5jCkBAIC03Myw2ICs3MywxMSBAQCBzdGF0aWMgY29uc3QgdWludDMyX3Qg
bXhzZmJfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfUkdCNTY1CiB9OwogCitzdGF0aWMgY29u
c3QgdWludDY0X3QgbXhzZmJfbW9kaWZpZXJzW10gPSB7CisJRFJNX0ZPUk1BVF9NT0RfTElORUFS
LAorCURSTV9GT1JNQVRfTU9EX0lOVkFMSUQKK307CisKIHN0YXRpYyBzdHJ1Y3QgbXhzZmJfZHJt
X3ByaXZhdGUgKgogZHJtX3BpcGVfdG9fbXhzZmJfZHJtX3ByaXZhdGUoc3RydWN0IGRybV9zaW1w
bGVfZGlzcGxheV9waXBlICpwaXBlKQogewpAQCAtMzM0LDggKzMzOSw4IEBAIHN0YXRpYyBpbnQg
bXhzZmJfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCB1bnNpZ25lZCBsb25nIGZsYWdzKQog
CX0KIAogCXJldCA9IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2luaXQoZHJtLCAmbXhzZmItPnBp
cGUsICZteHNmYl9mdW5jcywKLQkJCW14c2ZiX2Zvcm1hdHMsIEFSUkFZX1NJWkUobXhzZmJfZm9y
bWF0cyksIE5VTEwsCi0JCQlteHNmYi0+Y29ubmVjdG9yKTsKKwkJCW14c2ZiX2Zvcm1hdHMsIEFS
UkFZX1NJWkUobXhzZmJfZm9ybWF0cyksCisJCQlteHNmYl9tb2RpZmllcnMsIG14c2ZiLT5jb25u
ZWN0b3IpOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoZHJtLT5kZXYsICJDYW5ub3Qgc2V0
dXAgc2ltcGxlIGRpc3BsYXkgcGlwZVxuIik7CiAJCWdvdG8gZXJyX3ZibGFuazsKLS0gCjIuMjMu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK

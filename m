Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979441584AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7IPwpy/N8ItMG0su8nx4rldHKpSnESgCc/6T3Kk1K0=; b=TA5g/vFGahiarF
	N1P0mKd8XmGbKa7EaxJ4e3u6eSe4xzzssHnI4M7Bs4SdVjjYVnuXO6ucxewgslsRdJrAKC4raqEaz
	SwrA+QN6vkgCtdjB/6oMheXHulgqq77yTe1zaRrBNtqIzRrlnHtSRnEw+9unX27Xw0z4Pb5Brmc2O
	VzC2TiQcarLpNxqMYIp2Iww9CcAzwMQtt70L19/1wZ1C4HZuHHGuvhTvGCiTtR58Q6/UnraEPm9dQ
	A1nqSJP4dyc3N4OAccNd+s90WQ+9ie9UukiK9RJHoefW3vA8QkzGCU2bD1gxH9zbe6ZH4QACXWdck
	BpE1CgTSfIndqynZY6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GWe-0003k6-IS; Mon, 10 Feb 2020 21:23:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GWI-0003bh-9b
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:23:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWC-0000yL-HW; Mon, 10 Feb 2020 22:23:00 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWB-00042v-6I; Mon, 10 Feb 2020 22:22:59 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/3] pwm: imx27: Don't disable clks at device remove time
Date: Mon, 10 Feb 2020 22:22:39 +0100
Message-Id: <20200210212240.25513-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
References: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
 <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_132306_336241_B04FD28F 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBpcyBub3Qgc3VwcG9zZWQgdG8gbW9kaWZ5IGhhcmR3YXJl
IHN0YXRlLiBUaGlzIGlzCmluIHRoZSByZXNwb25zaWJpbGl0eSBvZiB0aGUgUFdNIGNvbnN1bWVy
LgoKQWZ0ZXIgdGhlIFBXTSB3YXMgZGlzYWJsZWQgdGhlIGNsa3MgYXJlIG9mZiAoYXBhcnQgZnJv
bSBhIGJ1ZyB0aGF0IGlzCmZpeGVkIGluIHRoZSBuZXh0IHBhdGNoKSwgc28gdW5iaW5kaW5nIHRo
ZSBkcml2ZXIgZWl0aGVyIHN0b3BzIHRoZSBQV00KKHdoaWNoIGl0IHNob3VsZCBub3QpIG9yIGRp
c2FibGVzIGFscmVhZHkgZGlzYWJsZWQgY2xrcyB5aWVsZGluZwp3YXJuaW5ncyBmcm9tIHRoZSBj
bGsgY29yZS4KClNvIGp1c3QgZHJvcCB0aGUgY2FsbCB0byBkaXNhYmxlIHRoZSBjbG9ja3MuIChX
aGljaCBCVFcgd2FzIGFsc28gaW4gdGhlCndyb25nIG9yZGVyIGJlY2F1c2UgdGhlIGNhbGwgbWFr
ZXMgdGhlIFBXTSB1bmZ1bmN0aW9uYWwgYW5kIHNvIHNob3VsZApoYXZlIGNvbWUgb25seSBhZnRl
ciBwd21jaGlwX3JlbW92ZSgpLgoKRml4ZXM6IDlmNGM4Zjk2MDdjMyAoInB3bTogaW14OiBBZGQg
aXBnIGNsb2NrIG9wZXJhdGlvbiIpClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9wd20vcHdtLWlteDI3
LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3B3bS9wd20taW14MjcuYyBiL2RyaXZlcnMvcHdtL3B3bS1pbXgyNy5jCmluZGV4IGUw
NGFlNTY2YmJmOS4uZmIxNDI4MTNkNDU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20taW14
MjcuYworKysgYi9kcml2ZXJzL3B3bS9wd20taW14MjcuYwpAQCAtMzU4LDggKzM1OCw2IEBAIHN0
YXRpYyBpbnQgcHdtX2lteDI3X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CiAJaW14ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKLQlwd21faW14MjdfY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGlteCk7Ci0KIAlyZXR1cm4gcHdtY2hpcF9yZW1vdmUoJmlteC0+Y2hp
cCk7CiB9CiAKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

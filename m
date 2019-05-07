Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B90166B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMmYZOUulwTRNgWxq3MBfKIiZsTQaaFZZHBXny9YMzQ=; b=llgzuSERmqVhVE
	NvKPVnEII9LYdoca7RjSM/txjufhAQl1hpZTnYnh1K7L1ImjYVXGEr8dBEILU8B1Ye3ZUHD5Waqzq
	T9i2y/enM+0D/dhDCNHY6gxM0xhIrZBWhzMrfIJo+CcBvKnul7884MBAbgHb1RvMYcYkOpFlUcp5a
	5jyZb4on+apzFNkcUzObNpFyG+qx0uEfWXUclwLykEmObe/p0yufm0YxcDG5piVi1WH/1MuQvm/G9
	a8jb1T7EvxTmH8u6a6B8493RiVTvY6SStjc8bl2QBr8/0gaeyabFoeM7sZESz4MBAMxKmh8mPfKag
	apjycwlRFwuweEwq5YDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO20X-0005cF-SS; Tue, 07 May 2019 15:27:53 +0000
Received: from 5.mo178.mail-out.ovh.net ([46.105.51.53])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO20Q-0005b3-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:27:48 +0000
Received: from player697.ha.ovh.net (unknown [10.109.159.222])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id DC9505EA58
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 17:27:42 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 261115875B80;
 Tue,  7 May 2019 15:27:23 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH RE-RESEND 2/2] ARM: dts: opos6uldev: use OF graph to describe
 the display
Date: Tue,  7 May 2019 17:27:13 +0200
Message-Id: <20190507152713.27494-2-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 11812378874205393943
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrkedtgdelgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_082746_841994_E0B371BA 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.51.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VG8gbWFrZSB1c2Ugb2YgdGhlIG5ldyBlTENESUYgRFJNIGRyaXZlciBPRiBncmFwaCBkZXNjcmlw
dGlvbiBpcwpyZXF1aXJlZC4gRGVzY3JpYmUgdGhlIGRpc3BsYXkgdXNpbmcgT0YgZ3JhcGggbm9k
ZXMuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY0LjE5ClNpZ25lZC1vZmYtYnk6IFPD
qWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0t
CiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwtb3BvczZ1bGRldi5kdHMgfCAzNyArKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMjEgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLW9wb3M2dWxk
ZXYuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLW9wb3M2dWxkZXYuZHRzCmluZGV4IDBl
NTllZTU3ZmQ1NS4uOGVjZGI5YWQyYjJlIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9p
bXg2dWwtb3BvczZ1bGRldi5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLW9wb3M2
dWxkZXYuZHRzCkBAIC01Niw3ICs1Niw3IEBACiAJCXN0ZG91dC1wYXRoID0gJnVhcnQxOwogCX07
CiAKLQliYWNrbGlnaHQgeworCWJhY2tsaWdodDogYmFja2xpZ2h0IHsKIAkJY29tcGF0aWJsZSA9
ICJwd20tYmFja2xpZ2h0IjsKIAkJcHdtcyA9IDwmcHdtMyAwIDE5MTAwMD47CiAJCWJyaWdodG5l
c3MtbGV2ZWxzID0gPDAgNCA4IDE2IDMyIDY0IDEyOCAyNTU+OwpAQCAtOTcsNiArOTcsMTggQEAK
IAkJZ3Bpb3MgPSA8JmdwaW81IDEgR1BJT19BQ1RJVkVfSElHSD47CiAJfTsKIAorCXBhbmVsOiBw
YW5lbCB7CisJCWNvbXBhdGlibGUgPSAiYXJtYWRldXMsc3QwNzAwLWFkYXB0IjsKKwkJcG93ZXIt
c3VwcGx5ID0gPCZyZWdfM3YzPjsKKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+OworCisJCXBv
cnQgeworCQkJcGFuZWxfaW46IGVuZHBvaW50IHsKKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8Jmxj
ZGlmX291dD47CisJCQl9OworCQl9OworCX07CisKIAlyZWdfNXY6IHJlZ3VsYXRvci01diB7CiAJ
CWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJcmVndWxhdG9yLW5hbWUgPSAiNVYi
OwpAQCAtMTgyLDI4ICsxOTQsMTEgQEAKICZsY2RpZiB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfbGNkaWY+OwotCWRpc3BsYXkgPSA8JmRpc3Bs
YXkwPjsKLQlsY2Qtc3VwcGx5ID0gPCZyZWdfM3YzPjsKIAlzdGF0dXMgPSAib2theSI7CiAKLQlk
aXNwbGF5MDogZGlzcGxheTAgewotCQliaXRzLXBlci1waXhlbCA9IDwzMj47Ci0JCWJ1cy13aWR0
aCA9IDwxOD47Ci0KLQkJZGlzcGxheS10aW1pbmdzIHsKLQkJCXRpbWluZzA6IHRpbWluZzAgewot
CQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMzAwMDAzMz47Ci0JCQkJaGFjdGl2ZSA9IDw4MDA+Owot
CQkJCXZhY3RpdmUgPSA8NDgwPjsKLQkJCQloYmFjay1wb3JjaCA9IDw5Nj47Ci0JCQkJaGZyb250
LXBvcmNoID0gPDk2PjsKLQkJCQl2YmFjay1wb3JjaCA9IDwyMD47Ci0JCQkJdmZyb250LXBvcmNo
ID0gPDIxPjsKLQkJCQloc3luYy1sZW4gPSA8NjQ+OwotCQkJCXZzeW5jLWxlbiA9IDw0PjsKLQkJ
CQlkZS1hY3RpdmUgPSA8MT47Ci0JCQkJcGl4ZWxjbGstYWN0aXZlID0gPDA+OwotCQkJfTsKKwlw
b3J0IHsKKwkJbGNkaWZfb3V0OiBlbmRwb2ludCB7CisJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JnBh
bmVsX2luPjsKIAkJfTsKIAl9OwogfTsKLS0gCjIuMTkuMgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

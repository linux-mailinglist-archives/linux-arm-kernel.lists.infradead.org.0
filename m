Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155A0142F64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 17:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0dZybXwQZ8oIARe6NRjZ9xBNTt9bkBoFXD22ghax9E=; b=tjx7yM4H9Lwjfu
	ou9NQnOJAVlBlVg+kJiofFkrUu8kCwepfveFQ5N1NIdDzfKlYqFxYiO3BWwxobXCSmYgpArwwlPI9
	/bjYgr0DT9aUTzWjDSxQnU2Pdp4eSKvDUKu8sIOolIM8bb0Ws7Rz6ziFMwwuFpEwPUxh2XCfml5hp
	xG1zwAIXK0RjDKtlGqeGQOyt0i3NmxrjpeRoxkQmgPoHwdmlmU+XYDVCfGcBPwUzQm0e83ylJVZSp
	3CdVSmfoFOLrj2Bq3I+IljDVdfyeWa5QBLRBcqebnZN10vHWEz8yJB82FCPljjoA6fedgzr06U7gO
	ajVA6EhRu4BsVH6QowdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZg4-0004sj-9n; Mon, 20 Jan 2020 16:13:24 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZfq-0004r5-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 16:13:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 58995FB03;
 Mon, 20 Jan 2020 17:12:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaOQFEdPtkQE; Mon, 20 Jan 2020 17:12:56 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E324F404AA; Mon, 20 Jan 2020 17:12:55 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Martin Kepplinger <martink@posteo.de>, Anson Huang <Anson.Huang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq-librem5-devkit: Add proximity sensor
Date: Mon, 20 Jan 2020 17:12:55 +0100
Message-Id: <e0434a87d8d46211a076c8a7c75c9f47b9e963c7.1579536647.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_081310_800415_1EAC9DC6 
X-CRM114-Status: GOOD (  10.25  )
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

U3VwcG9ydCBmb3IgdGhlIHZjbmw0MDQwIGxhbmRldCBhIHdoaWxlIGFnbyBzbyBhZGQgaXQgYW5k
IHRoZQpjb3JyZXNwb25kaW5nIHBpbm11eC4gVGhlIGlycSBpcyBjdXJyZW50bHkgdW51c2VkIGlu
IHRoZSBkcml2ZXIgc28gZG9uJ3QKY29uZmlndXJlIGl0IHlldC4KClNpZ25lZC1vZmYtYnk6IEd1
aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogLi4uL2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzICAgICB8IDEyICsrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwppbmRleCBjODYyN2Y2NjE0
YWUuLmI4N2MyZTM5YjE2YyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCkBAIC00NDgsNiArNDQ4LDEyIEBACiAJ
CVZERElPLXN1cHBseSA9IDwmcmVnXzF2OF9wPjsKIAl9OwogCisJcHJveEA2MCB7CisJCWNvbXBh
dGlibGUgPSAidmlzaGF5LHZjbmw0MDQwIjsKKwkJcmVnID0gPDB4NjA+OworCQlwaW5jdHJsLTAg
PSA8JnBpbmN0cmxfcHJveD47CisJfTsKKwogCWFjY2VsLWd5cm9ANmEgewogCQljb21wYXRpYmxl
ID0gInN0LGxzbTlkczEtaW11IjsKIAkJcmVnID0gPDB4NmE+OwpAQCAtNTUwLDYgKzU1NiwxMiBA
QAogCQk+OwogCX07CiAKKwlwaW5jdHJsX3Byb3g6IHByb3hncnAgeworCQlmc2wscGlucyA9IDwK
KwkJCU1YOE1RX0lPTVVYQ19HUElPMV9JTzEyX0dQSU8xX0lPMTIJMHg4MCAgLyogcHJveCBpbnRy
ICovCisJCT47CisJfTsKKwogCXBpbmN0cmxfcHdyX2VuOiBwd3JlbmdycCB7CiAJCWZzbCxwaW5z
ID0gPAogCQkJTVg4TVFfSU9NVVhDX0dQSU8xX0lPMDhfR1BJTzFfSU84CTB4MDYKLS0gCjIuMjMu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17656166B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J0vA8eHDdjGTph8UL8dNBlc1x1QzQVkg/NctiyUSTCI=; b=ZWXfnJAaobb3W5
	Yot4cPZh5aKCaxLkndb8Cl4qzhWhfUg3nJPE1fT4BrdSdopzOuZNsbmsQbWNOdFBGBCz+3uhQ42mU
	/fVI0w0MCTE5p054C+cHMnuzGKBD3YgkkIurp7ABJdP4CWXErCmGd54nXFMmNEzVqhTIVhxz17E72
	ESugMx3xIo88DQJ+Ku/XjF/pOgYQsCQJ3f3VyPUrIxpEC8GsIptHkLi1f3S69zor7M+noiMY3IR6F
	w1NboOg1+AAHdZnAD/8amJ4FiP73Z7YlEG6sQYHGoJrBmsWkmxpSG/DmAcAo8BI14+/P06RzQq6eJ
	x0tO66vXWwOVhV5ZEC4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO20E-0005K5-0c; Tue, 07 May 2019 15:27:34 +0000
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO206-0005JV-Qw
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:27:28 +0000
Received: from player697.ha.ovh.net (unknown [10.108.57.139])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id D8EBA20B623
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 17:27:20 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 274FD5875A38;
 Tue,  7 May 2019 15:27:00 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700 Adapt
Date: Tue,  7 May 2019 17:27:12 +0200
Message-Id: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 11806186423600239639
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrkedtgdelgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_082727_018745_564F84A5 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.57.200 listed in list.dnswl.org]
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

VGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBBcm1hZGV1cyBTVDA3MDAgQWRhcHQuIEl0
IGNvbWVzIHdpdGggYQpTYW50ZWsgU1QwNzAwSTVZLVJCU0xXIDcuMCIgV1ZHQSAoODAweDQ4MCkg
VEZUIGFuZCBhbiBhZGFwdGVyIGJvYXJkIHNvCnRoYXQgaXQgY2FuIGJlIGNvbm5lY3RlZCBvbiB0
aGUgVEZUIGhlYWRlciBvZiBBcm1hZGV1cyBEZXYgYm9hcmRzLgoKQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcgIyB2NC4xOQpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4KU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5z
a2lAYXJtYWRldXMuY29tPgotLS0KIC4uLi9kaXNwbGF5L3BhbmVsL2FybWFkZXVzLHN0MDcwMC1h
ZGFwdC50eHQgICB8ICA5ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBs
ZS5jICAgICAgICAgIHwgMjkgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAz
OCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvYXJtYWRldXMsc3QwNzAwLWFkYXB0LnR4dAoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3BhbmVs
L2FybWFkZXVzLHN0MDcwMC1hZGFwdC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9wYW5lbC9hcm1hZGV1cyxzdDA3MDAtYWRhcHQudHh0Cm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYTMwZDYzZGIzYzhmCi0tLSAvZGV2L251bGwK
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvYXJt
YWRldXMsc3QwNzAwLWFkYXB0LnR4dApAQCAtMCwwICsxLDkgQEAKK0FybWFkZXVzIFNUMDcwMCBB
ZGFwdC4gQSBTYW50ZWsgU1QwNzAwSTVZLVJCU0xXIDcuMCIgV1ZHQSAoODAweDQ4MCkgVEZUIHdp
dGgKK2FuIGFkYXB0ZXIgYm9hcmQuCisKK1JlcXVpcmVkIHByb3BlcnRpZXM6CistIGNvbXBhdGli
bGU6ICJhcm1hZGV1cyxzdDA3MDAtYWRhcHQiCistIHBvd2VyLXN1cHBseTogc2VlIHBhbmVsLWNv
bW1vbi50eHQKKworT3B0aW9uYWwgcHJvcGVydGllczoKKy0gYmFja2xpZ2h0OiBzZWUgcGFuZWwt
Y29tbW9uLnR4dApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBs
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jCmluZGV4IDllODIxOGY2
YTNmMi4uNDVjYThkMTBiNjZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFu
ZWwtc2ltcGxlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jCkBA
IC00NDYsNiArNDQ2LDMyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGFuZWxfZGVzYyBhbXBpcmVf
YW04MDA0ODByM3RtcXdhMWggPSB7CiAJLmJ1c19mb3JtYXQgPSBNRURJQV9CVVNfRk1UX1JHQjY2
Nl8xWDE4LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBkaXNwbGF5X3RpbWluZyBzYW50ZWtf
c3QwNzAwaTV5X3Jic2x3X2ZfdGltaW5nID0geworCS5waXhlbGNsb2NrID0geyAyNjQwMDAwMCwg
MzMzMDAwMDAsIDQ2ODAwMDAwIH0sCisJLmhhY3RpdmUgPSB7IDgwMCwgODAwLCA4MDAgfSwKKwku
aGZyb250X3BvcmNoID0geyAxNiwgMjEwLCAzNTQgfSwKKwkuaGJhY2tfcG9yY2ggPSB7IDQ1LCAz
NiwgNiB9LAorCS5oc3luY19sZW4gPSB7IDEsIDEwLCA0MCB9LAorCS52YWN0aXZlID0geyA0ODAs
IDQ4MCwgNDgwIH0sCisJLnZmcm9udF9wb3JjaCA9IHsgNywgMjIsIDE0NyB9LAorCS52YmFja19w
b3JjaCA9IHsgMjIsIDEzLCAzIH0sCisJLnZzeW5jX2xlbiA9IHsgMSwgMTAsIDIwIH0sCisJLmZs
YWdzID0gRElTUExBWV9GTEFHU19IU1lOQ19MT1cgfCBESVNQTEFZX0ZMQUdTX1ZTWU5DX0xPVyB8
CisJCURJU1BMQVlfRkxBR1NfREVfSElHSCB8IERJU1BMQVlfRkxBR1NfUElYREFUQV9QT1NFREdF
Cit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHBhbmVsX2Rlc2MgYXJtYWRldXNfc3QwNzAwX2Fk
YXB0ID0geworCS50aW1pbmdzID0gJnNhbnRla19zdDA3MDBpNXlfcmJzbHdfZl90aW1pbmcsCisJ
Lm51bV90aW1pbmdzID0gMSwKKwkuYnBjID0gNiwKKwkuc2l6ZSA9IHsKKwkJLndpZHRoID0gMTU0
LAorCQkuaGVpZ2h0ID0gODYsCisJfSwKKwkuYnVzX2Zvcm1hdCA9IE1FRElBX0JVU19GTVRfUkdC
NjY2XzFYMTgsCisJLmJ1c19mbGFncyA9IERSTV9CVVNfRkxBR19ERV9ISUdIIHwgRFJNX0JVU19G
TEFHX1BJWERBVEFfUE9TRURHRSwKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSBhdW9fYjEwMWF3MDNfbW9kZSA9IHsKIAkuY2xvY2sgPSA1MTQ1MCwKIAkuaGRpc3Bs
YXkgPSAxMDI0LApAQCAtMjU0NCw2ICsyNTcwLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgcGxhdGZvcm1fb2ZfbWF0Y2hbXSA9IHsKIAl9LCB7CiAJCS5jb21wYXRpYmxlID0g
ImFybSxydHNtLWRpc3BsYXkiLAogCQkuZGF0YSA9ICZhcm1fcnRzbSwKKwl9LCB7CisJCS5jb21w
YXRpYmxlID0gImFybWFkZXVzLHN0MDcwMC1hZGFwdCIsCisJCS5kYXRhID0gJmFybWFkZXVzX3N0
MDcwMF9hZGFwdCwKIAl9LCB7CiAJCS5jb21wYXRpYmxlID0gImF1byxiMTAxYXcwMyIsCiAJCS5k
YXRhID0gJmF1b19iMTAxYXcwMywKLS0gCjIuMTkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

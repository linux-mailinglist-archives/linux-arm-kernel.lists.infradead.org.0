Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C737716EA9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:54:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rdy84tPcY+3vWutsZa6Bv5bUNbpY2czL+R7zhXQvmi0=; b=jVKlvRGBOvjSoP
	2X5AyyXx6reQt0dH3R+2i4G8yGMIevgAFOzMD/XtvQ5e3M8t20/O1v3yt0H7NZN/F7sPBa+ABclAX
	gREuZ2yeKDseysXkBD/z5L0nCDLb6OQZlCszkI0x7LDOm6coDA08ZYh0Fuk4L3D2W/SaqiYukVdcZ
	/X+7/J56teTRN8KA7vPciRSh7y1k1jObCvMZWUeNy3wOGpnhRq97gz+CqQcqGSAfIhGC6wYcjv7e4
	wnK3+ifdhtJjiOvuyT1C4+UZL7iNBaZEUj+0CwgeSJmyWdeBAKSTh6Qt7uOA9MrJZik9ekmmpaEXy
	uWkBlSWrOeTY6/+hR8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cX8-0006Cs-5P; Tue, 25 Feb 2020 15:54:06 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cWm-00063x-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:53:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 32887FB02;
 Tue, 25 Feb 2020 16:53:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzxrP2PCQqbW; Tue, 25 Feb 2020 16:53:36 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 077B9405AD; Tue, 25 Feb 2020 16:53:34 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] phy: fsl-imx8-mipi-dphy: Hook into runtime pm
Date: Tue, 25 Feb 2020 16:53:34 +0100
Message-Id: <ab30161e026bf57846c2803de360983c83840d68.1582645780.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1582645780.git.agx@sigxcpu.org>
References: <cover.1582645780.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_075344_665302_0E43AA45 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

VGhpcyBhbGxvd3MgdXMgdG8gc2h1dCBkb3duIHRoZSBtaXBpIHBvd2VyIGRvbWFpbiBvbiB0aGUg
U09DLiAgVGhlCmFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGRyb3AgdGhlIGRwaHkgZnJvbSB0aGUg
bWlwaSBwb3dlciBkb21haW4gaW4gdGhlClNPQ3MgZGV2aWNlIHRyZWUgYW5kIG9ubHkgaGF2ZSB0
aGUgRFNJIGhvc3QgY29udHJvbGxlciB2aXNpYmxlIHRoZXJlCihhbmQgcmVseSBvbiB0aGUgcGh5
IGxheWVyJ3MgYnVpbHQgaW4gcnVudGltZSBwbSBoYW5kbGluZykgYnV0IHRoaXMKd291bGQgbWFr
ZSB0aGUgcG93ZXIgZG9tYWluIGRlcGVuZGVuY3kgbGVzcyBleHBsaWNpdC4KCkN1cnJlbnRseSB0
aGUgcG0gZG9tYWluIGNhbid0IGJlIHNodXQgb2ZmIHdoZW4gYmxhbmtpbmcgdGhlIHBhbmVsOgoK
cG1fZ2VucGRfc3VtbWFyeQpkb21haW4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyAg
ICAgICAgICBzbGF2ZXMKICAgIC9kZXZpY2UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBydW50aW1lIHN0YXR1cwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCm1pcGkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgb24KICAgIC9kZXZpY2VzL3BsYXRmb3JtL3NvY0AwL3NvY0AwOmJ1
c0AzMDgwMDAwMC8zMGEwMDMwMC5kcGh5ICB1bnN1cHBvcnRlZAogICAgL2RldmljZXMvcGxhdGZv
cm0vc29jQDAvc29jQDA6YnVzQDMwODAwMDAwLzMwYTAwMDAwLm1pcGlfZHNpICBzdXNwZW5kZWQK
CndoaWxlIHdpdGggdGhpcyBjaGFuZ2Ugd2UgY2FuIHNodXQgZG93biB0aGUgcG93ZXIgZG9tYWlu
IG9uIHBhbmVsIGJsYW5rOgoKbWlwaSAgICAgICAgICAgICAgICAgICAgICAgICAgICBvZmYtMAog
ICAgL2RldmljZXMvcGxhdGZvcm0vc29jQDAvc29jQDA6YnVzQDMwODAwMDAwLzMwYTAwMzAwLmRw
aHkgIHN1c3BlbmRlZAogICAgL2RldmljZXMvcGxhdGZvcm0vc29jQDAvc29jQDA6YnVzQDMwODAw
MDAwLzMwYTAwMDAwLm1pcGlfZHNpICBzdXNwZW5kZWQKClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfD
vG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogLi4uL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1p
bXg4LW1pcGktZHBoeS5jICAgIHwgMjIgKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4LW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwppbmRleCA5ZjJjMWRhMTRmNWEuLjc1YmZj
YzQ5NDY2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1t
aXBpLWRwaHkuYworKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4LW1pcGkt
ZHBoeS5jCkBAIC0xNCw2ICsxNCw3IEBACiAjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4K
ICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2
aWNlLmg+CisjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgogI2luY2x1ZGUgPGxpbnV4L3Jl
Z21hcC5oPgogCiAvKiBEUEhZIHJlZ2lzdGVycyAqLwpAQCAtOTMsNiArOTQsNyBAQCBzdHJ1Y3Qg
bWl4ZWxfZHBoeV9jZmcgewogfTsKIAogc3RydWN0IG1peGVsX2RwaHlfcHJpdiB7CisJc3RydWN0
IGRldmljZSAqZGV2OwogCXN0cnVjdCBtaXhlbF9kcGh5X2NmZyBjZmc7CiAJc3RydWN0IHJlZ21h
cCAqcmVnbWFwOwogCXN0cnVjdCBjbGsgKnBoeV9yZWZfY2xrOwpAQCAtMzgyLDYgKzM4NCw3IEBA
IHN0YXRpYyBpbnQgbWl4ZWxfZHBoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCiAJcmV0ID0g
Y2xrX3ByZXBhcmVfZW5hYmxlKHByaXYtPnBoeV9yZWZfY2xrKTsKIAlpZiAocmV0IDwgMCkKIAkJ
cmV0dXJuIHJldDsKKwlwbV9ydW50aW1lX2dldF9zeW5jKHByaXYtPmRldik7CiAKIAlwaHlfd3Jp
dGUocGh5LCBQV1JfT04sIERQSFlfUERfUExMKTsKIAlyZXQgPSByZWdtYXBfcmVhZF9wb2xsX3Rp
bWVvdXQocHJpdi0+cmVnbWFwLCBEUEhZX0xPQ0ssIGxvY2tlZCwKQEAgLTM5NSw2ICszOTgsNyBA
QCBzdGF0aWMgaW50IG1peGVsX2RwaHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQogCiAJcmV0
dXJuIDA7CiBjbG9ja19kaXNhYmxlOgorCXBtX3J1bnRpbWVfcHV0KHByaXYtPmRldik7CiAJY2xr
X2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPnBoeV9yZWZfY2xrKTsKIAlyZXR1cm4gcmV0OwogfQpA
QCAtNDA2LDYgKzQxMCw3IEBAIHN0YXRpYyBpbnQgbWl4ZWxfZHBoeV9wb3dlcl9vZmYoc3RydWN0
IHBoeSAqcGh5KQogCXBoeV93cml0ZShwaHksIFBXUl9PRkYsIERQSFlfUERfUExMKTsKIAlwaHlf
d3JpdGUocGh5LCBQV1JfT0ZGLCBEUEhZX1BEX0RQSFkpOwogCisJcG1fcnVudGltZV9wdXQocHJp
di0+ZGV2KTsKIAljbGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+cGh5X3JlZl9jbGspOwogCiAJ
cmV0dXJuIDA7CkBAIC00NjksNiArNDc0LDcgQEAgc3RhdGljIGludCBtaXhlbF9kcGh5X3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJZGV2X2RiZyhkZXYsICJwaHlfcmVmIGNs
b2NrIHJhdGU6ICVsdVxuIiwKIAkJY2xrX2dldF9yYXRlKHByaXYtPnBoeV9yZWZfY2xrKSk7CiAK
Kwlwcml2LT5kZXYgPSBkZXY7CiAJZGV2X3NldF9kcnZkYXRhKGRldiwgcHJpdik7CiAKIAlwaHkg
PSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBucCwgJm1peGVsX2RwaHlfcGh5X29wcyk7CkBAIC00Nzks
MTIgKzQ4NSwyNiBAQCBzdGF0aWMgaW50IG1peGVsX2RwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAlwaHlfc2V0X2RydmRhdGEocGh5LCBwcml2KTsKIAogCXBoeV9wcm92
aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94
bGF0ZSk7CisJaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpKQorCQlyZXR1cm4gUFRSX0VSUihwaHlf
cHJvdmlkZXIpOwogCi0JcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhwaHlfcHJvdmlkZXIpOworCXBt
X3J1bnRpbWVfZW5hYmxlKGRldik7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBtaXhl
bF9kcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQoreworCXN0cnVjdCBt
aXhlbF9kcGh5X3ByaXYgKnByaXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKworCXBt
X3J1bnRpbWVfZGlzYWJsZShwcml2LT5kZXYpOworCisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG1peGVsX2RwaHlfZHJpdmVyID0gewogCS5wcm9iZQk9IG1p
eGVsX2RwaHlfcHJvYmUsCisJLnJlbW92ZSA9IG1peGVsX2RwaHlfcmVtb3ZlLAogCS5kcml2ZXIg
PSB7CiAJCS5uYW1lID0gIm1peGVsLW1pcGktZHBoeSIsCiAJCS5vZl9tYXRjaF90YWJsZQk9IG1p
eGVsX2RwaHlfb2ZfbWF0Y2gsCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

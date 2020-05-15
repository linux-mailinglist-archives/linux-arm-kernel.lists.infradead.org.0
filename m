Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC31D4EA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xA417SJwhuYH4RbVWaRjXjQYZXKHoDpeJuX96mcCyBs=; b=Tk0b+44ZICB7Eu
	cowlRY0ElIU+nzef+PhRV0yYgEkLCl57AVUHxV2McZ9b0W/Bx+r686vQ8rEs6TBxueD7mQPS6MQVP
	AD61+P3yIUHSCbJsjqBxZ719kqmW8+WHfqFKV+mTK0rF4i4Q8Xsglun/kU55m8NGOPLHq0PPmJRUr
	sL1AIBW+EdTnzCgEKDwlIOy3/9g8wnNidP6O1elZUrvcMvBXQWgpNBU59tn1NT4cq8HUZaiVnuMBw
	raaRVpsS9vayNrvlko66PTVo4MYrBXffY9zkBA3+Hojg0T2TnK1VZJW2+6cC9nYUGpnVtkHoMxCsU
	QleuXz4IUB7PWcHQrjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZa9F-0000oH-Na; Fri, 15 May 2020 13:13:09 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8Z-0000LM-Nh
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 0CC7DFB05;
 Fri, 15 May 2020 15:12:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brG_Y9P4LUL8; Fri, 15 May 2020 15:12:20 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 86BB7445AB; Fri, 15 May 2020 15:12:15 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 4/6] drm/bridge/nwl-dsi: Drop mux handling
Date: Fri, 15 May 2020 15:12:13 +0200
Message-Id: <951688795f969ebcbf9fb3c38065ccce6f488235.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1589548223.git.agx@sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061227_940582_228F0AE7 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

VGhpcyB3aWxsIGJlIGhhbmRsZWQgdmlhIHRoZSBtdXgtaW5wdXQtYnJpZGdlLgoKU2lnbmVkLW9m
Zi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL0tjb25maWcgICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRz
aS5jIHwgNjEgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgNjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9L
Y29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnCmluZGV4IDM4ODZjMGY0MWJk
ZC4uMTE0NDRmODQxZTM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25m
aWcKKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnCkBAIC03OCw3ICs3OCw2IEBA
IGNvbmZpZyBEUk1fTldMX01JUElfRFNJCiAJc2VsZWN0IERSTV9QQU5FTF9CUklER0UKIAlzZWxl
Y3QgR0VORVJJQ19QSFlfTUlQSV9EUEhZCiAJc2VsZWN0IE1GRF9TWVNDT04KLQlzZWxlY3QgTVVM
VElQTEVYRVIKIAlzZWxlY3QgUkVHTUFQX01NSU8KIAloZWxwCiAJICBUaGlzIGVuYWJsZXMgdGhl
IE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBIb3N0IGNvbnRyb2xsZXIgYXMKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9ud2wtZHNpLmMKaW5kZXggYjE0ZDcyNWJmNjA5Li44ODM5ZjMzM2YzOWMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvbndsLWRzaS5jCkBAIC0xMiw3ICsxMiw2IEBACiAjaW5jbHVkZSA8bGludXgvbWF0aDY0
Lmg+CiAjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVs
ZS5oPgotI2luY2x1ZGUgPGxpbnV4L211eC9jb25zdW1lci5oPgogI2luY2x1ZGUgPGxpbnV4L29m
Lmg+CiAjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KICNpbmNsdWRlIDxsaW51eC9waHkv
cGh5Lmg+CkBAIC00NCw5ICs0Myw2IEBAIGVudW0gdHJhbnNmZXJfZGlyZWN0aW9uIHsKIAlEU0lf
UEFDS0VUX1JFQ0VJVkUsCiB9OwogCi0jZGVmaW5lIE5XTF9EU0lfRU5EUE9JTlRfTENESUYgMAot
I2RlZmluZSBOV0xfRFNJX0VORFBPSU5UX0RDU1MgMQotCiBzdHJ1Y3QgbndsX2RzaV9wbGF0X2Ns
a19jb25maWcgewogCWNvbnN0IGNoYXIgKmlkOwogCXN0cnVjdCBjbGsgKmNsazsKQEAgLTk0LDcg
KzkwLDYgQEAgc3RydWN0IG53bF9kc2kgewogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3RfZXNj
OwogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3RfZHBpOwogCXN0cnVjdCByZXNldF9jb250cm9s
ICpyc3RfcGNsazsKLQlzdHJ1Y3QgbXV4X2NvbnRyb2wgKm11eDsKIAogCS8qIERTSSBjbG9ja3Mg
Ki8KIAlzdHJ1Y3QgY2xrICpwaHlfcmVmX2NsazsKQEAgLTEwMTgsMTQgKzEwMTMsNiBAQCBzdGF0
aWMgaW50IG53bF9kc2lfcGFyc2VfZHQoc3RydWN0IG53bF9kc2kgKmRzaSkKIAl9CiAJZHNpLT50
eF9lc2NfY2xrID0gY2xrOwogCi0JZHNpLT5tdXggPSBkZXZtX211eF9jb250cm9sX2dldChkc2kt
PmRldiwgTlVMTCk7Ci0JaWYgKElTX0VSUihkc2ktPm11eCkpIHsKLQkJcmV0ID0gUFRSX0VSUihk
c2ktPm11eCk7Ci0JCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKLQkJCURSTV9ERVZfRVJST1Io
ZHNpLT5kZXYsICJGYWlsZWQgdG8gZ2V0IG11eDogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7
Ci0JfQotCiAJYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsK
IAlpZiAoSVNfRVJSKGJhc2UpKQogCQlyZXR1cm4gUFRSX0VSUihiYXNlKTsKQEAgLTEwNzMsNDcg
KzEwNjAsNiBAQCBzdGF0aWMgaW50IG53bF9kc2lfcGFyc2VfZHQoc3RydWN0IG53bF9kc2kgKmRz
aSkKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBud2xfZHNpX3NlbGVjdF9pbnB1dChzdHJ1
Y3QgbndsX2RzaSAqZHNpKQotewotCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcmVtb3RlOwotCXUzMiB1
c2VfZGNzcyA9IDE7Ci0JaW50IHJldDsKLQotCXJlbW90ZSA9IG9mX2dyYXBoX2dldF9yZW1vdGVf
bm9kZShkc2ktPmRldi0+b2Zfbm9kZSwgMCwKLQkJCQkJICBOV0xfRFNJX0VORFBPSU5UX0xDRElG
KTsKLQlpZiAocmVtb3RlKSB7Ci0JCXVzZV9kY3NzID0gMDsKLQl9IGVsc2UgewotCQlyZW1vdGUg
PSBvZl9ncmFwaF9nZXRfcmVtb3RlX25vZGUoZHNpLT5kZXYtPm9mX25vZGUsIDAsCi0JCQkJCQkg
IE5XTF9EU0lfRU5EUE9JTlRfRENTUyk7Ci0JCWlmICghcmVtb3RlKSB7Ci0JCQlEUk1fREVWX0VS
Uk9SKGRzaS0+ZGV2LAotCQkJCSAgICAgICJObyB2YWxpZCBpbnB1dCBlbmRwb2ludCBmb3VuZFxu
Iik7Ci0JCQlyZXR1cm4gLUVJTlZBTDsKLQkJfQotCX0KLQotCURSTV9ERVZfSU5GTyhkc2ktPmRl
diwgIlVzaW5nICVzIGFzIGlucHV0IHNvdXJjZVxuIiwKLQkJICAgICAodXNlX2Rjc3MpID8gIkRD
U1MiIDogIkxDRElGIik7Ci0JcmV0ID0gbXV4X2NvbnRyb2xfdHJ5X3NlbGVjdChkc2ktPm11eCwg
dXNlX2Rjc3MpOwotCWlmIChyZXQgPCAwKQotCQlEUk1fREVWX0VSUk9SKGRzaS0+ZGV2LCAiRmFp
bGVkIHRvIHNlbGVjdCBpbnB1dDogJWRcbiIsIHJldCk7Ci0KLQlvZl9ub2RlX3B1dChyZW1vdGUp
OwotCXJldHVybiByZXQ7Ci19Ci0KLXN0YXRpYyBpbnQgbndsX2RzaV9kZXNlbGVjdF9pbnB1dChz
dHJ1Y3QgbndsX2RzaSAqZHNpKQotewotCWludCByZXQ7Ci0KLQlyZXQgPSBtdXhfY29udHJvbF9k
ZXNlbGVjdChkc2ktPm11eCk7Ci0JaWYgKHJldCA8IDApCi0JCURSTV9ERVZfRVJST1IoZHNpLT5k
ZXYsICJGYWlsZWQgdG8gZGVzZWxlY3QgaW5wdXQ6ICVkXG4iLCByZXQpOwotCi0JcmV0dXJuIHJl
dDsKLX0KLQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX3RpbWluZ3MgbndsX2RzaV90
aW1pbmdzID0gewogCS5pbnB1dF9idXNfZmxhZ3MgPSBEUk1fQlVTX0ZMQUdfREVfTE9XLAogfTsK
QEAgLTExNzUsMTIgKzExMjEsNiBAQCBzdGF0aWMgaW50IG53bF9kc2lfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlkZXZfc2V0X2RydmRhdGEoZGV2LCBkc2kpOwogCXBtX3J1
bnRpbWVfZW5hYmxlKGRldik7CiAKLQlyZXQgPSBud2xfZHNpX3NlbGVjdF9pbnB1dChkc2kpOwot
CWlmIChyZXQgPCAwKSB7Ci0JCW1pcGlfZHNpX2hvc3RfdW5yZWdpc3RlcigmZHNpLT5kc2lfaG9z
dCk7Ci0JCXJldHVybiByZXQ7Ci0JfQotCiAJZHJtX2JyaWRnZV9hZGQoJmRzaS0+YnJpZGdlKTsK
IAlyZXR1cm4gMDsKIH0KQEAgLTExODksNyArMTEyOSw2IEBAIHN0YXRpYyBpbnQgbndsX2RzaV9y
ZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgbndsX2RzaSAq
ZHNpID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKLQlud2xfZHNpX2Rlc2VsZWN0X2lu
cHV0KGRzaSk7CiAJbWlwaV9kc2lfaG9zdF91bnJlZ2lzdGVyKCZkc2ktPmRzaV9ob3N0KTsKIAlk
cm1fYnJpZGdlX3JlbW92ZSgmZHNpLT5icmlkZ2UpOwogCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRl
di0+ZGV2KTsKLS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

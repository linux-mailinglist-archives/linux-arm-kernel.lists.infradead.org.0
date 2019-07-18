Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC03C6CC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe3tAE7/AclT3+bLRz4oqZ+L3uqvceHQa4YQ7iOjPbk=; b=FNTPFfo+T0zD/k
	g3Y6+uSDEUzBuJJqJKx5Tg6VB46tIY5262AEQFBdaRAI5St5bjZfVUR1fyDYZBBHZaY6vxamBp/mh
	fK+y+MZCk72xrsLiR/ie400rD7qr4LA0WXMMXT8GJ36iUk3JpXk/lLimkwxcYoORqdZ0STyKcCU1J
	7q4in6RpLB7x/EjS0Dnt+MexiQO+BRrUDVpQ6yoPFZ2+q7hYSB3GpqFMY8geXZ6A1RpdOc8oSlQIS
	5ZVlc41Aso1harWvjXdV59ULAFZn6fMbxz5FON0SdZyH6s8HMUkbPvb+/+UIfiPdOJLN4nERb+pa9
	eCi08XezilWajutkemmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3CA-0005XO-6Z; Thu, 18 Jul 2019 09:59:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3Bi-0005Ms-Tl
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:59:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 812141A0047;
 Thu, 18 Jul 2019 11:58:57 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 802091A00EE;
 Thu, 18 Jul 2019 11:58:51 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 479FE402D5;
 Thu, 18 Jul 2019 17:58:44 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 2/2] gpio: mpc8xxx: Add ls1028a device specify function.
Date: Thu, 18 Jul 2019 17:49:02 +0800
Message-Id: <20190718094902.15562-2-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190718094902.15562-1-hui.song_1@nxp.com>
References: <20190718094902.15562-1-hui.song_1@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_025859_333023_BC000564 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Song Hui <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogU29uZyBIdWkgPGh1aS5zb25nXzFAbnhwLmNvbT4KClRoZXJlIGlzIGEgZGV2aWNlIHNw
ZWNpZnkgcmVnaXN0ZXIobmFtZWQgR1BJT19JQkUpCm9uIGxzMTAyOGEgbmVlZCB0byBlbmFibGUg
aW4gaW5pdGlhbCBzdGFnZS4KClNpZ25lZC1vZmYtYnk6IFNvbmcgSHVpIDxodWkuc29uZ18xQG54
cC5jb20+Ci0tLQogZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jIHwgMzEgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1tcGM4eHh4LmMgYi9kcml2ZXJzL2dwaW8vZ3Bp
by1tcGM4eHh4LmMKaW5kZXggYzg2NzNhNS4uMWE2ODBhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cGlvL2dwaW8tbXBjOHh4eC5jCisrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYwpAQCAt
MzIsNiArMzIsNyBAQAogI2RlZmluZSBHUElPX0lNUgkJMHgxMAogI2RlZmluZSBHUElPX0lDUgkJ
MHgxNAogI2RlZmluZSBHUElPX0lDUjIJCTB4MTgKKyNkZWZpbmUgR1BJT19JQkUJCTB4MTgKIAog
c3RydWN0IG1wYzh4eHhfZ3Bpb19jaGlwIHsKIAlzdHJ1Y3QgZ3Bpb19jaGlwCWdjOwpAQCAtNDUs
NiArNDYsMjcgQEAgc3RydWN0IG1wYzh4eHhfZ3Bpb19jaGlwIHsKIAl1bnNpZ25lZCBpbnQgaXJx
bjsKIH07CiAKKy8qIFRoZSBHUElPIElucHV0IEJ1ZmZlciBFbmFibGUgcmVnaXN0ZXIoR1BJT19J
QkUpIGlzIHVzZWQgdG8KKyAqIGNvbnRyb2wgdGhlIGlucHV0IGVuYWJsZSBvZiBlYWNoIGluZGl2
aWR1YWwgR1BJTyBwb3J0LgorICogV2hlbiBhbiBpbmRpdmlkdWFsIEdQSU8gcG9ydOKAmXMgZGly
ZWN0aW9uIGlzIHNldCB0bworICogaW5wdXQgKEdQSU9fR1BESVJbRFJuPTBdKSwgdGhlIGFzc29j
aWF0ZWQgaW5wdXQgZW5hYmxlIG11c3QgYmUKKyAqIHNldCAoR1BJT3hHUElFW0lFbl09MSkgdG8g
cHJvcGFnYXRlIHRoZSBwb3J0IHZhbHVlIHRvIHRoZSBHUElPCisgKiBEYXRhIFJlZ2lzdGVyLgor
ICovCitzdGF0aWMgaW50IGxzMTAyOGFfZ3Bpb19kaXJfaW5faW5pdChzdHJ1Y3QgZ3Bpb19jaGlw
ICpnYykKK3sKKwl1bnNpZ25lZCBsb25nIGZsYWdzOworCXN0cnVjdCBtcGM4eHh4X2dwaW9fY2hp
cCAqbXBjOHh4eF9nYyA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKKworCXNwaW5fbG9ja19pcnFz
YXZlKCZnYy0+YmdwaW9fbG9jaywgZmxhZ3MpOworCisJZ2MtPndyaXRlX3JlZyhtcGM4eHh4X2dj
LT5yZWdzICsgR1BJT19JQkUsIDB4ZmZmZmZmZmYpOworCisJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmZ2MtPmJncGlvX2xvY2ssIGZsYWdzKTsKKworCXJldHVybiAwOworfQorCiAvKgogICogVGhp
cyBoYXJkd2FyZSBoYXMgYSBiaWcgZW5kaWFuIGJpdCBhc3NpZ25tZW50IHN1Y2ggdGhhdCBHUElP
IGxpbmUgMCBpcwogICogY29ubmVjdGVkIHRvIGJpdCAzMSwgbGluZSAxIHRvIGJpdCAzMCAuLi4g
bGluZSAzMSB0byBiaXQgMC4KQEAgLTI2MSw2ICsyODMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGlycV9kb21haW5fb3BzIG1wYzh4eHhfZ3Bpb19pcnFfb3BzID0gewogfTsKIAogc3RydWN0IG1w
Yzh4eHhfZ3Bpb19kZXZ0eXBlIHsKKwlpbnQgKCpncGlvX2Rpcl9pbl9pbml0KShzdHJ1Y3QgZ3Bp
b19jaGlwICpjaGlwKTsKIAlpbnQgKCpncGlvX2Rpcl9vdXQpKHN0cnVjdCBncGlvX2NoaXAgKiwg
dW5zaWduZWQgaW50LCBpbnQpOwogCWludCAoKmdwaW9fZ2V0KShzdHJ1Y3QgZ3Bpb19jaGlwICos
IHVuc2lnbmVkIGludCk7CiAJaW50ICgqaXJxX3NldF90eXBlKShzdHJ1Y3QgaXJxX2RhdGEgKiwg
dW5zaWduZWQgaW50KTsKQEAgLTI3MSw2ICsyOTQsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBt
cGM4eHh4X2dwaW9fZGV2dHlwZSBtcGM1MTJ4X2dwaW9fZGV2dHlwZSA9IHsKIAkuaXJxX3NldF90
eXBlID0gbXBjNTEyeF9pcnFfc2V0X3R5cGUsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IG1w
Yzh4eHhfZ3Bpb19kZXZ0eXBlIGxzMTAyOGFfZ3Bpb19kZXZ0eXBlID0geworCS5ncGlvX2Rpcl9p
bl9pbml0ID0gbHMxMDI4YV9ncGlvX2Rpcl9pbl9pbml0LAorfTsKKwogc3RhdGljIGNvbnN0IHN0
cnVjdCBtcGM4eHh4X2dwaW9fZGV2dHlwZSBtcGM1MTI1X2dwaW9fZGV2dHlwZSA9IHsKIAkuZ3Bp
b19kaXJfb3V0ID0gbXBjNTEyNV9ncGlvX2Rpcl9vdXQsCiAJLmlycV9zZXRfdHlwZSA9IG1wYzUx
MnhfaXJxX3NldF90eXBlLApAQCAtMjkxLDYgKzMxOCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIG1wYzh4eHhfZ3Bpb19pZHNbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImZz
bCxtcGM1MTIxLWdwaW8iLCAuZGF0YSA9ICZtcGM1MTJ4X2dwaW9fZGV2dHlwZSwgfSwKIAl7IC5j
b21wYXRpYmxlID0gImZzbCxtcGM1MTI1LWdwaW8iLCAuZGF0YSA9ICZtcGM1MTI1X2dwaW9fZGV2
dHlwZSwgfSwKIAl7IC5jb21wYXRpYmxlID0gImZzbCxwcTMtZ3BpbyIsICAgICB9LAorCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtZ3BpbyIsIC5kYXRhID0gJmxzMTAyOGFfZ3Bpb19kZXZ0
eXBlLCB9LAogCXsgLmNvbXBhdGlibGUgPSAiZnNsLHFvcmlxLWdwaW8iLCAgIH0sCiAJe30KIH07
CkBAIC0zNzYsNiArNDA0LDkgQEAgc3RhdGljIGludCBtcGM4eHh4X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJLyogYWNrIGFuZCBtYXNrIGFsbCBpcnFzICovCiAJZ2MtPndy
aXRlX3JlZyhtcGM4eHh4X2djLT5yZWdzICsgR1BJT19JRVIsIDB4ZmZmZmZmZmYpOwogCWdjLT53
cml0ZV9yZWcobXBjOHh4eF9nYy0+cmVncyArIEdQSU9fSU1SLCAwKTsKKwkvKiBlbmFibGUgaW5w
dXQgYnVmZmVyICAqLworCWlmIChkZXZ0eXBlLT5ncGlvX2Rpcl9pbl9pbml0KQorCQlkZXZ0eXBl
LT5ncGlvX2Rpcl9pbl9pbml0KGdjKTsKIAogCWlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9k
YXRhKG1wYzh4eHhfZ2MtPmlycW4sCiAJCQkJCSBtcGM4eHh4X2dwaW9faXJxX2Nhc2NhZGUsIG1w
Yzh4eHhfZ2MpOwotLSAKMi45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

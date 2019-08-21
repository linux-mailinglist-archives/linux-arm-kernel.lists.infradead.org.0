Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F998628
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aFtmTf+j3QD3lrfICdn/VywrFx+8h1MWSFQBHjrOfL8=; b=FLh15oTDRT3S/J
	B4vovb/qNf2wl+uA6Yv2c55Szb375+uwqVQOMaYEl2ss5JCyH1wbGwan/2RhznsvG+kjTeQq5SkPj
	SZqyCvsrzzj/yppvcUKIrHJwQxgdWW8j6rPyd2XdsfhC2+bg/648RrwEzRmO85BfhMt8dmH6Ouxhz
	Z89Ph4Marjt7avIDbzjZCnK9b7oAOoAqK9MGvwipBgHultilB/12QNTWPTTDo6J+JLWARuBZstzxH
	tjMpJ+nkcQ5DEXK9LCfMd0TamnBnHMwe6ErmuqlY2k3UN+YXUlDvpo2NfEA6mDYFHCbf28deGPIET
	WtmTM65K6fYDVUVa5SKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xjb-0000EV-0v; Wed, 21 Aug 2019 21:01:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XjS-00004y-5B
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:01:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so3532846wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UhcZQ4lA9u+37V2YEzYCZa77qAOCxfCX3xooq/2fuug=;
 b=N05pmviJKP8bZU9VEbj3bzBOI+RzcCRMM2dZ3p3uhStr2Ox7nFeWLi4EyX4HE4pZJT
 bw1DduTzfE6m23jKKjUdFaBg3NWijOh/bKx+mwrgvd1VWnsIaDNDh9zsmF0G0PYWFH0Q
 iNLjEq1Qgk40H9b6C2DHuAcHe1fsu0cvP1CVur/kYviJ0VVf5Bl3dOc954c5ro9tW1vE
 xsZl6ysXTtixVNZ4g+tiqAb9kfnDrYf7FlhsHQ/n+pzeuORRQ9CR2Y4ysFFE9lMWlxxI
 hw2C276SX5C0XPKuyxNVeEVF6XhIuUiEmeHapD0K2O4UxMh6l0w4ZcnitXzQYsBM3yDF
 npNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UhcZQ4lA9u+37V2YEzYCZa77qAOCxfCX3xooq/2fuug=;
 b=fPaPr3J4ge3H7KgyEIP9BaEPUpCCBFM8XUKfpfSBDB/2STdt1JkXf50cSzp5q5vdPq
 kXwpWh0JjN4YnU4+aS3EG+zII+kHhFrZsJkposhSb5DBfW7t8ksasWOWZfu4nuzmDph6
 lS3w+mDMVuqyNlslYM+f5+j/6EhuHJK/EEke0sfwjJNChmxTXBgbD+uzVaGbSeGwXTuv
 /121M27gjiZ0G1Y6K1Obpre0aah7GX645TdFCeQpBwEXJspaxq5auhezofdIYB0EIBA/
 JIBtniAoIg7fI1JN+uwjRMj0he0z3oZ0xRIfKCj2rRF2jbkOubnDbxOGRIF97y+7G+ct
 EAEg==
X-Gm-Message-State: APjAAAVsObcDOGKLKqjXMkbADffTfmhqJDUKYm5sVG4PXcL3LRxfoyx/
 zPzl6b6Ltx0F1YGiWVmYGSU=
X-Google-Smtp-Source: APXvYqxcY255zvfu7hHpFXkZjptvve/MnSI69viqZPleaXoRDa/TDCYIO3349YjnWOHfqVxFA1KTEw==
X-Received: by 2002:a7b:c632:: with SMTP id p18mr2240221wmk.114.1566421284357; 
 Wed, 21 Aug 2019 14:01:24 -0700 (PDT)
Received: from alejandro-pc.mundo-R.com
 (57.166.117.91.dynamic.reverse-mundo-r.com. [91.117.166.57])
 by smtp.gmail.com with ESMTPSA id f6sm49972599wrh.30.2019.08.21.14.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:01:23 -0700 (PDT)
From: =?UTF-8?q?Alejandro=20Gonz=C3=A1lez?=
 <alejandro.gonzalez.correo@gmail.com>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 maxime.ripard@bootlin.com, wens@csie.org, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 1/1] rtc: sun6i: Allow using as wakeup source from
 suspend
Date: Wed, 21 Aug 2019 23:00:56 +0200
Message-Id: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_140126_227299_1FEE204C 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alejandro.gonzalez.correo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, =?UTF-8?q?Alejandro=20Gonz=C3=A1lez?=
 <alejandro.gonzalez.correo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhbGxvd3MgdXNlcnNwYWNlIHRvIHNldCB1cCB3YWtldXAgYWxhcm1zIG9uIGFu
eSBSVEMgaGFuZGxlZCBieSB0aGUKc3VuNmkgZHJpdmVyLCBhbmQgYWRkcyB0aGUgbmVjZXNzYXJ5
IFBNIG9wZXJhdGlvbnMgdG8gYWxsb3cgcmVzdW1pbmcgZnJvbQpzdXNwZW5kIHdoZW4gdGhlIGNv
bmZpZ3VyZWQgd2FrZXVwIGFsYXJtIGZpcmVzIGEgSVJRLiBPZiBjb3Vyc2UsIHRoYXQgdGhlCmRl
dmljZSBhY3R1YWxseSByZXN1bWVzIGRlcGVuZHMgb24gdGhlIHN1c3BlbmQgc3RhdGUgYW5kIGhv
dyBhIHBhcnRpY3VsYXIKaGFyZHdhcmUgcmVhY3RzIHRvIGl0LCBidXQgdGhhdCBpcyBvdXQgb2Yg
c2NvcGUgZm9yIHRoaXMgcGF0Y2guCgpJJ3ZlIHRlc3RlZCB0aGVzZSBjaGFuZ2VzIG9uIGEgUGlu
ZSBINjQgbW9kZWwgQiwgd2hpY2ggY29udGFpbnMgYQpBbGx3aW5uZXIgSDYgU29DLCB3aXRoIHRo
ZSBoZWxwIG9mIENPTkZJR19QTV9URVNUX1NVU1BFTkQga2VybmVsIG9wdGlvbi4KVGhlc2UgYXJl
IHRoZSBpbnRlcmVzdGluZyBvdXRwdXRzIGZyb20gdGhlIGtlcm5lbCBhbmQgY29tbWFuZHMgd2hp
Y2gKc2hvdyB0aGF0IGl0IHdvcmtzLiBBcyBldmVyeSBSVEMgaGFuZGxlZCBieSB0aGlzIGRyaXZl
ciBpcyBsYXJnZWx5IHRoZQpzYW1lLCBJIHRoaW5rIHRoYXQgaXQgc2hvdWxkbid0IGludHJvZHVj
ZSBhbnkgcmVncmVzc2lvbiBvbiBvdGhlciBTb0NzLApidXQgSSBtYXkgYmUgd3JvbmcuCgpbICAg
IDEuMDkyNzA1XSBQTTogdGVzdCBSVEMgd2FrZXVwIGZyb20gJ2ZyZWV6ZScgc3VzcGVuZApbICAg
IDEuMDk4MjMwXSBQTTogc3VzcGVuZCBlbnRyeSAoczJpZGxlKQpbICAgIDEuMjEyOTA3XSBQTTog
c3VzcGVuZCBkZXZpY2VzIHRvb2sgMC4wODAgc2Vjb25kcwooVGhlIFNvQyBmcmVlemVzIGZvciBz
b21lIHNlY29uZHMpClsgICAgMy4xOTc2MDRdIFBNOiByZXN1bWUgZGV2aWNlcyB0b29rIDAuMTA0
IHNlY29uZHMKWyAgICAzLjIxNTkzN10gUE06IHN1c3BlbmQgZXhpdAoKWyAgICAxLjA5MjgxMl0g
UE06IHRlc3QgUlRDIHdha2V1cCBmcm9tICdtZW0nIHN1c3BlbmQKWyAgICAxLjA5ODA4OV0gUE06
IHN1c3BlbmQgZW50cnkgKGRlZXApClsgICAgMS4xMDIwMzNdIFBNOiBzdXNwZW5kIGV4aXQKWyAg
ICAxLjEwNTIwNV0gUE06IHN1c3BlbmQgdGVzdCBmYWlsZWQsIGVycm9yIC0yMgoKSW4gYW55IGNh
c2UsIHRoZSBSVEMgYWxhcm0gaW50ZXJydXB0IGdldHMgZmlyZWQgYXMgZXhwdGVjdGVkOgoKJCBl
Y2hvICs1ID4gL3N5cy9jbGFzcy9ydGMvcnRjMC93YWtlYWxhcm0gJiYgc2xlZXAgNSAmJiBncmVw
IHJ0YyAvcHJvYy9pbnRlcnJ1cHRzCiAyOTogICAgICAgICAgMSAgICAgICAgICAwICAgICAgICAg
IDAgICAgICAgICAgMCAgICAgR0lDdjIgMTMzIExldmVsICAgICA3MDAwMDAwLnJ0YwoKU2lnbmVk
LW9mZi1ieTogQWxlamFuZHJvIEdvbnrDoWxleiA8YWxlamFuZHJvLmdvbnphbGV6LmNvcnJlb0Bn
bWFpbC5jb20+Ci0tLQogZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMgfCAzMCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMgYi9kcml2ZXJzL3J0Yy9ydGMtc3VuNmku
YwppbmRleCBjMGU3NWMzNzM2MDUuLmI3NjExZTVkZWEzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9y
dGMvcnRjLXN1bjZpLmMKKysrIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKQEAgLTU5OCw2ICs1
OTgsMzMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBydGNfY2xhc3Nfb3BzIHN1bjZpX3J0Y19vcHMg
PSB7CiAJLmFsYXJtX2lycV9lbmFibGUJPSBzdW42aV9ydGNfYWxhcm1faXJxX2VuYWJsZQogfTsK
IAorI2lmZGVmIENPTkZJR19QTV9TTEVFUAorLyogRW5hYmxlIElSUSB3YWtlIG9uIHN1c3BlbmQs
IHRvIHdha2UgdXAgZnJvbSBSVEMuICovCitzdGF0aWMgaW50IHN1bjZpX3J0Y19zdXNwZW5kKHN0
cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3Qgc3VuNmlfcnRjX2RldiAqY2hpcCA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOworCisJaWYgKGRldmljZV9tYXlfd2FrZXVwKGRldikpCisJCWVuYWJs
ZV9pcnFfd2FrZShjaGlwLT5pcnEpOworCisJcmV0dXJuIDA7Cit9CisKKy8qIERpc2FibGUgSVJR
IHdha2Ugb24gcmVzdW1lLiAqLworc3RhdGljIGludCBzdW42aV9ydGNfcmVzdW1lKHN0cnVjdCBk
ZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3Qgc3VuNmlfcnRjX2RldiAqY2hpcCA9IGRldl9nZXRfZHJ2
ZGF0YShkZXYpOworCisJaWYgKGRldmljZV9tYXlfd2FrZXVwKGRldikpCisJCWRpc2FibGVfaXJx
X3dha2UoY2hpcC0+aXJxKTsKKworCXJldHVybiAwOworfQorI2VuZGlmCisKK3N0YXRpYyBTSU1Q
TEVfREVWX1BNX09QUyhzdW42aV9ydGNfcG1fb3BzLAorCXN1bjZpX3J0Y19zdXNwZW5kLCBzdW42
aV9ydGNfcmVzdW1lKTsKKwogc3RhdGljIGludCBzdW42aV9ydGNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3Qgc3VuNmlfcnRjX2RldiAqY2hpcCA9IHN1bjZp
X3J0YzsKQEAgLTY1MCw2ICs2NzcsOCBAQCBzdGF0aWMgaW50IHN1bjZpX3J0Y19wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJY2xrX3ByZXBhcmVfZW5hYmxlKGNoaXAtPmxv
c2MpOwogCisJZGV2aWNlX2luaXRfd2FrZXVwKCZwZGV2LT5kZXYsIDEpOworCiAJY2hpcC0+cnRj
ID0gZGV2bV9ydGNfZGV2aWNlX3JlZ2lzdGVyKCZwZGV2LT5kZXYsICJydGMtc3VuNmkiLAogCQkJ
CQkgICAgICZzdW42aV9ydGNfb3BzLCBUSElTX01PRFVMRSk7CiAJaWYgKElTX0VSUihjaGlwLT5y
dGMpKSB7CkBAIC02ODQsNiArNzEzLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIg
c3VuNmlfcnRjX2RyaXZlciA9IHsKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJCT0gInN1bjZpLXJ0
YyIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IHN1bjZpX3J0Y19kdF9pZHMsCisJCS5wbSA9ICZzdW42
aV9ydGNfcG1fb3BzLAogCX0sCiB9OwogYnVpbHRpbl9wbGF0Zm9ybV9kcml2ZXIoc3VuNmlfcnRj
X2RyaXZlcik7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

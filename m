Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61D0BBB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 23:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEP1bHwP/a4fN3SDGOJcGBsY56GQv1mU78RBZ0l/npA=; b=PfH2tHFd9N6Ebu
	vhMTkZ0iUeBIVzvy+ZBjboiD7bS7zzNaq19nFUvI9opRZ8tlLlI+wDq/LzT8k0AxJxRJ9HCveM39r
	TQz6tf2eCVlAWZ+E8bcLNKJvyxINf93+EtVoer5g7OL26ujRQ4J1wACemR+dnK1r9nED072uEjL9k
	til7YxghEKmOYDQSC2Duk+Vh+N6OeadsrJCAv7f/SKwW6z9mmPSVsv3H5UawNX6z4JU67DpPxAE7S
	QGFN0bu3R4hdhMbcY4Ctm7VrRCtEavNRfjMVVAv/VOUhTf2eaglqCqf6gEKhX5l9cJf5uoxXoRegG
	mtyUlfmacH2UPWhPirrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKrVW-0001LG-9L; Sun, 28 Apr 2019 21:38:46 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrUi-0000f1-07
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 21:38:00 +0000
Received: from dellmb.labs.office.nic.cz (unknown [172.20.6.125])
 by mail.nic.cz (Postfix) with ESMTP id 6F43D636CA;
 Sun, 28 Apr 2019 23:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1556487470; bh=sA7kiEuh4QXCWYPshokQR9pDPoUOEQczNIZkvDbYtX8=;
 h=From:To:Date;
 b=tycPbfQ7VOvKrJSdGcyLrvgVjqEjtGeE/Hk0lCjmf5taQ7iqgBqXHFcUcQIpiI5xP
 zQ9Il8gDuVH3IlLOJ5MPOHE66jl3J5mhZseVMK36Jf17H8s2U4PeESoLkjNvdbG0nf
 vIecEAiEe8KWM9391fxPTIObLPFWJ6ysVG0m+BhY=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v5 armsoc/drivers/bus+gpio 3/5] bus: moxtet: Add sysfs and
 debugfs documentation
Date: Sun, 28 Apr 2019 23:37:47 +0200
Message-Id: <20190428213749.7017-4-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190428213749.7017-1-marek.behun@nic.cz>
References: <20190428213749.7017-1-marek.behun@nic.cz>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_143756_373277_411578D4 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN5c2ZzIEFCSSBkb2N1bWVudGF0aW9uIGZvciB0aGUgYXR0cmlidXRlIGZpbGVzIG1vZHVs
ZV9pZCBhbmQKbW9kdWxlX25hbWUKCkFkZCBkZWJ1Z2ZzIEFCSSBkb2N1bWVudGF0aW9uIGZvciBy
ZWFkaW5nIGlucHV0IGZyb20gdGhlIHNoaWZ0IHJlZ2lzdGVycwphbmQgcmVhZGluZyBsYXN0IHdy
aXR0ZW4gb3V0cHV0IG9yIHdyaXRlIG91dHB1dCB0byB0aGUgc2hpZnQgcmVnaXN0ZXJzLgoKU2ln
bmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+ClJldmlld2VkLWJ5
OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Ci0tLQogRG9jdW1lbnRh
dGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLW1veHRldCAgICAgIHwgMjMgKysrKysrKysrKysrKysr
KysrKwogLi4uL0FCSS90ZXN0aW5nL3N5c2ZzLWJ1cy1tb3h0ZXQtZGV2aWNlcyAgICAgIHwgMTcg
KysrKysrKysrKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL2RlYnVnZnMtbW94dGV0CiBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1idXMtbW94dGV0
LWRldmljZXMKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL2RlYnVnZnMt
bW94dGV0IGIvRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLW1veHRldApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjMyYTAyZTdkMGY0ZQotLS0gL2Rldi9u
dWxsCisrKyBiL0RvY3VtZW50YXRpb24vQUJJL3Rlc3RpbmcvZGVidWdmcy1tb3h0ZXQKQEAgLTAs
MCArMSwyMyBAQAorV2hhdDoJCS9zeXMva2VybmVsL2RlYnVnL21veHRldC9pbnB1dAorRGF0ZToJ
CU1hcmNoIDIwMTkKK0tlcm5lbFZlcnNpb246CTUuMgorQ29udGFjdDoJTWFyZWsgQmVow7puIDxt
YXJlay5iZWh1bkBuaWMuY3o+CitEZXNjcmlwdGlvbjoJKFIpIFJlYWQgaW5wdXQgZnJvbSB0aGUg
c2hpZnQgcmVnaXN0ZXJzLCBpbiBoZXhhZGVjaW1hbC4KKwkJUmV0dXJucyBOKzEgYnl0ZXMsIHdo
ZXJlIE4gaXMgdGhlIG51bWJlciBvZiBNb3h0ZXQgY29ubmVjdGVkCisJCW1vZHVsZXMuIFRoZSBm
aXJzdCBieXRlIGlzIGZyb20gdGhlIENQVSBib2FyZCBpdHNlbGYuCisJCUV4YW1wbGU6IDEwMTIx
NAorCQkJIDEwOiBDUFUgYm9hcmQgd2l0aCBTRCBjYXJkCisJCQkgMTI6IDIgPSBQQ0llIG1vZHVs
ZSwgMSA9IElSUSBub3QgYWN0aXZlCisJCQkgMTQ6IDQgPSBQZXJpZG90IG1vZHVsZSwgMSA9IElS
USBub3QgYWN0aXZlCisKK1doYXQ6CQkvc3lzL2tlcm5lbC9kZWJ1Zy9tb3h0ZXQvb3V0cHV0CitE
YXRlOgkJTWFyY2ggMjAxOQorS2VybmVsVmVyc2lvbjoJNS4yCitDb250YWN0OglNYXJlayBCZWjD
um4gPG1hcmVrLmJlaHVuQG5pYy5jej4KK0Rlc2NyaXB0aW9uOgkoUlcpIFJlYWQgbGFzdCB3cml0
dGVuIHZhbHVlIHRvIHRoZSBzaGlmdCByZWdpc3RlcnMsIGluCisJCWhleGFkZWNpbWFsLCBvciB3
cml0ZSB2YWx1ZXMgdG8gdGhlIHNoaWZ0IHJlZ2lzdGVycywgYWxzbworCQlpbiBoZXhhZGVjaW1h
bC4KKwkJRXhhbXBsZTogMDEwMgorCQkJIDAxOiAwMSB3YXMgbGFzdCB3cml0dGVuLCBvciBpcyB0
byBiZSB3cml0dGVuLCB0byB0aGUKKwkJCSAgICAgZmlyc3QgbW9kdWxlJ3Mgc2hpZnQgcmVnaXN0
ZXIKKwkJCSAwMjogdGhlIHNhbWUgZm9yIHNlY29uZCBtb2R1bGUKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLW1veHRldC1kZXZpY2VzIGIvRG9jdW1lbnRh
dGlvbi9BQkkvdGVzdGluZy9zeXNmcy1idXMtbW94dGV0LWRldmljZXMKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zZTMyNTZiMzdhM2MKLS0tIC9kZXYvbnVsbAorKysg
Yi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWJ1cy1tb3h0ZXQtZGV2aWNlcwpAQCAt
MCwwICsxLDE3IEBACitXaGF0OgkJL3N5cy9idXMvbW94dGV0L2RldmljZXMvbW94dGV0LTxuYW1l
Pi48YWRkcj4vbW9kdWxlX2Rlc2NyaXB0aW9uCitEYXRlOgkJTWFyY2ggMjAxOQorS2VybmVsVmVy
c2lvbjoJNS4yCitDb250YWN0OglNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KK0Rl
c2NyaXB0aW9uOgkoUikgTW94dGV0IG1vZHVsZSBkZXNjcmlwdGlvbi4gRm9ybWF0OiBzdHJpbmcK
KworV2hhdDoJCS9zeXMvYnVzL21veHRldC9kZXZpY2VzL21veHRldC08bmFtZT4uPGFkZHI+L21v
ZHVsZV9pZAorRGF0ZToJCU1hcmNoIDIwMTkKK0tlcm5lbFZlcnNpb246CTUuMgorQ29udGFjdDoJ
TWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+CitEZXNjcmlwdGlvbjoJKFIpIE1veHRl
dCBtb2R1bGUgSUQuIEZvcm1hdDogJXgKKworV2hhdDoJCS9zeXMvYnVzL21veHRldC9kZXZpY2Vz
L21veHRldC08bmFtZT4uPGFkZHI+L21vZHVsZV9uYW1lCitEYXRlOgkJTWFyY2ggMjAxOQorS2Vy
bmVsVmVyc2lvbjoJNS4yCitDb250YWN0OglNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5j
ej4KK0Rlc2NyaXB0aW9uOgkoUikgTW94dGV0IG1vZHVsZSBuYW1lLiBGb3JtYXQ6IHN0cmluZwpk
aWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCAyYjVmZjMzNjgwNTku
LjlkYjhmNzRlMWRhNyAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMK
QEAgLTE1NDEsNiArMTU0MSw4IEBAIEFSTS9DWi5OSUMgVFVSUklTIE1PWCBTVVBQT1JUCiBNOglN
YXJlayBCZWh1biA8bWFyZWsuYmVodW5AbmljLmN6PgogVzoJaHR0cDovL21veC50dXJyaXMuY3oK
IFM6CU1haW50YWluZWQKK0Y6CURvY3VtZW50YXRpb24vQUJJL3Rlc3RpbmcvZGVidWdmcy1tb3h0
ZXQKK0Y6CURvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLW1veHRldC1kZXZpY2Vz
CiBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQKIEY6
CWluY2x1ZGUvbGludXgvbW94dGV0LmgKIEY6CWRyaXZlcnMvYnVzL21veHRldC5jCi0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==

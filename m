Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A41019ABB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9uHDvpQA1vncbdRVCHfrJvm5m3IuHtdr4e4J+xQXvU=; b=qRcuW95AvU7Sp2
	0hrzgAgAVo6DYcZ2SGVTTODBWxbS9wBkXkCa3J5xlpWFvPoB65LgiM1PJpsNqiBCe+9FSUxGr3Etj
	EBmbwI+t2tE8W9bkVy2xustkXHE7hNrvuoJaUzdFBvXZjs4YWsgmyo5+lEfiVChRTw114ykTsoBeS
	aqsZb1IkgwX+PGHnnu2dLiiXQ5VptLdLfrI4YboGnry4vf0ggkTVaqc86sPof1v6dyC1WvnRkXv3A
	t6p7hYjhhLNwzotZuxhjs+o4NxPlS805DsgiHSMhYdh8sxBmYu40UCyu6tJSVqMZzbAriWSR3dMIO
	NghbKnSJVqr7Hm5Q004w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1wo-0007z8-HK; Fri, 10 May 2019 09:36:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1wV-0007pq-6P; Fri, 10 May 2019 09:35:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7FCB34346;
 Fri, 10 May 2019 11:35:42 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2c4ea12c;
 Fri, 10 May 2019 11:35:41 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net 0/5] of_get_mac_address fixes
Date: Fri, 10 May 2019 11:35:13 +0200
Message-Id: <1557480918-9627-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_023551_389285_283BBF08 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBob3BlZnVseSB0aGUgbGFzdCBzZXJpZXMgb2YgdGhl
IGZpeGVzIHdoaWNoIGFyZSByZWxhdGVkCnRvIHRoZSBpbnRyb2R1Y3Rpb24gb2YgTlZNRU0gc3Vw
cG9ydCBpbnRvIG9mX2dldF9tYWNfYWRkcmVzcy4KCkZpcnN0IHBhdGNoIGlzIHJlbW92aW5nIGBu
dm1lbS1tYWMtYWRkcmVzc2AgcHJvcGVydHkgd2hpY2ggd2FzIHdyb25nIGlkZWEgYXMKSSd2ZSBh
bGxvY2F0ZWQgdGhlIHByb3BlcnR5IHdpdGggZGV2bV9remFsbG9jIGFuZCB0aGVuIGFkZGVkIGl0
IHRvIERULCBzbyB0aGVuCjIgZW50aXRpZXMgd291bGQgYmUgcmVmY291bnRpbmcgdGhlIGFsbG9j
YXRpb24uICBTbyBpZiB0aGUgZHJpdmVyIHVuYmluZHMsIHRoZQpidWZmZXIgaXMgZnJlZWQsIGJ1
dCBEVCBjb2RlIHdvdWxkIGJlIHN0aWxsIHJlZmVyZW5jaW5nIHRoYXQgbWVtb3J5LgoKU2Vjb25k
IHBhdGNoIGZpeGVzIHNvbWUgdW53YW50ZWQgcmVmZXJlbmNlcyB0byB0aGUgTGludXggQVBJIGlu
IHRoZSBEVApiaW5kaW5ncyBkb2N1bWVudGF0aW9uLgoKUGF0Y2hlcyAzLTUgc2hvdWxkIGhvcGVm
dWxseSBtYWtlIGNvbXBpbGVycyBhbmQgdGh1cyBrYnVpbGQgdGVzdCByb2JvdCBoYXBweS4KCkNo
ZWVycywKClBldHIKClBldHIgxaB0ZXRpYXIgKDUpOgogIG9mX25ldDogcmVtb3ZlIG52bWVtLW1h
Yy1hZGRyZXNzIHByb3BlcnR5CiAgZHQtYmluZGluZ3M6IGRvYzogbmV0OiByZW1vdmUgTGludXgg
QVBJIHJlZmVyZW5jZXMKICBwb3dlcnBjOiB0c2kxMDg6IGZpeCBzaW1pbGFyIHdhcm5pbmcgcmVw
b3J0ZWQgYnkga2J1aWxkIHRlc3Qgcm9ib3QKICBuZXQ6IGV0aGVybmV0OiBmaXggc2ltaWxhciB3
YXJuaW5nIHJlcG9ydGVkIGJ5IGtidWlsZCB0ZXN0IHJvYm90CiAgbmV0OiB3aXJlbGVzczogbXQ3
NjogZml4IHNpbWlsYXIgd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQgdGVzdCByb2JvdAoKIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlzdG9uZS1uZXRjcC50eHQgICAgIHwgIDYgKyst
LS0KIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWssbXQ3Ni50eHQgICAgICAgIHwg
IDQgKy0tCiBhcmNoL3Bvd2VycGMvc3lzZGV2L3RzaTEwOF9kZXYuYyAgICAgICAgICAgICAgICAg
ICB8ICAzICsrLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYWxsd2lubmVyL3N1bjRpLWVtYWMuYyAg
ICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYXJjL2VtYWNfbWFpbi5jICAgICAg
ICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL29jdGVvbi9vY3Rl
b25fbWdtdC5jICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZGF2aWNvbS9kbTkwMDAu
YyAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2Zl
Y19tcGM1Mnh4LmMgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxl
L2ZtYW4vbWFjLmMgICAgICAgICAgfCAgMiArLQogLi4uL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUv
ZnNfZW5ldC9mc19lbmV0LW1haW4uYyAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJl
ZXNjYWxlL2dpYW5mYXIuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZnJlZXNjYWxlL3VjY19nZXRoLmMgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWFydmVsbC9tdjY0M3h4X2V0aC5jICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWFydmVsbC9tdm5ldGEuYyAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWFydmVsbC9za3kyLmMgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWljcmVsL2tzODg1MS5jICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWljcmVsL2tzODg1MV9tbGwuYyAgICAgICAgICAgfCAgMiArLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvbnhwL2xwY19ldGguYyAgICAgICAgICAgICAgICAgfCAgMiArLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvcmVuZXNhcy9zaF9ldGguYyAgICAgICAgICAgICAgfCAgMiAr
LQogZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvY3Bzdy5jICAgICAgICAgICAgICAgICAgICAgfCAg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L2xsX3RlbWFjX21haW4uYyAgICAgICAg
fCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jICAg
ICAgfCAgMiArLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXByb20uYyAg
ICAgICAgfCAgMiArLQogZHJpdmVycy9vZi9vZl9uZXQuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAyOSArKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAyNCBmaWxlcyBjaGFuZ2VkLCAz
MyBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

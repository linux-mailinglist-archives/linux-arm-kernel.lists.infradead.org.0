Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA643B9DF6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 15:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Skyfa4WaYuZTKwc9gJE3STW7jUV6MT4zcSQtMpWH8L8=; b=iPOKlQPbfNDq31
	TkW61sFmuFk0OfCo6BloQdb+xO6p0waWHiFfERrHNm8xol8QVg3fIgjpspCoxTaayFsemg41BV8wq
	U76KGYtAPp0LRFgFsZviT93XobkGtSUtUdFfnFZ8kaFjSFyflgyQwu5vycNm2SMS4PUZz95VctPtT
	48jVFHC5S0Y5yO+cfKlh2Mh3AqExzNi/FEqRCTQdwMZ9Sap+nHzqkwXvksejgsgweaI6JdkjaS11a
	tFulEEg2jZyU9ZX3dJJ20CSA6a9UOpHbgLgG0GPq5zOF59xmQv+4vtye80Q8+nwNdMcp1sy28H840
	2qIc37koAQrPGxcsMLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBf53-0007gw-1X; Sat, 21 Sep 2019 13:05:41 +0000
Received: from mail-m973.mail.163.com ([123.126.97.3])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBf4k-0007gS-LH
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 13:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=w0t/w
 YDFIo3k1zk7BQGWh+CvPwbHogEVFBzHqTKZ5w0=; b=CJjuHNf0ggvPC7hWoYCCK
 VZMFFp7n8GrCeR+XFutCXHDMxS0LSp1z465CtQF5k/IE99lJXQur2+u3mNcFZ6s4
 +1SDpMXabasf+0oHrYaQnTTTrNoxF5wLwrw+Wk2r5B5chbOWxQOYf3XaoftfYJVN
 0BXGFWlM6LRPA7lTtTWNJk=
Received: from localhost.localdomain (unknown [101.206.228.127])
 by smtp3 (Coremail) with SMTP id G9xpCgD3ps_3H4Zd6P8gAw--.89S2;
 Sat, 21 Sep 2019 21:04:57 +0800 (CST)
From: Yu Chen <33988979@163.com>
To: rmk+kernel@armlinux.org.uk,
	linux@armlinux.org.uk
Subject: [PATCH] arm: export memblock_reserve()d regions via /proc/iomem
Date: Sat, 21 Sep 2019 21:02:49 +0800
Message-Id: <1569070969-5168-1-git-send-email-33988979@163.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CM-TRANSID: G9xpCgD3ps_3H4Zd6P8gAw--.89S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ur4rAr1UKFW7AFW7Kry3Jwb_yoW8tw1kpw
 47Zw1Ygr48Gr1xXa93Ar1UuFs5Z3WIvrW3WrW3trWfZa1Dtr17Jr10qryj9Fyav3yxKr1a
 vr1vyFWI93yUJaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j-4SrUUUUU=
X-Originating-IP: [101.206.228.127]
X-CM-SenderInfo: attzmmqzxzqiywtou0bp/1tbiKxk3slQHRUSb3AAAsi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_060523_076675_12C94103 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.97.3 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (33988979[at]163.com)
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [123.126.97.3 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (33988979[at]163.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: yu.chen3@zte.com.cn, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWXUgQ2hlbiA8eXUuY2hlbjNAenRlLmNvbS5jbj4KCm1lbWJsb2NrIHJlc2VydmVkIHJl
Z2lvbnMgYXJlIG5vdCByZXBvcnRlZCB2aWEgL3Byb2MvaW9tZW0gb24gQVJNLCBrZXhlYydzCnVz
ZXItc3BhY2UgZG9lc24ndCBrbm93IGFib3V0IG1lbWJsb2NrX3Jlc2VydmUoKWQgcmVnaW9ucyBh
bmQgdGh1cwpwb3NzaWJsZSBmb3Iga2V4ZWMgdG8gb3ZlcndyaXRlIHdpdGggdGhlIG5ldyBrZXJu
ZWwgb3IgaW5pdHJkLgoKWyDCoCDCoDAuMDAwMDAwXSBCb290aW5nIExpbnV4IG9uIHBoeXNpY2Fs
IENQVSAweGYwMApbIMKgIMKgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gNC45LjExNS1ydDkzLWRp
cnR5ICh5dWNoZW5AbG9jYWxob3N0LmxvY2FsZG9tYWluKSAoZ2NjIHZlcnNpb24gNi4yLjAgKFpU
RSBFbWJzeXMtVFNQIFYzLjA3LjIKMCkgKSAjNjIgU01QIFBSRUVNUFQgRnJpIFNlcCAyMCAxMDoz
OToyOSBDU1QgMjAxOQpbIMKgIMKgMC4wMDAwMDBdIENQVTogQVJNdjcgUHJvY2Vzc29yIFs0MTBm
YzA3NV0gcmV2aXNpb24gNSAoQVJNdjcpLCBjcj0zMGM1Mzg3ZApbIMKgIMKgMC4wMDAwMDBdIENQ
VTogZGl2IGluc3RydWN0aW9ucyBhdmFpbGFibGU6IHBhdGNoaW5nIGRpdmlzaW9uIGNvZGUKWyDC
oCDCoDAuMDAwMDAwXSBDUFU6IFBJUFQgLyBWSVBUIG5vbmFsaWFzaW5nIGRhdGEgY2FjaGUsIFZJ
UFQgYWxpYXNpbmcgaW5zdHJ1Y3Rpb24gY2FjaGUKWyDCoCDCoDAuMDAwMDAwXSBPRjogZmR0Ok1h
Y2hpbmUgbW9kZWw6IExTMTAyMUEgVFdSIEJvYXJkClsgwqAgwqAwLjAwMDAwMF0gSU5JVFJEOiAw
eDgwZjdmMDAwKzB4MDM2OTVlNDAgb3ZlcmxhcHMgaW4tdXNlIG1lbW9yeSByZWdpb24gLSBkaXNh
YmxpbmcgaW5pdHJkCgpTaWduZWQtb2ZmLWJ5OiBZdSBDaGVuIDx5dS5jaGVuM0B6dGUuY29tLmNu
PgpSZXZpZXdlZC1ieTogSnVuaHVhIEh1YW5nIDxodWFuZy5qdW5odWFAenRlLmNvbS5jbj4KLS0t
CiBhcmNoL2FybS9rZXJuZWwvc2V0dXAuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0va2VybmVsL3NldHVwLmMgYi9hcmNoL2FybS9rZXJuZWwvc2V0dXAuYwppbmRleCBkMGE0NjRl
Li42MDZkMWFjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9rZXJuZWwvc2V0dXAuYworKysgYi9hcmNo
L2FybS9rZXJuZWwvc2V0dXAuYwpAQCAtOTExLDYgKzkxMSwzNCBAQCBzdGF0aWMgdm9pZCBfX2lu
aXQgcmVxdWVzdF9zdGFuZGFyZF9yZXNvdXJjZXMoY29uc3Qgc3RydWN0IG1hY2hpbmVfZGVzYyAq
bWRlc2MpCiAJCXJlcXVlc3RfcmVzb3VyY2UoJmlvcG9ydF9yZXNvdXJjZSwgJmxwMik7CiB9CiAK
K3N0YXRpYyBpbnQgX19pbml0IHJlc2VydmVfbWVtYmxvY2tfcmVzZXJ2ZWRfcmVnaW9ucyh2b2lk
KQoreworCXU2NCBpLCBqOworCisJZm9yIChpID0gMDsgaSA8IG51bV9zdGFuZGFyZF9yZXNvdXJj
ZXM7ICsraSkgeworCQlzdHJ1Y3QgcmVzb3VyY2UgKm1lbSA9ICZzdGFuZGFyZF9yZXNvdXJjZXNb
aV07CisJCXBoeXNfYWRkcl90IHJfc3RhcnQsIHJfZW5kLCBtZW1fc2l6ZSA9IHJlc291cmNlX3Np
emUobWVtKTsKKworCQlpZiAoIW1lbWJsb2NrX2lzX3JlZ2lvbl9yZXNlcnZlZChtZW0tPnN0YXJ0
LCBtZW1fc2l6ZSkpCisJCQljb250aW51ZTsKKworCQlmb3JfZWFjaF9yZXNlcnZlZF9tZW1fcmVn
aW9uKGosICZyX3N0YXJ0LCAmcl9lbmQpIHsKKwkJCXJlc291cmNlX3NpemVfdCBzdGFydCwgZW5k
OworCisJCQlzdGFydCA9IG1heChQRk5fUEhZUyhQRk5fRE9XTihyX3N0YXJ0KSksIG1lbS0+c3Rh
cnQpOworCQkJZW5kID0gbWluKFBGTl9QSFlTKFBGTl9VUChyX2VuZCkpIC0gMSwgbWVtLT5lbmQp
OworCisJCQlpZiAoc3RhcnQgPiBtZW0tPmVuZCB8fCBlbmQgPCBtZW0tPnN0YXJ0KQorCQkJCWNv
bnRpbnVlOworCisJCQlyZXNlcnZlX3JlZ2lvbl93aXRoX3NwbGl0KG1lbSwgc3RhcnQsIGVuZCwg
InJlc2VydmVkIik7CisJCX0KKwl9CisKKwlyZXR1cm4gMDsKK30KK2FyY2hfaW5pdGNhbGwocmVz
ZXJ2ZV9tZW1ibG9ja19yZXNlcnZlZF9yZWdpb25zKTsKKwogI2lmIGRlZmluZWQoQ09ORklHX1ZH
QV9DT05TT0xFKSB8fCBkZWZpbmVkKENPTkZJR19EVU1NWV9DT05TT0xFKSB8fCBcCiAgICAgZGVm
aW5lZChDT05GSUdfRUZJKQogc3RydWN0IHNjcmVlbl9pbmZvIHNjcmVlbl9pbmZvID0gewotLSAK
Mi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

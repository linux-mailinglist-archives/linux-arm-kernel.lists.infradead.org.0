Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D75911CEBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E0t0lklKjxvwzZMAYJReloyjCvhdh71+9InbG9OAnsk=; b=LmvgiyeY7euTzAv2ULukLKddW
	g94YUHDDap94K0JxCKMQgheHs77HNYJ14+Q22iC4f0YgXT/RPFvCLVefRjZWmt/22JqkYKjdQS5i8
	QgFj0WVsdO22bBBcOPLwHckGHbjvz6eSUPq85pie0vbWq6JXn25NT84U+kuEr0cV5CBodt8Ur7L+F
	yLQm3+xYd//YeF22rkzBpVA0iI6STW4jjxFiqr624UqRQTZZxz5g+4TOX9WHyqenzB6IJVZUS8L5v
	TI/FDs4Ur33RxI92La9a2DvVrxjaCJW1ydPdfb7qkxLCK5qifJDBjI95SotZClOqLgzg37v2EqYiw
	52I+HAlZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOpp-0000m5-1e; Thu, 12 Dec 2019 13:48:53 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOpg-0000kR-3b; Thu, 12 Dec 2019 13:48:45 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifOpd-0002Ct-8N; Thu, 12 Dec 2019 14:48:41 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v5 3/9] irqchip: rtd1195-mux: Implement
 =?UTF-8?Q?irq=5Fget=5Firqchip=5Fstate?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 13:48:41 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191121050208.11324-4-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
 <20191121050208.11324-4-afaerber@suse.de>
Message-ID: <f756e3ccde3b928ccc75f41f2012895a@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_054844_293003_51958C96 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jason Cooper <jason@lakedaemon.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0yMSAwNTowMiwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEltcGxlbWVudCB0
aGUgLmlycV9nZXRfaXJxY2hpcF9zdGF0ZSBjYWxsYmFjayB0byByZXRyaWV2ZSBwZW5kaW5nLAo+
IGFjdGl2ZSBhbmQgbWFza2VkIGludGVycnVwdCBzdGF0dXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBB
bmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gLS0tCj4gIHY1OiBOZXcKPgo+ICBk
cml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMgfCAzNiAKPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMKPiBiL2Ry
aXZlcnMvaXJxY2hpcC9pcnEtcnRkMTE5NS1tdXguYwo+IGluZGV4IDBlODY5NzNhYWZjYS4uMmYx
YmNmZDlkNWQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtcnRkMTE5NS1tdXgu
Ywo+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtcnRkMTE5NS1tdXguYwo+IEBAIC03LDYgKzcs
NyBAQAo+Cj4gICNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lv
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2ly
cWNoaXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L2lycWRvbWFpbi5oPgo+IEBAIC05NiwxMCArOTcsNDUgQEAgc3RhdGljIHZv
aWQgcnRkMTE5NV9tdXhfdW5tYXNrX2lycShzdHJ1Y3QgCj4gaXJxX2RhdGEgKmRhdGEpCj4gIAly
YXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbXV4LT5sb2NrLCBmbGFncyk7Cj4gIH0KPgo+ICtz
dGF0aWMgaW50IHJ0ZDExOTVfbXV4X2dldF9pcnFjaGlwX3N0YXRlKHN0cnVjdCBpcnFfZGF0YSAq
ZGF0YSwKPiArCWVudW0gaXJxY2hpcF9pcnFfc3RhdGUgd2hpY2gsIGJvb2wgKnN0YXRlKQo+ICt7
Cj4gKwlzdHJ1Y3QgcnRkMTE5NV9pcnFfbXV4X2RhdGEgKm11eCA9IAo+IGlycV9kYXRhX2dldF9p
cnFfY2hpcF9kYXRhKGRhdGEpOwo+ICsJdTMyIHZhbDsKPiArCj4gKwlzd2l0Y2ggKHdoaWNoKSB7
Cj4gKwljYXNlIElSUUNISVBfU1RBVEVfUEVORElORzoKPiArCQkvKgo+ICsJCSAqIFVNU0tfSVNS
IHByb3ZpZGVzIHRoZSB1bm1hc2tlZCBwZW5kaW5nIGludGVycnVwdHMsCj4gKwkJICogZXhjZXB0
IFVBUlQgYW5kIEkyQy4KPiArCQkgKi8KPiArCQl2YWwgPSByZWFkbF9yZWxheGVkKG11eC0+cmVn
X3Vtc2tfaXNyKTsKPiArCQkqc3RhdGUgPSAhISh2YWwgJiBCSVQoZGF0YS0+aHdpcnEpKTsKPiAr
CQlicmVhazsKPiArCWNhc2UgSVJRQ0hJUF9TVEFURV9BQ1RJVkU6Cj4gKwkJLyoKPiArCQkgKiBJ
U1IgcHJvdmlkZXMgdGhlIG1hc2tlZCBwZW5kaW5nIGludGVycnVwdHMsCj4gKwkJICogaW5jbHVk
aW5nIFVBUlQgYW5kIEkyQy4KPiArCQkgKi8KPiArCQl2YWwgPSByZWFkbF9yZWxheGVkKG11eC0+
cmVnX2lzcik7Cj4gKwkJKnN0YXRlID0gISEodmFsICYgQklUKGRhdGEtPmh3aXJxKSk7Cj4gKwkJ
YnJlYWs7CgpBQ1RJVkUgaGFzIGEgdmVyeSBzcGVjaWZpYyBtZWFuaW5nOiBpdCBpbmRpY2F0ZXMg
dGhhdCB0aGUgaW50ZXJydXB0IGlzCmJlaW5nIGhhbmRsZWQgcmlnaHQgbm93LiBXaGF0IHRoaXMg
dGVsbHMgeW91IGlzIHdoZXRoZXIgdGhlIGludGVycnVwdAppcyBwZW5kaW5nIGFuZCB1bm1hc2tl
ZCwgd2hpY2ggaXMgYW4gZW50aXJlbHkgZGlmZmVyZW50IHRoaW5nLgoKVGhpcyB3aWxsIGxlYWQg
dG8gaXJxX2Rpc2FibGUoKSBtaXNiZWhhdmluZyAoaXQgd2lsbCBhc3N1bWUgdGhhdAp0aGUgaW50
ZXJydXB0IGlzIGFjdGl2ZSB3aGlsZSBpdCBpcyBvbmx5IHBlbmRpbmcpLgoKR2l2ZW4gd2hhdCB0
aGUgSFcgZXhwb3NlcyAob3IgcmF0aGVyLCB3aGF0IHRoaXMgZHJpdmVyIGV4cG9zZXMgb2YgdGhl
IApIVyksCkkgZG9uJ3QgdGhpbmsgeW91IGNhbiBpbXBsZW1lbnQgdGhpcyBzdGF0ZS4KCj4gKwlj
YXNlIElSUUNISVBfU1RBVEVfTUFTS0VEOgo+ICsJCXZhbCA9IG11eC0+aW5mby0+aXNyX3RvX2lu
dF9lbl9tYXNrW2RhdGEtPmh3aXJxXTsKPiArCQkqc3RhdGUgPSAhKG11eC0+c2NwdV9pbnRfZW4g
JiB2YWwpOwoKU2hvdWxkbid0IHlvdSB0YWtlIHRoZSBjb3JyZXNwb25kaW5nIHNwaW5sb2NrIGdp
dmVuIHRoYXQgeW91IGNhbgpoYXZlIGEgcGVuZGluZyB1cGRhdGUgaW4gcGFyYWxsZWw/CgogICAg
ICAgICBNLgoKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4g
Kwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaXJx
X2NoaXAgcnRkMTE5NV9tdXhfaXJxX2NoaXAgPSB7Cj4gIAkuaXJxX2FjawkJPSBydGQxMTk1X211
eF9hY2tfaXJxLAo+ICAJLmlycV9tYXNrCQk9IHJ0ZDExOTVfbXV4X21hc2tfaXJxLAo+ICAJLmly
cV91bm1hc2sJCT0gcnRkMTE5NV9tdXhfdW5tYXNrX2lycSwKPiArCS5pcnFfZ2V0X2lycWNoaXBf
c3RhdGUJPSBydGQxMTk1X211eF9nZXRfaXJxY2hpcF9zdGF0ZSwKPiAgfTsKPgo+ICBzdGF0aWMg
aW50IHJ0ZDExOTVfbXV4X2lycV9kb21haW5fbWFwKHN0cnVjdCBpcnFfZG9tYWluICpkLAoKLS0g
CkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D2418A23E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hqIWKaYszw0inlILRFRv1gOtdKruwhhcFjfb6w6359U=; b=iW1TbW0yNAT/JwJkeUlWWWH5d
	ODPLn5Vr72/ONPRm9st4LaNe1v6sKKXDTd8dt2nGvNDkxUXD2S3C+g1gOyLmizEeyorTBaZ95+P8y
	dCFRyFI9ewRlGPA7tOFHhanVn1kBengRsObwUjnQUiRjIEXt6aMJrn3Hkv6y8vEUohnjAmDapjtDG
	p8BwxVp8KClqu65GLM7DFbYslzNTvm80bRYcr+oYJbdonRVshWMrM76E4qqdbXdOlYMibK97ZnEtL
	ncZu0i60fxFkoX6jBTDIsasaqpywazTV60PCcLhB/lzB0rMbRXqhrnHY9wKxjeCKpsJ1Ab1FQpgCw
	QXB6nrqkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdJ2-0006YP-KV; Wed, 18 Mar 2020 18:20:40 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdIu-0006Xs-3I
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:20:33 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48jJHZ6lt0zQlG0;
 Wed, 18 Mar 2020 19:20:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584555625;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O7m4lvrIqRs2bqX0fJ398lumr7Ad9ngJFhRhZgfuKUA=;
 b=h5ay3Dk8OATxLJQjj+ENRkkXBjclmZmucQCN6amcMPzC/kCrPcz++Ro4l6OKO+wETezw8E
 wm/LEL5Jq8uf24RZWv5i3rWLZyq4CIND+trc+fWbteI/jzEhhZhZW55HlhuiAmYIrunFUl
 2eVB4rraD9m2oK6edmXFCq4UrrUASgI9X84v68i+pwIfJADMJI8IpxLCVieUUzCTQU9Fdb
 wZJiNSdC9Dp4kUUWWcPRb0fmjgzaGpN1JdQ1C/Sz8xZGO3z5vTBZ76IqqwDN8vNq3Dbji6
 mBKvJC1lR8O1LI9YPjkV8Ut2kBtDEHjbhfC28j7rSwrQTYVI+sU3DGi/mmZIvQ==
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id U7p6m9PGs4Mx; Wed, 18 Mar 2020 19:20:24 +0100 (CET)
Subject: Re: [PATCH] irqchip/versatile-fpga: Handle chained IRQs properly
To: Marc Zyngier <maz@kernel.org>
References: <20200318170904.1461278-1-mans0n@gorani.run>
 <112cdab389aa9cc30189c7aec0baded2@kernel.org>
From: Sungbo Eo <mans0n@gorani.run>
Message-ID: <bdb90bd8-ede1-63d5-816c-57f6bf0417a4@gorani.run>
Date: Thu, 19 Mar 2020 03:20:13 +0900
MIME-Version: 1.0
In-Reply-To: <112cdab389aa9cc30189c7aec0baded2@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_112032_467568_22ECC167 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAtMDMtMTkgMDI6NDgsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBT
dW5nYm8sCj4gCj4gT24gMjAyMC0wMy0xOCAxNzowOSwgU3VuZ2JvIEVvIHdyb3RlOgo+PiBFbmNs
b3NlIHRoZSBjaGFpbmVkIGhhbmRsZXIgd2l0aCBjaGFpbmVkX2lycV97ZW50ZXIsZXhpdH0oKSwg
c28gdGhhdCB0aGUKPj4gbXV4ZWQgaW50ZXJydXB0cyBnZXQgcHJvcGVybHkgYWNrZWQuCj4+Cj4+
IFRoaXMgcGF0Y2ggYWxzbyBmaXhlcyBhIHJlYm9vdCBidWcgb24gT1g4MjAgU29DLCB3aGVyZSB0
aGUgamlmZmllcyB0aW1lcgo+PiBpbnRlcnJ1cHQgaXMgbmV2ZXIgYWNrZWQuIFRoZSBrZXJuZWwg
d2FpdHMgYSBjbG9jayB0aWNrIGZvcmV2ZXIgaW4KPj4gY2FsaWJyYXRlX2RlbGF5X2NvbnZlcmdl
KCksIHdoaWNoIGxlYWRzIHRvIGEgYm9vdCBoYW5nLgo+IAo+IE5pY2UgY2F0Y2guCj4gCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFN1bmdibyBFbyA8bWFuczBuQGdvcmFuaS5ydW4+Cj4+IENjOiBOZWls
IEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4+IC0tLQo+PiDCoGRyaXZlcnMv
aXJxY2hpcC9pcnEtdmVyc2F0aWxlLWZwZ2EuYyB8IDkgKysrKysrKystCj4+IMKgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9pcnFjaGlwL2lycS12ZXJzYXRpbGUtZnBnYS5jCj4+IGIvZHJpdmVycy9pcnFjaGlw
L2lycS12ZXJzYXRpbGUtZnBnYS5jCj4+IGluZGV4IDkyODg1OGRhZGE3NS4uMDhmYWFiMmZlYzNl
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJxLXZlcnNhdGlsZS1mcGdhLmMKPj4g
KysrIGIvZHJpdmVycy9pcnFjaGlwL2lycS12ZXJzYXRpbGUtZnBnYS5jCj4+IEBAIC02LDYgKzYs
NyBAQAo+PiDCoCNpbmNsdWRlIDxsaW51eC9pcnEuaD4KPj4gwqAjaW5jbHVkZSA8bGludXgvaW8u
aD4KPj4gwqAjaW5jbHVkZSA8bGludXgvaXJxY2hpcC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2ly
cWNoaXAvY2hhaW5lZF9pcnEuaD4KPj4gwqAjaW5jbHVkZSA8bGludXgvaXJxY2hpcC92ZXJzYXRp
bGUtZnBnYS5oPgo+PiDCoCNpbmNsdWRlIDxsaW51eC9pcnFkb21haW4uaD4KPj4gwqAjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+Cj4+IEBAIC02OCwxMiArNjksMTUgQEAgc3RhdGljIHZvaWQgZnBn
YV9pcnFfdW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkKPj4KPj4gwqBzdGF0aWMgdm9pZCBmcGdh
X2lycV9oYW5kbGUoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+PiDCoHsKPj4gK8KgwqDCoCBzdHJ1
Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChkZXNjKTsKPj4gwqDCoMKgwqAg
c3RydWN0IGZwZ2FfaXJxX2RhdGEgKmYgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2Mp
Owo+PiDCoMKgwqDCoCB1MzIgc3RhdHVzID0gcmVhZGwoZi0+YmFzZSArIElSUV9TVEFUVVMpOwo+
Pgo+PiArwqDCoMKgIGNoYWluZWRfaXJxX2VudGVyKGNoaXAsIGRlc2MpOwo+PiArCj4gCj4gSXQn
cyBwcm9iYWJseSBub3QgYSBiaWcgZGVhbCwgYnV0IEknbSBub3QgZm9uZCBvZiBzdGFydGluZyB0
YWxraW5nIHRvCj4gdGhlIG11eGluZyBpcnFjaGlwIGJlZm9yZSBoYXZpbmcgZG9uZSB0aGUgY2hh
aW5lZF9pcnFfZW50ZXIoKSBjYWxsLgo+IAo+IE1vdmluZyB0aGF0IHJlYWQgaGVyZSB3b3VsZCBw
cm9iYWJseSBiZSBzYWZlci4KCk9vcHMsIEkgbWlzc2VkIGl0LiBUaGFua3MgZm9yIHBvaW50aW5n
IGl0IG91dC4KCj4gCj4+IMKgwqDCoMKgIGlmIChzdGF0dXMgPT0gMCkgewo+PiDCoMKgwqDCoMKg
wqDCoMKgIGRvX2JhZF9JUlEoZGVzYyk7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICvC
oMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqAgfQo+Pgo+PiDCoMKgwqDCoCBkbyB7
Cj4+IEBAIC04Miw2ICs4Niw5IEBAIHN0YXRpYyB2b2lkIGZwZ2FfaXJxX2hhbmRsZShzdHJ1Y3Qg
aXJxX2Rlc2MgKmRlc2MpCj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzICY9IH4oMSA8PCBpcnEp
Owo+PiDCoMKgwqDCoMKgwqDCoMKgIGdlbmVyaWNfaGFuZGxlX2lycShpcnFfZmluZF9tYXBwaW5n
KGYtPmRvbWFpbiwgaXJxKSk7Cj4+IMKgwqDCoMKgIH0gd2hpbGUgKHN0YXR1cyk7Cj4+ICsKPj4g
K291dDoKPj4gK8KgwqDCoCBjaGFpbmVkX2lycV9leGl0KGNoaXAsIGRlc2MpOwo+PiDCoH0KPj4K
Pj4gwqAvKgo+IAo+IE90aGVyd2lzZSBsb29rcyBnb29kLiBJZiB5b3Ugc2VuZCBpdCBhZ2FpbiB3
aXRoIHRoZSBhYm92ZSBmaXhlZAo+IGFuZCBhIEZpeGVzOiB0YWcsIEknbGwgcXVldWUgaXQuCgpJ
dCBzZWVtcyB0aGUgaGFuZGxlciBoYWQgYmVlbiBicm9rZW4gZnJvbSB0aGUgdmVyeSBiZWdpbm5p
bmcuIENvdWxkIHlvdSAKZ2l2ZSBtZSBhIGhpbnQgb24gaG93IHRoZSB0YWcgc2hvdWxkIGJlIGxp
a2U/CgpUaGFua3MuCgo+IAo+IFRoYW5rcywKPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

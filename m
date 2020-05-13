Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A99F1D0FB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4/9IjNF5V6yp5ABsULZlWZnxX/Z6uCkt3ELa1tU7ZCw=; b=fctBaIJeh1Z+1KBY/Ihz+B7U9
	twwtORMxpA1+djIxOHvnH5apZ7uQ71SG1BJNJOld28CGkyCdR0KL9HucmgW7dITB9Zw/SXXcaYI9u
	1VHSfJWyjaiDCKmvaySYZSRzyu9w7KXfKUZPdmkxGef9kzjp5dYI7n0BxGXneNbnklPez2G4f7fcl
	RtrUHtWmPmtG8J10J+3s7HanntlcNj+U9menZQ0bF3c6v9l/aT7TUUDLhxNplLWtKGIx8l4K1YSIU
	Q+Lvm0q+3NbSMul65x+UgygJK31pXwz1ydZ+KBeniom0unDQpKh2ZT1Nw3G2oYdorj52DzaZRX2qo
	A3IuMCgMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYodX-0002DT-5M; Wed, 13 May 2020 10:29:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYodN-0002CL-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:29:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E4691FB;
 Wed, 13 May 2020 03:29:01 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F355B3F305;
 Wed, 13 May 2020 03:28:59 -0700 (PDT)
Subject: Re: [PATCH v2] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
To: Hanjun Guo <guohanjun@huawei.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>
References: <1589327760-5464-1-git-send-email-tuanphan@os.amperecomputing.com>
 <6f9996d3-18f1-0432-0e59-adc2cf086c9c@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2c2795ed-c2cb-a166-cd6d-0e920bd05ea3@arm.com>
Date: Wed, 13 May 2020 11:28:57 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6f9996d3-18f1-0432-0e59-adc2cf086c9c@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_032905_642614_46CF6638 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0xMyA0OjE2IGFtLCBIYW5qdW4gR3VvIHdyb3RlOgo+IE9uIDIwMjAvNS8xMyA3
OjU2LCBUdWFuIFBoYW4gd3JvdGU6Cj4+IFBNQ0cgbm9kZSBjYW4gaGF2ZSB6ZXJvIElEIG1hcHBp
bmcgaWYgaXRzIG92ZXJmbG93IGludGVycnVwdAo+PiBpcyB3aXJlIGJhc2VkLiBUaGUgY29kZSB0
byBwYXJzZSBQTUNHIG5vZGUgY2FuIG5vdCBhc3N1bWUgaXQgd2lsbAo+PiBoYXZlIGEgc2luZ2xl
IElEIG1hcHBpbmcuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR1YW4gUGhhbiA8dHVhbnBoYW5Ab3Mu
YW1wZXJlY29tcHV0aW5nLmNvbT4KPiAKPiBJdCdzIGJldHRlciB0byBhZGQKPiAKPiBGaXhlczog
MjRlNTE2MDQ5MzYwICgiQUNQSS9JT1JUOiBBZGQgc3VwcG9ydCBmb3IgUE1DRyIpCj4gCj4+IC0t
LQo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIFVzZWQgcG1jZyBub2RlIHRvIGRldGVjdCB3aXJlZCBi
YXNlIG92ZXJmbG93IGludGVycnVwdC4KPj4gwqAgZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYyB8
IDUgKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYyBiL2RyaXZlcnMvYWNwaS9hcm02NC9p
b3J0LmMKPj4gaW5kZXggZWQzZDJkMS4uMTFhNGU4ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9h
Y3BpL2FybTY0L2lvcnQuYwo+PiArKysgYi9kcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jCj4+IEBA
IC00MTQsNiArNDE0LDcgQEAgc3RhdGljIHN0cnVjdCBhY3BpX2lvcnRfbm9kZSAKPj4gKmlvcnRf
bm9kZV9nZXRfaWQoc3RydWN0IGFjcGlfaW9ydF9ub2RlICpub2RlLAo+PiDCoCBzdGF0aWMgaW50
IGlvcnRfZ2V0X2lkX21hcHBpbmdfaW5kZXgoc3RydWN0IGFjcGlfaW9ydF9ub2RlICpub2RlKQo+
PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGFjcGlfaW9ydF9zbW11X3YzICpzbW11Owo+PiAr
wqDCoMKgIHN0cnVjdCBhY3BpX2lvcnRfcG1jZyAqcG1jZzsKPj4gwqDCoMKgwqDCoCBzd2l0Y2gg
KG5vZGUtPnR5cGUpIHsKPj4gwqDCoMKgwqDCoCBjYXNlIEFDUElfSU9SVF9OT0RFX1NNTVVfVjM6
Cj4+IEBAIC00NDEsNiArNDQyLDEwIEBAIHN0YXRpYyBpbnQgaW9ydF9nZXRfaWRfbWFwcGluZ19p
bmRleChzdHJ1Y3QgCj4+IGFjcGlfaW9ydF9ub2RlICpub2RlKQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIHNtbXUtPmlkX21hcHBpbmdfaW5kZXg7Cj4+IMKgwqDCoMKgwqAgY2FzZSBBQ1BJ
X0lPUlRfTk9ERV9QTUNHOgo+PiArwqDCoMKgwqDCoMKgwqAgcG1jZyA9IChzdHJ1Y3QgYWNwaV9p
b3J0X3BtY2cgKilub2RlLT5ub2RlX2RhdGE7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocG1jZy0+
b3ZlcmZsb3dfZ3NpdikKCglpZiAocG1jZy0+b3ZlcmZsb3dfZ3NpdiB8fCBub2RlLT5tYXBwaW5n
X2NvdW50ID09IDApCgouLi5pZiB0aGVyZSBpcyBubyBHU0lWLCB3ZSBzaG91bGQgc3RpbGwgKmFs
c28qIGNoZWNrIHRoYXQgaW5kZXggMCBpcyAKdmFsaWQgYmVmb3JlIHdlIHJldHVybiBpdC4KClJv
YmluLgoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoMKgwqDCoMKgIGRlZmF1bHQ6Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPiAKPiBXaXRoIG15IGNvbW1lbnRzIGFk
ZHJlc3NlZCwKPiAKPiBSZXZpZXdlZC1ieTogSGFuanVuIEd1byA8Z3VvYWhhbmp1bkBodWF3ZWku
Y29tPgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

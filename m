Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409475F475
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFjalKm5+72ywlpKBTw6qJEn0mP93OjskQztScK3JM4=; b=ILPnJaMvL+RtgP
	IZs9O8ANGkkzasHlfI0RNpHQetWJbUuEQxSMUBLwHjAcgqRsyJk3S+PnzIZpNW/pRqD1hVCePXzbS
	4Ldb6yD9VjOJ1qhNTW57xjtg4DtmVHTcwWKcGLb8YNWa7ZP+CP/2aepR6KDm5L5tTNEVMehbpIJB9
	J2uKWigOKbh4pNozcrleHRT9O/oH1znYYO60JPSnqR1ijX+zsybDAuntJ7WP0Ps4sVzNwTiA1QJ2E
	5CvOoh3faMCOCrEaPp58Ti2T9aJrSK5HiE5EFlYv6O7/gYzCzwXpo+JQyB8N03JtcvqCsSwAinuhK
	PZ16U/v9ySjTqkjpr8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwxt-0002Dz-G1; Thu, 04 Jul 2019 08:19:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwxe-0002Bl-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:19:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 51232D64E59BC7EDB020;
 Thu,  4 Jul 2019 16:19:14 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 4 Jul 2019
 16:19:08 +0800
Subject: Re: [RFC PATCH v2 2/3] arm64: mark all the GICC nodes in MADT as
 possible cpu
To: Jia He <jiakernel2@gmail.com>, <rjw@rjwysocki.net>,
 <catalin.marinas@arm.com>, <james.morse@arm.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <1561776155-38975-3-git-send-email-wangxiongfeng2@huawei.com>
 <762be90e-7629-ab5e-4c2d-6566b100f2e5@gmail.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <e3bcc250-240e-e2b0-c0d4-d882cf43d255@huawei.com>
Date: Thu, 4 Jul 2019 16:18:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <762be90e-7629-ab5e-4c2d-6566b100f2e5@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_011922_458460_B61EB420 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzcvNCAxNDo0NiwgSmlhIEhlIHdyb3RlOgo+IAo+IE9uIDIwMTkvNi8yOSAxMDo0
MiwgWGlvbmdmZW5nIFdhbmcgd3JvdGU6Cj4+IFdlIHNldCAnY3B1X3Bvc3NpYmxlX21hc2snIGJh
c2VkIG9uIHRoZSBlbmFibGVkIEdJQ0Mgbm9kZSBpbiBNQURULiBJZgo+PiB0aGUgR0lDQyBub2Rl
IGlzIGRpc2FibGVkLCB3ZSB3aWxsIHNraXAgaW5pdGlhbGl6aW5nIHRoZSBrZXJuZWwgZGF0YQo+
PiBzdHJ1Y3R1cmUgZm9yIHRoYXQgQ1BVLgo+Pgo+PiBUbyBzdXBwb3J0IENQVSBob3RwbHVnLCB3
ZSBuZWVkIHRvIGluaXRpYWxpemUgc29tZSBDUFUgcmVsYXRlZCBkYXRhCj4+IHN0cnVjdHVyZSBp
biBhZHZhbmNlLiBUaGlzIHBhdGNoIG1hcmsgYWxsIHRoZSBHSUNDIG5vZGVzIGFzIHBvc3NpYmxl
IENQVQo+PiBhbmQgb25seSB0aGVzZSBlbmFibGVkIEdJQ0Mgbm9kZXMgYXMgcHJlc2VudCBDUFUu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFhpb25nZmVuZyBXYW5nIDx3YW5neGlvbmdmZW5nMkBodWF3
ZWkuY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9rZXJuZWwvc2V0dXAuYyB8wqAgMiArLQo+
PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9zbXAuY8KgwqAgfCAxMSArKysrKy0tLS0tLQo+PiDCoCAy
IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3NldHVwLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9z
ZXR1cC5jCj4+IGluZGV4IDdlNTQxZjkuLjdmNGQxMmEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJt
NjQva2VybmVsL3NldHVwLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc2V0dXAuYwo+PiBA
QCAtMzU5LDcgKzM1OSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IHRvcG9sb2d5X2luaXQodm9pZCkK
Pj4gwqDCoMKgwqDCoCBmb3JfZWFjaF9vbmxpbmVfbm9kZShpKQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVnaXN0ZXJfb25lX25vZGUoaSk7Cj4+IMKgIC3CoMKgwqAgZm9yX2VhY2hfcG9zc2libGVf
Y3B1KGkpIHsKPj4gK8KgwqDCoCBmb3JfZWFjaF9vbmxpbmVfY3B1KGkpIHsKPiAKPiBIYXZlIHlv
dSBjb25zaWRlcmVkIHRoZSBjYXNlIGluIG5vbi1hY3BpIG1vZGU/IGFuZCBzZXR0aW5nICJtYXhj
cHVzPW4iIGluIGhvc3Qga2VybmVsIGJvb3QKPiAKPiBwYXJhbWV0ZXJzPwoKVGhhbmtzIGZvciB5
b3VyIG1lbnRpb24uIEkgaGF2ZW4ndCBjb25zaWRlcmVkIG5vbi1hY3BpIG1vZGUuIEkgc2hvdWxk
IGFkZCBBQ1BJIGNoZWNrIGluCidzbXBfcHJlcGFyZV9jcHVzKCknLgonbWF4Y3B1cycgaXMgY2hl
Y2sgd2hlbiB3ZSBhY3R1YWxseSBvbmxpbmUgdGhlIENQVSwgc28gSSB0aGluayBpdCBpcyBub3Qg
aW5mbHVlbmNlZC4KClRoYW5rcywKWGlvbmdmZW5nCgo+IAo+IC0tLQo+IENoZWVycywKPiBKdXN0
aW4gKEppYSBIZSkKPiAKPiAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBjcHUgKmNwdSA9
ICZwZXJfY3B1KGNwdV9kYXRhLmNwdSwgaSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjcHUtPmhv
dHBsdWdnYWJsZSA9IDE7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZWdpc3Rlcl9jcHUoY3B1LCBp
KTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3NtcC5jIGIvYXJjaC9hcm02NC9r
ZXJuZWwvc21wLmMKPj4gaW5kZXggNmRjZjk2MC4uNmQ5OTgzYyAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9rZXJuZWwvc21wLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc21wLmMKPj4g
QEAgLTUyNSwxNiArNTI1LDE0IEBAIHN0cnVjdCBhY3BpX21hZHRfZ2VuZXJpY19pbnRlcnJ1cHQg
KmFjcGlfY3B1X2dldF9tYWR0X2dpY2MoaW50IGNwdSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHU2
NCBod2lkID0gcHJvY2Vzc29yLT5hcm1fbXBpZHI7Cj4+IMKgIC3CoMKgwqAgaWYgKCEocHJvY2Vz
c29yLT5mbGFncyAmIEFDUElfTUFEVF9FTkFCTEVEKSkgewo+PiAtwqDCoMKgwqDCoMKgwqAgcHJf
ZGVidWcoInNraXBwaW5nIGRpc2FibGVkIENQVSBlbnRyeSB3aXRoIDB4JWxseCBNUElEUlxuIiwg
aHdpZCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgfQo+PiAtCj4+IMKg
wqDCoMKgwqAgaWYgKGh3aWQgJiB+TVBJRFJfSFdJRF9CSVRNQVNLIHx8IGh3aWQgPT0gSU5WQUxJ
RF9IV0lEKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoInNraXBwaW5nIENQVSBlbnRy
eSB3aXRoIGludmFsaWQgTVBJRFIgMHglbGx4XG4iLCBod2lkKTsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybjsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgICvCoMKgwqAgaWYgKCEocHJvY2Vzc29y
LT5mbGFncyAmIEFDUElfTUFEVF9FTkFCTEVEKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHByX2RlYnVn
KCJkaXNhYmxlZCBDUFUgZW50cnkgd2l0aCAweCVsbHggTVBJRFJcbiIsIGh3aWQpOwo+PiArCj4+
IMKgwqDCoMKgwqAgaWYgKGlzX21waWRyX2R1cGxpY2F0ZShjcHVfY291bnQsIGh3aWQpKSB7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoImR1cGxpY2F0ZSBDUFUgTVBJRFIgMHglbGx4IGlu
IE1BRFRcbiIsIGh3aWQpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiBAQCAtNzU1
LDcgKzc1Myw4IEBAIHZvaWQgX19pbml0IHNtcF9wcmVwYXJlX2NwdXModW5zaWduZWQgaW50IG1h
eF9jcHVzKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGludWU7Cj4+IMKgIC3CoMKgwqDCoMKgwqDCoCBzZXRfY3B1X3ByZXNl
bnQoY3B1LCB0cnVlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICgoY3B1X21hZHRfZ2ljY1tjcHVd
LmZsYWdzICYgQUNQSV9NQURUX0VOQUJMRUQpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
ZXRfY3B1X3ByZXNlbnQoY3B1LCB0cnVlKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG51bWFfc3Rv
cmVfY3B1X2luZm8oY3B1KTsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIH0KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

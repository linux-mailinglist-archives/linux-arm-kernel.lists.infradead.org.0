Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2965F2B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skYEOsl+Gr+hXl8V4Vr1h/VhQ3A1J8y0x6xI76lWVbI=; b=frOKPgZ5gdWg+n
	2LHyRYRc4WRfntyofIrSXf6z3xI5Ydz7LDaB1OUKCFkUgfpBb2S1tWdk2+51lNzzWTcEO0c9uZbQ9
	+f+9tPRri8zeceYfPEwa8qHjZzBHYMXPNCYrI3e536DFI+IL0pOF+xR0zc5ygOGuyb5HhfYkXPs0d
	97+f+jqVrCi5yBFDH9EOS8sbojCzv8PrWjBQJhQ3e0ZFAKWlpizxkPH6Gq9WrNpTbZeUDa/DxZyOk
	2CZq2ERgFvpzW/L6EXJbmsw/bCBOaIz8o/2HHzeALrcCkWCizc5Hk4mxWzHl78vZjCg+8S5K3KBpb
	aWkQ4AIGxuWtqda1mCdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiv7B-0002fA-OI; Thu, 04 Jul 2019 06:21:05 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiv6x-0002eV-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:20:53 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 45670AA97B57D36471A2;
 Thu,  4 Jul 2019 14:20:44 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 4 Jul 2019
 14:20:36 +0800
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: Jia He <hejianet@gmail.com>, <rjw@rjwysocki.net>,
 <catalin.marinas@arm.com>, <james.morse@arm.com>
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
 <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
 <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
 <7898e483-a8e4-39a2-358f-8fcf838c242f@gmail.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <e9acd13e-2501-4b62-496d-e8a5cb872191@huawei.com>
Date: Thu, 4 Jul 2019 14:17:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <7898e483-a8e4-39a2-358f-8fcf838c242f@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_232051_664184_AA1FC2D5 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

CgpPbiAyMDE5LzcvNCAxNDowNCwgSmlhIEhlIHdyb3RlOgo+IEhpIFhpb25nZmVuZwo+IAo+IFNv
cnJ5LCBJIG1pc3NlZCB5b3VyIGxhdHRlciBtYWlsLCB5b3UgdXNlZCBhIGVtdWxhdGVkIFNDSSBp
bnRlcnJ1cHQKClllcywgSSBvbmx5IHVzZWQgYSBlbXVsYXRlZCBTQ0kgaW50ZXJydXB0LiBNeSBj
b2xsZWFndWUgaXMgd29ya2luZyBvbiB0aGUgcWVtdSBwYXJ0LgpIZSB1c2VkIHRoZSBHRUQgZGV2
aWNlIGluIHFlbXUuIEJ1dCB0aGVyZSBpcyBzdGlsbCBzb21lIG90aGVyIGlzc3VlcyB3aXRoIHRo
ZSBxZW11CmFuZCBoZSBpcyB3b3JraW5nIG9uIGl0LgoKPiAKPiAtLS0KPiBDaGVlcnMsCj4gSnVz
dGluIChKaWEgSGUpCj4gCj4gT24gMjAxOS83LzQgMTE6MjYsIFhpb25nZmVuZyBXYW5nIHdyb3Rl
Ogo+PiBIaSBKdXN0aW4sCj4+Cj4+IE9uIDIwMTkvNy80IDExOjAwLCBKaWEgSGUgd3JvdGU6Cj4+
PiBIaSBYaW9uZ2ZlbmcKPj4+Cj4+PiBJdCBpcyBhIGxpdHRsZSBiaXQgYXdrZnVsIHRoYXQgSSBh
bSBhbHNvwqAgaW52ZXN0aWdhdGluZyBhY3BpIGJhc2VkIGNwdSBob3RwbHVnIGlzc3VlIHNpbGlt
YXIgd2l0aAo+Pj4KPj4+IHlvdXIgaWRlYS4gTXkgcXVlc3Rpb24gaXMgeW91ciBwdXJwb3NlIHRv
IGltcGxlbWVudCB0aGUgdmNwdSBob3RwbHVnIGluIGFybTY0IHFlbXU/Cj4+IFllcywgbXkgcHVy
cG9zZSBpcyB0byBpbXBsZW1lbnQgdGhlIHZjcHUgaG90cGx1ZyBpbiBhcm02NCBxZW11LiBTbyB0
aGF0IEkgY2FuIGFkZCBvciByZW1vdmUgdmNwdQo+PiB3aXRob3V0IHNodXR0aW5nIGRvd24gdGhl
IEd1ZXN0IE9TLgo+Pgo+PiBUaGFua3MsCj4+IFhpb25nZmVuZwo+Pgo+Pj4gVGhhbmtzIGZvciB0
aGUgZWxsYWJvcmF0aW9uCj4+Pgo+Pj4gLS0tCj4+PiBDaGVlcnMsCj4+PiBKdXN0aW4gKEppYSBI
ZSkKPj4+Cj4+PiBPbiAyMDE5LzYvMjggMTk6MTMsIFhpb25nZmVuZyBXYW5nIHdyb3RlOgo+Pj4+
IFRoaXMgcGF0Y2hzZXQgbWFyayBhbGwgdGhlIEdJQ0Mgbm9kZSBpbiBNQURUIGFzIHBvc3NpYmxl
IENQVXMgZXZlbiB0aG91Z2ggaXQKPj4+PiBpcyBkaXNhYmxlZC4gQnV0IG9ubHkgdGhvc2UgZW5h
YmxlZCBHSUNDIG5vZGUgYXJlIG1hcmtlZCBhcyBwcmVzZW50IENQVXMuCj4+Pj4gU28gdGhhdCBr
ZXJuZWwgd2lsbCBpbml0aWFsaXplIHNvbWUgQ1BVIHJlbGF0ZWQgZGF0YSBzdHJ1Y3R1cmUgaW4g
YWR2YW5jZSBiZWZvcmUKPj4+PiB0aGUgQ1BVIGlzIGFjdHVhbGx5IGhvdCBhZGRlZCBpbnRvIHRo
ZSBzeXN0ZW0uIFRoaXMgcGF0Y2hzZXQgYWxzbyBpbXBsZW1lbnQKPj4+PiAnYWNwaV8odW4pbWFw
X2NwdSgpJyBhbmQgJ2FyY2hfKHVuKXJlZ2lzdGVyX2NwdSgpJyBmb3IgQVJNNjQuIFRoZXNlIGZ1
bmN0aW9ucyBhcmUKPj4+PiBuZWVkZWQgdG8gZW5hYmxlIENQVSBob3RwbHVnLgo+Pj4+Cj4+Pj4g
VG8gc3VwcG9ydCBDUFUgaG90cGx1Zywgd2UgbmVlZCB0byBhZGQgYWxsIHRoZSBwb3NzaWJsZSBH
SUNDIG5vZGUgaW4gTUFEVAo+Pj4+IGluY2x1ZGluZyB0aG9zZSBDUFVzIHRoYXQgYXJlIG5vdCBw
cmVzZW50IGJ1dCBtYXkgYmUgaG90IGFkZGVkIGxhdGVyLiBUaG9zZQo+Pj4+IENQVXMgYXJlIG1h
cmtlZCBhcyBkaXNhYmxlZCBpbiBHSUNDIG5vZGVzLgo+Pj4+Cj4+Pj4gWGlvbmdmZW5nIFdhbmcg
KDMpOgo+Pj4+IMKgwqDCoCBBQ1BJIC8gc2NhbjogZXZhbHVhdGUgX1NUQSBmb3IgcHJvY2Vzc29y
cyBkZWNsYXJlZCB2aWEgQVNMIERldmljZQo+Pj4+IMKgwqDCoMKgwqAgc3RhdGVtZW50Cj4+Pj4g
wqDCoMKgIGFybTY0OiBtYXJrIGFsbCB0aGUgR0lDQyBub2RlcyBpbiBNQURUIGFzIHBvc3NpYmxl
IGNwdQo+Pj4+IMKgwqDCoCBhcm02NDogQWRkIENQVSBob3RwbHVnIHN1cHBvcnQKPj4+Pgo+Pj4+
IMKgwqAgYXJjaC9hcm02NC9rZXJuZWwvYWNwaS5jwqAgfCAyMiArKysrKysrKysrKysrKysrKysr
KysrCj4+Pj4gwqDCoCBhcmNoL2FybTY0L2tlcm5lbC9zZXR1cC5jIHwgMTkgKysrKysrKysrKysr
KysrKysrLQo+Pj4+IMKgwqAgYXJjaC9hcm02NC9rZXJuZWwvc21wLmPCoMKgIHwgMTEgKysrKyst
LS0tLS0KPj4+PiDCoMKgIGRyaXZlcnMvYWNwaS9zY2FuLmPCoMKgwqDCoMKgwqAgfCAxMiArKysr
KysrKysrKysKPj4+PiDCoMKgIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkKPj4+Pgo+Pj4gLgo+Pj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

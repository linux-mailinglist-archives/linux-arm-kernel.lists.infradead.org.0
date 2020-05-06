Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ADA1C708C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BK3Jyfb8xXMDhetzns6W/3jpblddKFOSVIHj5xyrwtI=; b=tHtamXhBHKszXM6pYZN84H8zc
	/IiM7/ZkNOKY/6RVcxuLj7mO0S/l/CAJqPJ27xDuU6qmxfYgOyiAclIIDeleBfccC44RkDp/TE4TH
	uGDi0qx77jObu9XZ+j4LehWqpFRWg8zeHQFmOvkkcF5J3k7AhNPy/XP0cvN7fDDK/tSp96De9D0JG
	5b5YW66/gxHjH4y/W7u0aGBGUzBAukypp3IErbZ+PR5mTwKvPf+pW39uqs6hyXDbzpX5zLY70b3Bc
	a55V42ToKgcShVIf6JRwiZTW4njjhIrW3FxhVVu3mRza6QeotvePiaBuRQvG7rIYvqfjytp0twmN/
	Xz8P9webA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJOj-0007Wu-Aw; Wed, 06 May 2020 12:43:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJOW-0007QB-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:43:26 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C7EFA2357DDA44AEB548;
 Wed,  6 May 2020 20:43:15 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 20:43:07 +0800
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ardb@kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
 <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
Message-ID: <127f1bc8-01ed-6c14-20f3-eb944ec5c4db@huawei.com>
Date: Wed, 6 May 2020 20:43:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_054325_093122_DF8E0460 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Robin Murphy <robin.murphy@arm.com>, Linuxarm <linuxarm@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>, Will
 Deacon <will@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC81LzQgMTI6MzIsIEhhbmp1biBHdW8gd3JvdGU6Cj4gT24gMjAyMC81LzIgMDoxMCwg
QXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4+IFRoZSBJRCBtYXBwaW5nIHRhYmxlIHN0cnVjdHVyZSBv
ZiB0aGUgSU9SVCB0YWJsZSBkZXNjcmliZXMgdGhlIHNpemUgb2YKPj4gYSByYW5nZSB1c2luZyBh
IG51bV9pZHMgZmllbGQgY2FycnlpbmcgdGhlIG51bWJlciBvZiBJRHMgaW4gdGhlIHJlZ2lvbgo+
PiBtaW51cyBvbmUuIFRoaXMgaGFzIGJlZW4gbWlzaW50ZXJwcmV0ZWQgaW4gdGhlIHBhc3QgaW4g
dGhlIHBhcnNpbmcgY29kZSwKPj4gYW5kIGZpcm13YXJlIGlzIGtub3duIHRvIGhhdmUgc2hpcHBl
ZCB3aGVyZSB0aGlzIHJlc3VsdHMgaW4gYW4gYW1iaWd1aXR5LAo+PiB3aGVyZSByZWdpb25zIHRo
YXQgc2hvdWxkIGJlIGFkamFjZW50IGhhdmUgYW4gb3ZlcmxhcCBvZiBvbmUgdmFsdWUuCj4+Cj4+
IFNvIGxldCdzIHdvcmsgYXJvdW5kIHRoaXMgYnkgZGV0ZWN0aW5nIHRoaXMgY2FzZSBzcGVjaWZp
Y2FsbHk6IHdoZW4KPj4gcmVzb2x2aW5nIGFuIElEIHRyYW5zbGF0aW9uLCBhbGxvdyBvbmUgdGhh
dCBtYXRjaGVzIHJpZ2h0IGF0IHRoZSBlbmQgb2YKPj4gYSBtdWx0aS1JRCByZWdpb24gdG8gYmUg
c3VwZXJzZWRlZCBieSBhIHN1YnNlcXVlbnQgb25lLgo+Pgo+PiBUbyBwcmV2ZW50IHBvdGVudGlh
bCByZWdyZXNzaW9ucyBvbiBicm9rZW4gZmlybXdhcmUgdGhhdCBoYXBwZW5lZCB0bwo+PiB3b3Jr
IGJlZm9yZSwgb25seSB0YWtlIHRoZSBzdWJzZXF1ZW50IG1hdGNoIGludG8gYWNjb3VudCBpZiBp
dCBvY2N1cnMKPj4gYXQgdGhlIHN0YXJ0IG9mIGEgbWFwcGluZyByZWdpb24uCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmRiQGtlcm5lbC5vcmc+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jIHwgNDAgKysrKysrKysrKysrKysrKystLS0KPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jIGIvZHJpdmVycy9hY3BpL2FybTY0
L2lvcnQuYwo+PiBpbmRleCA5OGJlMTgyNjZhNzMuLjlmMTM5YTk0YTFkMyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwo+PiArKysgYi9kcml2ZXJzL2FjcGkvYXJtNjQv
aW9ydC5jCj4+IEBAIC0zMDAsNyArMzAwLDcgQEAgc3RhdGljIGFjcGlfc3RhdHVzIGlvcnRfbWF0
Y2hfbm9kZV9jYWxsYmFjayhzdHJ1Y3QgCj4+IGFjcGlfaW9ydF9ub2RlICpub2RlLAo+PiDCoCB9
Cj4+IMKgIHN0YXRpYyBpbnQgaW9ydF9pZF9tYXAoc3RydWN0IGFjcGlfaW9ydF9pZF9tYXBwaW5n
ICptYXAsIHU4IHR5cGUsIAo+PiB1MzIgcmlkX2luLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB1MzIgKnJpZF9vdXQpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUz
MiAqcmlkX291dCwgYm9vbCBjaGVja19vdmVybGFwKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgLyog
U2luZ2xlIG1hcHBpbmcgZG9lcyBub3QgY2FyZSBmb3IgaW5wdXQgaWQgKi8KPj4gwqDCoMKgwqDC
oCBpZiAobWFwLT5mbGFncyAmIEFDUElfSU9SVF9JRF9TSU5HTEVfTUFQUElORykgewo+PiBAQCAt
MzE2LDEwICszMTYsMzQgQEAgc3RhdGljIGludCBpb3J0X2lkX21hcChzdHJ1Y3QgCj4+IGFjcGlf
aW9ydF9pZF9tYXBwaW5nICptYXAsIHU4IHR5cGUsIHUzMiByaWRfaW4sCj4+IMKgwqDCoMKgwqAg
fQo+PiDCoMKgwqDCoMKgIGlmIChyaWRfaW4gPCBtYXAtPmlucHV0X2Jhc2UgfHwKPj4gLcKgwqDC
oMKgwqDCoMKgIChyaWRfaW4gPj0gbWFwLT5pbnB1dF9iYXNlICsgbWFwLT5pZF9jb3VudCkpCj4+
ICvCoMKgwqDCoMKgwqDCoCAocmlkX2luID4gbWFwLT5pbnB1dF9iYXNlICsgbWFwLT5pZF9jb3Vu
dCkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOWElPOwo+PiArwqDCoMKgIGlmIChj
aGVja19vdmVybGFwKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKgo+PiArwqDCoMKgwqDCoMKgwqDC
oCAqIFdlIGFscmVhZHkgZm91bmQgYSBtYXBwaW5nIGZvciB0aGlzIGlucHV0IElEIGF0IHRoZSBl
bmQgb2YKPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBhbm90aGVyIHJlZ2lvbi4gSWYgaXQgY29pbmNp
ZGVzIHdpdGggdGhlIHN0YXJ0IG9mIHRoaXMKPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiByZWdpb24s
IHdlIGFzc3VtZSB0aGUgcHJpb3IgbWF0Y2ggd2FzIGR1ZSB0byB0aGUgb2ZmLWJ5LTEKPj4gK8Kg
wqDCoMKgwqDCoMKgwqAgKiBpc3N1ZSBtZW50aW9uZWQgYmVsb3csIGFuZCBhbGxvdyBpdCB0byBi
ZSBzdXBlcnNlZGVkLgo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIE90aGVyd2lzZSwgdGhpbmdzIGFy
ZSAqcmVhbGx5KiBicm9rZW4sIGFuZCB3ZSBqdXN0IGRpc3JlZ2FyZAo+PiArwqDCoMKgwqDCoMKg
wqDCoCAqIGR1cGxpY2F0ZSBtYXRjaGVzIGVudGlyZWx5IHRvIHJldGFpbiBjb21wYXRpYmlsaXR5
Lgo+PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKEZXX0JV
RyAiW21hcCAlcF0gY29uZmxpY3RpbmcgbWFwcGluZyBmb3IgaW5wdXQgSUQgCj4+IDB4JXhcbiIs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1hcCwgcmlkX2luKTsKPiAKPiBBcyB3
ZSBhbHJlYWR5IGFwcGxpZWQgYSB3b3JrYXJvdW5kIGhlcmUsIGNhbiB3ZSBhZGQgImFwcGx5aW5n
Cj4gd29ya2Fyb3VuZCIgaW4gdGhlIGVycm9yIG1lc3NhZ2U/IFRoaXMgd2lsbCBtYWtlIHRoZSBj
dXN0b21lcnMKPiBsZXNzIHVuZWFzeSB0byBzZWUgc3VjaCBtZXNzYWdlIGluIHRoZSBib290IGxv
Zy4gT25jZSB0aGUgcHJvZHVjdAo+IHdhcyBkZWxpdmVyaWVkIHRvIGN1c3RvbWVycywgaXQncyBu
b3QgdGhhdCBlYXN5IHRvIHVwZGF0ZSBhbGwgdGhlCj4gZmlybXdhcmVzIGVudGlyZWx5Lgo+IAo+
IEknbSBvdXQgb2YgcmVhY2ggZm9yIEQwNS9EMDYgaGFyZHdhcmUgYXMgaXQncyBob2xpZGF5cyBp
biBDaGluYSwKPiBwbGVhc2UgYWxsb3cgbWUgdG8gdGVzdCB0aGlzIHBhdGNoIHNldCBpbiBXZWRu
ZXNkYXkgdGhpcyB3ZWVrLgoKVGVzdGVkIHRoaXMgcGF0Y2hzZXQgb24gRDA2IGFuZCBJIGNvbWFw
YXJlZCBlYWNoIHN1Y2Vzc2Z1bCBtYXBwZWQKSUQsIG5vIHJlZ3Jlc3Npb25zLCBhbmQgYWxzbyBu
byBmdW5jdGlvbiByZWdyZXNzaW9ucyBhcyB3ZWxsLAoKVGVzdGVkLWJ5OiBIYW5qdW4gR3VvIDxn
dW9oYW5qdW5AaHVhd2VpLmNvbT4KClRoYW5rcwpIYW5qdW4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

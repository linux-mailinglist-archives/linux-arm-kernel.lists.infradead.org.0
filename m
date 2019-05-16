Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F1E1FCED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 03:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foxwnHH4XXt4ObQ8Ce9oWe7AEkfyWswHxFWCV0y5xes=; b=dB2RMsNG//n4fD
	G2iIM0KXoabOo8NNVcfo8yIAVUcOAuZjdMX29+Uzd8nO/UpAtj7aPRnZ9RwiS5nUdoGQT23mcN3TJ
	loOMPRSrNZHum5ShBCKRJdlgTlwZnE6TSDO2xxrcWIO+6jLBoe0ayNcWQkS43yGl3c0Ikdq6LPjGv
	OxIrAE8WVfJsnMBbDm1h1vYSeWrwAxqX4U3f1r076rrMKocuaq34Qau6mq4rYqWIcRobBIdS+BgIQ
	j42PWbzbm6WuZhe9Jd48KdW5peyB/0o8TDjgOuvDDFh+DeL/JV8TSBw53PVfGPL8Y9fTI1Vdqzmmd
	zPuzBKDdZ6re5eK4OUEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR5PI-0007vp-FT; Thu, 16 May 2019 01:42:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR5PB-0007vE-8W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 01:41:59 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E9099E131540A4194732;
 Thu, 16 May 2019 09:41:51 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.180) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 16 May 2019
 09:41:43 +0800
Subject: Re: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT
 disabled
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
 <20190515034253.79348-1-wangkefeng.wang@huawei.com>
 <20190515101534.GF24357@fuggles.cambridge.arm.com>
 <20190515120652.GA27269@e121166-lin.cambridge.arm.com>
 <a7efd571-d82e-1d8f-147f-3bf8d1152d0d@arm.com>
 <20190515164110.GA22536@e121166-lin.cambridge.arm.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <15f19985-fb84-18ed-d5b8-e06079fb83ac@huawei.com>
Date: Thu, 16 May 2019 09:39:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <20190515164110.GA22536@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.19.180]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_184157_535003_4D501CEC 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Hulk Robot <hulkci@huawei.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org,
 Will Deacon <will.deacon@arm.com>, linux-acpi@vger.kernel.org,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNS8xNiAwOjQxLCBMb3JlbnpvIFBpZXJhbGlzaSB3cm90ZToKPiBPbiBXZWQsIE1h
eSAxNSwgMjAxOSBhdCAwMTo0NjoyOFBNICswMTAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9u
IDE1LzA1LzIwMTkgMTM6MDYsIExvcmVuem8gUGllcmFsaXNpIHdyb3RlOgo+Pj4gWytKb2VyZywg
Um9iaW5dCj4+Pgo+Pj4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTE6MTU6MzRBTSArMDEwMCwg
V2lsbCBEZWFjb24gd3JvdGU6Cj4+Pj4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTE6NDI6NTNB
TSArMDgwMCwgS2VmZW5nIFdhbmcgd3JvdGU6Cj4+Pj4+IGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0
LmM6IEluIGZ1bmN0aW9uIGlvcnRfaW9tbXVfY29uZmlndXJlOgo+Pj4+PiBkcml2ZXJzL2FjcGkv
YXJtNjQvaW9ydC5jOjEwNzk6MjE6IGVycm9yOiBzdHJ1Y3QgaW9tbXVfZndzcGVjIGhhcyBubyBt
ZW1iZXIgbmFtZWQgZmxhZ3MKPj4+Pj4gICAgICBkZXYtPmlvbW11X2Z3c3BlYy0+ZmxhZ3MgfD0g
SU9NTVVfRldTUEVDX1BDSV9SQ19BVFM7Cj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICBefgo+
Pj4+PiBkcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jOjEwNzk6MzI6IGVycm9yOiBJT01NVV9GV1NQ
RUNfUENJX1JDX0FUUwo+Pj4+PiB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlv
bikKPj4+Pj4gICAgICBkZXYtPmlvbW11X2Z3c3BlYy0+ZmxhZ3MgfD0gSU9NTVVfRldTUEVDX1BD
SV9SQ19BVFM7Cj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4+Pj4+IGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmM6MTA3OTozMjog
bm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZv
ciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KPj4+Pj4KPj4+Pj4gSWYgSU9NTVVfU1VQUE9S
VCBub3QgZW5hYmxlZCwgc3RydWN0IGlvbW11X2Z3c3BlYyB3aXRob3V0IG1lbWJlcnMgYW5kCj4+
Pj4+IElPTU1VX0ZXU1BFQ19QQ0lfUkNfQVRTIG5vdCBkZWZpbmVkLCBhZGQgbmV3IGlvbW11X2Z3
c3BlY19zZXRfYXRzX2ZsYWdzKCkKPj4+Pj4gdG8gc2V0IElPTU1VX0ZXU1BFQ19QQ0lfUkNfQVRT
IGZsYWdzIHRvIHNvbHZlIGJ1aWxkIGVycm9yLgo+Pj4+Pgo+Pj4+PiBDYzogSmVhbi1QaGlsaXBw
ZSBCcnVja2VyIDxqZWFuLXBoaWxpcHBlLmJydWNrZXJAYXJtLmNvbT4KPj4+Pj4gQ2M6IExvcmVu
em8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+Pj4+PiBDYzogV2lsbCBE
ZWFjb24gPHdpbGwuZGVhY29uQGFybS5jb20+Cj4+Pj4+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90
IDxodWxrY2lAaHVhd2VpLmNvbT4KPj4+PiBXaGF0J3MgdGhpcyAiSHVsayBSb2JvdCI/IERvZXMg
aXQgcmVwb3J0IHRoaW5ncyBwdWJsaWNseT8KPj4+IEFGQUlLIGl0IGlzIEh1YXdlaSBDSSBzeXN0
ZW0sIEkgaGFkIHNvbWUgZG91YnRzIGFib3V0IGxlYXZpbmcKPj4+IHRoYXQgdGFnIGZvciBvdGhl
ciBwYXRjaGVzIEkgZGVhbHQgd2l0aCwgSSBhbSBub3Qgc3VyZSBpdCBpcwo+Pj4gcmVhbGx5IHVz
ZWZ1bCAob3RoZXIgdGhhbiBnaXZpbmcgSHVsayBzb21lIGNyZWRpdCkuCgpBcyBMb3JlbnpvIHNh
aWQsIGl0IGlzIEh1YXdlaSBDSSBzeXN0ZW0gdG8gaW1wcm92ZSB0aGUgcm9idXN0bmVzcyBvZgoK
b3VyIGlubmVyIExpbnV4IGtlcm5lbCB2ZXJzaW9uLCB3ZSBhbHNvIHVzZSBpdCB0byB0ZXN0IHRo
ZSBsYXRlc3QgTGludXgga2VybmVsLgoKVGhlIHN5c3RlbSBpcyBzdGlsbCBiZWluZyBkZXZlbG9w
ZWQsIGFuZMKgIHN0aWxsIG5lZWQgdG8gZW5oYW5jZSBhbmQgaW1wcm92ZS4KCj4+Pgo+Pj4+IEFu
eXdheSwgSSBjYW4gcGljayB0aGlzIHVwIGlmIExvcmVuem8gYWNrcyBpdC4KPj4+IEFjdHVhbGx5
IEkgdGhpbmsgd2Ugc2hvdWxkIGNvbXBpbGUgb3V0IGlvcnRfaW9tbXVfY29uZmlndXJlKCkgZm9y
Cj4+PiAhSU9NTVVfU1VQUE9SVCB1bmxlc3MgSSBhbSBtaXNzaW5nIHNvbWV0aGluZywgc28gdGhh
dCB3ZSBhcmUKPj4+IHJlbW92aW5nIHRoaXMgc291cmNlIG9mIGVycm9ycy4KPj4gSW5kZWVkLCBt
dWNoIGFzIEkgbGlrZSB0aGUgY29tcGlsZSBjb3ZlcmFnZSBvZiBub3QgaGF2aW5nIHRoaW5ncyAj
aWZkZWZlZAo+PiBvdXQgaW4gZ2VuZXJhbCwgdGhpcyBwYXJ0aWN1bGFyIGNhc2Ugc2VlbXMgbGlr
ZSBhIGZhaXJseSBhdHlwaWNhbAo+PiBjb25maWd1cmF0aW9uIHNvIEknbSBub3Qgc3VyZSBhbGwg
dGhlIGV4dHJhIGZsdWZmIG9mIHN0cnVjdCBhY2Nlc3NvcnMgaXMKPj4gcmVhbGx5IHdvcnRoIGl0
LgpUaGlzIGlzIGZvdW5kZWQgYnkgcmFuZGNvbmZpZyBidWlsdCwgaXQgc2VlbXMgdGhhdCBubyBv
bmUgdXNlIHRoaXMga2luZCBvZiBjb25maWd1cmF0aW9uCj4gT2ssIEkgd2lsbCBzZW5kIGEgcGF0
Y2ggc2hvcnRseSB0byBhZGRyZXNzIHRoaXMgaXNzdWUsIGlmIEtlZmVuZwo+IGRvZXMgbm90IG9i
amVjdCBJIHdpbGwgZHJvcCB0aGUgQ0kgYm90IGFzIHJlcG9ydGVyIGFuZCBhZGQgaGltCj4gaW5z
dGVhZC4KRWl0aGVyIHdheSBpcyBvaywgdGhhbmtzLgo+Cj4gVGhhbmtzLAo+IExvcmVuem8KPgo+
PiBSb2Jpbi4KPj4KPj4+IElmIHRoYXQgZG9lcyBub3QgY3V0IGl0LCBmb3IgdGhpcyBwYXRjaDoK
Pj4+Cj4+PiBpb21tdV9md3NwZWNfc2V0X2F0c19mbGFncygpIHNob3VsZCBiZSBpb21tdV9md3Nw
ZWNfc2V0X2F0c19mbGFnKCkKPj4+Cj4+PiBUaGUgY29tbWl0IGxvZyBzaG91bGQgYmUgZml4ZWQg
KGl0IGlzIHByZXR0eSB3ZWlyZCB0byBzdGFydCB3aXRoIHRoZQo+Pj4gYnVpbGQgZXJyb3IgYW5k
IHRoZW4gZXhwbGFpbiBpdCk6Cj4+Pgo+Pj4gIklmIElPTU1VX1NVUFBPUlQgaXMgbm90IGVuYWJs
ZWQsIHN0cnVjdCBpb21tdV9md3NwZWMgaXMgYW4gZW1wdHkKPj4+IHN0cnVjdCBhbmQgSU9NTVVf
RldTUEVDX1BDSV9SQ19BVFMgaXMgbm90IGRlZmluZWQsIHJlc3VsdGluZyBpbgo+Pj4gdGhlIGZv
bGxvd2luZyBidWlsZCBlcnJvcjoKPj4+Cj4+PiBkcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jOiBJ
biBmdW5jdGlvbiBpb3J0X2lvbW11X2NvbmZpZ3VyZToKPj4+IGRyaXZlcnMvYWNwaS9hcm02NC9p
b3J0LmM6MTA3OToyMTogZXJyb3I6IHN0cnVjdCBpb21tdV9md3NwZWMgaGFzIG5vIG1lbWJlciBu
YW1lZCBmbGFncwo+Pj4gICAgICBkZXYtPmlvbW11X2Z3c3BlYy0+ZmxhZ3MgfD0gSU9NTVVfRldT
UEVDX1BDSV9SQ19BVFM7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgXn4KPj4+IGRyaXZlcnMv
YWNwaS9hcm02NC9pb3J0LmM6MTA3OTozMjogZXJyb3I6IElPTU1VX0ZXU1BFQ19QQ0lfUkNfQVRT
Cj4+PiB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikKPj4+ICAgICAgZGV2
LT5pb21tdV9md3NwZWMtPmZsYWdzIHw9IElPTU1VX0ZXU1BFQ19QQ0lfUkNfQVRTOwo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPj4+
IGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmM6MTA3OTozMjogbm90ZTogZWFjaCB1bmRlY2xhcmVk
IGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFw
cGVhcnMgaW4KPj4+Cj4+PiBBZGQgYSBpb21tdV9md3NwZWNfc2V0X2F0c19mbGFnKCkgaGVscGVy
IGZ1bmN0aW9uICh0aGF0IGlzIGFuIGVtcHR5Cj4+PiBzdHViIG9uICFJT01NVV9TVVBQT1JUKSB0
byBmaXggaXQuIgo+Pj4KPiAuCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

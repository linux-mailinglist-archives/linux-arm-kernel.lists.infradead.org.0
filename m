Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E465C59EBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wh3P1AOwEMeLcr7yyNXZXoZASclhzE/4U5mXmzan+GA=; b=jJlXC8FLNtAaNWfvg/Jpe2Ucm
	I+hoAQJ580/2YAlHI7HRCplhJmXp1CRWhGEf38VzxzzVxtNMqT4cxdtpytlHI07Qm2SlZ4ITVo6sk
	VUe5i20UEdxX803YcW7Zn1zfbQCj/eEDeyqnyt+bADHaDU7XvmnRGUETH1+bqxhMuHmq2pEFNdmIO
	5Le7oPLlzK3/1EbTP7YI54/0xJC6yNyxVf7ETKKvCdyxzjVryx53YUbglFNgG7Sf8bOeRxREa3Gy0
	jDV7EjlheSf01QYIhhbOa5D1HHuIyPRW6XF1OabkkAoj7QKxENZ00b9JOigPUop1mWvSZdo0/1HwU
	LBBGRBwCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgshP-0005te-K2; Fri, 28 Jun 2019 15:22:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgshF-0005sp-Bl
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:21:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C99C28;
 Fri, 28 Jun 2019 08:21:50 -0700 (PDT)
Received: from [192.168.122.164] (u201426.austin.arm.com [10.118.28.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11A1B3F706;
 Fri, 28 Jun 2019 08:21:50 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: John Garry <john.garry@huawei.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
 <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
 <718438d0-8648-897a-83e8-801146a0af86@arm.com>
 <f6f7f9bb-547d-3fd3-f3f8-1d55181f63d7@huawei.com>
 <11fb712f-b3c2-5491-89ee-ea7efb18ddd8@arm.com>
 <63f6c6a8-9d79-ae75-3c15-96bded9b14e4@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <b7877a38-6c30-af7d-f627-1618684afb55@arm.com>
Date: Fri, 28 Jun 2019 10:21:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <63f6c6a8-9d79-ae75-3c15-96bded9b14e4@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_082153_496387_779F4242 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA2LzE5LzE5IDQ6MTUgQU0sIEpvaG4gR2Fycnkgd3JvdGU6Cj4gT24gMTgvMDYvMjAx
OSAyMjoyOCwgSmVyZW15IExpbnRvbiB3cm90ZToKPj4gSGksCj4+Cj4+IE9uIDYvMTgvMTkgMTI6
MjMgUE0sIEpvaG4gR2Fycnkgd3JvdGU6Cj4+PiBPbiAxOC8wNi8yMDE5IDE1OjQwLCBWYWxlbnRp
biBTY2huZWlkZXIgd3JvdGU6Cj4+Pj4gT24gMTgvMDYvMjAxOSAxNToyMSwgSmVyZW15IExpbnRv
biB3cm90ZToKPj4+PiBbLi4uXQo+Pj4+Pj4+ICsgKiBSZXR1cm46IC1FTk9FTlQgaWYgdGhlIFBQ
VFQgZG9lc24ndCBleGlzdCwgdGhlIENQVSBjYW5ub3QgYmUKPj4+Pj4+PiBmb3VuZCBvcgo+Pj4+
Pj4+ICsgKsKgwqDCoMKgwqDCoCB0aGUgdGFibGUgcmV2aXNpb24gaXNuJ3QgbmV3IGVub3VnaC4K
Pj4+Pj4+PiArICogT3RoZXJ3aXNlIHJldHVybnMgZmxhZyB2YWx1ZQo+Pj4+Pj4+ICsgKi8KPj4+
Pj4+Cj4+Pj4+PiBOaXQ6IHN0cmljdGx5IHNwZWFraW5nIHdlJ3JlIG5vdCByZXR1cm5pbmcgdGhl
IGZsYWcgdmFsdWUgYnV0IGl0cyAKPj4+Pj4+IG1hc2sKPj4+Pj4+IGFwcGxpZWQgdG8gdGhlIGZs
YWdzIGZpZWxkLiBJIGRvbid0IHRoaW5rIGFueW9uZSB3aWxsIGNhcmUgYWJvdXQKPj4+Pj4+IGdl
dHRpbmcKPj4+Pj4+IHRoZSBhY3R1YWwgZmxhZyB2YWx1ZSwgYnV0IGl0IHNob3VsZCBiZSBtYWRl
IG9idmlvdXMgaW4gdGhlIGRvYzoKPj4+Pj4KPj4+Pj4gT3IgSSBjbGFyaWZ5IHRoZSBjb2RlIHRv
IGFjdHVhbGx5IGRvIHdoYXQgdGhlIGNvbW1lbnRzIHNheXMuIE1heWJlCj4+Pj4+IHRoYXQgaXMg
d2hhdCBKb2huIEcgd2FzIGFsc28gcG9pbnRpbmcgb3V0IHRvbz8KPj4+Pj4KPj4+Cj4+PiBObywg
SSB3YXMganVzdCBzYXlpbmcgdGhhdCB0aGUga2VybmVsIHRvcG9sb2d5IGNhbiBiZSBicm9rZW4g
d2l0aG91dAo+Pj4gdGhpcyBzZXJpZXMuCj4+Pgo+Pj4+Cj4+Pj4gTW1tIEkgZGlkbid0IGZpbmQg
YW55IHJlcGx5IGZyb20gSm9obiByZWdhcmRpbmcgdGhpcyBpbiB2MSwgYnV0IEkKPj4+PiB3b3Vs
ZG4ndAo+Pj4+IG1pbmQgZWl0aGVyIHdheSwgYXMgbG9uZyBhcyB0aGUgZG9jICYgY29kZSBhcmUg
YWxpZ25lZC4KPj4+Pgo+Pj4KPj4+IEJUVywgdG8gbWUsIGZ1bmN0aW9uIGFjcGlfcHB0dF9jcHVf
aXNfdGhyZWFkKCkgc2VlbXMgdG8gdHJ5IHRvIGRvIHRvbwo+Pj4gbXVjaCwgaS5lLiBjaGVjayBp
ZiB0aGUgUFBUVCBpcyBuZXcgZW5vdWdoIHRvIHN1cHBvcnQgdGhlIHRocmVhZCBmbGFnCj4+PiBh
bmQgYWxzbyBjaGVjayBpZiBpdCBpcyBzZXQgZm9yIGEgc3BlY2lmaWMgY3B1LiBJJ2QgY29uc2lk
ZXIgc2VwYXJhdGUKPj4+IGZ1bmN0aW9ucyBoZXJlLgo+Pgo+IAo+IEhpLAo+IAo+PiA/IFlvdXIg
c3VnZ2VzdGluZyByZXBsYWNpbmcgdGhlCj4+Cj4gCj4gSSBhbSBub3Qgc2F5aW5nIGRlZmluaXRl
bHkgdGhhdCB0aGlzIHNob3VsZCBiZSBjaGFuZ2VkLCBpdCdzIGp1c3QgdGhhdCAKPiBhY3BpX3Bw
dHRfY3B1X2lzX3RocmVhZCgpIHJldHVybmluZyBmYWxzZSwgdHJ1ZSwgb3IgIm5vIGVudHJ5IiBp
cyBub3QgYSAKPiB0eXBpY2FsIEFQSSBmb3JtYXQuCj4gCj4gSG93IGFib3V0IGFjcGlfcHB0dF9z
dXBwb3J0X3RocmVhZF9pbmZvKGNwdSkgYW5kIAo+IGFjcGlfcHB0dF9jcHVfaXNfdGhyZWFkZWQo
Y3B1KSwgYm90aCByZXR1cm5pbmcgZmFsc2UvdHJ1ZSBvbmx5PwoKSSdtIG5vdCBzdXJlIHdlIHdh
bnQgdG8gYmUgZXhwb3J0aW5nIHdoYXQgaXMgZWZmZWN0aXZlbHkgYSB2ZXJzaW9uIGNoZWNrIApp
bnRvIHRoZSByZXN0IG9mIHRoZSBjb2RlLiBQbHVzLCBBRkFJSyBpdCBkb2Vzbid0IHJlYWxseSBz
aW1wbGlmeSAKYW55dGhpbmcgZXhjZXB0IHRoZSBjYXNlIG9mIEFDUEkgbWFjaGluZXMgd2l0aCBy
ZXZpc2lvbiAxIFBQVFRzLCBiZWNhdXNlIAp0aG9zZSB3b3VsZCBvbmx5IGJlIGRvaW5nIGEgc2lu
Z2xlIGNoZWNrIGFuZCBhc3N1bWluZyB0aGUgc3RhdGUgb2YgdGhlIApNVCBiaXQuIFRoYXQgTVQg
Y2hlY2sgaXMgc3VzcGVjdCBhbnl3YXksIGFsdGhvdWdoIEFGQUlLIGl0IGdldHMgdGhlIApyaWdo
dCBhbnN3ZXIgb24gYWxsIG1hY2hpbmVzIHRoYXQgcHJlZGF0ZSBBQ1BJIDYuMy4uCgoKPiAKPiBO
b25lIG9mIHRoaXMgaXMgaWRlYWwuCj4gCj4gQlRXLCBIYXZlIHlvdSBhdWRpdGVkIHdoaWNoIGFy
bTY0IHN5c3RlbXMgaGF2ZSBNVCBiaXQgc2V0IGxlZ2l0aW1hdGVseT8KCk5vdCBmb3JtYWxseSwg
Z2l2ZW4gSSBkb24ndCBoYXZlIGFjY2VzcyB0byBldmVyeXRoaW5nIGF2YWlsYWJsZS4KCj4gCj4+
Cj4+IGlmICh0YWJsZS0+cmV2aXNpb24gPj0gcmV2KQo+IAo+IEkga25vdyB0aGF0IGNoZWNraW5n
IHRoZSB0YWJsZSByZXZpc2lvbiBpcyBub3Qgb24gdGhlIGZhc3QgcGF0aCwgYnV0IGl0IAo+IHNl
ZW1zIHVubmVjZXNzYXJpbHkgaW5lZmZpY2llbnQgdG8gYWx3YXlzIHJlYWQgaXQgdGhpcyB3YXks
IEkgbWVhbiAKPiBjYWxsaW5nIGFjcGlfdGFibGVfZ2V0KCkuCj4gCj4gQ2FuIHlvdSBoYXZlIGEg
c3RhdGljIHZhbHVlIGZvciB0aGUgdGFibGUgcmV2aXNpb24/IE9yIGlzIHRoaXMganVzdCBob3cg
Cj4gb3RoZXIgdGFibGUgaW5mbyBpcyBhY2Nlc3NlZCBpbiBBQ1BJIGNvZGU/CgpZZXMgY2FjaGlu
ZyB0aGUgcmV2aXNpb24gaW50ZXJuYWxseSB3b3VsZCBzYXZlIGEgZ2V0L3B1dCBwZXIgY29yZSwg
Zm9yIApvbGRlciBtYWNoaW5lcy4gSSBkb24ndCB0aGluayBpdHMgYSBiaWcgZGVhbCBpbiBub3Jt
YWwgb3BlcmF0aW9uIGJ1dCBpdHMgCmEgY291cGxlIGV4dHJhIGxpbmVzIHNvLi4uCgpJIHdpbGwg
cG9zdCBpdCB3aXRoIGFuIGludGVybmFsbHkgY2FjaGVkIHNhdmVkX3BwdHRfcmV2LiBUaGF0IHdp
bGwgc2F2ZSAKQ1BVIGNvdW50IGdldC9wdXRzIGluIHRoZSBjYXNlIHdoZXJlIHRoZSByZXZpc2lv
biBpc24ndCBuZXcgZW5vdWdoLgoKCj4gCj4+IMKgwqDCoCBjcHVfbm9kZSA9IGFjcGlfZmluZF9w
cm9jZXNzb3Jfbm9kZSh0YWJsZSwgYWNwaV9jcHVfaWQpOwo+Pgo+PiBjaGVjayB3aXRoCj4+Cj4+
IGlmIChyZXZpc2lvbl9jaGVjayh0YWJsZSwgcmV2KSkKPj4gwqDCoMKgIGNwdV9ub2RlID0gYWNw
aV9maW5kX3Byb2Nlc3Nvcl9ub2RlKHRhYmxlLCBhY3BpX2NwdV9pZCk7Cj4+Cj4+Cj4+IGFuZCBh
IGZ1bmN0aW9uIGxpa2UKPj4KPj4gc3RhdGljIGludCByZXZpc2lvbl9jaGVjayhhY3BpeHh4eCAq
dGFibGUsIGludCByZXYpCj4+IHsKPj4gwqDCoMKgIHJldHVybiAodGFibGUtPnJldmlzaW9uID49
IHJldik7Cj4+IH0KPj4KPj4gQWx0aG91Z2gsIGZyYW5rbHkgaWYgb25lIHdlcmUgdG8gZG8gdGhp
cywgaXQgc2hvdWxkIHByb2JhYmx5IGJlIGEgbWFjcm8KPj4gd2l0aCB0aGUgdGFibGUgdHlwZSwg
YW5kIHVzZWQgaW4gdGhlIGRvemVuIG9yIHNvIG90aGVyIHBsYWNlcyBJIGZvdW5kCj4+IGRvaW5n
IHNpbWlsYXIgY2hlY2tzIChzcGNyLCBpb3J0LCBldGMpLgo+Pgo+PiBPciBzb21ldGhpbmcgZWxz
ZT8KPj4KPj4KPj4KPj4KPiAKPiB0aGFua3MsCj4gSm9obgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

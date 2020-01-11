Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF780137BE7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 07:52:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/8t3cLE2ivoyBWdudqmuFzFk3q5bvGpdgTuG9y3SBA=; b=GH+rJJ/y5uoaPv
	Hm5r2QBg2hXb5y1ygdkv6C1V0fZDY9F2zJMEgxdskoyc/RIiiyycAIkmxl35bqSfrfCL3oDWTJUIC
	nXx34j+2crLMywTY9ik4Bd61LOrGZbDjgJA+F0q99EKuTyOwcbYW70Z6y1AMraJ2lYVMbUSWNBn4Q
	IJVEGX8dLf4AfyzdEGg1bsqfLYg2M+mkh9szkuNyB6bAJVbAAn0BTlSKXKM6pNXa5PjqCUPvnLwfX
	cuqE+q39EMmQUGDpe2fcT08BBT6qrBZB+v+exmGG6lz5v3cUy/KUyJc0Vdy8xBsxte53lSCMi+Pkw
	of3u++f9PmxblfEwlhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqAd2-0004J1-Ec; Sat, 11 Jan 2020 06:52:12 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqAcr-0004HU-2M
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 06:52:04 +0000
Received: from DGGEMM405-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 32DE7412A666736B8ACF;
 Sat, 11 Jan 2020 14:51:50 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM405-HUB.china.huawei.com (10.3.20.213) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 11 Jan 2020 14:51:49 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 11
 Jan 2020 14:51:49 +0800
Subject: Re: [PATCH v2 1/6] KVM: arm64: Document PV-lock interface
To: Steven Price <steven.price@arm.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <virtualization@lists.linux-foundation.org>
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20191226135833.1052-2-yezengruan@huawei.com>
 <c26ebc8d-6a10-6bc4-0af8-cd4883addbf0@arm.com>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <e30649e0-c09f-8d16-a8a2-55e57420ad8d@huawei.com>
Date: Sat, 11 Jan 2020 14:51:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <c26ebc8d-6a10-6bc4-0af8-cd4883addbf0@arm.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme711-chm.china.huawei.com (10.1.199.107) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_225201_524287_615315AE 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, james.morse@arm.com,
 maz@kernel.org, wanghaibin.wang@huawei.com, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RldmUsCgpPbiAyMDIwLzEvOSAyMjo1MywgU3RldmVuIFByaWNlIHdyb3RlOgo+IE9uIDI2
LzEyLzIwMTkgMTM6NTgsIFplbmdydWFuIFllIHdyb3RlOgo+PiBJbnRyb2R1Y2UgYSBwYXJhdmly
dHVhbGl6YXRpb24gaW50ZXJmYWNlIGZvciBLVk0vYXJtNjQgdG8gb2J0YWluIHRoZSBWQ1BVCj4+
IGlzIGN1cnJlbnRseSBydW5uaW5nIG9yIG5vdC4KPj4KPj4gVGhlIFBWIGxvY2sgc3RydWN0dXJl
IG9mIHRoZSBndWVzdCBpcyBhbGxvY2F0ZWQgYnkgdXNlciBzcGFjZS4KPj4KPj4gQSBoeXBlcmNh
bGwgaW50ZXJmYWNlIGlzIHByb3ZpZGVkIGZvciB0aGUgZ3Vlc3QgdG8gaW50ZXJyb2dhdGUgdGhl
Cj4+IGh5cGVydmlzb3IncyBzdXBwb3J0IGZvciB0aGlzIGludGVyZmFjZSBhbmQgdGhlIGxvY2F0
aW9uIG9mIHRoZSBzaGFyZWQKPj4gbWVtb3J5IHN0cnVjdHVyZXMuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFplbmdydWFuIFllIDx5ZXplbmdydWFuQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiDCoCBEb2N1
bWVudGF0aW9uL3ZpcnQva3ZtL2FybS9wdmxvY2sucnN0wqDCoCB8IDYzICsrKysrKysrKysrKysr
KysrKysrKysrKysKPj4gwqAgRG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9kZXZpY2VzL3ZjcHUudHh0
IHwgMTQgKysrKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygrKQo+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9hcm0vcHZsb2NrLnJz
dAo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9hcm0vcHZsb2NrLnJz
dCBiL0RvY3VtZW50YXRpb24vdmlydC9rdm0vYXJtL3B2bG9jay5yc3QKPj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi41OGIzYjhlZTc1MzcKPj4gLS0tIC9kZXYv
bnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2FybS9wdmxvY2sucnN0Cj4+IEBA
IC0wLDAgKzEsNjMgQEAKPj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+
ICsKPj4gK1BhcmF2aXJ0dWFsaXplZCBsb2NrIHN1cHBvcnQgZm9yIGFybTY0Cj4+ICs9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiArCj4+ICtLVk0vYXJtNjQgcHJvdmlk
ZXMgc29tZSBoeXBlcnZpc29yIHNlcnZpY2UgY2FsbHMgdG8gc3VwcG9ydCBhIHBhcmF2aXJ0dWFs
aXplZAo+PiArZ3Vlc3Qgb2J0YWluaW5nIHRoZSBWQ1BVIGlzIGN1cnJlbnRseSBydW5uaW5nIG9y
IG5vdC4KPiBOSVQ6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXiB3aGV0aGVyCgpUaGFua3Mg
Zm9yIHBvc3RpbmcgdGhpcy4KCj4gCj4+ICsKPj4gK1R3byBuZXcgU01DQ0MgY29tcGF0aWJsZSBo
eXBlcmNhbGxzIGFyZSBkZWZpbmVkOgo+PiArCj4+ICsqIFBWX0xPQ0tfRkVBVFVSRVM6wqDCoCAw
eEM2MDAwMDIwCj4+ICsqIFBWX0xPQ0tfUFJFRU1QVEVEOsKgIDB4QzYwMDAwMjEKPj4gKwo+PiAr
VGhlIGV4aXN0ZW5jZSBvZiB0aGUgUFZfTE9DSyBoeXBlcmNhbGwgc2hvdWxkIGJlIHByb2JlZCB1
c2luZyB0aGUgU01DQ0MgMS4xCj4+ICtBUkNIX0ZFQVRVUkVTIG1lY2hhbmlzbSBiZWZvcmUgY2Fs
bGluZyBpdC4KPiAKPiBTaW5jZSB0aGVzZSBhcmUgd2l0aGluIHRoZSAidmVuZG9yIHNwZWNpZmlj
IiBTTUNDQyByZWdpb24gaWRlYWxseSB5b3Ugc2hvdWxkIGFsc28gY2hlY2sgdGhhdCB5b3UgYXJl
IHRhbGtpbmcgdG8gS1ZNLiAoT3RoZXIgaHlwZXJ2aXNvcnMgY291bGQgYWxsb2NhdGUgU01DQ0Mg
SURzIGRpZmZlcmVudGx5IHdpdGhpbiB0aGlzIGJsb2NrKS4gV2lsbCBoYXMgYSBwYXRjaCBvbiBh
IGJyYW5jaCB3aGljaCBnaXZlcyBhbiBleGFtcGxlIG9mIGhvdyB0aGlzIGNvdWxkIHdvcmsgWzFd
Cj4gCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3dpbGwvbGludXguZ2l0L2NvbW1pdC8/aD1rdm0vaHZjJmlkPTQ2NGY1YTE3NDFlNTk1OWMzZTRk
MmJlMTk2NmFlMDA5M2I0ZGNlMDYKCk9LLCBJIHdpbGwgYWRkICJ2ZW5kb3Igc3BlY2lmaWMiIGNo
ZWNrIG5leHQgdmVyc2lvbi4KCj4gCj4+ICsKPj4gK1BWX0xPQ0tfRkVBVFVSRVMKPj4gK8KgwqDC
oCA9PT09PT09PT09PT09ID09PT09PT09wqDCoMKgID09PT09PT09PT0KPj4gK8KgwqDCoCBGdW5j
dGlvbiBJRDrCoCAodWludDMyKcKgwqDCoCAweEM2MDAwMDIwCj4+ICvCoMKgwqAgUFZfY2FsbF9p
ZDrCoMKgICh1aW50MzIpwqDCoMKgIFRoZSBmdW5jdGlvbiB0byBxdWVyeSBmb3Igc3VwcG9ydC4K
Pj4gK8KgwqDCoCBSZXR1cm4gdmFsdWU6IChpbnQ2NCnCoMKgwqDCoCBOT1RfU1VQUE9SVEVEICgt
MSkgb3IgU1VDQ0VTUyAoMCkgaWYgdGhlIHJlbGV2YW50Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBWLWxvY2sgZmVhdHVyZSBp
cyBzdXBwb3J0ZWQgYnkgdGhlIGh5cGVydmlzb3IuCj4+ICvCoMKgwqAgPT09PT09PT09PT09PSA9
PT09PT09PcKgwqDCoCA9PT09PT09PT09Cj4+ICsKPj4gK1BWX0xPQ0tfUFJFRU1QVEVECj4+ICvC
oMKgwqAgPT09PT09PT09PT09PSA9PT09PT09PcKgwqDCoCA9PT09PT09PT09Cj4+ICvCoMKgwqAg
RnVuY3Rpb24gSUQ6wqAgKHVpbnQzMinCoMKgwqAgMHhDNjAwMDAyMQo+PiArwqDCoMKgIFJldHVy
biB2YWx1ZTogKGludDY0KcKgwqDCoMKgIE5PVF9TVVBQT1JURUQgKC0xKSBvciBTVUNDRVNTICgw
KSBpZiB0aGUgSVBBIG9mCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoaXMgVkNQVSdzIHB2IGRhdGEgc3RydWN0dXJlIGlzIGNv
bmZpZ3VyZWQgYnkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdGhlIGh5cGVydmlzb3IuCj4+ICvCoMKgwqAgPT09PT09PT09PT09
PSA9PT09PT09PcKgwqDCoCA9PT09PT09PT09Cj4gCj4gUFZfTE9DS19QUkVFTVBURUQgYWxzbyBu
ZWVkcyB0byByZXR1cm4gdGhlIGFkZHJlc3Mgb2YgdGhpcyBkYXRhIHN0cnVjdHVyZS4gRWl0aGVy
IGJ5IHJldHVybmluZyB0aGlzIGluIGFub3RoZXIgcmVnaXN0ZXIsIG9yIGJ5IGUuZy4gdHJlYXRp
bmcgYSBwb3NpdGl2ZSByZXR1cm4gYXMgYW4gYWRkcmVzcyBhbmQgYSBuZWdhdGl2ZSB2YWx1ZSBh
cyBhbiBlcnJvci4KClRoaXMgaXMgc29tZXdoYXQgZW1iYXJyYXNzaW5nLiBUaGUgY29kZSBkb2Vz
IHdoYXQgeW91IHNheSwgYnV0IHRoZSBkb2MgZG9lc24ndC4gVGhhbmtzIGZvciBwb2ludGluZyBp
dCBvdXQgdG8gbWUhIEknbGwgdXBkYXRlIHRoZSBkb2MgdG8gbWF0Y2guCgo+IAo+PiArCj4+ICtU
aGUgSVBBIHJldHVybmVkIGJ5IFBWX0xPQ0tfUFJFRU1QVEVEIHNob3VsZCBiZSBtYXBwZWQgYnkg
dGhlIGd1ZXN0IGFzIG5vcm1hbAo+PiArbWVtb3J5IHdpdGggaW5uZXIgYW5kIG91dGVyIHdyaXRl
IGJhY2sgY2FjaGluZyBhdHRyaWJ1dGVzLCBpbiB0aGUgaW5uZXIKPj4gK3NoYXJlYWJsZSBkb21h
aW4uCj4+ICsKPj4gK1BWX0xPQ0tfUFJFRU1QVEVEIHJldHVybnMgdGhlIHN0cnVjdHVyZSBmb3Ig
dGhlIGNhbGxpbmcgVkNQVS4KPj4gKwo+PiArUFYgbG9jayBzdGF0ZQo+PiArLS0tLS0tLS0tLS0t
LQo+PiArCj4+ICtUaGUgc3RydWN0dXJlIHBvaW50ZWQgdG8gYnkgdGhlIFBWX0xPQ0tfUFJFRU1Q
VEVEIGh5cGVyY2FsbCBpcyBhcyBmb2xsb3dzOgo+PiArCj4+ICsrLS0tLS0tLS0tLS0rLS0tLS0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsK
Pj4gK3wgRmllbGTCoMKgwqDCoCB8IEJ5dGUgTGVuZ3RoIHwgQnl0ZSBPZmZzZXQgfCBEZXNjcmlw
dGlvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+PiArKz09PT09
PT09PT09Kz09PT09PT09PT09PT0rPT09PT09PT09PT09PSs9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0rCj4+ICt8IHByZWVtcHRlZCB8wqDCoMKgwqDCoCA4wqDCoMKgwqDCoCB8wqDC
oMKgwqDCoCAwwqDCoMKgwqDCoCB8IEluZGljYXRlIHRoZSBWQ1BVIHdobyBvd25zIHRoaXMgfAo+
IAo+IE5JVDogcy9JbmRpY2F0ZS9JbmRpY2F0ZXMgdGhhdC8uIEFsc28gbW9yZSBjb21tb24gRW5n
bGlzaCB3b3VsZCBiZSAidGhlIFZDUFUgKnRoYXQqIG93bnMiCgpXaWxsIHVwZGF0ZS4KCj4gCj4+
ICt8wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgc3RydWN0IGlzIHJ1bm5pbmcgb3Igbm90LsKgwqDCoMKgwqDC
oCB8Cj4+ICt8wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgTm9uLXplcm8gdmFsdWVzIG1lYW4gdGhlIFZDUFXC
oMKgIHwKPj4gK3zCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBoYXMgYmVlbiBwcmVlbXB0ZWQuIFplcm8gbWVh
bnPCoCB8Cj4+ICt8wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgdGhlIFZDUFUgaXMgbm90IHByZWVtcHRlZC7C
oMKgwqDCoMKgIHwKPj4gKystLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0r
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+PiArCj4+ICtUaGUgcHJlZW1wdGVk
IGZpZWxkIHdpbGwgYmUgdXBkYXRlZCB0byAxIGJ5IHRoZSBoeXBlcnZpc29yIHByaW9yIHRvIHNj
aGVkdWxpbmcKPj4gK2EgVkNQVS4gV2hlbiB0aGUgVkNQVSBpcyBzY2hlZHVsZWQgb3V0LCB0aGUg
cHJlZW1wdGVkIGZpZWxkIHdpbGwgYmUgdXBkYXRlZAo+PiArdG8gMCBieSB0aGUgaHlwZXJ2aXNv
ci4KPj4gKwo+PiArVGhlIHN0cnVjdHVyZSB3aWxsIGJlIHByZXNlbnQgd2l0aGluIGEgcmVzZXJ2
ZWQgcmVnaW9uIG9mIHRoZSBub3JtYWwgbWVtb3J5Cj4+ICtnaXZlbiB0byB0aGUgZ3Vlc3QuIFRo
ZSBndWVzdCBzaG91bGQgbm90IGF0dGVtcHQgdG8gd3JpdGUgaW50byB0aGlzIG1lbW9yeS4KPj4g
K1RoZXJlIGlzIGEgc3RydWN0dXJlIHBlciBWQ1BVIG9mIHRoZSBndWVzdC4KPiAKPiBJIHRoaW5r
IGl0IHdvdWxkIGJlIHdvcnRoIG1lbnRpb25pbmcgaW4gdGhpcyBkb2N1bWVudCB0aGF0IHRoZSBz
dHJ1Y3R1cmUgaXMgZ3VhcmFudGVlZCB0byBiZSA2NC1ieXRlIGFsaWduZWQuCgpHb29kIHBvaW50
LCBJJ2xsIHVwZGF0ZSB0aGUgZG9jLgoKPiAKPiBTdGV2ZQo+IAo+PiArCj4+ICtGb3IgdGhlIHVz
ZXIgc3BhY2UgaW50ZXJmYWNlIHNlZSBEb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2RldmljZXMvdmNw
dS50eHQKPj4gK3NlY3Rpb24gIjQuIEdST1VQOiBLVk1fQVJNX1ZDUFVfUFZMT0NLX0NUUkwiLgo+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9kZXZpY2VzL3ZjcHUudHh0IGIv
RG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9kZXZpY2VzL3ZjcHUudHh0Cj4+IGluZGV4IDZmM2JkNjRh
MDViMC4uYzEwYTU5NDUwNzViIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL3ZpcnQva3Zt
L2RldmljZXMvdmNwdS50eHQKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi92aXJ0L2t2bS9kZXZpY2Vz
L3ZjcHUudHh0Cj4+IEBAIC03NCwzICs3NCwxNyBAQCBTcGVjaWZpZXMgdGhlIGJhc2UgYWRkcmVz
cyBvZiB0aGUgc3RvbGVuIHRpbWUgc3RydWN0dXJlIGZvciB0aGlzIFZDUFUuIFRoZQo+PiDCoCBi
YXNlIGFkZHJlc3MgbXVzdCBiZSA2NCBieXRlIGFsaWduZWQgYW5kIGV4aXN0IHdpdGhpbiBhIHZh
bGlkIGd1ZXN0IG1lbW9yeQo+PiDCoCByZWdpb24uIFNlZSBEb2N1bWVudGF0aW9uL3ZpcnQva3Zt
L2FybS9wdnRpbWUudHh0IGZvciBtb3JlIGluZm9ybWF0aW9uCj4+IMKgIGluY2x1ZGluZyB0aGUg
bGF5b3V0IG9mIHRoZSBzdG9sZW4gdGltZSBzdHJ1Y3R1cmUuCj4+ICsKPj4gKzQuIEdST1VQOiBL
Vk1fQVJNX1ZDUFVfUFZMT0NLX0NUUkwKPj4gK0FyY2hpdGVjdHVyZXM6IEFSTTY0Cj4+ICsKPj4g
KzQuMSBBVFRSSUJVVEU6IEtWTV9BUk1fVkNQVV9QVkxPQ0tfSVBBCj4+ICtQYXJhbWV0ZXJzOiA2
NC1iaXQgYmFzZSBhZGRyZXNzCj4+ICtSZXR1cm5zOiAtRU5YSU86wqAgUFYgbG9jayBub3QgaW1w
bGVtZW50ZWQKPj4gK8KgwqDCoMKgwqDCoMKgwqAgLUVFWElTVDogQmFzZSBhZGRyZXNzIGFscmVh
ZHkgc2V0IGZvciB0aGlzIFZDUFUKPj4gK8KgwqDCoMKgwqDCoMKgwqAgLUVJTlZBTDogQmFzZSBh
ZGRyZXNzIG5vdCA2NCBieXRlIGFsaWduZWQKPj4gKwo+PiArU3BlY2lmaWVzIHRoZSBiYXNlIGFk
ZHJlc3Mgb2YgdGhlIFBWIGxvY2sgc3RydWN0dXJlIGZvciB0aGlzIFZDUFUuIFRoZQo+PiArYmFz
ZSBhZGRyZXNzIG11c3QgYmUgNjQgYnl0ZSBhbGlnbmVkIGFuZCBleGlzdCB3aXRoaW4gYSB2YWxp
ZCBndWVzdCBtZW1vcnkKPj4gK3JlZ2lvbi4gU2VlIERvY3VtZW50YXRpb24vdmlydC9rdm0vYXJt
L3B2bG9jay5yc3QgZm9yIG1vcmUgaW5mb3JtYXRpb24KPj4gK2luY2x1ZGluZyB0aGUgbGF5b3V0
IG9mIHRoZSBwdiBsb2NrIHN0cnVjdHVyZS4KPj4KPiAKPiAKPiAuCgpUaGFua3MsCgpaZW5ncnVh
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK

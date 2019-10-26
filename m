Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E55E57E6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 03:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPxIR6aC2JS8VPyIcngryud3xg+Whp4CA50AOKdfN4k=; b=aKTXSdW+Gh6uBs
	wWlENEZxjO3F6hfe/AiOEYnrb/12pdEHIpBcJu5xPvOFbCq5F8D1whGXCTy1Td4T3SdV3KeVq5rTE
	wYDQNcPMXRQx/KVDaQaKYGCz9Gxa5VyWHgQSZl4yai/v7MAyzLrzZ7zHnqZq00BE0AfQ0176/JX01
	pa79b9i5/zGBnLKoyX5T0KdprCPgG7g+wu6/1UlJw/Y0a9ua9lE3MQSd8MQ3tiibDJ3BhjqirGauD
	RpQMGo4nUrWlffrYpPaiZzRk/oZ3v+wCf0vCFSq2A+AqEiUaqJ16jmTzK26TgVNfRfTnpn+IZcmvO
	KhtkWniCL2xONeMww5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOB6Z-0006rp-U6; Sat, 26 Oct 2019 01:42:59 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOB6P-0006qz-1B
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 01:42:50 +0000
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 739763BBC865E107274B;
 Sat, 26 Oct 2019 09:42:36 +0800 (CST)
Received: from dggeme754-chm.china.huawei.com (10.3.19.100) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 26 Oct 2019 09:42:36 +0800
Received: from [127.0.0.1] (10.184.212.80) by dggeme754-chm.china.huawei.com
 (10.3.19.100) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 26
 Oct 2019 09:42:34 +0800
Subject: Re: [PATCH v3 1/2] arm64: Relax ICC_PMR_EL1 accesses when
 ICC_CTLR_EL1.PMHE is clear
To: Marc Zyngier <maz@kernel.org>
References: <20191002090613.14236-1-maz@kernel.org>
 <20191002090613.14236-2-maz@kernel.org>
 <ad164b94-06af-ffe7-b8ff-317b4078b1a5@huawei.com>
 <4ed2ed389a81cc0ec6f3150ce38517a5@www.loen.fr>
From: "liwei (GF)" <liwei391@huawei.com>
Message-ID: <28f18d5f-b04c-e082-6a03-580740244590@huawei.com>
Date: Sat, 26 Oct 2019 09:42:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <4ed2ed389a81cc0ec6f3150ce38517a5@www.loen.fr>
X-Originating-IP: [10.184.212.80]
X-ClientProxiedBy: dggeme707-chm.china.huawei.com (10.1.199.103) To
 dggeme754-chm.china.huawei.com (10.3.19.100)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_184249_252780_93B98346 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMTkvMTAvMjMgMjA6MTMsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBX
ZWksCj4gCj4gT24gMjAxOS0xMC0yMyAwOTozOCwgbGl3ZWkgKEdGKSB3cm90ZToKPj4gSGkgTWFy
YywKPj4KPj4gT24gMjAxOS8xMC8yIDE3OjA2LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBUaGUg
R0lDdjMgYXJjaGl0ZWN0dXJlIHNwZWNpZmljYXRpb24gaXMgaW5jcmVkaWJseSBtaXNsZWFkaW5n
IHdoZW4gaXQKPj4+IGNvbWVzIHRvIFBNUiBhbmQgdGhlIHJlcXVpcmVtZW50IGZvciBhIERTQi4g
SXQgdHVybnMgb3V0IHRoYXQgdGhpcyBEU0IKPj4+IGlzIG9ubHkgcmVxdWlyZWQgaWYgdGhlIENQ
VSBpbnRlcmZhY2Ugc2VuZHMgYW4gVXBzdHJlYW0gQ29udHJvbAo+Pj4gbWVzc2FnZSB0byB0aGUg
cmVkaXN0cmlidXRvciBpbiBvcmRlciB0byB1cGRhdGUgdGhlIFJEJ3MgdmlldyBvZiBQTVIuCj4+
Pgo+Pj4gVGhpcyBtZXNzYWdlIGlzIG9ubHkgc2VudCB3aGVuIElDQ19DVExSX0VMMS5QTUhFIGlz
IHNldCwgd2hpY2ggaXNuJ3QKPj4+IHRoZSBjYXNlIGluIExpbnV4LiBJdCBjYW4gc3RpbGwgYmUg
c2V0IGZyb20gRUwzLCBzbyBzb21lIHNwZWNpYWwgY2FyZQo+Pj4gaXMgcmVxdWlyZWQuIEJ1dCB0
aGUgdXBzaG90IGlzIHRoYXQgaW4gdGhlIChob3BlZnVseSBsYXJnZSkgbWFqb3JpdHkKPj4+IG9m
IHRoZSBjYXNlcywgd2UgY2FuIGRyb3AgdGhlIERTQiBhbHRvZ2V0aGVyLgo+Pj4KPj4+IFRoaXMg
cmVsaWVzIG9uIGEgbmV3IHN0YXRpYyBrZXkgYmVpbmcgc2V0IGlmIHRoZSBib290IENQVSBoYXMg
UE1IRQo+Pj4gc2V0LiBUaGUgZHJhd2JhY2sgaXMgdGhhdCB0aGlzIHN0YXRpYyBrZXkgaGFzIHRv
IGJlIGV4cG9ydGVkIHRvCj4+PiBtb2R1bGVzLgo+Pj4KPj4+IENjOiBDYXRhbGluIE1hcmluYXMg
PGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+Pj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+Cj4+PiBDYzogSmFtZXMgTW9yc2UgPGphbWVzLm1vcnNlQGFybS5jb20+Cj4+PiBDYzog
SnVsaWVuIFRoaWVycnkgPGp1bGllbi50aGllcnJ5LmtkZXZAZ21haWwuY29tPgo+Pj4gQ2M6IFN1
enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+Pj4gLS0tCj4+PiDCoGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20vYmFycmllci5owqDCoCB8IDEyICsrKysrKysrKysrKwo+Pj4gwqBhcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2RhaWZmbGFncy5oIHzCoCAzICsrLQo+Pj4gwqBhcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL2lycWZsYWdzLmjCoCB8IDE5ICsrKysrKysrKystLS0tLS0tLS0KPj4+IMKgYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5owqAgfMKgIDMgKy0tCj4+PiDCoGFyY2gvYXJt
NjQva2VybmVsL2VudHJ5LlPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysrKy0tCj4+PiDCoGFy
Y2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guY8KgwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0KPj4+IMKg
ZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMuY8KgwqDCoMKgwqDCoCB8IDIwICsrKysrKysrKysr
KysrKysrKysrCj4+PiDCoGluY2x1ZGUvbGludXgvaXJxY2hpcC9hcm0tZ2ljLXYzLmggfMKgIDIg
KysKPj4+IMKgOCBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9iYXJyaWVyLmgg
Yi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2JhcnJpZXIuaAo+Pj4gaW5kZXggZTBlMmIxOTQ2ZjQy
Li43ZDljYzVlYzQ5NzEgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Jh
cnJpZXIuaAo+Pj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9iYXJyaWVyLmgKPj4+IEBA
IC0yOSw2ICsyOSwxOCBAQAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgU0JfQkFSUklFUl9JTlNOIm5vcFxuIizCoMKgwqAgXAo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQVJNNjRfSEFTX1NC
KSkKPj4+Cj4+PiArI2lmZGVmIENPTkZJR19BUk02NF9QU0VVRE9fTk1JCj4+PiArI2RlZmluZSBw
bXJfc3luYygpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBc
Cj4+PiArwqDCoMKgIGRvIHvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgXAo+Pj4gK8KgwqDCoMKgwqDCoMKgIGV4dGVybiBzdHJ1Y3Qgc3RhdGlj
X2tleV9mYWxzZSBnaWNfcG1yX3N5bmM7wqDCoMKgIFwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKHN0YXRpY19icmFuY2hfdW5saWtlbHkoJmdpY19wbXJfc3luYykpwqDCoMKg
IFwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRzYihzeSk7wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFwKPj4+ICvCoMKgwqAgfSB3aGlsZSgwKQo+Pj4gKyNlbHNlCj4+PiArI2Rl
ZmluZSBwbXJfc3luYygpwqDCoMKgIGRvIHt9IHdoaWxlICgwKQo+Pj4gKyNlbmRpZgo+Pj4gKwo+
Pgo+PiBUaGFuayB5b3UgZm9yIHNvbHZpbmcgdGhpcyBwcm9ibGVtLCBpdCBoZWxwcyBhIGxvdCBp
bmRlZWQuCj4+Cj4+IFRoZSBwbXJfc3luYygpIHdpbGwgY2FsbCBkc2Ioc3kpIHdoZW4gQVJNNjRf
UFNFVURPX05NST15IGFuZAo+PiBnaWNfcG1yX3N5bmM9Zm9yY2UsCj4+IGJ1dCBpZiBwc2V1ZG8g
bm1pIGlzIG5vdCBlbmFibGVkIHRocm91Z2ggYm9vdCBvcHRpb24sIGl0IGp1c3QgdGFrZSBvbmUg
bW9yZQo+PiByZWR1bmRhbnQgY2FsbGluZyB0aGFuIGJlZm9yZSBhdCB0aGUgZm9sbG93aW5nIHR3
byBwbGFjZS4KPj4KPj4gSSB0aGluayBjaGFuZ2UgZHNiKHN5KSB0bwo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNtIHZvbGF0aWxlKEFMVEVSTkFUSVZF
KCJub3AiLCAiZHNiIHN5IizCoMKgwqDCoCDCoFwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBUk02NF9IQVNfSVJRX1BSSU9f
TUFTS0lORynCoMKgwqDCoCBcCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOiA6IDogIm1lbW9yeSIpO8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBcCj4+IG1heSBiZSBtb3JlIGFwcHJvcHJpYXRlLgo+IAo+IEknbSBu
b3Qgc3VyZSBJIHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbi4gVGhlIHN0YXRpYyBrZXkgZGVmYXVs
dHMgdG8gZmFsc2UsCj4gc28gaWYgcHNldWRvX25taSBpcyBub3QgZW5hYmxlZCwgdGhpcyBkc2Io
c3kpIGlzIHNpbXBseSBuZXZlciBleGVjdXRlZC4KPiAKPiBBbSBJIG1pc3Npbmcgc29tZXRoaW5n
IG9idmlvdXM/Cj4gCj4gVGhhbmtzLAo+IAo+IMKgwqDCoMKgwqDCoMKgIE0uCj4gCllvdSBhcmUg
cmlnaHQsIG15IG1pc3Rha2UuIFNvcnJ5IGZvciBjb25mdXNpbmcgeW91LgoKVGhhbmtzLApXZWkK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==

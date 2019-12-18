Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BA3124602
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9p4Pes+fi1TLzjvzpSWDNlVbU3Lc8Pu/JESCeY4JfHY=; b=vBYuvFFemRP0NdpXIUmkK5nZo
	Hd57kQMrXPSXiUyTFXd+CEdO/0uw48H/A5Znb6GvBELB1N8dIpfDZwzMwLzXAS+Zj2aQVWV39/6VA
	ttA+EuGKvq5Qhum0LGOSukAc3BdBjt8PJLHRrs5BvucAQf8+C7hR5pRpdTp90XnS5lj7DpJficngH
	O17Rs4DYRZyiSTfDbppZK1acwcdvkETkOe5bs4dRI5o270dt7/AJiwM+veU/rZQO3MXY+CC5o31EN
	nnGHSB3nbvZXgXS/k/rWKLzUVG/IRBYF7icSNsxQCwlz65O9aMYCg0WgifypFMoz8cpojIVpUxVq9
	HYxn51rFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXjG-0007bu-1K; Wed, 18 Dec 2019 11:42:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXj4-0007ae-Tm
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:42:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32F1D30E;
 Wed, 18 Dec 2019 03:42:44 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8BA13F6CF;
 Wed, 18 Dec 2019 03:42:42 -0800 (PST)
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
To: Marc Zyngier <maz@kernel.org>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
 <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
Date: Wed, 18 Dec 2019 11:42:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_034247_047971_BB430EC8 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDE3LzEyLzIwMTkgMTk6MDUsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBT
dXp1a2ksCj4gCj4gT24gMjAxOS0xMi0xNyAxODozNCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
Pj4gV2UgZGV0ZWN0IHRoZSBhYnNlbmNlIG9mIEZQL1NJTUQgYWZ0ZXIgYW4gaW5jYXBhYmxlIENQ
VSBpcyBicm91Z2h0IHVwLAo+PiBhbmQgYnkgdGhlbiB3ZSBoYXZlIGtlcm5lbCB0aHJlYWRzIHJ1
bm5pbmcgYWxyZWFkeSB3aXRoCj4+IFRJRl9GT1JFSUdOX0ZQU1RBVEUgc2V0Cj4+IHdoaWNoIGNv
dWxkIGJlIHNldCBmb3IgZWFybHkgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyAoZS5nLCBtb2Rwcm9i
ZSAKPj4gdHJpZ2dlcmVkCj4+IGZyb20gaW5pdHJhbWZzKSBhbmQgaW5pdC4gVGhpcyBjb3VsZCBj
YXVzZSB0aGUgYXBwbGljYXRpb25zIHRvIGxvb3AKPj4gZm9yZXZlciBpbgo+PiBkb19ub2ZpdHlf
cmVzdW1lKCkgYXMgd2UgbmV2ZXIgY2xlYXIgdGhlIFRJRiBmbGFnLCBvbmNlIHdlIG5vdyBrbm93
IHRoYXQKPj4gd2UgZG9uJ3Qgc3VwcG9ydCBGUC4KPj4KPj4gRml4IHRoaXMgYnkgbWFraW5nIHN1
cmUgdGhhdCB3ZSBjbGVhciB0aGUgVElGX0ZPUkVJR05fRlBTVEFURSBmbGFnCj4+IGZvciB0YXNr
cyB3aGljaCBtYXkgaGF2ZSB0aGVtIHNldCwgYXMgd2Ugd291bGQgaGF2ZSBkb25lIGluIHRoZSBu
b3JtYWwKPj4gY2FzZSwgYnV0IGF2b2lkaW5nIHRvdWNoaW5nIHRoZSBoYXJkd2FyZSBzdGF0ZSAo
c2luY2Ugd2UgZG9uJ3Qgc3VwcG9ydCAKPj4gYW55KS4KPj4KPj4gQWxzbyB0byBtYWtlIHN1cmUg
d2UgaGFuZGxlIHRoZSBjYXNlcyBzZWVtbGVzc2x5IHdlIGNhdGVnb3Jpc2UgdGhlCj4+IGhlbHBl
ciBmdW5jdGlvbnMgdG8gdHdvIDoKPj4gwqAxKSBIZWxwZXJzIGZvciBjb21tb24gY29yZSBjb2Rl
LCB3aGljaCBjYWxscyBpbnRvIHRha2UgYXBwcm9wcmlhdGUKPj4gwqDCoMKgIGFjdGlvbnMgd2l0
aG91dCBrbm93aW5nIHRoZSBjdXJyZW50IEZQU0lNRCBzdGF0ZSBvZiB0aGUgQ1BVL3Rhc2suCj4+
Cj4+IMKgwqDCoCBlLmcgZnBzaW1kX3Jlc3RvcmVfY3VycmVudF9zdGF0ZSgpLCBmcHNpbWRfZmx1
c2hfdGFza19zdGF0ZSgpLAo+PiDCoMKgwqDCoMKgwqDCoCBmcHNpbWRfc2F2ZV9hbmRfZmx1c2hf
Y3B1X3N0YXRlKCkuCj4+Cj4+IMKgwqDCoCBXZSBiYWlsIG91dCBlYXJseSBmb3IgdGhlc2UgZnVu
Y3Rpb25zLCB0YWtpbmcgYW55IGFwcHJvcHJpYXRlIGFjdGlvbnMKPj4gwqDCoMKgIChlLmcsIGNs
ZWFyaW5nIHRoZSBUSUYgZmxhZykgd2hlcmUgbmVjZXNzYXJ5IHRvIGhpZGUgdGhlIGhhbmRsaW5n
Cj4+IMKgwqDCoCBmcm9tIGNvcmUgY29kZS4KPj4KPj4gwqAyKSBIZWxwZXJzIHVzZWQgd2hlbiB0
aGUgcHJlc2VuY2Ugb2YgRlAvU0lNRCBpcyBhcHBhcmVudC4KPj4gwqDCoMKgIGkuZSwgc2F2ZS9y
ZXN0b3JlIHRoZSBGUC9TSU1EIHJlZ2lzdGVyIHN0YXRlLCBtb2RpZnkgdGhlIENQVS90YXNrCj4+
IMKgwqDCoCBGUC9TSU1EIHN0YXRlLgo+PiDCoMKgwqAgZS5nLAo+Pgo+PiDCoMKgwqAgZnBzaW1k
X3NhdmUoKSwgdGFza19mcHNpbWRfbG9hZCgpIC0gc2F2ZS9yZXN0b3JlIHRhc2sgRlAvU0lNRCAK
Pj4gcmVnaXN0ZXJzCj4+Cj4+IMKgwqDCoCBmcHNpbWRfYmluZF90YXNrX3RvX2NwdSgpwqAgXAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIFVwZGF0ZSB0aGUgInN0YXRlIiBtZXRhZGF0YSBmb3IgCj4+IENQVS90YXNrLgo+
PiDCoMKgwqAgZnBzaW1kX2JpbmRfc3RhdGVfdG9fY3B1KCkgLwo+Pgo+PiDCoMKgwqAgZnBzaW1k
X3VwZGF0ZV9jdXJyZW50X3N0YXRlKCkgLSBVcGRhdGUgdGhlIGZwL3NpbWQgc3RhdGUgZm9yIHRo
ZSAKPj4gY3VycmVudAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRhc2sgZnJvbSBtZW1vcnkuCj4+Cj4+IMKg
wqDCoCBUaGVzZSBtdXN0IG5vdCBiZSBjYWxsZWQgaW4gdGhlIGFic2VuY2Ugb2YgRlAvU0lNRC4g
UHV0IGluIGEgV0FSTklORwo+PiDCoMKgwqAgdG8gbWFrZSBzdXJlIHRoZXkgYXJlIG5vdCBpbnZv
a2VkIGluIHRoZSBhYnNlbmNlIG9mIEZQL1NJTUQuCj4+Cj4+IEtWTSBhbHNvIHVzZXMgdGhlIFRJ
Rl9GT1JFSUdOX0ZQU1RBVEUgZmxhZyB0byBtYW5hZ2UgdGhlIEZQL1NJTUQgc3RhdGUKPj4gb24g
dGhlIENQVS4gSG93ZXZlciwgd2l0aG91dCBGUC9TSU1EIHN1cHBvcnQgd2UgdHJhcCBhbGwgYWNj
ZXNzZXMgYW5kCj4+IGluamVjdCB1bmRlZmluZWQgaW5zdHJ1Y3Rpb24uIFRodXMgd2Ugc2hvdWxk
IG5ldmVyICJsb2FkIiBndWVzdCBzdGF0ZS4KPj4gQWRkIGEgc2FuaXR5IGNoZWNrIHRvIG1ha2Ug
c3VyZSB0aGlzIGlzIHZhbGlkLgo+IAo+IFllcywgYnV0IG5vLCBzZWUgYmVsb3cuCj4gCj4+Cj4+
IEZpeGVzOiA4MmUwMTkxYTFhYTExYWJmICgiYXJtNjQ6IFN1cHBvcnQgc3lzdGVtcyB3aXRob3V0
IEZQL0FTSU1EIikKPj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+IENjOiBN
YXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+PiBDYzogQ2F0YWxpbiBNYXJpbmFz
IDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4gQ2M6IE1hcmMgWnluZ2llciA8bWFyYy56eW5n
aWVyQGFybS5jb20+Cj4gCj4gTm8gaWRlYSB3aG8gdGhhdCBndXkgaXMuIEl0J3MgYSBmYWtlISA7
LSkKClNvcnJ5IGFib3V0IHRoYXQsIHdpbGwgZml4IGl0LgoKPiAKPj4gU2lnbmVkLW9mZi1ieTog
U3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KPj4gLS0tCj4+IMKgYXJj
aC9hcm02NC9rZXJuZWwvZnBzaW1kLmPCoCB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0KPj4gwqBhcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMgfMKgIDkgKysrKysrKysrCj4+
IMKgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+
IAo+IFsuLi5dCj4gCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMg
Yi9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMKPj4gaW5kZXggNzJmYmJkODZlYjVlLi45Njk2
ZWJiNWMxM2EgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+PiAr
KysgYi9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMKPj4gQEAgLTI4LDEwICsyOCwxOSBAQAo+
PiDCoC8qIENoZWNrIHdoZXRoZXIgdGhlIEZQIHJlZ3Mgd2VyZSBkaXJ0aWVkIHdoaWxlIGluIHRo
ZSBob3N0LXNpZGUgcnVuCj4+IGxvb3A6ICovCj4+IMKgc3RhdGljIGJvb2wgX19oeXBfdGV4dCB1
cGRhdGVfZnBfZW5hYmxlZChzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4+IMKgewo+PiArwqDCoMKg
IC8qCj4+ICvCoMKgwqDCoCAqIFdoZW4gdGhlIHN5c3RlbSBkb2Vzbid0IHN1cHBvcnQgRlAvU0lN
RCwgd2UgY2Fubm90IHJlbHkgb24KPj4gK8KgwqDCoMKgICogdGhlIHN0YXRlIG9mIF9USUZfRk9S
RUlHTl9GUFNUQVRFLiBIb3dldmVyLCB3ZSB3aWxsIG5ldmVyCj4+ICvCoMKgwqDCoCAqIHNldCB0
aGUgS1ZNX0FSTTY0X0ZQX0VOQUJMRUQsIGFzIHRoZSBGUC9TSU1EIGFjY2Vzc2VzIGFsd2F5cwo+
PiArwqDCoMKgwqAgKiBpbmplY3QgYW4gYWJvcnQgaW50byB0aGUgZ3Vlc3QuIFRodXMgd2UgYWx3
YXlzIHRyYXAgdGhlCj4+ICvCoMKgwqDCoCAqIGFjY2Vzc2VzLgo+PiArwqDCoMKgwqAgKi8KPj4g
wqDCoMKgwqAgaWYgKHZjcHUtPmFyY2guaG9zdF90aHJlYWRfaW5mby0+ZmxhZ3MgJiBfVElGX0ZP
UkVJR05fRlBTVEFURSkKPj4gwqDCoMKgwqDCoMKgwqDCoCB2Y3B1LT5hcmNoLmZsYWdzICY9IH4o
S1ZNX0FSTTY0X0ZQX0VOQUJMRUQgfAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBLVk1fQVJNNjRfRlBfSE9TVCk7Cj4+Cj4+ICvCoMKgwqAgV0FSTl9PTigh
c3lzdGVtX3N1cHBvcnRzX2Zwc2ltZCgpICYmCj4+ICvCoMKgwqDCoMKgwqDCoCAodmNwdS0+YXJj
aC5mbGFncyAmIEtWTV9BUk02NF9GUF9FTkFCTEVEKSk7Cj4gCj4gQ2FyZWZ1bCwgdGhpcyB3aWxs
IHBhbmljIHRoZSBob3N0IGlmIGl0IGhhcHBlbnMgb24gYSAhVkhFIGhvc3QKPiAoY2FsbGluZyBu
b24taW5saW5lIHN0dWZmIGZyb20gYSBfX2h5cF90ZXh0IGZ1bmN0aW9uIGlzIHVzdWFsbHkKPiBu
b3QgYSBnb29kIGlkZWEpLgoKT3VjaCEgU29ycnkgYWJvdXQgdGhhdCBXQVJOX09OKCkhIEkgY291
bGQgZHJvcCB0aGUgd2FybmluZyBhbmQKbWFrZSB0aGlzIDoKCglpZiAoIXN5c3RlbV9zdXBwb3J0
c19mcHNpbWQoKSB8fAoJICAgICh2Y3B1LT5hcmNoLmhvc3RfdGhyZWFkX2luZm8tPmZsYWdzICYg
X1RJRl9GT1JFSUdOX0ZQU1RBVEUpKQoJCXZjcHUtPmFyY2guZmxhZ3MgJj0gfihLVk1fQVJNNjRf
RlBfRU5BQkxFRCB8CgkJCQkgICAgICBLVk1fQVJNNjRfRlBfSE9TVCk7Cgp0byBtYWtlIHN1cmUg
d2UgbmV2ZXIgc2F5IGZwIGlzIGVuYWJsZWQuCgpXaGF0IGRvIHlvdSB0aGluayA/CgpDaGVlcnMK
U3V6dWtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98454138F06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5PmS+bcLL9nBB2K96f5mWBdPnzuTTAhOVae6m3eQYOQ=; b=N4D6cpVbZKU7x4biCZubopgl0
	JuyYjPJvUu1r1cRHd2BO9XE5pdvb9klTFPDm8kpJmI2vN/4cG62n8G7Olnfl1qM9B5IbCCfi4I052
	RnGenz8AfIwhwwbYu2RLQ+z/h+fP0XYCWVIYi3VWupMdKEqQO1Ex9jzA92j2UZq4Mu4fn5Ik09nSu
	HfpClAh5q8CxUBDbwu1/3wf64ZOKw8NOODPGUxwSsKsI98UMXp3TgvydOLcty1PZg1MGRr6iDXI7Y
	zjZoySiPPesVaq9pKvjzf6BfkJxaXEJP92KE1Jjfit+Vs+A3aqcDC28JAOt8eseIoLSQZsdneliqQ
	X9ftzBFRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwxK-0000Wq-60; Mon, 13 Jan 2020 10:28:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwxB-0000Vg-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:28:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1988313D5;
 Mon, 13 Jan 2020 02:28:11 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D69B43F534;
 Mon, 13 Jan 2020 02:28:09 -0800 (PST)
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
To: Marc Zyngier <maz@kernel.org>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
 <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
 <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
 <3b30d44c34bc265ce4122396077a1670@www.loen.fr>
 <d5e27bf5-3cc9-c8bd-5699-71658983054e@arm.com>
 <e1ba712b42886594fe1095019f2c5813@kernel.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <ea8f50f9-66fa-1cf5-1292-a205993258fa@arm.com>
Date: Mon, 13 Jan 2020 10:28:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <e1ba712b42886594fe1095019f2c5813@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022813_775483_BBDEADDA 
X-CRM114-Status: GOOD (  21.63  )
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

T24gMTAvMDEvMjAyMCAxNToyMSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTItMTgg
MTI6MDAsIFN1enVraSBLdXJ1cHBhc3NlcnkgUG91bG9zZSB3cm90ZToKPj4gT24gMTgvMTIvMjAx
OSAxMTo1NiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4gT24gMjAxOS0xMi0xOCAxMTo0MiwgU3V6
dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+Pj4+IEhpIE1hcmMsCj4+Pj4KPj4+PiBP
biAxNy8xMi8yMDE5IDE5OjA1LCBNYXJjIFp5bmdpZXIgd3JvdGU6CgoKPj4+Pj4+IEtWTSBhbHNv
IHVzZXMgdGhlIFRJRl9GT1JFSUdOX0ZQU1RBVEUgZmxhZyB0byBtYW5hZ2UgdGhlIEZQL1NJTUQg
Cj4+Pj4+PiBzdGF0ZQo+Pj4+Pj4gb24gdGhlIENQVS4gSG93ZXZlciwgd2l0aG91dCBGUC9TSU1E
IHN1cHBvcnQgd2UgdHJhcCBhbGwgYWNjZXNzZXMgYW5kCj4+Pj4+PiBpbmplY3QgdW5kZWZpbmVk
IGluc3RydWN0aW9uLiBUaHVzIHdlIHNob3VsZCBuZXZlciAibG9hZCIgZ3Vlc3QgCj4+Pj4+PiBz
dGF0ZS4KPj4+Pj4+IEFkZCBhIHNhbml0eSBjaGVjayB0byBtYWtlIHN1cmUgdGhpcyBpcyB2YWxp
ZC4KPj4+Pj4gWWVzLCBidXQgbm8sIHNlZSBiZWxvdy4KPj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBGaXhl
czogODJlMDE5MWExYWExMWFiZiAoImFybTY0OiBTdXBwb3J0IHN5c3RlbXMgd2l0aG91dCBGUC9B
U0lNRCIpCj4+Pj4+PiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4+Pj4+IENj
OiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+Pj4+Pj4gQ2M6IENhdGFsaW4g
TWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+Pj4+PiBDYzogTWFyYyBaeW5naWVy
IDxtYXJjLnp5bmdpZXJAYXJtLmNvbT4KPj4+Pj4gTm8gaWRlYSB3aG8gdGhhdCBndXkgaXMuIEl0
J3MgYSBmYWtlISA7LSkKPj4+Pgo+Pj4+IFNvcnJ5IGFib3V0IHRoYXQsIHdpbGwgZml4IGl0Lgo+
Pj4+Cj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2ku
cG91bG9zZUBhcm0uY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiDCoGFyY2gvYXJtNjQva2VybmVsL2Zw
c2ltZC5jwqAgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCj4+Pj4+PiDCoGFy
Y2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYyB8wqAgOSArKysrKysrKysKPj4+Pj4+IMKgMiBmaWxl
cyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4g
Wy4uLl0KPj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNo
LmMgCj4+Pj4+PiBiL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+Pj4+Pj4gaW5kZXggNzJm
YmJkODZlYjVlLi45Njk2ZWJiNWMxM2EgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2t2
bS9oeXAvc3dpdGNoLmMKPj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL2h5cC9zd2l0Y2guYwo+
Pj4+Pj4gQEAgLTI4LDEwICsyOCwxOSBAQAo+Pj4+Pj4gwqAvKiBDaGVjayB3aGV0aGVyIHRoZSBG
UCByZWdzIHdlcmUgZGlydGllZCB3aGlsZSBpbiB0aGUgaG9zdC1zaWRlIHJ1bgo+Pj4+Pj4gbG9v
cDogKi8KPj4+Pj4+IMKgc3RhdGljIGJvb2wgX19oeXBfdGV4dCB1cGRhdGVfZnBfZW5hYmxlZChz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4+Pj4+PiDCoHsKPj4+Pj4+ICvCoMKgwqAgLyoKPj4+Pj4+
ICvCoMKgwqDCoCAqIFdoZW4gdGhlIHN5c3RlbSBkb2Vzbid0IHN1cHBvcnQgRlAvU0lNRCwgd2Ug
Y2Fubm90IHJlbHkgb24KPj4+Pj4+ICvCoMKgwqDCoCAqIHRoZSBzdGF0ZSBvZiBfVElGX0ZPUkVJ
R05fRlBTVEFURS4gSG93ZXZlciwgd2Ugd2lsbCBuZXZlcgo+Pj4+Pj4gK8KgwqDCoMKgICogc2V0
IHRoZSBLVk1fQVJNNjRfRlBfRU5BQkxFRCwgYXMgdGhlIEZQL1NJTUQgYWNjZXNzZXMgYWx3YXlz
Cj4+Pj4+PiArwqDCoMKgwqAgKiBpbmplY3QgYW4gYWJvcnQgaW50byB0aGUgZ3Vlc3QuIFRodXMg
d2UgYWx3YXlzIHRyYXAgdGhlCj4+Pj4+PiArwqDCoMKgwqAgKiBhY2Nlc3Nlcy4KPj4+Pj4+ICvC
oMKgwqDCoCAqLwo+Pj4+Pj4gwqDCoMKgwqAgaWYgKHZjcHUtPmFyY2guaG9zdF90aHJlYWRfaW5m
by0+ZmxhZ3MgJiBfVElGX0ZPUkVJR05fRlBTVEFURSkKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAg
dmNwdS0+YXJjaC5mbGFncyAmPSB+KEtWTV9BUk02NF9GUF9FTkFCTEVEIHwKPj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEtWTV9BUk02NF9GUF9IT1NU
KTsKPj4+Pj4+Cj4+Pj4+PiArwqDCoMKgIFdBUk5fT04oIXN5c3RlbV9zdXBwb3J0c19mcHNpbWQo
KSAmJgo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgICh2Y3B1LT5hcmNoLmZsYWdzICYgS1ZNX0FSTTY0
X0ZQX0VOQUJMRUQpKTsKPj4+Pj4gQ2FyZWZ1bCwgdGhpcyB3aWxsIHBhbmljIHRoZSBob3N0IGlm
IGl0IGhhcHBlbnMgb24gYSAhVkhFIGhvc3QKPj4+Pj4gKGNhbGxpbmcgbm9uLWlubGluZSBzdHVm
ZiBmcm9tIGEgX19oeXBfdGV4dCBmdW5jdGlvbiBpcyB1c3VhbGx5Cj4+Pj4+IG5vdCBhIGdvb2Qg
aWRlYSkuCj4+Pj4KPj4+PiBPdWNoISBTb3JyeSBhYm91dCB0aGF0IFdBUk5fT04oKSEgSSBjb3Vs
ZCBkcm9wIHRoZSB3YXJuaW5nIGFuZAo+Pj4+IG1ha2UgdGhpcyA6Cj4+Pj4KPj4+PiBpZiAoIXN5
c3RlbV9zdXBwb3J0c19mcHNpbWQoKSB8fAo+Pj4+IMKgwqDCoCAodmNwdS0+YXJjaC5ob3N0X3Ro
cmVhZF9pbmZvLT5mbGFncyAmIF9USUZfRk9SRUlHTl9GUFNUQVRFKSkKPj4+PiDCoMKgwqDCoHZj
cHUtPmFyY2guZmxhZ3MgJj0gfihLVk1fQVJNNjRfRlBfRU5BQkxFRCB8Cj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLVk1fQVJNNjRfRlBfSE9TVCk7Cj4+Pj4KPj4+PiB0
byBtYWtlIHN1cmUgd2UgbmV2ZXIgc2F5IGZwIGlzIGVuYWJsZWQuCj4+Pj4KPj4+PiBXaGF0IGRv
IHlvdSB0aGluayA/Cj4+Pgo+Pj4gU3VyZSwgdGhhdCB3b3VsZCB3b3JrLiBJIGNhbid0IHJlYWxs
eSBzZWUgaG93IEtWTV9BUk02NF9GUF9FTkFCTEVECj4+Cj4+IFRoYW5rcyBJIGhhdmUgZml4ZWQg
dGhpcyBsb2NhbGx5IG5vdy4KPj4KPj4+IHdvdWxkIGdldCBzZXQgdGhvdWdoLiBCdXQgaXQgcHJv
YmFibHkgZG9lc24ndCBtYXR0ZXIgKFdURiBpcyBnb2luZwo+Pgo+PiBSaWdodC4gVGhhdCBjYW5u
b3QgYmUgc2V0IHRvIGJlZ2luIHdpdGgsIGFzIHRoZSBmaXJzdCBhY2Nlc3MgdG8gRlAvU0lNRAo+
PiBpbmplY3RzIGFuIGFib3J0IGJhY2sgdG8gdGhlIGd1ZXN0LCB3aGljaCBpcyB3aHkgSSBhZGRl
ZCBhIFdBUk4oKSB0bwo+PiBiZWdpbiB3aXRoLgo+Pgo+PiBKdXN0IHdhbnRlZCB0byBiZSBleHRy
YSBzYWZlLgo+Pgo+Pj4gdG8gcnVuIEtWTSB3aXRoIHN1Y2ggYnJva2VuIEhXPyksIGFuZCBiZXR0
ZXIgc2FmZSB0aGFuIHNvcnJ5Lgo+Pgo+PiBSaWdodCwgd2l0aCBubyBDT01QQVQgS1ZNIHN1cHBv
cnQgaXQgaXMgcmVhbGx5IGhhcmQgdG8gZ2V0IHRoaXMgZmFyLgo+IAo+IFNvIHdpdGggdGhlIGFi
b3ZlIGZpeDoKPiAKPiBBY2tlZC1ieTogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KPiAK
PiAgwqDCoMKgwqDCoMKgwqAgTS4KClRoYW5rcywgSSBoYXZlIGNoYW5nZWQgdGhlIEtWTSBodW5r
IHRvIDoKCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vaHlwL3N3aXRjaC5jIGIvYXJjaC9h
cm02NC9rdm0vaHlwL3N3aXRjaC5jCmluZGV4IDcyZmJiZDg2ZWI1ZS4uZTU4MTZkODg1NzYxIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMKKysrIGIvYXJjaC9hcm02NC9r
dm0vaHlwL3N3aXRjaC5jCkBAIC0yOCw3ICsyOCwxNSBAQAogIC8qIENoZWNrIHdoZXRoZXIgdGhl
IEZQIHJlZ3Mgd2VyZSBkaXJ0aWVkIHdoaWxlIGluIHRoZSBob3N0LXNpZGUgcnVuIApsb29wOiAq
LwogIHN0YXRpYyBib29sIF9faHlwX3RleHQgdXBkYXRlX2ZwX2VuYWJsZWQoc3RydWN0IGt2bV92
Y3B1ICp2Y3B1KQogIHsKLQlpZiAodmNwdS0+YXJjaC5ob3N0X3RocmVhZF9pbmZvLT5mbGFncyAm
IF9USUZfRk9SRUlHTl9GUFNUQVRFKQorCS8qCisJICogV2hlbiB0aGUgc3lzdGVtIGRvZXNuJ3Qg
c3VwcG9ydCBGUC9TSU1ELCB3ZSBjYW5ub3QgcmVseSBvbgorCSAqIHRoZSBfVElGX0ZPUkVJR05f
RlBTVEFURSBmbGFnLiBIb3dldmVyLCB3ZSBhbHdheXMgaW5qZWN0IGFuCisJICogYWJvcnQgb24g
dGhlIHZlcnkgZmlyc3QgYWNjZXNzIHRvIEZQIGFuZCB0aHVzIHdlIHNob3VsZCBuZXZlcgorCSAq
IHNlZSBLVk1fQVJNNjRfRlBfRU5BQkxFRC4gRm9yIGFkZGVkIHNhZmV0eSwgbWFrZSBzdXJlIHdl
IGFsd2F5cworCSAqIHRyYXAgdGhlIGFjY2Vzc2VzLgorCSAqLworCWlmICghc3lzdGVtX3N1cHBv
cnRzX2Zwc2ltZCgpIHx8CisJICAgIHZjcHUtPmFyY2guaG9zdF90aHJlYWRfaW5mby0+ZmxhZ3Mg
JiBfVElGX0ZPUkVJR05fRlBTVEFURSkKICAJCXZjcHUtPmFyY2guZmxhZ3MgJj0gfihLVk1fQVJN
NjRfRlBfRU5BQkxFRCB8CiAgCQkJCSAgICAgIEtWTV9BUk02NF9GUF9IT1NUKTsKCgpTdXp1a2kK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=

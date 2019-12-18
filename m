Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199AE124659
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5No8ClpIU8fCJrJFOHJc7QjykFyIMFs+tfgzItc5g2U=; b=F3mf+Ewvgw+Eyw6WR8jZGkXzY
	Xy0hSjHLJ8nyUEf5wQjUOQn5PFzg5H0xPusru4RnXxeSL9LoD0MPJuP2P5tqwSGQ5RI0ksHjLu9AN
	N58r+/cXoFR2xpboruy8B8oM0u/TbhieeHtto1Ro70fsZ98CpYZXUm3okTryCBW5Jm9bBv6VVWEv1
	5QNY/3I9IymlSGxDz166LTQCEMTWekfjDFZ4WS9DhfvmnWeXhqfzd83N5UzBsSi7BDyhILqkyFIGC
	CiqKWC12mBYEUOkNGTps2u1D8Q7SKdDwoV7/0iJGrSh+Z2nXns5NySwbegSdxxczBaHVZ5Lnzw76e
	UFMwGXpxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihY0M-0007hZ-TG; Wed, 18 Dec 2019 12:00:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihY0F-0007h1-1b
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:00:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0F2230E;
 Wed, 18 Dec 2019 04:00:29 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C62A3F6CF;
 Wed, 18 Dec 2019 04:00:28 -0800 (PST)
Subject: Re: [PATCH v2 7/7] arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag
 cleanly
To: Marc Zyngier <maz@kernel.org>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-8-suzuki.poulose@arm.com>
 <94c0bdd9f26c3262ff8a885d13a64d22@www.loen.fr>
 <9e491901-b589-b486-1cad-1bd92a35da95@arm.com>
 <3b30d44c34bc265ce4122396077a1670@www.loen.fr>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <d5e27bf5-3cc9-c8bd-5699-71658983054e@arm.com>
Date: Wed, 18 Dec 2019 12:00:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3b30d44c34bc265ce4122396077a1670@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_040031_173214_41F2BA9A 
X-CRM114-Status: GOOD (  21.37  )
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

T24gMTgvMTIvMjAxOSAxMTo1NiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTItMTgg
MTE6NDIsIFN1enVraSBLdXJ1cHBhc3NlcnkgUG91bG9zZSB3cm90ZToKPj4gSGkgTWFyYywKPj4K
Pj4gT24gMTcvMTIvMjAxOSAxOTowNSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4gSGkgU3V6dWtp
LAo+Pj4gT24gMjAxOS0xMi0xNyAxODozNCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPj4+PiBX
ZSBkZXRlY3QgdGhlIGFic2VuY2Ugb2YgRlAvU0lNRCBhZnRlciBhbiBpbmNhcGFibGUgQ1BVIGlz
IGJyb3VnaHQgdXAsCj4+Pj4gYW5kIGJ5IHRoZW4gd2UgaGF2ZSBrZXJuZWwgdGhyZWFkcyBydW5u
aW5nIGFscmVhZHkgd2l0aAo+Pj4+IFRJRl9GT1JFSUdOX0ZQU1RBVEUgc2V0Cj4+Pj4gd2hpY2gg
Y291bGQgYmUgc2V0IGZvciBlYXJseSB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIChlLmcsIG1vZHBy
b2JlIAo+Pj4+IHRyaWdnZXJlZAo+Pj4+IGZyb20gaW5pdHJhbWZzKSBhbmQgaW5pdC4gVGhpcyBj
b3VsZCBjYXVzZSB0aGUgYXBwbGljYXRpb25zIHRvIGxvb3AKPj4+PiBmb3JldmVyIGluCj4+Pj4g
ZG9fbm9maXR5X3Jlc3VtZSgpIGFzIHdlIG5ldmVyIGNsZWFyIHRoZSBUSUYgZmxhZywgb25jZSB3
ZSBub3cga25vdyAKPj4+PiB0aGF0Cj4+Pj4gd2UgZG9uJ3Qgc3VwcG9ydCBGUC4KPj4+Pgo+Pj4+
IEZpeCB0aGlzIGJ5IG1ha2luZyBzdXJlIHRoYXQgd2UgY2xlYXIgdGhlIFRJRl9GT1JFSUdOX0ZQ
U1RBVEUgZmxhZwo+Pj4+IGZvciB0YXNrcyB3aGljaCBtYXkgaGF2ZSB0aGVtIHNldCwgYXMgd2Ug
d291bGQgaGF2ZSBkb25lIGluIHRoZSBub3JtYWwKPj4+PiBjYXNlLCBidXQgYXZvaWRpbmcgdG91
Y2hpbmcgdGhlIGhhcmR3YXJlIHN0YXRlIChzaW5jZSB3ZSBkb24ndCAKPj4+PiBzdXBwb3J0IGFu
eSkuCj4+Pj4KPj4+PiBBbHNvIHRvIG1ha2Ugc3VyZSB3ZSBoYW5kbGUgdGhlIGNhc2VzIHNlZW1s
ZXNzbHkgd2UgY2F0ZWdvcmlzZSB0aGUKPj4+PiBoZWxwZXIgZnVuY3Rpb25zIHRvIHR3byA6Cj4+
Pj4gwqAxKSBIZWxwZXJzIGZvciBjb21tb24gY29yZSBjb2RlLCB3aGljaCBjYWxscyBpbnRvIHRh
a2UgYXBwcm9wcmlhdGUKPj4+PiDCoMKgwqAgYWN0aW9ucyB3aXRob3V0IGtub3dpbmcgdGhlIGN1
cnJlbnQgRlBTSU1EIHN0YXRlIG9mIHRoZSBDUFUvdGFzay4KPj4+Pgo+Pj4+IMKgwqDCoCBlLmcg
ZnBzaW1kX3Jlc3RvcmVfY3VycmVudF9zdGF0ZSgpLCBmcHNpbWRfZmx1c2hfdGFza19zdGF0ZSgp
LAo+Pj4+IMKgwqDCoMKgwqDCoMKgIGZwc2ltZF9zYXZlX2FuZF9mbHVzaF9jcHVfc3RhdGUoKS4K
Pj4+Pgo+Pj4+IMKgwqDCoCBXZSBiYWlsIG91dCBlYXJseSBmb3IgdGhlc2UgZnVuY3Rpb25zLCB0
YWtpbmcgYW55IGFwcHJvcHJpYXRlIAo+Pj4+IGFjdGlvbnMKPj4+PiDCoMKgwqAgKGUuZywgY2xl
YXJpbmcgdGhlIFRJRiBmbGFnKSB3aGVyZSBuZWNlc3NhcnkgdG8gaGlkZSB0aGUgaGFuZGxpbmcK
Pj4+PiDCoMKgwqAgZnJvbSBjb3JlIGNvZGUuCj4+Pj4KPj4+PiDCoDIpIEhlbHBlcnMgdXNlZCB3
aGVuIHRoZSBwcmVzZW5jZSBvZiBGUC9TSU1EIGlzIGFwcGFyZW50Lgo+Pj4+IMKgwqDCoCBpLmUs
IHNhdmUvcmVzdG9yZSB0aGUgRlAvU0lNRCByZWdpc3RlciBzdGF0ZSwgbW9kaWZ5IHRoZSBDUFUv
dGFzawo+Pj4+IMKgwqDCoCBGUC9TSU1EIHN0YXRlLgo+Pj4+IMKgwqDCoCBlLmcsCj4+Pj4KPj4+
PiDCoMKgwqAgZnBzaW1kX3NhdmUoKSwgdGFza19mcHNpbWRfbG9hZCgpIC0gc2F2ZS9yZXN0b3Jl
IHRhc2sgRlAvU0lNRCAKPj4+PiByZWdpc3RlcnMKPj4+Pgo+Pj4+IMKgwqDCoCBmcHNpbWRfYmlu
ZF90YXNrX3RvX2NwdSgpwqAgXAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gVXBkYXRlIHRoZSAic3RhdGUiIG1ldGFk
YXRhIGZvciAKPj4+PiBDUFUvdGFzay4KPj4+PiDCoMKgwqAgZnBzaW1kX2JpbmRfc3RhdGVfdG9f
Y3B1KCkgLwo+Pj4+Cj4+Pj4gwqDCoMKgIGZwc2ltZF91cGRhdGVfY3VycmVudF9zdGF0ZSgpIC0g
VXBkYXRlIHRoZSBmcC9zaW1kIHN0YXRlIGZvciB0aGUgCj4+Pj4gY3VycmVudAo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdGFzayBmcm9tIG1lbW9yeS4KPj4+Pgo+Pj4+IMKgwqDCoCBUaGVzZSBtdXN0IG5v
dCBiZSBjYWxsZWQgaW4gdGhlIGFic2VuY2Ugb2YgRlAvU0lNRC4gUHV0IGluIGEgCj4+Pj4gV0FS
TklORwo+Pj4+IMKgwqDCoCB0byBtYWtlIHN1cmUgdGhleSBhcmUgbm90IGludm9rZWQgaW4gdGhl
IGFic2VuY2Ugb2YgRlAvU0lNRC4KPj4+Pgo+Pj4+IEtWTSBhbHNvIHVzZXMgdGhlIFRJRl9GT1JF
SUdOX0ZQU1RBVEUgZmxhZyB0byBtYW5hZ2UgdGhlIEZQL1NJTUQgc3RhdGUKPj4+PiBvbiB0aGUg
Q1BVLiBIb3dldmVyLCB3aXRob3V0IEZQL1NJTUQgc3VwcG9ydCB3ZSB0cmFwIGFsbCBhY2Nlc3Nl
cyBhbmQKPj4+PiBpbmplY3QgdW5kZWZpbmVkIGluc3RydWN0aW9uLiBUaHVzIHdlIHNob3VsZCBu
ZXZlciAibG9hZCIgZ3Vlc3Qgc3RhdGUuCj4+Pj4gQWRkIGEgc2FuaXR5IGNoZWNrIHRvIG1ha2Ug
c3VyZSB0aGlzIGlzIHZhbGlkLgo+Pj4gWWVzLCBidXQgbm8sIHNlZSBiZWxvdy4KPj4+Cj4+Pj4K
Pj4+PiBGaXhlczogODJlMDE5MWExYWExMWFiZiAoImFybTY0OiBTdXBwb3J0IHN5c3RlbXMgd2l0
aG91dCBGUC9BU0lNRCIpCj4+Pj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4+
Pj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+Pj4gQ2M6IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+Pj4gQ2M6IE1hcmMgWnluZ2ll
ciA8bWFyYy56eW5naWVyQGFybS5jb20+Cj4+PiBObyBpZGVhIHdobyB0aGF0IGd1eSBpcy4gSXQn
cyBhIGZha2UhIDstKQo+Pgo+PiBTb3JyeSBhYm91dCB0aGF0LCB3aWxsIGZpeCBpdC4KPj4KPj4+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJt
LmNvbT4KPj4+PiAtLS0KPj4+PiDCoGFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jwqAgfCAzMSAr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCj4+Pj4gwqBhcmNoL2FybTY0L2t2bS9oeXAv
c3dpdGNoLmMgfMKgIDkgKysrKysrKysrCj4+Pj4gwqAyIGZpbGVzIGNoYW5nZWQsIDM2IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pj4KPj4+IFsuLi5dCj4+Pgo+Pj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMgYi9hcmNoL2FybTY0L2t2bS9oeXAvc3dp
dGNoLmMKPj4+PiBpbmRleCA3MmZiYmQ4NmViNWUuLjk2OTZlYmI1YzEzYSAxMDA2NDQKPj4+PiAt
LS0gYS9hcmNoL2FybTY0L2t2bS9oeXAvc3dpdGNoLmMKPj4+PiArKysgYi9hcmNoL2FybTY0L2t2
bS9oeXAvc3dpdGNoLmMKPj4+PiBAQCAtMjgsMTAgKzI4LDE5IEBACj4+Pj4gwqAvKiBDaGVjayB3
aGV0aGVyIHRoZSBGUCByZWdzIHdlcmUgZGlydGllZCB3aGlsZSBpbiB0aGUgaG9zdC1zaWRlIHJ1
bgo+Pj4+IGxvb3A6ICovCj4+Pj4gwqBzdGF0aWMgYm9vbCBfX2h5cF90ZXh0IHVwZGF0ZV9mcF9l
bmFibGVkKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKPj4+PiDCoHsKPj4+PiArwqDCoMKgIC8qCj4+
Pj4gK8KgwqDCoMKgICogV2hlbiB0aGUgc3lzdGVtIGRvZXNuJ3Qgc3VwcG9ydCBGUC9TSU1ELCB3
ZSBjYW5ub3QgcmVseSBvbgo+Pj4+ICvCoMKgwqDCoCAqIHRoZSBzdGF0ZSBvZiBfVElGX0ZPUkVJ
R05fRlBTVEFURS4gSG93ZXZlciwgd2Ugd2lsbCBuZXZlcgo+Pj4+ICvCoMKgwqDCoCAqIHNldCB0
aGUgS1ZNX0FSTTY0X0ZQX0VOQUJMRUQsIGFzIHRoZSBGUC9TSU1EIGFjY2Vzc2VzIGFsd2F5cwo+
Pj4+ICvCoMKgwqDCoCAqIGluamVjdCBhbiBhYm9ydCBpbnRvIHRoZSBndWVzdC4gVGh1cyB3ZSBh
bHdheXMgdHJhcCB0aGUKPj4+PiArwqDCoMKgwqAgKiBhY2Nlc3Nlcy4KPj4+PiArwqDCoMKgwqAg
Ki8KPj4+PiDCoMKgwqDCoCBpZiAodmNwdS0+YXJjaC5ob3N0X3RocmVhZF9pbmZvLT5mbGFncyAm
IF9USUZfRk9SRUlHTl9GUFNUQVRFKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgdmNwdS0+YXJjaC5m
bGFncyAmPSB+KEtWTV9BUk02NF9GUF9FTkFCTEVEIHwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLVk1fQVJNNjRfRlBfSE9TVCk7Cj4+Pj4KPj4+PiAr
wqDCoMKgIFdBUk5fT04oIXN5c3RlbV9zdXBwb3J0c19mcHNpbWQoKSAmJgo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCAodmNwdS0+YXJjaC5mbGFncyAmIEtWTV9BUk02NF9GUF9FTkFCTEVEKSk7Cj4+PiBD
YXJlZnVsLCB0aGlzIHdpbGwgcGFuaWMgdGhlIGhvc3QgaWYgaXQgaGFwcGVucyBvbiBhICFWSEUg
aG9zdAo+Pj4gKGNhbGxpbmcgbm9uLWlubGluZSBzdHVmZiBmcm9tIGEgX19oeXBfdGV4dCBmdW5j
dGlvbiBpcyB1c3VhbGx5Cj4+PiBub3QgYSBnb29kIGlkZWEpLgo+Pgo+PiBPdWNoISBTb3JyeSBh
Ym91dCB0aGF0IFdBUk5fT04oKSEgSSBjb3VsZCBkcm9wIHRoZSB3YXJuaW5nIGFuZAo+PiBtYWtl
IHRoaXMgOgo+Pgo+PiBpZiAoIXN5c3RlbV9zdXBwb3J0c19mcHNpbWQoKSB8fAo+PiDCoMKgwqAg
KHZjcHUtPmFyY2guaG9zdF90aHJlYWRfaW5mby0+ZmxhZ3MgJiBfVElGX0ZPUkVJR05fRlBTVEFU
RSkpCj4+IMKgwqDCoMKgdmNwdS0+YXJjaC5mbGFncyAmPSB+KEtWTV9BUk02NF9GUF9FTkFCTEVE
IHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBLVk1fQVJNNjRfRlBfSE9T
VCk7Cj4+Cj4+IHRvIG1ha2Ugc3VyZSB3ZSBuZXZlciBzYXkgZnAgaXMgZW5hYmxlZC4KPj4KPj4g
V2hhdCBkbyB5b3UgdGhpbmsgPwo+IAo+IFN1cmUsIHRoYXQgd291bGQgd29yay4gSSBjYW4ndCBy
ZWFsbHkgc2VlIGhvdyBLVk1fQVJNNjRfRlBfRU5BQkxFRAoKVGhhbmtzIEkgaGF2ZSBmaXhlZCB0
aGlzIGxvY2FsbHkgbm93LgoKPiB3b3VsZCBnZXQgc2V0IHRob3VnaC4gQnV0IGl0IHByb2JhYmx5
IGRvZXNuJ3QgbWF0dGVyIChXVEYgaXMgZ29pbmcKClJpZ2h0LiBUaGF0IGNhbm5vdCBiZSBzZXQg
dG8gYmVnaW4gd2l0aCwgYXMgdGhlIGZpcnN0IGFjY2VzcyB0byBGUC9TSU1ECmluamVjdHMgYW4g
YWJvcnQgYmFjayB0byB0aGUgZ3Vlc3QsIHdoaWNoIGlzIHdoeSBJIGFkZGVkIGEgV0FSTigpIHRv
CmJlZ2luIHdpdGguCgpKdXN0IHdhbnRlZCB0byBiZSBleHRyYSBzYWZlLgoKPiB0byBydW4gS1ZN
IHdpdGggc3VjaCBicm9rZW4gSFc/KSwgYW5kIGJldHRlciBzYWZlIHRoYW4gc29ycnkuCgpSaWdo
dCwgd2l0aCBubyBDT01QQVQgS1ZNIHN1cHBvcnQgaXQgaXMgcmVhbGx5IGhhcmQgdG8gZ2V0IHRo
aXMgZmFyLgoKQ2hlZXJzClN1enVraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

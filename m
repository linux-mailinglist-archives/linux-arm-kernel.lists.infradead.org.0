Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BD41102D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s4CGnh3dG5SIzf94roC+08unUPCAc1HnXbf7iPlm4BE=; b=tERpyTFv+0vsh2JqvZ9YgdpxI
	GpqA6m3Gua486riQlnxx9PIfBsmWY9Zai1XHE50N5swJcVARlEaRVbwsTZeZo/NNzbcu03Jw1n4lo
	Jnhtgi26OTabde/XaoXAflaEzdx57zRQE9zR4Bhe8Vky3+a7L/wmAjK5a22bSVwxJnLTe1IF17Avk
	DXgC1ZxAPTcvbcluNCreaz4gF3cgMG3IY7cCJK/ZZVBruA/9SmvreVZZ2YIjXcf0LVmlgrEvyfDvb
	ckrVTDKJ1X5kc7jUf2psS1EI3tqP7iA21jB76qy2XasR7Ly3c+JwRZtVV98cmC5sakoBOyXUIAzoO
	7cIENH7PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBM3-0008BV-9Y; Tue, 03 Dec 2019 16:48:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBLt-0008Ac-Il; Tue, 03 Dec 2019 16:48:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA9C531B;
 Tue,  3 Dec 2019 08:48:40 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C26B13F68E;
 Tue,  3 Dec 2019 08:48:38 -0800 (PST)
Subject: Re: [PATCH v3 4/7] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
To: Jeremy Linton <jeremy.linton@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, andrew.murray@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Eric Anholt
 <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-5-nsaenzjulienne@suse.de>
 <ddab6abd-68fb-543d-bb8e-057d92ac15ed@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <dda72ec5-3e05-a423-bfce-da34addc922c@arm.com>
Date: Tue, 3 Dec 2019 16:48:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ddab6abd-68fb-543d-bb8e-057d92ac15ed@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_084841_707183_403D774C 
X-CRM114-Status: GOOD (  22.71  )
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
Cc: mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMTIvMjAxOSA0OjMxIHBtLCBKZXJlbXkgTGludG9uIHdyb3RlOgo+IEhpLAo+IAo+IE9u
IDExLzI2LzE5IDM6MTkgQU0sIE5pY29sYXMgU2FlbnogSnVsaWVubmUgd3JvdGU6Cj4+IEZyb206
IEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFuQGJyb2FkY29tLmNvbT4KPj4KPj4gVGhpcyBhZGRz
IGEgYmFzaWMgZHJpdmVyIGZvciBCcm9hZGNvbSdzIFNUQiBQQ0llIGNvbnRyb2xsZXIsIGZvciBu
b3cKPj4gYWltZWQgYXQgUmFzcGJlcnJ5IFBpIDQncyBTb0MsIGJjbTI3MTEuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFuQGJyb2FkY29tLmNvbT4KPj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5uZUBzdXNl
LmRlPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxp
ZW5uZUBzdXNlLmRlPgo+Pgo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4gwqDCoCAt
IENvcnJlY3QgcmNfYmFyMl9vZmZzZXQgc2lnbgo+PiDCoMKgIC0gSW52ZXJ0IElSUSBjbGVhciBh
bmQgbWFza2luZyBpbiBzZXR1cCBjb2RlCj4+IMKgwqAgLSBVc2UgYml0ZmllbGQuaCwgcmVkbyBh
bGwgcmVnaXN0ZXIgb3BzIHdoaWxlIGtlZXBpbmcgdGhlIHJlZ2lzdGVyCj4+IMKgwqDCoMKgIG5h
bWVzIGludGFjdAo+PiDCoMKgIC0gUmVtb3ZlIGFsbCBTSElGVCByZWdpc3RlciBkZWZpbml0aW9u
cwo+PiDCoMKgIC0gR2V0IHJpZCBvZiBhbGwgX1JCIHdyaXRlcwo+PiDCoMKgIC0gR2V0IHJpZCBv
ZiBvZl9kYXRhCj4+IMKgwqAgLSBEb24ndCBpdGVyYXRlIG92ZXIgaW5leGlzdGluZyBkbWEtcmFu
Z2VzCj4+IMKgwqAgLSBBZGQgY29tbWVudCByZWdhcmRpbmcgZG1hLXJhbmdlcyB2YWxpZGF0aW9u
Cj4+IMKgwqAgLSBTbWFsbCBjb3NtZXRpYyBjbGVhbnVwcwo+PiDCoMKgIC0gRml4IGxpY2Vuc2Ug
bWlzbWF0Y2gKPj4gwqDCoCAtIFNldCBkcml2ZXIgS2NvbmZpZyB0cmlzdGF0ZQo+PiDCoMKgIC0g
RGlkbid0IGFkZCBhbnkgY29tbWVudCBhYm91dCB0aGUgY29udHJvbGxlciBub3QgYmVpbmcgSS9P
IGNvaGVyZW50Cj4+IMKgwqDCoMKgIGZvciBub3cgYXMgSSB3YWl0IGZvciBKZXJlbXkncyByZXBs
eQo+IAo+IEkgZ3Vlc3MgaXRzIGZpbmUuLiBJbiBhbnN3ZXIgdG8gdGhlIG9yaWdpbmFsIHF1ZXJ5
LiBJdCBzZWVtcyB0aGF0IHRoaXMgCj4gUENJZSBicmlkZ2UgcmVxdWlyZXMgZXhwbGljaXQgY2Fj
aGUgb3BlcmF0aW9ucyBmb3IgRE1BIGZyb20gUENJZSAKPiBlbmRwb2ludHMuIFRoaXMgd2Fzbid0
IG9idmlvdXMgdG8gbWUgYXQgZmlyc3QgcmVhZGluZyBiZWNhdXNlIEkgd2FzIAo+IGFzc3VtaW5n
IHRoZSBjdXN0b20gRE1BIG9wcyB3ZXJlIHN0cmljdGx5IHRvIGRlYWwgd2l0aCB0aGUgc3RhdGVk
IERNQSAKPiBsaW1pdHMuCgpGV0lXLCBhbHRob3VnaCBpdCBtaWdodCBzZWVtIGFuYXRoZW1hIHRv
IHNlcnZlciBmb2xrcywgbm9uLWNvaGVyZW50IFBDSSAKaXMgdGhlIG92ZXJ3aGVsbWluZyBub3Jt
IGluIGVtYmVkZGVkIFNvQ3MuIEVpdGhlciB3YXksIHByb3ZpZGVkIHRoZSAKcHJlc2VuY2Ugb3Ig
YWJzZW5jZSBvZiBjb2hlcmVuY3kgaXMgY29ycmVjdGx5IGRlc2NyaWJlZCB2aWEgdGhlIERUIAoi
ZG1hLWNvaGVyZW50IiBvciBBQ1BJIF9DQ0EgcHJvcGVydHksIHRoZW4gaXQncyB0cmFuc3BhcmVu
dGx5IGhhbmRsZWQgYnkgCnRoZSBETUEgQVBJIGZvciB0aGUgZW5kcG9pbnQgZHJpdmVycyBhbmQg
aXJyZWxldmFudCB0byB0aGUgaG9zdCBicmlkZ2UgCml0c2VsZiAtIGFmdGVyIGFsbCwgaW4gcHJp
bmNpcGxlIHRoZSBleGFjdCBzYW1lIHJvb3QgY29tcGxleCBJUCBjb3VsZCBiZSAKaW50ZWdyYXRl
ZCBib3RoIGNvaGVyZW50bHkgYW5kIG5vbi1jb2hlcmVudGx5IGluIGRpZmZlcmVudCBTb0NzLgoK
Um9iaW4uCgo+IFNvIGlmIHlvdSBlbmQgdXAgcmVzcGlubmluZywgaXQgc3RpbGwgbWlnaHQgYmUg
d29ydGh5IG1lbnRpb25pbmcgCj4gc29tZXdoZXJlIHRoYXQgdGhpcyBpcyBhIG5vbi1jb2hlcmVu
dCBQQ0llIGltcGxlbWVudGF0aW9uLiBJIHN0aWxsIGhvbGQgCj4gbXVjaCBvZiBteSBvcmlnaW5h
bCByZXNlcnZhdGlvbnMgYWJvdXQgcGllY2VzIG9mIHRoaXMgZHJpdmVyLiAKPiBQYXJ0aWN1bGFy
bHksIGhvdyBpdCBtaWdodCBsb29rIGlmIHNvbWVvbmUgd2FudGVkIHRvIGJvb3QgdGhlIFJQaSB1
c2luZyAKPiBBQ1BJIG9uIGxpbnV4LiBCdXQsIEkgd2FzIHNob3duIGEgY2xldmVyIGJpdCBvZiBB
TUwgcmVjZW50bHksIHdoaWNoIAo+IHNvbHZlcyB0aG9zZSBwcm9ibGVtcyBmb3IgdGhlIFJQaSBh
bmQgdGhlIGF0dGFjaGVkIFhIQ0kuCj4gCj4gU28sIGdpdmVuIGhvdyBtdWNoIHRpbWUgSSd2ZSBs
b29rZWQgYXQgdGhlIHJvb3QgcG9ydCBjb25maWd1cmF0aW9uL2V0YyAKPiBzZWN0aW9ucyBvZiB0
aGlzIGRyaXZlciBhbmQgSSd2ZSBub3QgZm91bmQgYSBzZXJpb3VzIGJ1ZzoKPiAKPiBSZXZpZXdl
ZC1ieTogSmVyZW15IExpbnRvbiA8amVyZW15LmxpbnRvbkBhcm0uY29tPgo+IAo+Pgo+PiBDaGFu
Z2VzIHNpbmNlIHYxOgo+PiDCoMKgIC0gRml4IEtjb25maWcKPj4gwqDCoCAtIFJlbW92ZSBwY2kg
ZG9tYWluIGNoZWNrCj4+IMKgwqAgLSBSZW1vdmUgYWxsIE1TSSByZWxhdGVkIGNvZGUKPj4gwqDC
oCAtIFJlbW92ZSBzdXBlbmQvcmVzdW1lIGNvZGUKPj4gwqDCoCAtIFNpbXBsaWZ5IGxpbmsgc3Rh
dGUgd2FpdCByb3V0aW5lCj4+IMKgwqAgLSBQcmVmaXggYWxsIGZ1bmN0aW9ucwo+PiDCoMKgIC0g
VXNlIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpCj4+IMKgwqAgLSBVc2UgZGV2bV9jbGtfZ2V0
X29wdGlvbmFsKCkKPj4gwqDCoCAtIEdldCByaWQgb2YgaXJxIHZhcmlhYmxlCj4+IMKgwqAgLSBV
c2UgU1RCIGFsbCBvdmVyIHRoZSBkcml2ZXIKPj4gwqDCoCAtIFNpbXBsaWZ5IG1hcF9idXMoKSBm
dW5jdGlvbgo+PiDCoMKgIC0gRml4IGxpY2Vuc2UgbWlzbWF0Y2gKPj4gwqDCoCAtIFJlbW92ZSB1
bnVzZWQgcmVnaXN0ZXIgZGVmaW5pdGlvbnMKPj4gwqDCoCAtIFNtYWxsIGNsZWFudXBzLCBzcGVs
bCBlcnJvcnMKPj4KPj4gVGhpcyBpcyBiYXNlZCBvbiBKaW0ncyBvcmlnaW5hbCBzdWJtaXNzaW9u
WzFdIGJ1dCBhZGFwdGVkIGFuZCB0YWlsb3JlZAo+PiBzcGVjaWZpY2FsbHkgdG8gYmNtMjcxMSdz
IG5lZWRzICh0aGF0J3MgdGhlIFJhc3BiZXJyeSBQaSA0KS4gU3VwcG9ydCBmb3IKPj4gdGhlIHJl
c3Qgb2YgdGhlIGJyY21zdGIgZmFtaWx5IHdpbGwgc29vbiBmb2xsb3cgb25jZSB3ZSBnZXQgc3Vw
cG9ydCBmb3IKPj4gbXVsdGlwbGUgZG1hLXJhbmdlcyBpbiBkbWEvZGlyZWN0Lgo+Pgo+PiBbMV0g
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDYwNTk1OS8KPj4KPj4gwqAgZHJp
dmVycy9wY2kvY29udHJvbGxlci9LY29uZmlnwqDCoMKgwqDCoMKgwqAgfMKgwqAgOCArCj4+IMKg
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvTWFrZWZpbGXCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+
IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1icmNtc3RiLmMgfCA3NTMgKysrKysrKysr
KysrKysrKysrKysrKysrKysKPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCA3NjIgaW5zZXJ0aW9ucygr
KQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWJy
Y21zdGIuYwo+Pgo+IAo+IFRoYW5rcywKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7FC16A863
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3lnhq4wdFIj01JwyMey1jpkja3EYgfO8QStn+opBZY=; b=Cbmj1GG7izMH68
	akPxkHISSuZb7lKhPX5wWzKzvBoj6lY2M8POMyqGWmIieebkiqz6Yi8Ry7xewKLaSN3d7fqQOxoRD
	K1wQGDk9AyB1kfxkjY9CTHbPifk8mbVVJrGPovBkFAa1VMGnbLJ40bcrJMgiGLb+s1Z1dU60Srxeu
	cQQhZ4GLMALycKQ5mQRVEbqkyj5r2Gmi68rf37VH8tGl2fs2Rr2b8/kYNG4RUauoCLBoofjn+eJUS
	wBf898tazeTW2ctph+oZ7ZEtTm9dcVWdeG2aCsU7BCQR+6k+8RMoqd8bt/xnPcLaaYnXDydl6CsJi
	6td/DSaISpGNb4JiZUZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Eno-0007vI-CX; Mon, 24 Feb 2020 14:33:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Enf-0007uS-6w
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:33:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E405430E;
 Mon, 24 Feb 2020 06:33:32 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE2B73F534;
 Mon, 24 Feb 2020 06:33:31 -0800 (PST)
Subject: Re: [RFC PATCH v2 07/13] firmware: arm_scmi: Add notification
 dispatch and delivery
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <20200214153535.32046-8-cristian.marussi@arm.com>
 <e45e87e2-aaaf-c35b-b864-c080fd6e0ba6@arm.com>
 <d59c3f3e-324b-05fe-547d-1e64bf4c6a69@arm.com>
 <af8d2a1e-e78e-6d0e-4ffc-3af94cdc6784@arm.com>
 <ce10673e-48a1-980c-cf05-a4fe2040d96f@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <6f7a9b3c-b2b3-7fb5-0671-5bf18fccd50a@arm.com>
Date: Mon, 24 Feb 2020 14:33:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ce10673e-48a1-980c-cf05-a4fe2040d96f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_063335_340982_B49E8DAC 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDIvMjAyMCAwOTo1OSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gMi8yMS8y
MCA3OjExIFBNLCBMdWthc3ogTHViYSB3cm90ZToKPj4KPj4KPj4gT24gMi8yMS8yMCA3OjAxIFBN
LCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+Pj4gSGkgTHVrYXN6Cj4+Pgo+Pj4gVGhhbmtzIGZv
ciB5b3VyIGZlZWRiYWNrICEKPj4+Cj4+PiBPbiAyMS8wMi8yMDIwIDEzOjI1LCBMdWthc3ogTHVi
YSB3cm90ZToKPj4+PiBIaSBDcmlzdGlhbiwKPj4+Pgo+Pj4+IEkgZGlkbid0IHdhbnQgdG8ganVt
cCBpbnRvIHlvdXIgZGlzY3Vzc2lvbiB3aXRoIEppbSBpbiBvdGhlciBicm9hZGVyCj4+Pj4gdGhy
ZWFkIHdpdGggdGhpcyBzbWFsbCB0aG91Z2h0LCBzbyBJIGFkZGVkIGEgY29tbWVudCBiZWxvdy4K
Pj4+Pgo+Pj4+IE9uIDIvMTQvMjAgMzozNSBQTSwgQ3Jpc3RpYW4gTWFydXNzaSB3cm90ZToKPj4+
Pj4gQWRkIGNvcmUgU0NNSSBOb3RpZmljYXRpb25zIGRpc3BhdGNoIGFuZCBkZWxpdmVyeSBzdXBw
b3J0IGxvZ2ljIAo+Pj4+PiB3aGljaCBpcwo+Pj4+IFtzbmlwXQo+Pj4+Cj4+Pj4+IEBAIC04NDAs
NiArMTA3MSwxMSBAQCBzdGF0aWMgc3RydWN0IHNjbWlfbm90aWZ5X29wcyBub3RpZnlfb3BzID0g
ewo+Pj4+PiDCoMKgwqAgKi8KPj4+Pj4gwqDCoCBpbnQgc2NtaV9ub3RpZmljYXRpb25faW5pdChz
dHJ1Y3Qgc2NtaV9oYW5kbGUgKmhhbmRsZSkKPj4+Pj4gwqDCoCB7Cj4+Pj4+ICvCoMKgwqAgc2Nt
aV9ub3RpZnlfd3EgPSBhbGxvY193b3JrcXVldWUoInNjbWlfbm90aWZ5IiwKPj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV1FfVU5CT1VORCB8IFdRX0ZSRUVa
QUJMRSwgMCk7Cj4+Pj4KPj4+PiBJIHRoaW5rIGl0IG1pZ2h0IGxpbWl0IHNvbWUgcGxhdGZvcm1z
LiBJdCBkZXBlbmRzIG9uIHRoZWlyIHdvcmtsb2FkLgo+Pj4+IElmIHRoZXkgaGF2ZSBzb21lIGhp
Z2ggcHJpb3JpdHkgd29ya2xvYWRzIHdoaWNoIHJlbHkgb24gdGhpcyBtZWNoYW5pc21zLAo+Pj4+
IHRoZXkgbWlnaHQgbmVlZCBhIFJUIHRhc2sgaGVyZS4gVGhlIHdvcmtxdWV1ZXMgd291bGQgYmUg
c2NoZWR1bGVkIGluCj4+Pj4gQ0ZTLCBzbyBpdCBkZXBlbmRzIG9uIHdvcmtsb2FkIGluIHRoZXJl
ICh3ZSBtaWdodCBldmVuIHNlZSAxMHMgbXMgZGVsYXlzCj4+Pj4gaW4gc2NoZWR1bGluZy11cCB0
aGVtKS4gSWYgd2UgdXNlIFJUIHdlIHdvdWxkIGdyYWIgdGhlIENQVSBmcm9tIENGUy4KPj4+Pgo+
Pj4+IEl0IHdvdWxkIGJlIGdvb2QgaWYgaXQgaXMgYSBjdXN0b21pemF0aW9uIG9wdGlvbjogd2hp
Y2ggbWVjaGFuaXNtCj4+Pj4gdG8gdXNlIGJhc2VkIG9uIHNvbWUgYSBwYXJhbWV0ZXIuIFRoZW4g
d2UgY291bGQgY3JlYXRlOgo+Pj4+IGEpIHdvcmtxdWV1ZSB3aXRoIHRoZSBmbGFncyBhYm92ZQo+
Pj4+IGIpIHdvcmtxdWV1ZSB3aXRoIFdRX0hJR0hQUkkgKGxpbWl0ZWQgYnkgbWluaW11bSBuaWNl
KQo+Pj4+IGMpIGt0aHJlYWRfY3JlYXRlX3dvcmtlcigpIHdpdGggUlQvREwvRklGTyBzY2hlZCBw
b2xpY3kKPj4+PiDCoMKgwqAgKHdpdGggYWxzbyBhIHBhcmFtZXRlcml6ZWQgcHJpb3JpdHkpCj4+
Pj4gSW4gZGVmYXVsdCBjbGllbnRzIG1pZ2h0IHVzZSBhKSBidXQgd2hlbiB0aGV5IHdhbnQgdG8g
dHVuZSB0aGVpcgo+Pj4+IHBsYXRmb3JtLCB0aGV5IG1pZ2h0IGNoYW5nZSBvbmx5IGEgcGFyYW1l
dGVyIGluIHRoZWlyIHNjbWkgY29kZSwKPj4+PiBub3QgbWFpbnRhaW5pbmcgYSBwYXRjaCBmb3Ig
dGhlIFJUIGZ1bmN0aW9uIG91dCBvZiB0cmVlLgo+Pj4KPj4+IEluIHRoaXMgc2VyaWVzLCBJIGhh
dmUgbm90IGFkZHJlc3NlZCBjb25maWd1cmFiaWxpdHkgaXNzdWVzIGF0IGFsbCAoYXMgCj4+PiBu
b3RlZCBpbiB0aGUgY292ZXIpOgo+Pj4gaW4gZmFjdCBJIHdhcyB0aGlua2luZyB0aGF0IHN0dWZm
IGxpa2UgV1FfSElHSFBSSSBmbGFncyBhbmQgCj4+PiBwZXItcHJvdG9jb2wgcXVldWUgc2l6ZXMg
Y291bGQKPj4+IGJlIGJlbmVmaWNpYWwgdG8gYmUgY3VzdG9taXphYmxlIGRlcGVuZGluZyBvbiB0
aGUgc3BlY2lmaWMgcGxhdGZvcm0sIAo+Pj4gYnV0IEkgaGFkIG5vdCBnb25lIHRvCj4+PiB0aGUg
ZXh0cmVtZSBvZiB0aGlua2luZyBvZiBhZG9wdGluZyBhIGRlZGljYXRlZCBSVCBrdGhyZWFkIGFz
IGEgCj4+PiB3b3JrZXIuLi5nb29kIHBvaW50Li4uaXQKPj4+IG1ha2VzIHN1cmVseSBzZW5zZSB0
byBoYXZlIHRoaXMgY29uZmlndXJhYmxlIG9wdGlvbiB0byB0cnkgdG8gcmVkdWNlIAo+Pj4gdGhl
IGxhdGVuY3kgd2hlcmUgcG9zc2libGUuCj4+Pgo+Pj4gSSB0aGluayBpdCdzIGltcG9ydGFudCB0
byBnaXZlIHRoZSB1c2VyIHRoZSBwb3NzaWJpbGl0eSB0byBjb25maWd1cmUgCj4+PiB0aGUgZGVm
ZXJyZWQgd29ya2VyCj4+PiBhcyB5b3Ugc3VnZ2VzdGVkLCBpZiB0aGUgdXNlciBkZWNpZGVzIHRv
IHJlbHkgb24gTGludXggdG8gaGFuZGxlIGEgCj4+PiBjcml0aWNhbCBub3RpZmljYXRpb24sCj4+
PiBidXQgSSdkIHByZWZlciBxdWV1aW5nIHVwIHRoaXMgd29yayB5b3Ugc3VnZ2VzdGVkIG9uIGEg
ZGlmZmVyZW50IAo+Pj4gc2VyaWVzIG9uIHRvcCBvZiB0aGlzIG9uZS4KPj4+ICh3aGljaCBpcyBz
dGFydGluZyB0byBiZSBhIGxpdHRsZSB0byBtdWNoIHZvbHVtaW5vdXMuLi5mb3IgYmVpbmcganVz
dCAKPj4+IHRoZSBjb3JlIHN1cHBvcnQpCj4+Cj4+IEFncmVlLCB5b3UgY2FuIGJ1aWxkIHRoZXNl
IGZlYXR1cmVzIGluY3JlbWVudGFsbHkuCj4gCj4gQWx0aG91Z2gsIGEgV1FfU1lTRlMgZmxhZyB3
b3VsZG4ndCBoYXJtIHRvbyBtdWNoIHRoaXMgdmVyc2lvbiBhbmQgbWlnaHQKPiBnaXZlIHBvc3Np
YmlsaXR5IHRvIHR1bmUvZXhwZXJpbWVudCB3aXRoIGl0Lgo+IAoKVHJ1ZS4gQWRkZWQgaW4gdjMu
CgpUaGFua3MKCkNyaXN0aWFuCj4+Cj4+IFJlZ2FyZHMsCj4+IEx1a2Fzego+PgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A598118F0D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VehpHjozgblbxDXQpl88VTyKxQffx/aVQKVnN+f7dp0=; b=XNV9YSnPZ5IdJ0d6cBNZNXIq1
	VDtJH5vDuAk52/9WA9bf6ItCdANs7dqUXLrHsolh96zwEbNVvkOvDmrgnlInsG+154Ct7SkYp5FNF
	6vT1jZmaFxQlNSVXiM1psbYYS8zWxs0EDfl56CRxwqoR/ft2eDw6oPCKo9GFXi6bVvAv5sBoFds2U
	Pd/tHppmG/CZe/F0CsvOutNMOE5qkGX3DC9LnQghidhKlnkPEiQreTXcHAAJuHrfPInjBUURCz5Lz
	+/MubA4cWJ05aztA9xVOv4HSuESgwTm/po1TMhOmZbXYUOcKFdCnyCUWVYv+NaK0r5H04lMLOdUtf
	8pWgOz8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIRZ-0005VE-7f; Mon, 23 Mar 2020 08:28:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIRL-0005UW-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:28:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4477B31B;
 Mon, 23 Mar 2020 01:28:04 -0700 (PDT)
Received: from [10.57.24.152] (unknown [10.57.24.152])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D2D03F792;
 Mon, 23 Mar 2020 01:28:03 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 james.quinlan@broadcom.com, Jonathan.Cameron@Huawei.com
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
 <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
 <20200313190224.GA5808@e120937-lin>
 <d600b3d5-056d-89ef-b8e2-df403285df8b@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <d37e86bb-3ddd-2c61-bbbe-ebb5cc4801dc@arm.com>
Date: Mon, 23 Mar 2020 08:28:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d600b3d5-056d-89ef-b8e2-df403285df8b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_012807_270939_D9A0A596 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIDMvMTgvMjAgODoyNiBBTSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gSGkgQ3Jpc3RpYW4s
Cj4gCj4gT24gMy8xNi8yMCAyOjQ2IFBNLCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+PiBPbiBU
aHUsIE1hciAxMiwgMjAyMCBhdCAwOTo0MzozMVBNICswMDAwLCBMdWthc3ogTHViYSB3cm90ZToK
Pj4+Cj4+Pgo+Pj4gT24gMy8xMi8yMCA2OjM0IFBNLCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+
Pj4+IE9uIDEyLzAzLzIwMjAgMTM6NTEsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4+PiBIaSBDcmlz
dGlhbiwKPj4+Pj4KPj4gSGkgTHVrYXN6Cj4+Cj4+Pj4+IGp1c3Qgb25lIGNvbW1lbnQgYmVsb3cu
Li4KPj4gW3NuaXBdCj4+Pj4+PiArwqDCoMKgIGVoLnRpbWVzdGFtcCA9IHRzOwo+Pj4+Pj4gK8Kg
wqDCoCBlaC5ldnRfaWQgPSBldnRfaWQ7Cj4+Pj4+PiArwqDCoMKgIGVoLnBheWxkX3N6ID0gbGVu
Owo+Pj4+Pj4gK8KgwqDCoCBrZmlmb19pbigmcl9ldnQtPnByb3RvLT5lcXVldWUua2ZpZm8sICZl
aCwgc2l6ZW9mKGVoKSk7Cj4+Pj4+PiArwqDCoMKgIGtmaWZvX2luKCZyX2V2dC0+cHJvdG8tPmVx
dWV1ZS5rZmlmbywgYnVmLCBsZW4pOwo+Pj4+Pj4gK8KgwqDCoCBxdWV1ZV93b3JrKHJfZXZ0LT5w
cm90by0+ZXF1ZXVlLndxLAo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgICZyX2V2dC0+cHJv
dG8tPmVxdWV1ZS5ub3RpZnlfd29yayk7Cj4+Pj4+Cj4+Pj4+IElzIGl0IHNhZmUgdG8gaWdub3Jl
IHRoZSByZXR1cm4gdmFsdWUgZnJvbSB0aGUgcXVldWVfd29yayBoZXJlPwo+Pj4+Pgo+Pj4+Cltz
bmlwXQoKPj4gT24gdGhlIG90aGVyIHNpZGUgY29uc2lkZXJpbmcgdGhlIGltcGFjdCBvZiBzdWNo
IHNjZW5hcmlvLCBJIGNhbiBpbWFnaW5lIHRoYXQKPj4gaXQncyBub3Qgc2ltcGx5IHRoYXQgd2Ug
Y291bGQgb25seSBoYXZlIGEgZGVsYXllZCBkZWxpdmVyeSwgYnV0IHdlIG11c3QgY29uc2lkZXIK
Pj4gdGhhdCBpZiB0aGUgZGVsYXllZCBldmVudCBpcyBlZmZlY3RpdmVseSB0aGUgbGFzdCBvbmUg
ZXZlciBpdCB3b3VsZCByZW1haW4KPj4gdW5kZWxpdmVyZWQgZm9yZXZlcjsgdGhpcyBpcyBwYXJ0
aWN1bGFybHkgd29ycnlpbmcgaW4gYSBzY2VuYXJpbyBpbiB3aGljaCBzdWNoCj4+IGxhc3QgZXZl
bnQgaXMgcGFydGljdWxhcmx5IGltcG9ydGFudDogaW1hZ2luZSBhIHN5c3RlbSBzaHV0ZG93biB3
aGVyZSBhIGxhc3QKPj4gc3lzdGVtLXBvd2VyLW9mZiByZW1haW5zIHVuZGVsaXZlcmVkLgo+IAo+
IEFncmVlLCBhbm90aGVyIGV4YW1wbGUgY291bGQgYmUgYSB0aGVybWFsIG5vdGlmaWNhdGlvbiBm
b3Igc29tZSBjcml0aWNhbAo+IHRyaXAgcG9pbnQuCj4gCj4+Cj4+IEFzIGEgY29uc2VxdWVuY2Ug
SSB0aGluayB0aGlzIHJhcmUgcmFjeSBjb25kaXRpb24gc2hvdWxkIGJlIGFkZHJlc3NlZCBzb21l
aG93Lgo+Pgo+PiBMb29raW5nIGF0IHRoaXMgc2NlbmFyaW8sIGl0IHNlZW1zIHRoZSBjbGFzc2lj
IHNpdHVhdGlvbiBpbiB3aGljaCB5b3Ugd2FudCB0bwo+PiB1c2Ugc29tZSBzb3J0IG9mIGNvbXBs
ZXRpb24gdG8gYXZvaWQgbWlzc2luZyBvdXQgb24gZXZlbnRzIGRlbGl2ZXJ5LCBCVVQgaW4gb3Vy
Cj4+IHVzZWNhc2U6Cj4+Cj4+IC0gcGxhY2luZyB0aGUgd29ya2VycyBsb2FuZWQgZnJvbSBjbXdx
IGludG8gYW4gdW5ib3VuZGVkIHdhaXRfZm9yX2NvbXBsZXRpb24oKQo+PiDCoMKgIG9uY2UgdGhl
IHF1ZXVlIGlzIGVtcHR5IHNlZW1zIG5vdCB0aGUgYmVzdCB0byB1c2UgcmVzb3VyY2VzIChhbmQg
cHJvYmFibHkKPj4gwqDCoCBmcm93bmVkIHVwb24pLi4uLnVzaW5nIGEgZmV3IGRlZGljYXRlZCBr
ZXJuZWwgdGhyZWFkcyB0byBzaW1wbHkgbGV0IHRoZW0gaWRsZQo+PiDCoMKgIHdhaXRpbmcgbW9z
dCBvZiB0aGUgdGltZSBzZWVtcyBlcXVhbGx5IGZyb3duZWQgdXBvbiAoSSBjb3VsZCBiZSB3cm9u
Zy4uLikpCj4+IC0gdGhlIG5lZWRlZCBjb21wbGV0ZSgpIGluIHRoZSBJU1Igd291bGQgaW50cm9k
dWNlIGEgc3BpbmxvY2tfaXJxc2F2ZSBpbnRvIHRoZQo+PiDCoMKgIGludGVycnVwdCBwYXRoICh0
aGVyZSdzIGFscmVhZHkgb25lIGluc2lkZSBxdWV1ZV93b3JrIGluIGZhY3QpIHNvIGl0IGlzIG5v
dAo+PiDCoMKgIGRlc2lyYWJsZSwgYXQgbGVhc3Qgbm90IGlmIHVzZWQgb24gYSByZWd1bGFyIGJh
c2UgKGZvciBlYWNoIGV2ZW50IG5vdGlmaWVkKQo+Pgo+PiBTbyBJIHdhcyB0aGlua2luZyB0byB0
cnkgdG8gcmVkdWNlIHNlbnNpYmx5IHRoZSBhYm92ZSByYWNlIHdpbmRvdywgbW9yZQo+PiB0aGFu
IGVsaW1pbmF0ZSBpdCBjb21wbGV0ZWx5LCBieSBhZGRpbmcgYW4gZWFybHkgZmxhZyB0byBiZSBj
aGVja2VkIHVuZGVyCj4+IHNwZWNpZmljIGNvbmRpdGlvbnMgaW4gb3JkZXIgdG8gcmV0cnkgdGhl
IHF1ZXVlX3dvcmsgYSBmZXcgdGltZXMgd2hlbiB0aGUgcmFjZQo+PiBpcyBoaXQsIHNvbWV0aGlu
ZyBsaWtlOgo+Pgo+PiBJU1IgKGNvcmUgTinCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIFdRIChjb3Jl
IE4rMSkKPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgYXRvbWljX3NldCgmZXhpdGluZywgMCk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgZG8gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgwqAgLi4uCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgIGlmIChxdWV1
ZV9pc19lbXB0eSnCoMKgwqDCoMKgwqDCoCAtIFdPUktfUEVORElOR8KgwqDCoMKgwqDCoMKgIDAg
ZXZlbnRzIHF1ZXVlZAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICvCoMKgwqDCoMKgwqDCoMKg
wqAgYXRvbWljX3NldCgmZXhpdGluZywgMSnCoMKgwqAgLSBXT1JLX1BFTkRJTkfCoMKgwqDCoMKg
wqDCoCAwIGV2ZW50cyBxdWV1ZWQKPj4gc3RhdGljIGludCBjbnQ9M8KgwqDCoCB8wqDCoMKgwqDC
oMKgwqDCoMKgIC0tPiBicmVha291dCBvZiB3aGlsZcKgwqDCoCAtIFdPUktfUEVORElOR8KgwqDC
oMKgwqDCoMKgIDAgZXZlbnRzIHF1ZXVlZAo+PiBrZmlmb19pbigpwqDCoMKgwqDCoMKgwqAgfMKg
wqDCoCAuLi4uCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCB9IHdoaWxlIChzY21pX3Byb2Nl
c3NfZXZlbnRfcGF5bG9hZCk7Cj4+IGtmaWZvX2luKCnCoMKgwqDCoMKgwqDCoCB8Cj4+IGV4aXRp
bmcgPSBhdG9taWNfcmVhZCgpwqDCoMKgIHzCoMKgwqDCoCAuLi5jbXdxIGJhY2tpbmcgb3V0wqDC
oMKgwqDCoMKgwqAgLSBXT1JLX1BFTkRJTkfCoMKgwqDCoMKgwqDCoCAxIGV2ZW50cyBxdWV1ZWQK
Pj4gZG8ge8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgIC4uLmNtd3EgYmFja2luZyBv
dXTCoMKgwqDCoMKgwqDCoCAtIFdPUktfUEVORElOR8KgwqDCoMKgwqDCoMKgIDEgZXZlbnRzIHF1
ZXVlZAo+PiDCoMKgwqDCoCByZXQgPSBxdWV1ZV93b3JrKCnCoMKgwqDCoCB8wqDCoMKgwqAgLi4u
Y213cSBiYWNraW5nIG91dMKgwqDCoMKgwqDCoMKgIC0gV09SS19QRU5ESU5HwqDCoMKgwqDCoMKg
wqAgMSBldmVudHMgcXVldWVkCj4+IMKgwqDCoMKgIGlmIChyZXQgfHwgIWV4aXRpbmcpfMKgwqDC
oMKgIC4uLmNtd3EgYmFja2luZyBvdXTCoMKgwqDCoMKgwqDCoCAtIFdPUktfUEVORElOR8KgwqDC
oMKgwqDCoMKgIDEgZXZlbnRzIHF1ZXVlZAo+PiDCoMKgwqDCoGJyZWFrO8KgwqDCoMKgwqDCoMKg
IHzCoMKgwqDCoCAuLi5jbXdxIGJhY2tpbmcgb3V0wqDCoMKgwqDCoMKgwqAgLSBXT1JLX1BFTkRJ
TkfCoMKgwqDCoMKgwqDCoCAxIGV2ZW50cyBxdWV1ZWQKPj4gwqDCoMKgwqAgbWRlbGF5KDUpO8Kg
wqDCoMKgwqDCoMKgIHzCoMKgwqDCoCAuLi5jbXdxIGJhY2tpbmcgb3V0wqDCoMKgwqDCoMKgwqAg
LSBXT1JLX1BFTkRJTkfCoMKgwqDCoMKgwqDCoCAxIGV2ZW50cyBxdWV1ZWQKPj4gwqDCoMKgwqAg
ZXhpdGluZyA9wqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgIC4uLmNtd3EgYmFja2luZyBvdXTCoMKg
wqDCoMKgwqDCoCAtIFdPUktfUEVORElOR8KgwqDCoMKgwqDCoMKgIDEgZXZlbnRzIHF1ZXVlZAo+
PiDCoMKgwqDCoMKgwqAgYXRvbWljX3JlYWQ7wqDCoMKgIHzCoMKgwqDCoCAuLi5jbXdxIGJhY2tp
bmcgb3V0wqDCoMKgwqDCoMKgwqAgLSBXT1JLX1BFTkRJTkfCoMKgwqDCoMKgwqDCoCAxIGV2ZW50
cyBxdWV1ZWQKPj4gfSB3aGlsZSAoLS1jbnQpO8KgwqDCoCB8wqDCoMKgwqAgLi4uY213cSBiYWNr
aW5nIG91dMKgwqDCoMKgwqDCoMKgIC0gV09SS19QRU5ESU5HwqDCoMKgwqDCoMKgwqAgMSBldmVu
dHMgcXVldWVkCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAtLS0tIFdPUktFUiBFWElUwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gIVdPUktfUEVORElOR8KgwqDCoMKgwqDCoMKgIDAgZXZl
bnRzIHF1ZXVlZAo+Pgo+PiBsaWtlIGRvd24gYmVsb3cgYmV0d2VlbiB0aGUgc2Npc3NvcnMuCj4+
Cj4+IE5vdCB0ZXN0ZWQgb3IgdHJpZWQuLi4uSSBjb3VsZCBiZSBtaXNzaW5nIHNvbWV0aGluZy4u
LmFuZCB0aGUgbWRlbGF5IGlzIGhvcnJpYmxlIChhbmQgbm90Cj4+IHRoZSBjbGVhbmVzdCB0aGlu
ZyB5b3UndmUgZXZlciBzZWVuIHByb2JhYmx5IDpEKS4uLkknbGwgaGF2ZSBhIGNoYXQgd2l0aCBT
dWRlZXAgdG9vLgo+IAo+IEluZGVlZCBpdCBsb29rcyBtb3JlIGNvbXBsaWNhdGVkLiBJZiB5b3Ug
bGlrZSBJIGNhbiBqb2luIHlvdXIgb2ZmbGluZQo+IGRpc2N1c3Mgd2hlbiBTdWRlZXAgaXMgYmFj
ay4KPiAKWWVzIHRoaXMgaXMgYXMgb2Ygbm93IG15IG1haW4gcmVtYWluaW5nIGlzc3VlIHRvIGFk
ZHJlc3MgZm9yIHY2LgpJJ2xsIHdhaXQgZm9yIFN1ZGVlcCBnZW5lcmFsIHJldmlldy9mZWVkYmFj
ayBhbmQgcmFpc2UgdGhpcyBwb2ludC4KClJlZ2FyZHMKCkNyaXN0aWFuCgo+IFJlZ2FyZHMsCj4g
THVrYXN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

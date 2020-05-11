Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263431CDD18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jHfwgDCGzWBCbdoGkIxfZIeQaVzHlliHHC6VQ/q1LsQ=; b=WMiitVtGzKZn3J+Z85XeIJgQV
	ed8R72N81y5EpqfXn+Suipa0Sl86k4AA54QonRYWbQrES5EpW97lszMVogjG8+ZOGqfjun5XegHWM
	+jqTKN2p4niwaUcwUS6VEXj7nqvokmqBo68V5gFMMbrDZm8e8cS+7F3O7Hi3H7Jy0IDvnMryfhtQR
	PTqjQh29Wwmfno8pkDTi8R2y8xRf34e71CR+mBS9Uv9UinqKhEZkzsELEXUmE/dDdtOPJvyfjlAys
	ztapkXCwN+O1wtb7UZHPS84fud2HkxwtZPZ+vMPZbKlmBUj2oNl+C7Pdnt9ilRgCs1p9o5O3YiRFZ
	jBPoYEZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9Nh-0000VJ-6E; Mon, 11 May 2020 14:26:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9NV-0000TC-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:25:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D6FCD6E;
 Mon, 11 May 2020 07:25:50 -0700 (PDT)
Received: from [10.37.12.116] (unknown [10.37.12.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3AF93F68F;
 Mon, 11 May 2020 07:25:40 -0700 (PDT)
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: saiprakash.ranjan@codeaurora.org, mike.leach@linaro.org
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
 <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
 <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
 <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
Date: Mon, 11 May 2020 15:30:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072557_808795_5B4585EE 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, swboyd@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMTEvMjAyMCAwMzoxNiBQTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIE1p
a2UsCj4gCj4gT24gMjAyMC0wNS0xMSAxNjo0NCwgTWlrZSBMZWFjaCB3cm90ZToKPiBbLi4uXQo+
IAo+Pj4KPj4+IEkgY2hlY2tlZCB3aXRoIHRoZSBkZWJ1ZyB0ZWFtIGFuZCB0aGVyZSBpcyBhIGxp
bWl0YXRpb24gd2l0aAo+Pj4gdGhlIHJlcGxpY2F0b3Ioc3dhb19yZXBsaWNhdG9yKSBpbiB0aGUg
QU9TUyBncm91cCB3aGVyZSBpdAo+Pj4gbG9zZXMgdGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRl
eHQgd2hlbiB0aGUgY2xvY2sgaXMgZGlzYWJsZWQuCj4+PiBUaGlzIGlzIG5vdCBqdXN0IGluIFND
NzE4MCBTb0MgYnV0IGFsc28gcmVwb3J0ZWQgb24gc29tZSBsYXRlc3QKPj4+IHVwY29taW5nIFFD
T00gU29DcyBhcyB3ZWxsIGFuZCB3aWxsIG5lZWQgdG8gYmUgdGFrZW4gY2FyZSBpbgo+Pj4gb3Jk
ZXIgdG8gZW5hYmxlIGNvcmVzaWdodCBvbiB0aGVzZSBjaGlwc2V0cy4KPj4+Cj4+PiBIZXJlJ3Mg
d2hhdCdzIGhhcHBlbmluZyAtwqAgQWZ0ZXIgdGhlIHJlcGxpY2F0b3IgaXMgaW5pdGlhbGl6ZWQs
Cj4+PiB0aGUgY2xvY2sgaXMgZGlzYWJsZWQgaW4gYW1iYV9wbV9ydW50aW1lX3N1c3BlbmQoKSBh
cyBhIHBhcnQgb2YKPj4+IHBtIHJ1bnRpbWUgd29ya3F1ZXVlIHdpdGggdGhlIGFzc3VtcHRpb24g
dGhhdCB0aGVyZSB3aWxsIGJlIG5vCj4+PiBsb3NzIG9mIGNvbnRleHQgYWZ0ZXIgdGhlIHJlcGxp
Y2F0b3IgaXMgaW5pdGlhbGl6ZWQuIEJ1dCBpdCBkb2Vzbid0Cj4+PiBob2xkIGdvb2Qgd2l0aCB0
aGUgcmVwbGljYXRvcnMgd2l0aCB0aGVzZSB1bmZvcnR1bmF0ZSBsaW1pdGF0aW9uCj4+PiBhbmQg
dGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRleHQgaXMgbG9zdC4KPj4+Cj4+PiBbwqDCoMKgIDUu
ODg5NDA2XSBhbWJhX3BtX3J1bnRpbWVfc3VzcGVuZCBkZXZuYW1lPTZiMDYwMDAucmVwbGljYXRv
ciByZXQ9MAo+Pj4gW8KgwqDCoCA1LjkxNDUxNl0gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dv
cmsKPj4+IFvCoMKgwqAgNS45MTg2NDhdIENhbGwgdHJhY2U6Cj4+PiBbwqDCoMKgIDUuOTIxMTg1
XcKgIGR1bXBfYmFja3RyYWNlKzB4MC8weDFkMAo+Pj4gW8KgwqDCoCA1LjkyNDk1OF3CoCBzaG93
X3N0YWNrKzB4MmMvMHgzOAo+Pj4gW8KgwqDCoCA1LjkyODM4Ml3CoCBkdW1wX3N0YWNrKzB4YzAv
MHgxMDQKPj4+IFvCoMKgwqAgNS45MzE4OTZdwqAgYW1iYV9wbV9ydW50aW1lX3N1c3BlbmQrMHhk
OC8weGUwCj4+PiBbwqDCoMKgIDUuOTM2NDY5XcKgIF9fcnBtX2NhbGxiYWNrKzB4ZTAvMHgxNDAK
Pj4+IFvCoMKgwqAgNS45NDAzMzJdwqAgcnBtX2NhbGxiYWNrKzB4MzgvMHg5OAo+Pj4gW8KgwqDC
oCA1Ljk0MzkyNl3CoCBycG1fc3VzcGVuZCsweGVjLzB4NjE4Cj4+PiBbwqDCoMKgIDUuOTQ3NTIy
XcKgIHJwbV9pZGxlKzB4NWMvMHgzZjgKPj4+IFvCoMKgwqAgNS45NTA4NTFdwqAgcG1fcnVudGlt
ZV93b3JrKzB4YTgvMHhjMAo+Pj4gW8KgwqDCoCA1Ljk1NDcxOF3CoCBwcm9jZXNzX29uZV93b3Jr
KzB4MWY4LzB4NGMwCj4+PiBbwqDCoMKgIDUuOTU4ODQ4XcKgIHdvcmtlcl90aHJlYWQrMHg1MC8w
eDQ2OAo+Pj4gW8KgwqDCoCA1Ljk2MjYyM13CoCBrdGhyZWFkKzB4MTJjLzB4MTU4Cj4+PiBbwqDC
oMKgIDUuOTY1OTU3XcKgIHJldF9mcm9tX2ZvcmsrMHgxMC8weDFjCj4+Pgo+Pj4gVGhpcyBpcyBh
IHBsYXRmb3JtL1NvQyBzcGVjaWZpYyByZXBsaWNhdG9yIGlzc3VlLCBzbyB3ZSBjYW4gZWl0aGVy
Cj4+PiBpbnRyb2R1Y2Ugc29tZSBEVCBwcm9wZXJ0eSBmb3IgcmVwbGljYXRvcnMgdG8gaWRlbnRp
Znkgd2hpY2ggcmVwbGljYXRvcgo+Pj4gaGFzIHRoaXMgbGltaXRhdGlvbiwgY2hlY2sgaW4gcmVw
bGljYXRvcl9lbmFibGUoKSBhbmQgcmVzZXQgdGhlCj4+PiByZWdpc3RlcnMKPj4+IG9yIGhhdmUg
c29tZXRoaW5nIGxpa2UgYmVsb3cgZGlmZiB0byBjaGVjayB0aGUgaWRmaWx0ZXIgcmVnaXN0ZXJz
IGluCj4+PiByZXBsaWNhdG9yX2VuYWJsZSgpIGFuZCB0aGVuIHJlc2V0IHdpdGggY2xlYXIgY29t
bWVudCBzcGVjaWZ5aW5nIGl04oCZcwo+Pj4gdGhlCj4+PiBoYXJkd2FyZSBsaW1pdGF0aW9uIG9u
IHNvbWUgUUNPTSBTb0NzLiBQbGVhc2UgbGV0IG1lIGtub3cgeW91ciB0aG91Z2h0cwo+Pj4gb24K
Pj4+IHRoaXM/Cj4+Pgo+IAo+IFNvcnJ5IGZvciBodXJyeWluZyB1cCBhbmQgc2VuZGluZyB0aGUg
cGF0Y2ggLSAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTIzOTky
My8uCj4gSSB3aWxsIHNlbmQgdjIgYmFzZWQgb24gZnVydGhlciBmZWVkYmFja3MgaGVyZSBvciB0
aGVyZS4KPiAKPj4KPj4gMSkgZG9lcyB0aGlzIHJlcGxpY2F0b3IgcGFydCBoYXZlIGEgdW5pcXVl
IElEIHRoYXQgZGlmZmVycyBmcm9tIHRoZQo+PiBzdGFuZGFyZCBBUk0gZGVzaWduZWQgcmVwbGlj
YXRvcnM/Cj4+IElmIHNvIHBlcmhhcHMgbGluayB0aGUgbW9kaWZpY2F0aW9uIGludG8gdGhpcy4g
KGV2ZW4gaWYgdGhlIHBhcnQgbm8gaW4KPj4gUElEUjAvMSBpcyB0aGUgc2FtZSB0aGUgVUNJIHNo
b3VsZCBiZSBkaWZmZXJlbnQgZm9yIGEgZGlmZmVyZW50Cj4+IGltcGxlbWVudGF0aW9uKQo+Pgo+
IAo+IHBpZD0weDJiYjkwOSBmb3IgYm90aCByZXBsaWNhdG9ycy4gU28gcGFydCBudW1iZXIgaXMg
c2FtZS4KPiBVQ0kgd2lsbCBiZSBkaWZmZXJlbnQgZm9yIGRpZmZlcmVudCBpbXBsZW1lbnRhdGlv
bihRQ09NIG1heWJlIGRpZmZlcmVudCAKPiBmcm9tIEFSTSksCj4gYnV0IHdpbGwgaXQgYmUgZGlm
ZmVyZW50IGZvciBkaWZmZXJlbnQgcmVwbGljYXRvcnMgdW5kZXIgdGhlIHNhbWUgCj4gaW1wbChp
LmUuLCBvbiBRQ09NKS4KCk1heSBiZSB1c2UgUElEUjQuREVTXzIgdG8gbWF0Y2ggdGhlIEltcGxl
bWVudG9yIGFuZCBhcHBseSB0aGUgd29yawphcm91bmQgZm9yIGFsbCBRQ09NIHJlcGxpY2F0b3Jz
ID8KClRvIG1lIHRoYXQgc291bmRzIHRoZSBiZXN0IG9wdGlvbi4KClN1enVraQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869F01A0AF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EbPb9cLZYVnsO3YAkoCLbXkBVeDXSddfCngKsCpabKI=; b=LBr4bGMSexcjWhhRl6rdhEjLm
	RnYosctUA8qbDSU8aC0IvckK0Tu/0FeeGSwVIxzFNe1ln8YDfjeBw8m3XWzvANsn7dxT3QAFbv5z7
	dL62dfYpda4wO9ZWbyZFv+gLrxjyyhs017sKvJmDdopHKzaUaiLVTSA86AAmN7+nAhhekeZK0a2pc
	xJogZviRG+ztkrX0SY2MJpSQlzVU+sUeJgeUgvg17XsnjGlV0YKUkPO4LQyik+iV4QRKvhdf41UHJ
	HevZdNGZyaJDBkxxczg3k/OJU2E0jUPCZ2hglqL4spJUEKnIsAEUKiI+CaORHHdFdIy9+z7Bspztq
	eXu0P4y6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlL8-00024k-4i; Tue, 07 Apr 2020 10:20:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlKq-0001wu-1A
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:20:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC2CC1FB;
 Tue,  7 Apr 2020 03:19:56 -0700 (PDT)
Received: from [10.37.12.154] (unknown [10.37.12.154])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10FA63F73D;
 Tue,  7 Apr 2020 03:19:54 -0700 (PDT)
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
To: saiprakash.ranjan@codeaurora.org, mike.leach@linaro.org
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
Date: Tue, 7 Apr 2020 11:24:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_032000_117045_AEFCB5F2 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMDcvMjAyMCAxMDo0NiBBTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIE1p
a2UsCj4gCj4gVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rLgo+IAo+IE9uIDIwMjAtMDQtMDYgMTY6
MjUsIE1pa2UgTGVhY2ggd3JvdGU6Cj4+IEhpLAo+Pgo+PiBUaGUgcHJvZ3JhbW1hYmxlIHJlcGxp
Y2F0b3IgaGFyZHdhcmUgYnkgZGVzaWduIGVuYWJsZXMgdHJhY2UgdGhyb3VnaAo+PiBib3RoIHBv
cnRzIG9uIHJlc2V0LiAoc2VlIDEsIHNlY3Rpb24gNC40LCA5LjExKcKgIFRoZSByZXBsaWNhdG9y
IGRyaXZlcgo+PiBvdmVycmlkZXMgdGhpcyBmdW5jdGlvbmFsaXR5IHRvIGRpc2FibGUgb3V0cHV0
LCB1bnRpbCB0aGUgQ29yZXNpZ2h0Cj4+IGluZnJhc3RydWN0dXJlIGNob29zZXMgYSBwYXRoIGZy
b20gc291cmNlIHRvIHNpbmsuCj4+IE5vdyBnaXZlbiB0aGF0IHRoZSBoYXJkd2FyZSBkZXNpZ24g
aXMgc3VjaCB0aGF0IHdlIG11c3QgYmUgYWJsZSB0bwo+PiBhbGxvdyB0cmFjZSB0byBiZSBzZW50
IHRvIGJvdGggcG9ydHMsIGEgZ2VuZXJpYyBwYXRjaCB0byBwcmV2ZW50IHRoaXMKPj4gZG9lcyBu
b3Qgc2VlbSBhcHByb3ByaWF0ZSBoZXJlLgo+Pgo+PiBJIHRoaW5rIHRoaXMgbmVlZHMgZnVydGhl
ciBpbnZlc3RpZ2F0aW9uIC0gdG8gZGV0ZXJtaW5lIHdoeSB0aGlzCj4+IGFwcGVhcnMgdG8gYmUg
ZmFpbGluZyBpbiB0aGlzIHBhcnRpY3VsYXIgaW5zdGFuY2UuCj4+Cj4gCj4gWWVzLCB0aGlzIHBy
b2JhYmx5IG5lZWRzIGZ1cnRoZXIgaW52ZXN0aWdhdGlvbiwgYnV0IENQVSBoYXJkbG9jayBzdGFj
awo+IHRyYWNlIGRvZXNudCBoZWxwIG11Y2guIEkgY291bGQgYWx3YXlzIHRyaWdnZXIgdGhpcyBo
YXJkIGxvY2t1cCB3aXRob3V0Cj4gdGhpcyBwYXRjaCBvbiBTQzcxODAgU29DIGFuZCB0aGlzIGlz
IG9ubHkgc2VlbiB3aGVuIEVUUiBpcyB1c2VkIGFzIHRoZSAKPiBzaW5rLgo+IAo+IFRoZSBvbmx5
IGRpZmZlcmVuY2UgSSBjb3VsZCBzZWUgYmV0d2VlbiBub24gd29ya2luZyBjYXNlIChvbiBTQzcx
ODAgWzFdKSAKPiBhbmQKPiB0aGUgd29ya2luZyBjYXNlIChvbiBTRE04NDUgWzJdKSBpcyB0aGUg
cGF0aCBmcm9tIHNvdXJjZSB0byBzaW5rLgoKCj4gCj4gU0M3MTgwIHNvdXJjZSB0byBzaW5rIHBh
dGgoTm90IHdvcmtpbmcpOgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiAKPiAgwqDCoMKgwqDCoCBldG0wX291dAo+ICDCoMKgwqDCoCB8Cj4gIMKgIGFwc3NfZnVu
bmVsX2luMAo+ICDCoMKgwqDCoMKgwqDCoMKgIHwKPiAgwqBhcHNzX21lcmdlX2Z1bm5lbF9pbgo+
ICDCoMKgwqDCoMKgwqDCoMKgIHwKPiAgwqDCoMKgwqAgZnVubmVsMV9pbjQKPiAgwqDCoMKgwqAg
fAo+ICDCoCBtZXJnZV9mdW5uZWxfaW4xCj4gIMKgwqDCoMKgIHwKPiAgwqDCoCBzd2FvX2Z1bm5l
bF9pbgo+ICDCoMKgwqDCoMKgwqDCoMKgIHwKPiAgwqDCoMKgwqDCoMKgIGV0Zl9pbgo+ICDCoMKg
wqDCoCB8Cj4gIMKgc3dhb19yZXBsaWNhdG9yX2luCj4gIMKgwqDCoMKgwqDCoMKgwqAgfAo+ICDC
oCByZXBsaWNhdG9yX2luCj4gIMKgwqDCoMKgIHwKPiAgwqDCoMKgwqDCoMKgIGV0cl9pbgoKClRo
ZXJlIHNlZW1zIHRvIGJlIHR3byByZXBsaWNhdG9ycyBiYWNrIHRvIGJhY2sgaGVyZS4gV2hhdCBp
cyBjb25uZWN0ZWQKdG8gdGhlIG90aGVyIG91dHB1dCBvZiBib3RoIG9mIHRoZW0gPyBBcmUgdGhl
cmUgYW55IFRQSVVzID8gV2hhdCBoYXBwZW5zCmlmIHlvdSBjaG9vc2UgYSBzaW5rIG9uIHRoZSBv
dGhlciBlbmQgb2YgInN3YW9fcmVwbGljYXRvciIgKEVUQiA/KQoKQWZ0ZXIgYm9vdCwgd2hhdCBk
byB0aGUgaWRmaWx0ZXIgcmVnaXN0ZXJzIHJlYWQgZm9yIGJvdGggdGhlIHJlcGxpY2F0b3JzID8K
CgpJIGJlbGlldmUgd2UgbmVlZCB0byBwcm9wZXJseSBhc3NpZ24gdGhlIFRSQUNFX0lEcyBmb3Ig
dHJhY2luZyBzZXNzaW9ucywKKHJhdGhlciB0aGFuIHN0YXRpYyBpZHMpIGluIGEgd2F5IHN1Y2gg
dGhhdCB3ZSBjb3VsZCBmaWx0ZXIgdGhlbSBhbmQgdXNlCnRoZSBtdWx0aXBsZSBzaW5rcyBpbiBw
YXJhbGxlbCBmb3Igc2VwYXJhdGUgdHJhY2Ugc2Vzc2lvbnMgYW5kIHRoaXMgaXMKbm90IHNpbXBs
ZSAoaW52b2x2ZXMga2VybmVsIGRyaXZlciBjaGFuZ2VzIGFuZCB0aGUgcGVyZiB0b29sIHRvIGJl
IGFibGUKdG8gZGVjb2RlIHRoZSB0cmFjZSBpZCBjaGFuZ2VzIHRvbykuCgoKU28gZm9yIHRoZSBt
b21lbnQsIHdlIG5lZWQgdG8gOgoKMSkgRGlzYWxsb3cgdHVybmluZyB0aGUgcmVwbGljYXRvciBP
Tiwgd2hlbiBpdCBpcyBhbHJlYWR5IHR1cm5lZCBPTgoyKSBEbyB3aGF0IHlvdXIgcGF0Y2ggZG9l
cy4gaS5lLCBkaXNhYmxlIHRoZSBvdGhlciBlbmQgd2hpbGUgb25lIGVuZAogICAgaXMgdHVybmVk
IG9uLgoKVGhvdWdodHMgPwoKS2luZCByZWdhcmRzClN1enVraQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

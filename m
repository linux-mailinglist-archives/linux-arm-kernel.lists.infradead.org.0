Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5971A360E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NS6XQMFhWwJY2ug5sU+3wWdRruMCuBVogDYuWaPVP0Y=; b=DSTTjcEWzr8EExXvE8wydquHL
	WT9M6hxzGT2h21vFRMxg7kHHn9nK8dgO6ollEN48HCRTHId9aX9kAvq/AydR3WeeJioV47GJgVFxF
	FwzdpeeoF1neQ4Pq0ykDXcdkkUTbrSFKBXsqLt7WOoxe8Eh6Qo/ACKcNKJtFnoml4uKzz5ayipMiy
	l0sgvLEOp29IxxQ9jguvfV3I7sf+gETs9CTS6V3gtO5ykdiPle9ons2mVUeNV6LvBI7GabQuYfAlm
	Cy6PbgzOj2p8LIXu0hj4UQ1z0vuq2I0YktX/nKEZUncVmmzdzaF3PsSSSGQdlMupOoMjdWzQkE+E4
	nBejbvpmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYJ6-0003gJ-W6; Thu, 09 Apr 2020 14:37:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYIx-0003fN-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:37:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 039EbA5j008107;
 Thu, 9 Apr 2020 09:37:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586443030;
 bh=t0Pz8343qyR0XZCGjZzKoEfLBwp8RY74fZEv6viiDRk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=wQflHXbmBySjer9/hT20YQkA86nduHAOQSxNmJ+JkcmfIybnRtPjd/+QLdn6sXnAh
 q3n9Sgybhy/GZJNlkTgoZXm/j8qRzyRSSJC25TycQOpENGyElgMxLxVKhz3kx7jSi+
 U9oXaQOZxwn2oS+o8pb9d4QW+B5hAjNHkE39Un1k=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 039EbANt016166
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Apr 2020 09:37:10 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 09:37:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 09:37:08 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 039Eb6BD069628;
 Thu, 9 Apr 2020 09:37:06 -0500
Subject: Re: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
To: "J, KEERTHY" <j-keerthy@ti.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>, <robh+dt@kernel.org>
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
 <0817f9ee-c72f-3e9f-00cf-e8ddaf608020@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <e7dd6470-5992-8d22-5d0c-7532a47a400c@ti.com>
Date: Thu, 9 Apr 2020 17:37:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0817f9ee-c72f-3e9f-00cf-e8ddaf608020@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_073719_658527_5612EBE1 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDQvMjAyMCAxNzowNywgSiwgS0VFUlRIWSB3cm90ZToKPiAKPiAKPiBPbiA0LzkvMjAy
MCA3OjE5IFBNLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4KPj4gSGkgS2VlcnRoeSwKPj4KPj4g
T24gMDcvMDQvMjAyMCAwNzo1MSwgS2VlcnRoeSB3cm90ZToKPj4+IEFkZCBWVE0gdGhlcm1hbCBz
dXBwb3J0LiBJbiB0aGUgVm9sdGFnZSBUaGVybWFsCj4+PiBNYW5hZ2VtZW50IE1vZHVsZShWVE0p
LCBLMyBBTTY1NCBzdXBwbGllcyBhIHZvbHRhZ2UKPj4+IHJlZmVyZW5jZSBhbmQgYSB0ZW1wZXJh
dHVyZSBzZW5zb3IgZmVhdHVyZSB0aGF0IGFyZSBnYXRoZXJlZCBpbiB0aGUgYmFuZAo+Pj4gZ2Fw
IHZvbHRhZ2UgYW5kIHRlbXBlcmF0dXJlIHNlbnNvciAoVkJHQVBUUykgbW9kdWxlLiBUaGUgYmFu
ZAo+Pj4gZ2FwIHByb3ZpZGVzIGN1cnJlbnQgYW5kIHZvbHRhZ2UgcmVmZXJlbmNlIGZvciBpdHMg
aW50ZXJuYWwKPj4+IGNpcmN1aXRzIGFuZCBvdGhlciBhbmFsb2cgSVAgYmxvY2tzLiBUaGUgYW5h
bG9nLXRvLWRpZ2l0YWwKPj4+IGNvbnZlcnRlciAoQURDKSBwcm9kdWNlcyBhbiBvdXRwdXQgdmFs
dWUgdGhhdCBpcyBwcm9wb3J0aW9uYWwKPj4+IHRvIHRoZSBzaWxpY29uIHRlbXBlcmF0dXJlLgo+
Pj4KPj4+IEFkZCBzdXBwb3J0IGZvciBiYW5kZ2FwIHNlbnNvcnMuIEN1cnJlbnRseSByZWFkaW5n
IHRlbXBlcmF0dXJlcwo+Pj4gaXMgc3VwcG9ydGVkLgo+Pgo+PiBIb3cgZG8geW91IHdhbnQgdG8g
cHJvY2VlZD8gU2hhbGwgSSB0YWtlIHBhdGNoZXMgMSAmIDIgPwo+IAo+ICtUZXJvCj4gCj4gSGkg
VGVybywKPiAKPiBDYW4geW91IHB1bGwgMyAmIDQ/IE9yIERhbmllbCBjYW4gdGFrZSBhbGwgND8K
CkxldCBtZSBwdWxsIHRoZSBEVCBwYXRjaGVzLCB0aGF0IHdheSB3ZSBhdm9pZCBhbnkgY29uZmxp
Y3RzIGluIHRoZSAKYXJtNjQvZHRzIHRyZWUuIFRoZXJlIGhhcyBiZWVuIHF1aXRlIGEgYml0IG9m
IHRyYWZmaWMgb24gdGhhdCBmcm9udCAKbGF0ZWx5IGFuZCB3ZSBkaWQgbWVzcyB1cCBzb21ldGhp
bmcgd2l0aCB0aGUgY3VycmVudCBtZXJnZSB3aW5kb3cgYWxyZWFkeS4KCkkgYmVsaWV2ZSB5b3Ug
YXJlIHBpY2tpbmcgdGhlIGRyaXZlciBzaWRlIGNoYW5nZXMgdG8gNS44PwoKLVRlcm8KCj4gCj4g
LSBLZWVydGh5Cj4gCj4+Cj4+Cj4+PiBDaGFuZ2VzIGluIHY2Ogo+Pj4KPj4+IMKgwqAgKiBSZW1v
dmVkIGJ1bmNoIG9mIHVudXNlZCAjZGVmaW5lcyBhbmQgY291cGxlIG9mIHJlZHVuZGFudCB2YXJp
YWJsZXMuCj4+PiDCoMKgICogUmVvcmRlcmVkIHBhdGNoZXMgYSBiaXQuCj4+PiDCoMKgICogTWlu
b3IgcmVvcmRlcmluZyBpbiBkdCBiaW5kaW5nIHBhdGNoLgo+Pj4KPj4+IENoYW5nZXMgaW4gdjU6
Cj4+Pgo+Pj4gwqDCoCAqIFJlbW92ZWQgdGhlcm1hbCB3b3JrIGZ1bmN0aW9uIHdoaWNoIHdhcyB1
bnVzZWQuCj4+PiDCoMKgICogUmVtb3ZlZCB1bnVzZWQgcHJldmVfdGVubXAgYW5kIGEgY291cGxl
IG1vcmUgc3RydWN0IHZhcmlhYmxlcy4KPj4+IMKgwqAgKiBSZW1vdmVkIGNvdXBsZSBvZiByZWR1
bmRhbnQgaGVhZGVyIGZ1bmN0aW9uIGluY2x1ZGUuCj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2NDoKPj4+
Cj4+PiDCoMKgICogRml4ZWQgY29tbWVudHMgZnJvbSBEYW5pZWwgdG8gcmVtb3ZlIHRyZW5kIGZ1
bmN0aW9uLgo+Pj4gwqDCoCAqIE1vc3RseSBjbGVhbmVkIHVwIGFsbCB0aGUgdW51c2VkIHZhcmlh
Ymxlcy4KPj4+IMKgwqAgKiBEcml2ZXIgZnJvbSBib29sIHRvIHRyaXN0YXRlLgo+Pj4KPj4+IENo
YW5nZXMgaW4gdjM6Cj4+Pgo+Pj4gwqDCoCAqIEZpeGVkIGVycm9ycyBzZWVuIHdpdGg6Cj4+PiDC
oMKgwqDCoCBkdF9iaW5kaW5nX2NoZWNrIAo+Pj4gRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3RpLGFtNjU0LXRoZXJtYWwueWFtbCAKPj4+
Cj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+Cj4+PiDCoMKgICogRml4ZWQgeWFtbCBlcnJvcnMK
Pj4+IMKgwqAgKiByZW5hbWVkIGFtNjU0LWluZHVzdHJpYWwtdGhlcm1hbC5kdHNpIHRvIAo+Pj4g
azMtYW02NTQtaW5kdXN0cmlhbC10aGVybWFsLmR0c2kKPj4+IMKgwqDCoMKgIHRvIGZvbGxvdyB0
aGUgY29udmVudGlvbiBmb3IgazMgZmFtaWx5Lgo+Pj4KPj4+IEtlZXJ0aHkgKDQpOgo+Pj4gwqDC
oCBkdC1iaW5kaW5nczogdGhlcm1hbDogazM6IEFkZCBWVE0gYmluZGluZ3MgZG9jdW1lbnRhdGlv
bgo+Pj4gwqDCoCB0aGVybWFsOiBrMzogQWRkIHN1cHBvcnQgZm9yIGJhbmRnYXAgc2Vuc29ycwo+
Pj4gwqDCoCBhcm02NDogZHRzOiB0aTogYW02NS13YWtldXA6IEFkZCBWVE0gbm9kZQo+Pj4gwqDC
oCBhcm02NDogZHRzOiB0aTogYW02NTQ6IEFkZCB0aGVybWFsIHpvbmVzCj4+Pgo+Pj4gwqAgLi4u
L2JpbmRpbmdzL3RoZXJtYWwvdGksYW02NTQtdGhlcm1hbC55YW1swqDCoMKgIHzCoCA1NiArKysr
Cj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtd2FrZXVwLmR0c2nCoMKgwqAg
fMKgIDExICsKPj4+IMKgIC4uLi9kdHMvdGkvazMtYW02NTQtaW5kdXN0cmlhbC10aGVybWFsLmR0
c2nCoMKgIHzCoCA0NSArKysKPj4+IMKgIGRyaXZlcnMvdGhlcm1hbC9LY29uZmlnwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEwICsKPj4+IMKgIGRyaXZl
cnMvdGhlcm1hbC9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoCAxICsKPj4+IMKgIGRyaXZlcnMvdGhlcm1hbC9rM19iYW5kZ2FwLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjY0ICsrKysrKysrKysrKysrKysrKwo+Pj4g
wqAgNiBmaWxlcyBjaGFuZ2VkLCAzODcgaW5zZXJ0aW9ucygrKQo+Pj4gwqAgY3JlYXRlIG1vZGUg
MTAwNjQ0IAo+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvdGks
YW02NTQtdGhlcm1hbC55YW1sCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+PiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3RpL2szLWFtNjU0LWluZHVzdHJpYWwtdGhlcm1hbC5kdHNpCj4+PiDCoCBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy90aGVybWFsL2szX2JhbmRnYXAuYwo+Pj4KPj4KPj4K
Ci0tClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgw
IEhlbHNpbmtpLiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0Rv
bWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=

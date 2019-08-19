Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8699204B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yHDKPGZHoO/FLSazz1NR1eKQp0r2PZ/BPDT9yrEgzgk=; b=HODZ+7/J5ViflSFA98o7Z+Mxx
	TGRXFkoqvV+zvTtYDy3+U0B/J2ZoIE+yf/wzNnRSdQo5C9TYzIt2qSER2i5a8Kc2fjW9IBbHy+2EV
	R2YnzjcH9+x5kwb/L9vKLQFHD66GJbZa1pSQyPJvjaNI/LizKWZhG2sjlaDun4kPoNBACBjy30XIx
	GE3HjO+yBgoUNYKODojZ0JhLdbiLSSfgq1pIAAdmJKhfQq0J4fVlmE/LuvOsu9dD77iaGGzhmPrfK
	DPPL9Tlswl2Vhkzh7QPk3X1u4my6eK831dJq7rEhB1sP9Y6eprwCw/Mjiu7wxDsMfu7Cq7cguuwD0
	w/eNOqOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdyM-0001Ic-S0; Mon, 19 Aug 2019 09:29:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdxt-0001I0-0E
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:28:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7J9ST5v094267;
 Mon, 19 Aug 2019 04:28:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566206909;
 bh=HGtxFvyXr5k21k3Vw4hs+J3eZoXEfv8iPVT8Ir7Om78=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y+52lKgTCMut3kxNLKxT6noSbLG2YBlV2PI1gz+1x9wffhvj8p8flSv2TSf4KmKI9
 4FInvdAAKRZ/8pbWPhodsjKzXqkLDovwYDg2KrD9rmPmfYA8AS5WJpdSTGYe1iQ60G
 Mo4aSO/v3dJD/0bECQuPqjf0/IFxZx/SIwnBjf/A=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7J9STpQ077641
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 04:28:29 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 04:28:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 04:28:28 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7J9SQGj017750;
 Mon, 19 Aug 2019 04:28:26 -0500
Subject: Re: [PATCH 1/8] dt-bindings: omap: add new binding for PRM instances
To: Keerthy <j-keerthy@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-2-git-send-email-t-kristo@ti.com>
 <6bf4194b-23c0-2de0-3f9c-e99195336dc7@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <aa5538ae-76b4-942b-dc98-6e55628cf36a@ti.com>
Date: Mon, 19 Aug 2019 12:28:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6bf4194b-23c0-2de0-3f9c-e99195336dc7@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022837_147962_69CC6010 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org, s-anna@ti.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDgvMjAxOSAwNzozNSwgS2VlcnRoeSB3cm90ZToKPiAKPiAKPiBPbiAwNy8wOC8xOSAx
OjE4IFBNLCBUZXJvIEtyaXN0byB3cm90ZToKPj4gQWRkIG5ldyBiaW5kaW5nIGZvciBPTUFQIFBS
TSAoUG93ZXIgYW5kIFJlc2V0IE1hbmFnZXIpIGluc3RhbmNlcy4gRWFjaAo+PiBvZiB0aGVzZSB3
aWxsIGFjdCBhcyBhIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyIGFuZCBwb3RlbnRpYWxseSBhcyBh
IHJlc2V0Cj4+IHByb3ZpZGVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1r
cmlzdG9AdGkuY29tPgo+PiAtLS0KPj4gwqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL29t
YXAvcHJtLWluc3QudHh0wqDCoMKgwqDCoCB8IDI0IAo+PiArKysrKysrKysrKysrKysrKysrKysr
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCAKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9vbWFwL3By
bS1pbnN0LnR4dAo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9vbWFwL3BybS1pbnN0LnR4dCAKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL29tYXAvcHJtLWluc3QudHh0Cj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4+IGluZGV4IDAwMDAwMDAuLmUwYWU4N2IKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL29tYXAvcHJtLWluc3QudHh0Cj4+IEBA
IC0wLDAgKzEsMjQgQEAKPj4gK09NQVAgUFJNIGluc3RhbmNlIGJpbmRpbmdzCj4+ICsKPj4gK1Bv
d2VyIGFuZCBSZXNldCBNYW5hZ2VyIGlzIGFuIElQIGJsb2NrIG9uIE9NQVAgZmFtaWx5IG9mIGRl
dmljZXMgd2hpY2gKPj4gK2hhbmRsZSB0aGUgcG93ZXIgZG9tYWlucyBhbmQgdGhlaXIgY3VycmVu
dCBzdGF0ZSwgYW5kIHByb3ZpZGUgcmVzZXQKPj4gK2hhbmRsaW5nIGZvciB0aGUgZG9tYWlucyBh
bmQvb3Igc2VwYXJhdGUgSVAgYmxvY2tzIHVuZGVyIHRoZSBwb3dlciAKPj4gZG9tYWluCj4+ICto
aWVyYXJjaHkuCj4+ICsKPj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4+ICstIGNvbXBhdGlibGU6
wqDCoMKgIE11c3QgYmUgb25lIG9mOgo+PiArwqDCoMKgwqDCoMKgwqAgInRpLGFtMy1wcm0taW5z
dCIKPj4gK8KgwqDCoMKgwqDCoMKgICJ0aSxhbTQtcHJtLWluc3QiCj4+ICvCoMKgwqDCoMKgwqDC
oCAidGksb21hcDQtcHJtLWluc3QiCj4+ICvCoMKgwqDCoMKgwqDCoCAidGksb21hcDUtcHJtLWlu
c3QiCj4+ICvCoMKgwqDCoMKgwqDCoCAidGksZHJhNy1wcm0taW5zdCIKPj4gKy0gcmVnOsKgwqDC
oMKgwqDCoMKgIENvbnRhaW5zIFBSTSBpbnN0YW5jZSByZWdpc3RlciBhZGRyZXNzIHJhbmdlCj4+
ICvCoMKgwqDCoMKgwqDCoCAoYmFzZSBhZGRyZXNzIGFuZCBsZW5ndGgpCj4gCj4gSG93IGFib3V0
IHJlc2V0LWNlbGxzIHByb3BlcnR5LCBJc24ndCB0aGF0IGEgbWFuZGF0b3J5IHByb3BlcnR5PwoK
SXQgaXMgb3B0aW9uYWwsIGJ1dCB5b3UgYXJlIHJpZ2h0LCBzaG91bGQgYmUgYWRkZWQgdG8gdGhp
cy4KCi1UZXJvCgo+IAo+PiArCj4+ICtFeGFtcGxlOgo+PiArCj4+ICtwcm1fZHNwMjogcHJtQDFi
MDAgewo+PiArwqDCoMKgIGNvbXBhdGlibGUgPSAidGksZHJhNy1wcm0taW5zdCI7Cj4+ICvCoMKg
wqAgcmVnID0gPDB4MWIwMCAweDQwPjsKPj4gK8KgwqDCoCAjcmVzZXQtY2VsbHMgPSA8MT47Cj4+
ICt9Owo+PgoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAy
MiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlw
YWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

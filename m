Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD13F7772D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0fw5Guir0r7eJo7GdzRXGS7lsg7mEoPvhj7a53sCkdc=; b=JyFL6Q/yPak7baso+MqEOeSBT
	cq8tCVHhJVEHr8Ct4k+QbmqoaYdJ3NpLb4jSbjYH6F76Iq6OpM8ZTK0CVZMZbqWvxJAsjFPIV1vhv
	UrXrZo6+xh7RycHtC7ry7MIRZCKywavDysZwRl34vkgfh+jjjcAUSSPcQPJhEVFfnWOeV5ZiDm6tH
	GHfgj+8I80aw0Ja+BKUbyQ3d3Gh7DGcPc/MFdbuhwv+lSs2MUu8gG+6bLZJKau1T+kNvg+DU3RkSX
	XRaE43DNbg59FHo2xZMi1T9tii1oKObOHbYt5WRj/cEix2D2pmqwVBQeBKe5evL7bD7C9yhTDrvM0
	XBdW9ezsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrFyM-0000Wa-HG; Sat, 27 Jul 2019 06:14:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrFy4-0000Vr-1X
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:14:10 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 08A0BF04ED6C5744E314;
 Sat, 27 Jul 2019 14:13:59 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.122) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Sat, 27 Jul 2019
 14:13:56 +0800
Subject: Re: [PATCH 1/3] KVM: arm/arm64: vgic-its: Introduce multiple LPI
 translation caches
To: Marc Zyngier <marc.zyngier@arm.com>
References: <20190724090437.49952-1-xiexiangyou@huawei.com>
 <20190724090437.49952-2-xiexiangyou@huawei.com>
 <a8b74b25-8c92-4aad-f94d-8371126798ef@arm.com>
 <c0f441b5-2ba2-0482-6736-eb7835a24f0a@huawei.com>
 <86blxhne2s.wl-marc.zyngier@arm.com>
From: Xiangyou Xie <xiexiangyou@huawei.com>
Message-ID: <0db37e66-4a5c-f6e7-65e2-c95fcbc4ee3b@huawei.com>
Date: Sat, 27 Jul 2019 14:13:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <86blxhne2s.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.19.122]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_231408_252470_E3619E90 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCkFkZGluZyBhIG5ldyBscGkgdG8gbHBpX2xpc3QsIHRoZSBjb250ZW50cyBvZiB0
aGUgY2FjaGVzIHdpbGwgbm90IGJlIAp1cGRhdGVkIGltbWVkaWF0ZWx5IHVudGlsIHRoZSBpcnEg
aXMgaW5qZWN0ZWQuCgpJcnEncyByZWZlcmVuY2UgY291bnQgd2lsbCBiZSBpbmNyZWFzZWQgd2hl
biBzeW5jaHJvbml6ZWQgdG8gZWFjaCBjYWNoZSwgCmFuZCByZWR1Y2VkIGFmdGVyIGRlbGV0aW5n
IGZyb20gZWFjaCBjYWNoZS4gT25seSB3aGVuIGlycSBpcyByZW1vdmVkIApmcm9tIGFsbCBjYWNo
ZXMsIHRoZSByZWZlcmVuY2UgY291bnQgaXMgcmVkdWNlZCB0byAwLCB3aGljaCBpcyBhbGxvd2Vk
IAp0byBiZSByZW1vdmVkIGZyb20gbHBpX2xpc3QuCgpTbyBJIHRoaW5rIHRoYXQgdGhlIHJlZmVy
ZW5jZSBjb3VudCBvZiBJUlEgY2FuIGd1YXJhbnRlZSB0aGUgY29uc2lzdGVuY3kgCm9mIGxwaV9s
aXN0IGFuZCBjYWNoZSwgaXMgcmlnaHQ/CgpXaGVuIG11bHRpcGxlIENQVXMgaW5qZWN0IGRpZmZl
cmVudCBscGkgaW50ZXJydXB0cyBhdCB0aGUgc2FtZSB0aW1lLCAKd2hpY2ggbWF5IHJlc3VsdCBp
biBkaWZmZXJlbnQgc29ydHMgb2YgaW50ZXJydXB0cyBpbiBkaWZmZXJlbnQgY2FjaGVzLCAKZXZl
biBzb21lIGludGVycnVwdHMgb2YgYSBjZXJ0YWluIGNhY2hlIGFyZSBvdmVyZmxvd2VkLgpFZzoK
VGhlIGNvbnRlbnRzIG9mIHRoZSBjYWNoZSBhdCBhIGNlcnRhaW4gbW9tZW5077yaCmNhY2hlIDA6
IGMtPmItPmEKY2FjaGUgMTogYS0+Yi0+YwoKVGhlbiwgaW5qZWN0IHR3byBpbnRlcnJ1cHRzICJk
LGUiIHNpbXVsdGFuZW91c2x5LCB0aGUgZm9sbG93aW5nIHJlc3VsdHMgCm1heSBvY2N1cjoKY2Fj
aGUgMDogZS0+ZC0+YwpjYWNoZSAxOiBkLT5lLT5hCgpCdXQgdGhpcyBpcyBubyBwcm9ibGVtLCBq
dXN0IG1ha2Ugc3VyZSB0aGF0IHRoZSBpcnEgZm91bmQgaXMgY29ycmVjdC4KCkluIGFkZGl0aW9u
LCBhYm91dCBMb2NraW5nIG9yZGVyOgprdm0tPmxvY2sgKG11dGV4KQogICBpdHMtPmNtZF9sb2Nr
IChtdXRleCkKICAgICBpdHMtPml0c19sb2NrIChtdXRleCkKICAgICAgIHZnaWNfY3B1LT5hcF9s
aXN0X2xvY2sKICAgICAgICAgY2FjaGUtPmxwaV9jYWNoZV9sb2NrICAvKiovCiAgICAgICAgICAg
IGt2bS0+bHBpX2xpc3RfbG9jawkKICAgICAgICAgICAgICB2Z2ljX2lycS0+aXJxX2xvY2sJCgpU
aGFua3MsCgpYaWFuZ3lvdS4KCk9uIDIwMTkvNy8yNiAyMTowMiwgTWFyYyBaeW5naWVyIHdyb3Rl
Ogo+IE9uIEZyaSwgMjYgSnVsIDIwMTkgMTM6MzU6MjAgKzAxMDAsCj4gWGlhbmd5b3UgWGllIDx4
aWV4aWFuZ3lvdUBodWF3ZWkuY29tPiB3cm90ZToKPj4KPj4gSGkgTWFyYywKPj4KPj4gU29ycnks
IHRoZSB0ZXN0IGRhdGEgd2FzIG5vdCBwb3N0ZWQgaW4gdGhlIHByZXZpb3VzIGVtYWlsLgo+Pgo+
PiBJIHRlc3RlZCB0aGUgaW1wYWN0IG9mIHZpcnR1YWwgaW50ZXJydXB0IGluamVjdGlvbiB0aW1l
LWNvbnN1bWluZ++8mgo+PiBSdW4gdGhlIGlwZXJmIGNvbW1hbmQgdG8gc2VuZCBVRFAgcGFja2V0
cyB0byB0aGUgVk06Cj4+IAlpcGVyZiAtYyAkSVAgLXUgLWIgNDBtIC1sIDY0IC10IDYwMDAmCj4+
IFRoZSB2bSBqdXN0IHJlY2VpdmUgVURQIHRyYWZmaWMuIFdoZW4gY29uZmlndXJlIG11bHRpcGxl
IE5JQ3MsIGVhY2gKPj4gTklDIHJlY2VpdmVzIHRoZSBhYm92ZSBpcGVyZiBVRFAgdHJhZmZpYywg
VGhpcyBtYXkgcmVmbGVjdCB0aGUKPj4gcGVyZm9ybWFuY2UgaW1wYWN0IG9mIHNoYXJlZCByZXNv
dXJjZSBjb21wZXRpdGlvbiwgc3VjaCBhcyBsb2NrLgo+Pgo+PiBPYnNlcnZpbmcgdGhlIGRlbGF5
IG9mIHZpcnR1YWwgaW50ZXJydXB0IGluamVjdGlvbjogdGhlIHRpbWUgc3BlbnQgYnkKPj4gdGhl
ICJpcnFmZF93YWtldXAiLCAiaXJxZmRfaW5qZWN0IiBmdW5jdGlvbiwgYW5kIGt3b3JrZXIgY29u
dGV4dAo+PiBzd2l0Y2guCj4+IFRoZSBsZXNzIHRoZSBiZXR0ZXIuCj4+Cj4+IElUUyB0cmFuc2xh
dGlvbiBjYWNoZSBncmVhdGx5IHJlZHVjZXMgdGhlIGRlbGF5IG9mIGludGVycnVwdCBpbmplY3Rp
b24KPj4gY29tcGFyZWQgdG8ga3dvcmtlciB0aHJlYWQsIGJlY2F1c2UgaXQgZWxpbWluYXRlIHdh
a2V1cCBhbmQgdW5jZXJ0YWluCj4+IHNjaGVkdWxpbmcgZGVsYXk6Cj4+ICAgICAgICAgICAgICAg
ICAgICBrd29ya2VyICAgICAgICAgICAgICBJVFMgdHJhbnNsYXRpb24gY2FjaGUgICAgaW1wcm92
ZWQKPj4gICAgMSBOSUMgICAgICAgICAgIDYuNjkyIHVzICAgICAgICAgICAgICAgICAxLjc2NiB1
cwo+PiA3My42JQo+PiAgIDEwIE5JQ3MgICAgICAgICAgNy41MzYgdXMgICAgICAgICAgICAgICAg
IDIuNTc0IHVzCj4+IDY1LjglCj4gCj4gT0ssIHRoYXQncyBwcmV0dHkgaW50ZXJlc3RpbmcuIEl0
IHdvdWxkIGhhdmUgYmVlbiBnb29kIHRvIHBvc3Qgc3VjaAo+IGRhdGEgaW4gcmVwbHkgdG8gdGhl
IElUUyBjYWNoZSBzZXJpZXMuCj4gCj4+Cj4+IEluY3JlYXNlcyB0aGUgbnVtYmVyIG9mIGxwaV90
cmFuc2xhdGlvbl9jYWNoZSByZWR1Y2UgbG9jayBjb21wZXRpdGlvbi4KPj4gTXVsdGktaW50ZXJy
dXB0IGNvbmN1cnJlbnQgaW5qZWN0aW9ucyBwZXJmb3JtIGJldHRlcjoKPj4KPj4gICAgICAgICAg
ICAgIElUUyB0cmFuc2xhdGlvbiBjYWNoZSAgICAgIHdpdGggcGF0Y2ggICAgICAgICAgICAgaW1w
cm92ZWQKPj4gICAgIDEgTklDICAgICAgICAxLjc2NiB1cyAgICAgICAgICAgICAgICAgMS42OTQg
dXMgICAgICAgICAgICAgICAgNC4xJQo+PiAgIDEwIE5JQ3MgICAgICAgIDIuNTc0IHVzICAgICAg
ICAgICAgICAgICAxLjg0OCB1cyAgICAgICAgICAgICAgIDI4LjIlCj4gCj4gCj4gVGhhdCdzIHNv
cnQgb2ZmIGludGVyZXN0aW5nIHRvbywgYnV0IGl0IGRvZXNuJ3QgYW5zd2VyIGFueSBvZiB0aGUK
PiBxdWVzdGlvbnMgSSBoYWQgaW4gcmVzcG9uc2UgdG8geW91ciBwYXRjaDogSG93IGRvIHlvdSBl
bnN1cmUgbXV0dWFsCj4gZXhjbHVzaW9uIHdpdGggdGhlIExQSSBsaXN0IGJlaW5nIGNvbmN1cnJl
bnRseSB1cGRhdGVkPyBIb3cgZG9lcyB0aGUKPiBuZXcgbG9ja2luZyBmaXQgaW4gdGhlIGN1cnJl
bnQgbG9ja2luZyBzY2hlbWU/Cj4gCj4gVGhhbmtzLAo+IAo+IAlNLgo+IAo+PiBSZWdhcmRzLAo+
Pgo+PiBYaWFuZ3lvdQo+Pgo+PiBPbiAyMDE5LzcvMjQgMTk6MDksIE1hcmMgWnluZ2llciB3cm90
ZToKPj4+IEhpIFhpYW5neW91LAo+Pj4KPj4+IE9uIDI0LzA3LzIwMTkgMTA6MDQsIFhpYW5neW91
IFhpZSB3cm90ZToKPj4+PiBCZWNhdXNlIGRpc3QtPmxwaV9saXN0X2xvY2sgaXMgYSBwZXJWTSBs
b2NrLCB3aGVuIGEgdmlydHVhbCBtYWNoaW5lCj4+Pj4gaXMgY29uZmlndXJlZCB3aXRoIG11bHRp
cGxlIHZpcnR1YWwgTklDIGRldmljZXMgYW5kIHJlY2VpdmVzCj4+Pj4gbmV0d29yayBwYWNrZXRz
IGF0IHRoZSBzYW1lIHRpbWUsIGRpc3QtPmxwaV9saXN0X2xvY2sgd2lsbCBiZWNvbWUKPj4+PiBh
IHBlcmZvcm1hbmNlIGJvdHRsZW5lY2suCj4+Pgo+Pj4gSSdtIHNvcnJ5LCBidXQgeW91J2xsIGhh
dmUgdG8gc2hvdyBtZSBzb21lIHJlYWwgbnVtYmVycyBiZWZvcmUgSQo+Pj4gY29uc2lkZXIgYW55
IG9mIHRoaXMuIFRoZXJlIGlzIGEgcmVhc29uIHdoeSB0aGUgb3JpZ2luYWwgc2VyaWVzIHN0aWxs
Cj4+PiBpc24ndCBpbiBtYWlubGluZSwgYW5kIHRoYXQncyBiZWNhdXNlIHBlb3BsZSBkb24ndCBw
b3N0IGFueSBudW1iZXJzLgo+Pj4gQWRkaW5nIG1vcmUgcGF0Y2hlcyBpcyBub3QgZ29pbmcgdG8g
Y2hhbmdlIHRoYXQgc21hbGwgZmFjdC4KPj4+Cj4+Pj4gVGhpcyBwYXRjaCBpbmNyZWFzZXMgdGhl
IG51bWJlciBvZiBscGlfdHJhbnNsYXRpb25fY2FjaGUgdG8gZWlnaHQsCj4+Pj4gaGFzaGVzIHRo
ZSBjcHVpZCB0aGF0IGV4ZWN1dGVzIGlycWZkX3dha2V1cCwgYW5kIGNob29zZXMgd2hpY2gKPj4+
PiBscGlfdHJhbnNsYXRpb25fY2FjaGUgdG8gdXNlLgo+Pj4KPj4+IFNvIHlvdSd2ZSBub3cgc3dp
dGNoZWQgdG8gYSBwZXItY2FjaGUgbG9jaywgbWVhbmluZyB0aGF0IHRoZSByZXN0IG9mIHRoZQo+
Pj4gSVRTIGNvZGUgY2FuIG1hbmlwdWxhdGUgdGhlIHRoZSBscGlfbGlzdCB3aXRob3V0IHN5bmNo
cm9uaXphdGlvbiB3aXRoCj4+PiB0aGUgY2FjaGVzLiBIYXZlIHlvdSB3b3JrZWQgb3V0IGFsbCB0
aGUgcG9zc2libGUgcmFjZXM/IEFsc28sIGhvdyBkb2VzCj4+PiB0aGlzIG5ldyBsb2NrIGNsYXNz
IGZpdHMgaW4gdGhlIHdob2xlIGxvY2tpbmcgaGllcmFyY2h5Pwo+Pj4KPj4+IElmIHlvdSB3YW50
IHNvbWV0aGluZyB0aGF0IGlzIGFjdHVhbGx5IHNjYWxhYmxlLCBkbyBpdCB0aGUgcmlnaHQgd2F5
Lgo+Pj4gVXNlIGEgYmV0dGVyIGRhdGEgc3RydWN0dXJlIHRoYW4gYSBsaXN0LCBzd2l0Y2ggdG8g
dXNpbmcgUkNVIHJhdGhlciB0aGFuCj4+PiB0aGUgY3VycmVudCBsb2NraW5nIHN0cmF0ZWd5LiBC
dXQgeW91ciBjdXJyZW50IGFwcHJvYWNoIGxvb2tzIHF1aXRlIGZyYWdpbGUuCj4+Pgo+Pj4gVGhh
bmtzLAo+Pj4KPj4+IAlNLgo+Pj4KPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

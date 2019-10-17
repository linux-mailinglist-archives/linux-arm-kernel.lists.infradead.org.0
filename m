Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65986DA6CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnYPyx6/zeti26DmJlIe3HN+pTBCZyRRKzmEX3pNEYs=; b=oFMaYX16NrAOk1
	MNITnkm7gjFdCYb+r3CcBuTlj60cadp2rZyJjl5mwglNGFvQwDykCMkjwjNW9KuZdCt44gYDpmHT5
	Zgm0LP/8JQw5xLLRIX5NMNjx42B4MVEIPuj6pIBgKRZjHUcixxlJXzWJJpPAMlw7omvlVtULGndPv
	XLjOc0GnU2IWUmqvAqcsKP5uI6JSiUN5CR4mR/1tha8C5Sa3RqVwIsLWB8yn/u81HeT5eIKWzQ9Fj
	wLRFzQnXTJC6gTobaQhINETfptmbN43I7kFVSPiecXl22vtmjcrMdqYyhGStj0ekVeLR5HcuRnTp0
	6n3FJVfJ4B2iQVE1Egtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0Ze-000295-D9; Thu, 17 Oct 2019 07:51:54 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0ZN-0001yA-At
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:51:39 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id L0ZEiNQokPduvL0ZHitZi9; Thu, 17 Oct 2019 09:51:32 +0200
Subject: Re: [PATCH v3 5/6] media: sun4i: Add H3 deinterlace driver
To: Jernej Skrabec <jernej.skrabec@siol.net>, mripard@kernel.org, wens@csie.org
References: <20191016192807.1278987-1-jernej.skrabec@siol.net>
 <20191016192807.1278987-6-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <d768b2bc-a942-03a6-253d-4bcc31f1b11e@xs4all.nl>
Date: Thu, 17 Oct 2019 09:51:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016192807.1278987-6-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFzjUTWPxOlTU4hlEoCPjG/vSnr5xKQMF8XCQ+SW2mlaLMTpQxaZ4EILqCiVCuh6PT0/ZGWxxDnt9eqTiqgrU30Ii5IcSv5qXVgZKrKwRQi+3s/KXvlH
 cW3X33jRHUWkl54rP0BkXftU0szeQJ0072L78iJO5WHkMZWfgWh3+Eu0GlW9LYPLUreGywKDX382EmsMo//teqCpW8UzBd3qtfur6RZwyfW/PVnpXHTX8w54
 3NATx7a3KgEanmyT+7lBoLehSIZJPcE3ExuqcJ85gypFZE3mPBaYNeWWbhMdOjn9xy72VKc7+rhYNrXfCbI4r1GAWenmaRGgPck9UZ/QvmmnKfCv6MfEjGzF
 mCa2bWuWOcPyvM0/TmOQgX5PPXzDQLe+f2LNK1WgOHJKCM3W4NGwSwCyk+GUWKj7cdJF40IruCU3/x3I05XQifPut6thHfBVH4LS/N5AEienYd4m/Ga7z/2p
 H1UtYUZCGmnxHATQJZxlSooZhRP/qiBbjU3WvKAlGacH643rIINbhwIy/mE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_005137_546764_C876A220 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTYvMTkgOToyOCBQTSwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gQWxsd2lubmVyIEgz
IFNvQyBjb250YWlucyBkZWludGVybGFjZSB1bml0LCB3aGljaCBoYXMgc2V2ZXJhbCBtb2RlcyBv
Zgo+IG9wZXJhdGlvbiAtIGJ5cGFzcywgd2VhdmUsIGJvYiBhbmQgbWl4ZWQgKGFkdmFuY2VkKSBt
b2RlLiBJIGRvbid0IGtub3cKPiBob3cgbWl4ZWQgbW9kZSB3b3JrcywgYnV0IGFjY29yZGluZyB0
byBBbGx3aW5uZXIgaXQgZ2l2ZXMgYmVzdCByZXN1bHRzLAo+IHNvIHRoZXkgdXNlIGl0IGV4Y2x1
c2l2ZWx5LiBDdXJyZW50bHkgdGhpcyBtb2RlIGlzIGFsc28gaGFyZGNvZGVkIGhlcmUuCj4gCj4g
Rm9yIGVhY2ggaW50ZXJsZWF2ZWQgZnJhbWUgcXVldWVkLCB0aGlzIGRyaXZlciBwcm9kdWNlcyAy
IGRlaW50ZXJsYWNlZAo+IGZyYW1lcy4gRGVpbnRlcmxhY2VkIGZyYW1lcyBhcmUgYmFzZWQgb24g
MiBjb25zZXF1dGl2ZSBvdXRwdXQgYnVmZmVycywKPiBleGNlcHQgZm9yIHRoZSBmaXJzdCAyLCB3
aGVyZSBzYW1lIG91dHB1dCBidWZmZXIgaXMgZ2l2ZW4gdG8gcGVyaXBoZXJhbAo+IGFzIGN1cnJl
bnQgYW5kIHByZXZpb3VzLgo+IAo+IFRoZXJlIGlzIG5vIGRvY3VtZW50YXRpb24gZm9yIHRoaXMg
Y29yZSwgc28gcmVnaXN0ZXIgbGF5b3V0IGFuZCBmaXhlZAo+IHZhbHVlcyB3ZXJlIHRha2VuIGZy
b20gQlNQIGRyaXZlci4KPiAKPiBJJ20gbm90IHN1cmUgaWYgbWF4aW11bSBzaXplIG9mIHRoZSBp
bWFnZSB1bml0IGlzIGNhcGFibGUgdG8gcHJvY2VzcyBpcwo+IGdvdmVybmVkIGJ5IHNpemUgb2Yg
ImZsYWciIGJ1ZmZlcnMsIGZyZXF1ZW5jeSBvciBpdCByZWFsbHkgaXMgc29tZSBIVwo+IGxpbWl0
YXRpb24uIEN1cnJlbnRseSBkcml2ZXIgY2FuIHByb2Nlc3MgZnVsbCBIRCBpbWFnZSBpbiB+MTVt
cyAoNy41bXMKPiBmb3IgZWFjaCBjYXB0dXJlIGJ1ZmZlciksIHdoaWNoIGFsbG93cyB0byBwcm9j
ZXNzIDE5MjB4MTA4MEA2MGkgdmlkZW8KPiBzbW9vdGhseSBpbiByZWFsIHRpbWUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+IC0t
LQo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA3
ICsKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9LY29uZmlnICAgICAgICAgIHwgICAg
MSArCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvTWFrZWZpbGUgICAgICAgICB8ICAg
IDEgKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL0tjb25maWcgfCAg
IDExICsKPiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL01ha2VmaWxlICAgIHwg
ICAgMiArCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9zdW44aS1kaS5jICB8
IDEwMjAgKysrKysrKysrKysrKysrKysKPiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhp
LWRpL3N1bjhpLWRpLmggIHwgIDIzNyArKysrCj4gIDcgZmlsZXMgY2hhbmdlZCwgMTI3OSBpbnNl
cnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1
bnhpL3N1bjhpLWRpL0tjb25maWcKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vc3VueGkvc3VuOGktZGkvTWFrZWZpbGUKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvc3VuOGktZGkuYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9zdW44aS1k
aS5oCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRleCBj
N2I0ODUyNTgyMmEuLmMzNzU0NTUxMjVmYiAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+ICsr
KyBiL01BSU5UQUlORVJTCj4gQEAgLTQ2NDYsNiArNDY0NiwxMyBAQCBNOgkiTWFjaWVqIFcuIFJv
enlja2kiIDxtYWNyb0BsaW51eC1taXBzLm9yZz4KPiAgUzoJTWFpbnRhaW5lZAo+ICBGOglkcml2
ZXJzL25ldC9mZGRpL2RlZnh4LioKPiAgCj4gK0RFSU5URVJMQUNFIERSSVZFUlMgRk9SIEFMTFdJ
Tk5FUiBIMwo+ICtNOglKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4g
K0w6CWxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ICtUOglnaXQgZ2l0Oi8vbGludXh0di5v
cmcvbWVkaWFfdHJlZS5naXQKPiArUzoJTWFpbnRhaW5lZAo+ICtGOglkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3N1bnhpL3N1bjhpLWRpLwo+ICsKPiAgREVMTCBTTUJJT1MgRFJJVkVSCj4gIE06CVBh
bGkgUm9ow6FyIDxwYWxpLnJvaGFyQGdtYWlsLmNvbT4KPiAgTToJTWFyaW8gTGltb25jaWVsbG8g
PG1hcmlvLmxpbW9uY2llbGxvQGRlbGwuY29tPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3N1bnhpL0tjb25maWcgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL0tj
b25maWcKPiBpbmRleCA3MTgwOGU5M2FjMmUuLmQ3YTU2MjFiZjMyNyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL0tjb25maWcKPiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3N1bnhpL0tjb25maWcKPiBAQCAtMSwyICsxLDMgQEAKPiAgc291cmNlICJkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjRpLWNzaS9LY29uZmlnIgo+ICBzb3VyY2UgImRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL0tjb25maWciCj4gK3NvdXJjZSAi
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9LY29uZmlnIgoKVGhpcyBpcyBh
IG0ybSBkcml2ZXIsIHNvIHRoaXMgYmVsb25ncyBpbiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL0tj
b25maWcgaW4gdGhlCk1lbW9yeS10by1tZW1vcnkgc2VjdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvTWFrZWZpbGUgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N1bnhpL01ha2VmaWxlCj4gaW5kZXggYTA1MTI3NTI5MDA2Li4zODc4Y2I0ZWZkYzIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9NYWtlZmlsZQo+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvTWFrZWZpbGUKPiBAQCAtMSwyICsxLDMgQEAK
PiAgb2JqLXkJCSs9IHN1bjRpLWNzaS8KPiAgb2JqLXkJCSs9IHN1bjZpLWNzaS8KPiArb2JqLXkJ
CSs9IHN1bjhpLWRpLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhp
L3N1bjhpLWRpL0tjb25maWcgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRp
L0tjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZGJk
NzdhNjFlM2IzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
c3VueGkvc3VuOGktZGkvS2NvbmZpZwo+IEBAIC0wLDAgKzEsMTEgQEAKPiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gK2NvbmZpZyBWSURFT19TVU44SV9ERUlOVEVS
TEFDRQo+ICsJdHJpc3RhdGUgIkFsbHdpbm5lciBEZWludGVybGFjZSBkcml2ZXIiCj4gKwlkZXBl
bmRzIG9uIFZJREVPX0RFViAmJiBWSURFT19WNEwyCj4gKwlkZXBlbmRzIG9uIEhBU19ETUEKPiAr
CWRlcGVuZHMgb24gT0YKPiArCWRlcGVuZHMgb24gUE0KPiArCXNlbGVjdCBWSURFT0JVRjJfRE1B
X0NPTlRJRwo+ICsJc2VsZWN0IFY0TDJfTUVNMk1FTV9ERVYKPiArCWhlbHAKPiArCSAgIFN1cHBv
cnQgZm9yIHRoZSBBbGx3aW5uZXIgRGVpbnRlcmxhY2UgdW5pdCBmb3VuZCBvbiBzb21lIFNvQ3Mu
CgpTaG91bGRuJ3QgdGhpcyBkZXBlbmQgb24gQVJDSF9TVU5YSSB8fCBDT01QSUxFX1RFU1Q/CkFu
ZCBhbHNvIG9uIENPTU1PTl9DTEs/CgpSZWdhcmRzLAoKCUhhbnMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

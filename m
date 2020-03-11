Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8CB181D98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZCajNf2npO3ApeQ7FoU7S34NSHmW2idBmD/zFwqUE0=; b=tIaEg4XP39ApRe
	q9Ga7AVaOTdF5lYdEraXsgOKPeHToZR/AZeIXzPb54DdbmHE2Vrke82cpwZoabnaBrLSbvdCPBjyU
	hLUW502CpR1KaY3ChVs1cUlNrbV9GYBZL6PWRoLe18D7q5iHmh6c7307YYrOA69CiIGjFKVQHnyOj
	O4jF3Raj8pHe9kVD1Ea2NdFxKrfgkoa/87zcUbaW8yu/YGQJSykwRxWGc2OAIICRu5/wo9wiNbbrZ
	36cgVNfbGt3jzEQ9iJEFu/vJ8euVXmZGih426+ZfGZFphrADd9bTm6Mo7RbpwVhJvBQi8j5ADgfQo
	WmShBHqYqbK/JND8uIPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC43R-0003Bu-Mr; Wed, 11 Mar 2020 16:17:57 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC43J-0003AG-7r; Wed, 11 Mar 2020 16:17:51 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 2E35E634C87;
 Wed, 11 Mar 2020 18:16:54 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jC42Q-0001TH-B5; Wed, 11 Mar 2020 18:16:54 +0200
Date: Wed, 11 Mar 2020 18:16:54 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
Message-ID: <20200311161654.GK2619@valkosipuli.retiisi.org.uk>
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
 <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
 <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
 <CAG3jFyv8X=k=1EGMCHnSNqDaRBZ68pht42yDzc5hJPui0wdAjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyv8X=k=1EGMCHnSNqDaRBZ68pht42yDzc5hJPui0wdAjQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_091749_455319_A5129ECA 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMDI6MzI6MzBQTSArMDEwMCwgUm9iZXJ0IEZvc3Mgd3Jv
dGU6Cj4gSGV5IFNha2FyaSwKPiAKPiBPbiBXZWQsIDExIE1hciAyMDIwIGF0IDEyOjQ5LCBTYWth
cmkgQWlsdXMgPHNha2FyaS5haWx1c0Bpa2kuZmk+IHdyb3RlOgo+ID4KPiA+IEhpIFJvYmVydCwK
PiA+Cj4gPiBPbiBUdWUsIE1hciAxMCwgMjAyMCBhdCAwNDo1NToyMFBNICswMTAwLCBSb2JlcnQg
Rm9zcyB3cm90ZToKPiA+ID4gSGkgQW5keSwKPiA+ID4KPiA+ID4gT24gVHVlLCAxMCBNYXIgMjAy
MCBhdCAxNToyNiwgQW5keSBTaGV2Y2hlbmtvCj4gPiA+IDxhbmRyaXkuc2hldmNoZW5rb0BsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gVHVlLCBNYXIgMTAsIDIwMjAg
YXQgMDI6NDY6MDJQTSArMDEwMCwgUm9iZXJ0IEZvc3Mgd3JvdGU6Cj4gPiA+ID4gPiBBZGQgZGV2
aWNldHJlZSBtYXRjaCB0YWJsZSwgYW5kIGVuYWJsZSBvdjg4NTZfcHJvYmUoKQo+ID4gPiA+ID4g
dG8gaW5pdGlhbGl6ZSBwb3dlciwgY2xvY2tzIGFuZCByZXNldCBwaW5zLgo+ID4gPiA+Cj4gPiA+
ID4gLi4uCj4gPiA+ID4KPiA+ID4gPiA+ICsjZGVmaW5lIE9WODg1Nl9OVU1fU1VQUExJRVMgQVJS
QVlfU0laRShvdjg4NTZfc3VwcGx5X25hbWVzKQo+ID4gPiA+Cj4gPiA+ID4gVXNlIEFSUkFZX1NJ
WkUoKSBkaXJlY3RseS4KPiA+ID4KPiA+ID4gQWNrLgo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gSGF2
ZSB5b3Ugc2VlbiBTYWthcmkncyBjb21tZW50cz8KPiA+ID4gPiBTYWthcmksIGRvIEkgaGF2ZSBk
w6lqxIUgdnUgb3IgeW91IGluZGVlZCBjb21tZW50ZWQgdGhpcyBkcml2ZXI/Cj4gPiA+Cj4gPiA+
IFllcywgSSBtYXkgaGF2ZSBtaXNzZWQgc29tZSBwYXJ0IG9mIGl0LCBzbyBwbGVhc2UgdGVsbCBt
ZSBpZiBJIGhhdmUuCj4gPiA+Cj4gPiA+IFRoZXJlIGlzIGEgcGF0Y2hzZXQgZmxvYXRpbmcgYXJv
dW5kIHRoYXQgaW1wbGVtZW50cyBhIGxhcmdlciBjaHVuayBvZgo+ID4gPiBmdW5jdGlvbmFsaXR5
LAo+ID4gPiBpbmNsdWRpbmcgYSBjb3VwbGUgb2YgbmV3IG1vZGVzLiBUaGlzIGlzIGJhc2VkIG9u
IHRoYXQgc2VyaWVzLgo+ID4KPiA+IFBsZWFzZSBzZWUgZWFybGllciBjb21tZW50cyBnaXZlbiBh
Z2FpbnN0IGFuIGVhcmxpZXIgdmFyaWFudCBvZiB0aGlzIHNldC4KPiA+IFRoZXkncmUgb24gTE1N
TC4KPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiAuLi4KPiA+ID4gPgo+ID4gPiA+ID4gKyAgICAg
Z3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKG92ODg1Ni0+bl9zaHV0ZG5fZ3BpbywgR1BJT0RfT1VU
X0xPVyk7Cj4gPiA+ID4KPiA+ID4gPiA+ICsgICAgIGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChv
djg4NTYtPm5fc2h1dGRuX2dwaW8sIEdQSU9EX09VVF9ISUdIKTsKPiA+ID4gPgo+ID4gPiA+IFll
cywgc2VlbXMgdGhpcyBvbmUgaXMgaW52ZXJ0ZWQuCj4gPiA+ID4KPiA+ID4gPiAuLi4KPiA+ID4g
Pgo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsgICAgIGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChv
djg4NTYtPm5fc2h1dGRuX2dwaW8sIEdQSU9EX09VVF9MT1cpOwo+ID4gPiA+ID4gKyAgICAgcmVn
dWxhdG9yX2J1bGtfZGlzYWJsZShPVjg4NTZfTlVNX1NVUFBMSUVTLCBvdjg4NTYtPnN1cHBsaWVz
KTsKPiA+ID4gPiA+ICsgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShvdjg4NTYtPnh2Y2xrKTsK
PiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArCj4gPiA+ID4KPiA+ID4gPiBPbmUg
YmxhbmsgbGluZSBpcyBlbm91Z2guCj4gPiA+ID4KPiA+ID4gPiAuLi4KPiA+ID4gPgo+ID4gPiA+
ID4gKyAgICAgb3Y4ODU2LT54dmNsayA9IGRldm1fY2xrX2dldCgmY2xpZW50LT5kZXYsICJ4dmNs
ayIpOwo+ID4gPiA+ID4gKyAgICAgaWYgKElTX0VSUihvdjg4NTYtPnh2Y2xrKSkgewo+ID4gPiA+
ID4gKyAgICAgICAgICAgICBkZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxlZCB0byBnZXQgeHZj
bGtcbiIpOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiA+
ICsgICAgIH0KPiA+ID4gPgo+ID4gPiA+IFByZXZpb3VzbHkgaXQgd29ya2VkIHdpdGhvdXQgY2xv
Y2sgcHJvdmlkZXIsIG5vdyB5b3UgbWFrZSBhIGRlcGVuZGVuY3kuCj4gPiA+ID4KPiA+ID4gPiBU
aGlzIHdvbid0IHdvcmsuCj4gPiA+Cj4gPiA+IFNvIHRoZSBpZGVhbCBiZWhhdmlvciB3b3VsZCBi
ZSB0byBvbmx5IHVzZSB0aGUgeGNsayBpZiBpdCBpcyBwcm92aWRlZD8KPiA+Cj4gPiBTZWUgZS5n
LiB0aGUgc21pYXBwIGRyaXZlciBvbiBob3cgdG8gZG8gdGhpcyBzbyBpdCBjb250aW51ZXMgdG8g
d29yayBvbgo+ID4gQUNQSS4KPiAKPiBUaGFua3MgZm9yIHRoZSBwb2ludGVyIQo+IAo+ID4KPiA+
IEkgdGhpbmsgaXQnZCBiZSBhbHNvIGFwcHJvcHJpYXRlIHRvIGFkZCB0aGUgdXNsZWVwKCkgYWZ0
ZXIgbGlmdGluZyByZXNldAo+ID4gb25seSBpZiB0aGUgcmVzZXQgR1BJTyBpcyBkZWZpbmVkIGZv
ciB0aGUgZGV2aWNlLgo+IAo+IEFjawoKT24gc2Vjb25kIHRob3VnaHQsIHRoYXQgcHJvYmFibHkg
YXBwbGllcyBpZiBhbnkgb2YgdGhlIHJlc291cmNlcyBuZWVkZWQgZm9yCnBvd2VyaW5nIHRoZSBk
ZXZpY2Ugb24gYXJlIGRlZmluZWQuIEl0IGNvdWxkIGJlIHRoYXQgdGhlcmUncyBubyByZXNldCBH
UElPCmJ1dCBhIHJlZ3VsYXRvciBpcyBzdGlsbCB0aGVyZSwgaW4gd2hpY2ggY2FzZSBhIGRlbGF5
IGlzIG5lZWRlZC4KCi0tIApTYWthcmkgQWlsdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

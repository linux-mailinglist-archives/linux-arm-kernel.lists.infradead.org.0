Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3213D02A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+y0RvktCG88bE5HFzwiM81lNfeh90kLmtdIIoAaDMI=; b=WMZamH0SEDh4eq
	Gs/68FYZxuvNNCB6pxX9p8j6kRsUGce1foMxhAn6c9YsEEy0pLRWVJSLl2QNb13Q/l/Hj1kVLnPRC
	E8WIg9O2B0A6GLfOLmVC2zRSAPEBCozLXMGivbmbXqLSRm4V9kcSt0eQhPKc9KElmcZIvY5EGgV9b
	e/TdOYkxwLlh4EhHKwiqeEMLmBL15bK8iLMry/KQrdhhxF1Kx0DoE1U80hcOiwJle5MOSN9stHMLY
	TNELmC6GGZtHEAoki41SqbmI1/lhwJJA/58wUBny4FvaxnGGateIGD12M5oLsRu/mEqF03fmsS6nM
	9Ttq5I26iTVRJ2IT+dTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiKl-0005wY-Qp; Tue, 11 Jun 2019 15:05:11 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiKS-0005vH-Mf
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:04:54 +0000
X-Originating-IP: 131.228.32.188
Received: from localhost (unknown [131.228.32.188])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 433D5C001F;
 Tue, 11 Jun 2019 15:04:39 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
In-Reply-To: <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz> <87wohspdi7.fsf@FE-laptop>
 <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:04:38 +0200
Message-ID: <87pnnkp3i1.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_080453_058314_2F556A1B 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Jan =?utf-8?Q?Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gUnVzc2VsbCBLaW5nLAoKPiBPbiBUdWUsIEp1biAxMSwgMjAxOSBhdCAwMToyODozMlBN
ICswMjAwLCBHcmVnb3J5IENMRU1FTlQgd3JvdGU6Cj4+IEphbiBLdW5kcsOhdCA8amFuLmt1bmRy
YXRAY2VzbmV0LmN6PiB3cml0ZXM6Cj4+IAo+PiA+IE9uIHNvYm90YSAxOC4ga3bEm3RuYSAyMDE5
IDA6NTA6MjggQ0VTVCwgSmFuIEt1bmRyw6F0IHdyb3RlOgo+PiA+Pj4gV2VsbCwgdGhpcyBpcyBq
dXN0IGFib3V0IGNvbmZpZ3VyYXRpb24sIEkgZG9uJ3QgY29uc2lkZXIgdGhpcyBpcwo+PiA+Pj4g
c29tZXRoaW5nIHRoYXQgaXMgYSBjYW5kaWRhdGUgZm9yIGEgZml4Lgo+PiA+Pj4gCj4+ID4+PiBJ
ZiB0aGVyZSBpcyBhIHJlZ3Jlc3Npb24sIHRoZW4sIGl0IGlzIG1heWJlIGxvY2F0ZWQgaW4gdGhl
IEtjb25maWcKPj4gPj4+IGRlcGVuZGVuY3kuCj4+ID4+PiAKPj4gPj4+IE9mIGNvdXJzZSBJIGNh
biBjaGFuZ2UgbXkgbWluZCB3aXRoIGdvb2QgYXJndW1lbnRzIDopCj4+ID4+Cj4+ID4+IEhpIEdy
ZWdvcnksCj4+ID4+IEkgYWdyZWUgdGhhdCBpdCdzIGp1c3QgYSBjb25maWcgYnVnLCBidXQgaXQn
cyBhbHNvIHNvbWV0aGluZyAKPj4gPj4gd2hpY2ggY2FuIHNpbGVudGx5IHByb2R1Y2UgYnJva2Vu
IHN5c3RlbXMuIElmIHRoaXMgaXMgbm90IGZpeGVkLCAKPj4gPj4gcGVvcGxlIGJ1aWxkaW5nIHRo
ZWlyIDUuMiBrZXJuZWxzIHdpbGwgbm90IGhhdmUgd29ya2luZyBuZXR3b3JrIAo+PiA+PiBvbiBD
bGVhcmZvZyB1bmxlc3MgdGhleSB0YWtlIGFuIGV4dHJhIGFjdGlvbi4gRm9yIGV4YW1wbGUsIGEg
Cj4+ID4+IEJ1aWxkcm9vdCBkZWZjb25maWcgdGhhdCdzIGJlZW4gYXZhaWxhYmxlIGZvciBxdWl0
ZSBzb21lIHRpbWUgCj4+ID4+IChhbmQgd2hpY2ggdXNlcyBqdXN0IGBtdmVidV92N19kZWZjb25m
aWdgIGZvciBrZXJuZWwpIHN1ZGRlbmx5IAo+PiA+PiBiZWNvbWVzIGJyb2tlbi4KPj4gPj4KPj4g
Pj4gSXNuJ3QgdGhlIHdob2xlIHBvaW50IG9mIHRoZSAtcmMgcmVsZWFzZSB0byBmaW5kICphbmQq
IGZpeCBidWdzIAo+PiA+PiBlYXJseT8gVGhpcyB0cml2aWFsIHBhdGNoIGRvZXMgbm90IGludHJv
ZHVjZSBhbnkgbmV3IG9yIHVudGVzdGVkIAo+PiA+PiBjb2RlLiBJIG1hZGUgYSBjaG9pY2UgdG8g
dGVzdCBhIHByZS1yZWxlYXNlIGtlcm5lbCwgSSBoaXQgYSBidWcgCj4+ID4+IC0tIG5vIGJpZyBk
ZWFsLiBJIGZvdW5kIHRoZSByb290IGNhdXNlLCBJIHNlbnQgYSB0cml2aWFsIGZpeCAKPj4gPj4g
dXBzdHJlYW0sIGFuZCBub3cgSSdtIHRvbGQgYnkgYSBtYWludGFpbmVyIHRoYXQgdGhleSB3aWxs
IGxldCAKPj4gPj4gdGhlIG5leHQga2VybmVsIHZlcnNpb24sIHdoaWNoIGlzIGFib3V0IHNldmVu
IC1yYyByZWxlYXNlcyBhd2F5LCAKPj4gPj4gYmUgcmVsZWFzZWQgd2l0aG91dCBhIGZ1bGx5IGZ1
bmN0aW9uaW5nIG5ldHdvcmssIEkgYW0gc3VycHJpc2VkIAo+PiA+PiBieSB0aGF0LiBJIHdvdWxk
IGhhdmUgdW5kZXJzdG9vZCB0aGlzIGJldHRlciBpZiB3ZSB3ZXJlIGF0IHRoZSAKPj4gPj4gZmlu
YWwgLXJjIHN0YWdlLCBidXQgZHVyaW5nIHRoZSBtZXJnZSB3aW5kb3c/IE9yIGlzIHRoYXQgcGVy
aGFwcyAKPj4gPj4gYSBtaXN1bmRlcnN0YW5kaW5nIGFuZCB5b3UncmUgcGxhbm5pbmcgdG8gc2Vu
ZCB0aGlzIGluIHRpbWUgCj4+ID4+IGFmdGVyIC1yYzE/Cj4+ID4KPj4gPiBIaSBHcmVnb3J5LAo+
PiA+IHdhcyBJIHN1Y2Nlc3NmdWwgaW4gcGVyc3VhZGluZyB5b3UgdGhhdCB0aGlzIHBhdGNoIHNo
b3VsZCBiZSBpbmNsdWRlZCBpbiAKPj4gPiB0aGUgNS4yIHRyZWUsIHNvIHRoYXQgQ2xlYXJmb2cg
QmFzZSBoYXMgYWxsIHRocmVlIEV0aGVybmV0IGludGVyZmFjZXM/Cj4+IAo+PiBGaW5hbGx5IEkg
bW92ZWQgdGhlIGNvbW1pdCBmcm9tIG12ZWJ1L2FybSB0byBtdmVidS9maXhlcy4gSSBzdGlsbCB0
aGluawo+PiB0aGUgcHJvYmxlbSBpcyBhdCBkcml2ZXIgbGV2ZWwsIGJ1dCBJIGRpZG4ndCB0YWtl
IGVub3VnaCB0aW1lIHRvIGZpbmQKPj4gd2hlcmUgYW5kIHdlIGRpZG4ndCBoYXZlIGFueSBmZWVk
YmFjayBmcm9tIHRoZSBhdXRob3Igb2YgdGhlIGluaXRpbGEKPj4gcGF0Y2guCj4KPiBJIGRvbid0
IHNlZSB0aGF0IHRoZXJlJ3MgbXVjaCB0aGF0IEkgbmVlZCB0byBzYXksIGFuZCBJJ20gYXQgYSB0
b3RhbAo+IGxvc3MgdG8gd29yayBvdXQgd2h5IHlvdSB0aGluayBpdCdzIGEgcHJvYmxlbSBhdCBk
cml2ZXIgbGV2ZWwuCj4KPiBXaHkgZG8geW91IHRoaW5rIGl0J3MgYXBwcm9wcmlhdGUgZm9yIG12
bmV0YSB0byBrbm93IHdoZXRoZXIgdGhlIGEzOHgKPiBjb21waHkgZHJpdmVyIGlzIGNvbmZpZ3Vy
ZWQgZm9yIHRoZSBjdXJyZW50IGtlcm5lbCBvciBub3QsIGdpdmVuIHRoYXQKPiBtdm5ldGEgaXMg
bm90IGV4Y2x1c2l2ZWx5IHVzZWQgb24gQXJtYWRhIDM4eCBzeXN0ZW1zPwo+Cj4gV2UncmUgYWxy
ZWFkeSBkb2luZyB0aGUgYmVzdCB3ZSBjYW4gZG8gd2l0aCBpZ25vcmluZyB0aGUgY29tcGh5IGlm
Cj4gbm90IHByZXNlbnQ7IHRoZSBvbmx5IGNhc2UgdGhhdCB3ZSBkZWZlciBwcm9iZSBpcyB3aGVu
Cj4gZGV2bV9vZl9waHlfZ2V0KCkgcmV0dXJucyAtRVBST0JFX0RFRkVSLCB3aGljaCBjb3VsZCBt
ZWFuICJ0aGUgY29tcGh5Cj4gZHJpdmVyIGlzIGEgbW9kdWxlIGJ1dCBpcyBub3QgbG9hZGVkIHll
dCIgb3IgInRoZSBjb21waHkgZHJpdmVyIGhhcwo+IG5vdCBiZWVuIHByb2JlZCB5ZXQiIC0gd2Ug
Y2FuJ3QgaWdub3JlIHRob3NlLgo+Cj4+IFNvIGxldCdzIHRyeSB0byBwdXNoIGl0IHRvIGZpeGVz
LCBJIHdpbGwgZG8gdGhlIHB1bGwgcmVxdWVzdCBmb3IgYXJtLXNvYwo+PiBiZWZvcmUgZW5kIG9m
IHRoZSB3ZWVrLgo+Cj4gVGhhdCdzIHRoZSBjb3JyZWN0IHNvbHV0aW9uLCBhbmQgaXQgc2hvdWxk
IGFsc28gaGF2ZSBhIEZpeGVzOiB0YWcgb24KPiBpdC4gIFVuZm9ydHVuYXRlbHksIGtlZXBpbmcg
dGhlIGRlZmNvbmZpZ3MgdXAgdG8gZGF0ZSBpcyBxdWl0ZSBhIGhhcmQKPiBwcm9ibGVtIHVubGVz
cyB5b3UgaGF2ZSBsb3RzIG9mIGNvbXB1dGluZyBwb3dlciB0byBidWlsZCBhbmQgYm9vdCBhbGwK
PiB0aGUgZGVmY29uZmlncyBvbiBhbGwgcGxhdGZvcm1zIChJIGRvbid0LikKClRoYW5rcyBmb3Ig
dGhlIGV4cGxhbmF0aW9uIGFuZCBjb25maXJtYXRpb24uIEFzIHRoZSBpc3N1ZSBhcHBlYXJlZCBv
bmx5CmluIDUuMi1yYzEgdGhlbiBpdCB3b24ndCBiZSBiYWNrcG9ydGVkIGFuZCBmb3IgbXkgcG9p
bnQgb2YgdmlldyB0aGUgbWFpbgppbnRlcmVzdCBvZiBGaXhlcyBpcyBmb3IgdGhlIGJhY2twb3J0
LCB0aGF0J3MgSSB0aG91Z2ggdGhhdCBub3QgaGF2aW5nIGEKRml4ZXMgdGFnIHdhcyBhbiBpc3N1
ZS4KCkJ1dCBJIGRvbid0IG1pbmQgYWRkaW5nIGEgRml4ZXM6IHRhZy4KCkphbiwgZG8geW91IGZp
bmQgd2hpY2ggZXhhY3QgY29tbWl0IGNhdXNlIHRoaXMgcmVncmVzc2lvbj8KClRoYW5rcywKCkdy
ZWdvcnkKCj4KPiAtLSAKPiBSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4
Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBs
aW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cAo+IEFjY29y
ZGluZyB0byBzcGVlZHRlc3QubmV0OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCi0tIApHcmVn
b3J5IENsZW1lbnQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmlu
ZwpodHRwOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

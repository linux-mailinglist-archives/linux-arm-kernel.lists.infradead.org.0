Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE48A4D3DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLEXkqvSHl93TqqK3ye/quc/b2vCgT5aitLJKBiquo8=; b=pThRC/Zsb6C6JR
	TUNorEN2IEZyJW/BvgcR5FCkiBy4XGQ5uLuz/LTW9/cxfgVup3kM+6KmQFFUFF4REDnwojinp7NZ5
	lSlx2qGJ40NKYu6bCcqFf7XfVKRm0bx9jMv1eNTzdNJfVWNXkoMQEgI1kGz5f9f7rdgZaBbNZbtIS
	7zi9TtdIJGhu7vNMoOzicuXbOar4uTKsawrwdbrYEtPCYMWkhgOYbCVuC//kpyME2KY69kgas2oG5
	rL2RsfzedypbUVWBC8vu6Bmdrtt9YxJxyG4rQ79fGQkKvdAFcHObDT5Nank9WVNNaavUbGYjamX/K
	Pm+lSWwiFs4XYXf2dZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he01s-0003Kv-8O; Thu, 20 Jun 2019 16:35:16 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he01G-0003Ac-VJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561048476; bh=o/Mcg/crtvpWxn1wzurghlzWgNJsvC2nPLJ6FrUQ/ak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OOoXpp5AeLGNexNn7LTMlvWNXYoDw13vRczTqVmlZrlW5UUgGhVmdiiIW/gGRUUNV
 aKjs8K0+yW7kBoCdZND1UogtHtgLvmCd+QQ4WN7NRpABKhWBBepxKGW9A8hISzRoBh
 V5ZscyNMoQZc4A5tonmTLLytGu/CoBsMNjJHEPaw=
Date: Thu, 20 Jun 2019 18:34:36 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v7 0/6] Add support for Orange Pi 3
Message-ID: <20190620163436.upg5pkpspyz64brh@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190620134748.17866-1-megous@megous.com>
 <2263144.KN5DhQ2VKD@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2263144.KN5DhQ2VKD@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_093439_531575_33904CD4 
X-CRM114-Status: GOOD (  33.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmVybmVqLAoKT24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMDU6NTM6NThQTSArMDIwMCwgSmVy
bmVqIMWga3JhYmVjIHdyb3RlOgo+IEhpIQo+IAo+IERuZSDEjWV0cnRlaywgMjAuIGp1bmlqIDIw
MTkgb2IgMTU6NDc6NDIgQ0VTVCBqZSBtZWdvdXMgdmlhIGxpbnV4LXN1bnhpIAo+IG5hcGlzYWwo
YSk6Cj4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+IAo+ID4g
VGhpcyBzZXJpZXMgaW1wbGVtZW50cyBzdXBwb3J0IGZvciBYdW5sb25nIE9yYW5nZSBQaSAzIGJv
YXJkLgo+ID4gCj4gPiAtIGV0aGVybmV0IHN1cHBvcnQgKHBhdGNoZXMgMS0zKQo+IAo+IENvcnJl
Y3QgbWUgaWYgSSdtIHdyb25nLCBidXQgcGF0Y2hlcyAxLTIgYXJlbid0IHN0cmljdGx5IG5lY2Vz
c2FyeSBmb3IgCj4gT3JhbmdlUGkgMywgcmlnaHQ/IEg2IERUU0kgYWxyZWFkeSBoYXMgZW1hYyBu
b2RlIHdpdGggZHVhbCBjb21wYXRpYmxlIChINiBhbmQgCj4gQTY0KSBhbmQgc2luY2UgT3Jhbmdl
UGkgMyB1c2VzIGdpZ2FiaXQgZXRoZXJuZXQsIHF1aXJrIGludHJvZHVjZWQgYnkgcGF0Y2hlcyAK
PiAxLTIgYXJlIG5vdCBuZWVkZWQuCgpJJ3ZlIGNoZWNrZWQgd2l0aCB1LWJvb3QgYW5kIG1kLmwg
MHgwMzAwMDAzMCAoc3lzY29uX2ZpZWxkKSBhbmQgdGhlIGFjdHVhbApkZWZhdWx0IHZhbHVlIHRo
ZXJlIG9uIGNvbGQgYm9vdCBpcyAweDU4MDAwLCBqdXN0IGxpa2Ugb24gSDMuCgpIM19FUEhZX1NF
TEVDVCBpcyBCSVQoMTUpCgpUaGF0IG1lYW5zIHRoYXQgdGhvc2UgcGF0Y2hlcyAoMSBhbmQgMikg
YXJlIGJvdGggZG9pbmcgdGhlIHNhbWUgdGhpbmcsIGJhc2ljYWx5LgpIM19FUEhZX1NFTEVDVCBi
aXQgbmVlZHMgdG8gYmUgY2xlYXJlZCwgYW5kIGl0IGlzIGNsZWFyZWQgZWl0aGVyIGV4cGxpY2l0
bHksIG9yCnZpYSBkZWZhdWx0X3N5c2Nvbl92YWx1ZSA9IDB4NTAwMDAuIEl0J3MgYWxzbyBjbGVh
cmVkIGluY2lkZW50YWxseSBieSB1c2luZwplbWFjX3ZhcmlhbnRfYTY0LCBiZWNhdXNlIGl0IGhh
cyBkZWZhdWx0X3N5c2Nvbl92YWx1ZSBzZXQgdG8gMC4KCk1lYW5pbmcgb2YgdGhvc2UgcmVtYWlu
aW5nIHNldCBiaXRzIG9uIEg2WzFdIGFyZSB0aGUgc2FtZSBhcyBvbiBIMy4gQml0IDE2IGlzClNI
VVRET1dOIChvbiAxKSBhbmQgYml0IDE4IGlzIENMS19TRUwuIEF0IGxlYXN0IFNIVVRET1dOIGJp
dCBzaG91bGQgYmUga2VwdApoaWdoLCBhcyBpdCBrZWVwcyB0aGUgRVBIWSBzaHV0IGRvd24uIE5v
cm1hbGx5IHRoYXQgd291bGQgYmUgZW5zdXJlZCBieSB0aGUKY29kZSwgYnV0IG9ubHkgaWYgc29j
X2hhc19pbnRlcm5hbF9waHkgaXMgdHJ1ZSwgd2hpY2ggaXQgaXMgbm90IGZvcgplbWFjX3Zhcmlh
bnRfYTY0LgoKVGh1cyB0aGUgcGF0Y2ggYWRkcyB0aGUgZW1hY192YXJpYW50X2g2IHdpdGggYSBk
aWZmZXJlbnQgZGVmYXVsdF9zeXNjb25fdmFsdWUKZnJvbSBBNjQuCgpEb3NlIHRoZSBTSFVURE9X
TiBiaXQgbWF0dGVyIG9uIEg2PyBJIGRvbid0IGtub3cuIEknbSBqdXN0IHRyeWluZyB0byBrZWVw
IHRoZQpkZWZhdWx0IHZhbHVlcyBvZiB0aGVzZSBiaXRzIHVuY2hhbmdlZC4gTWF5YmUgaXQgd291
bGQgYmUgbmljZXIgdG8gaGF2ZQpkZWZhdWx0X3N5c2Nvbl92YWx1ZSBiZSAweDU4MDAwIG9uIEg2
LCB0byBhdm9pZCB0aGUgYm9vdCB3YXJuaW5nLgoKZHdtYWMtc3VuOGkgNTAyMDAwMC5ldGhlcm5l
dDogQ3VycmVudCBzeXNjb24gdmFsdWUgaXMgbm90IHRoZSBkZWZhdWx0IDU4MDAwIChleHBlY3Qg
NTAwMDApCgpUaGUgc2FtZSB3YXJuaW5nIGlzIHRoZXJlIHdpdGggQTY0IGNvbXBhdGlibGUgKHdp
dGggImV4cGVjdCAwIikuCgpbMV0gU2VlIHBhZ2UgMjM4IGluIEg2IG1hbnVhbC4KCnJlZ2FyZHMs
CglvLgoKPiBIb3dldmVyLCBpdCBpcyBuaWNlIHRvIGhhdmUgdGhpcyAxMDAgTWJpdCBmaXgsIGJl
Y2F1c2UgbW9zdCBTVEIgRFRTIHdpbGwgbmVlZCAKPiBpdC4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4g
SmVybmVqCj4gCj4gPiAtIEhETUkgc3VwcG9ydCAocGF0Y2hlcyA0LTYpCj4gPiAKPiA+IEZvciBz
b21lIHBlb3BsZSwgZXRoZXJuZXQgZG9lc24ndCB3b3JrIGFmdGVyIHJlYm9vdCAoYnV0IHdvcmtz
IG9uIGNvbGQKPiA+IGJvb3QpLCB3aGVuIHRoZSBzdG1tYWMgZHJpdmVyIGlzIGJ1aWx0IGludG8g
dGhlIGtlcm5lbC4gSXQgd29ya3Mgd2hlbgo+ID4gdGhlIGRyaXZlciBpcyBidWlsdCBhcyBhIG1v
ZHVsZS4gSXQncyBlaXRoZXIgc29tZSB0aW1pbmcgaXNzdWUsIG9yIHBvd2VyCj4gPiBzdXBwbHkg
aXNzdWUgb3IgYSBjb21iaW5hdGlvbiBvZiBib3RoLiBNb2R1bGUgYnVpbGQgaW5kdWNlcyBhIHBv
d2VyCj4gPiBjeWNsaW5nIG9mIHRoZSBwaHkuCj4gPiAKPiA+IEkgZW5jb3VyYWdlIHBlb3BsZSB3
aXRoIHRoaXMgaXNzdWUsIHRvIGJ1aWxkIHRoZSBkcml2ZXIgaW50byB0aGUga2VybmVsLAo+ID4g
YW5kIHRyeSB0byBhbHRlciB0aGUgcmVzZXQgdGltaW5ncyBmb3IgdGhlIHBoeSBpbiBEVFMgb3IK
PiA+IHN0YXJ0dXAtZGVsYXktdXMgYW5kIHJlcG9ydCB0aGUgZmluZGluZ3MuCj4gPiAKPiA+IAo+
ID4gUGxlYXNlIHRha2UgYSBsb29rLgo+ID4gCj4gPiB0aGFuayB5b3UgYW5kIHJlZ2FyZHMsCj4g
PiAgIE9uZHJlaiBKaXJtYW4KPiA+IAo+ID4gCj4gPiBDaGFuZ2VzIGluIHY3Ogo+ID4gLSBkcm9w
cGVkIHN0b3JlZCByZWZlcmVuY2UgdG8gY29ubmVjdG9yX3BkZXYgYXMgc3VnZ2VzdGVkIGJ5IEpl
cm5lago+ID4gLSBhZGRlZCBmb3Jnb3R0ZW4gZHQtYmluZGluZ3MgcmV2aWV3ZWQtYnkgdGFnCj4g
PiAKPiA+IENoYW5nZXMgaW4gdjY6Cj4gPiAtIGFkZGVkIGR0LWJpbmRpbmdzIHJldmlld2VkLWJ5
IHRhZwo+ID4gLSBmaXggd29yZGluZyBpbiBzdG1tYWMgY29tbWl0IChhcyBzdWdnZXN0ZWQgYnkg
U2VyZ2VpKQo+ID4gCj4gPiBDaGFuZ2VzIGluIHY1Ogo+ID4gLSBkcm9wcGVkIGFscmVhZHkgYXBw
bGllZCBwYXRjaGVzIChwaW5jdHJsIHBhdGNoZXMsIG1tYzEgcGluY29uZiBwYXRjaCkKPiA+IC0g
cmVuYW1lIEdNQUMtM1YzIC0+IEdNQUMtM1YgdG8gbWF0Y2ggdGhlIHNjaGVtYXRpYyAoSmFnYW4p
Cj4gPiAtIGNoYW5nZWQgaGRtaS1jb25uZWN0b3IncyBkZGMtc3VwcGx5IHByb3BlcnR5IHRvIGRk
Yy1lbi1ncGlvcwo+ID4gICAoUm9iIEhlcnJpbmcpCj4gPiAKPiA+IENoYW5nZXMgaW4gdjQ6Cj4g
PiAtIGZpeCBjaGVja3BhdGNoIHdhcm5pbmdzL3N0eWxlIGlzc3Vlcwo+ID4gLSB1c2UgZW51bSBp
biBzdHJ1Y3Qgc3VueGlfZGVzY19mdW5jdGlvbiBmb3IgaW9fYmlhc19jZmdfdmFyaWFudAo+ID4g
LSBjb2xsZWN0ZWQgYWNrZWQtYnkncwo+ID4gLSBmaXggY29tcGlsZSBlcnJvciBpbiBkcml2ZXJz
L3BpbmN0cmwvc3VueGkvcGluY3RybC1zdW45aS1hODAtci5jOjE1Ngo+ID4gICBjYXVzZWQgYnkg
bWlzc2luZyBjb252ZXJzaW9uIGZyb20gaGFzX2lvX2JpYXNfY2ZnIHN0cnVjdCBtZW1iZXIKPiA+
ICAgKEkndmUga2VwdCB0aGUgYWNrZWQtYnksIGJlY2F1c2UgaXQncyBhIHRyaXZpYWwgY2hhbmdl
LCBidXQgZmVlbCBmcmVlCj4gPiAgIHRvIG9iamVjdC4pIChyZXBvcnRlZCBieSBNYXJ0aW4gQS4g
b24gZ2l0aHViKQo+ID4gICBJIGRpZCBub3QgaGF2ZSBBODAgcGluY3RybCBlbmFibGVkIGZvciBz
b21lIHJlYXNvbiwgc28gSSBkaWQgbm90IGNhdGNoCj4gPiAgIHRoaXMgc29vbmVyLgo+ID4gLSBk
cm9wcGVkIGJyY20gZmlybXdhcmUgcGF0Y2ggKHdhcyBhbHJlYWR5IGFwcGxpZWQpCj4gPiAtIGRy
b3BwZWQgdGhlIHdpZmkgZHRzIHBhdGNoICh3aWxsIHJlLXNlbmQgYWZ0ZXIgSDYgUlRDIGdldHMg
bWVyZ2VkLAo+ID4gICBhbG9uZyB3aXRoIGJsdWV0b290aCBzdXBwb3J0LCBpbiBhIHNlcGFyYXRl
IHNlcmllcykKPiA+IAo+ID4gQ2hhbmdlcyBpbiB2MzoKPiA+IC0gZHJvcHBlZCBhbHJlYWR5IGFw
cGxpZWQgcGF0Y2hlcwo+ID4gLSBjaGFuZ2VkIHBpbmN0cmwgSS9PIGJpYXMgc2VsZWN0aW9uIGNv
bnN0YW50cyB0byBlbnVtIGFuZCByZW5hbWVkCj4gPiAtIGFkZGVkIC9vbWl0LWlmLW5vLXJlZi8g
dG8gbW1jMV9waW5zCj4gPiAtIG1hZGUgbW1jMV9waW5zIGRlZmF1bHQgcGluY29uZiBmb3IgbW1j
MSBpbiBINiBkdHNpCj4gPiAtIG1vdmUgZGRjLXN1cHBseSB0byBIRE1JIGNvbm5lY3RvciBub2Rl
LCB1cGRhdGVkIHBhdGNoIGRlc2NyaXB0aW9ucywKPiA+ICAgY2hhbmdlZCBkdC1iaW5kaW5ncyBk
b2NzCj4gPiAKPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAtIGFkZGVkIGR0LWJpbmRpbmdzIGRvY3Vt
ZW50YXRpb24gZm9yIHRoZSBib2FyZCdzIGNvbXBhdGlibGUgc3RyaW5nCj4gPiAgIChzdWdnZXN0
ZWQgYnkgQ2xlbWVudCkKPiA+IC0gYWRkcmVzc2VkIGNoZWNrcGF0Y2ggd2FybmluZ3MgYW5kIGNv
ZGUgZm9ybWF0dGluZyBpc3N1ZXMgKG9uIE1heGltZSdzCj4gPiAgIHN1Z2dlc3Rpb25zKQo+ID4g
LSBzdG1tYWM6IGRyb3BwZWQgdXNlbGVzcyBwYXJlbnRoZXNpcywgcmV3b3JkZWQgZGVzY3JpcHRp
b24gb2YgdGhlIHBhdGNoCj4gPiAgIChzdWdnZXN0ZWQgYnkgU2VyZ2VpKQo+ID4gLSBkcm9wIHVz
ZWxlcyBkZXZfaW5mbygpIGFib3V0IHRoZSBzZWxlY3RlZCBpbyBiaWFzIHZvbHRhZ2UKPiA+IC0g
ZG9jdW1tZW50ZWQgaW8gdm9sdGFnZSBiaWFzIHNlbGVjdGlvbiB2YXJpYW50IG1hY3Jvcwo+ID4g
LSB3aWZpOiBtYXJrZWQgV2lGaSBEVFMgcGF0Y2ggYW5kIHJlYWx0ZWQgbW1jMV9waW5zIGFzICJE
TyBOT1QgTUVSR0UiLAo+ID4gICBiZWNhdXNlIHdpZmkgZGVwZW5kcyBvbiBINiBSVEMgc3VwcG9y
dCB0aGF0J3Mgbm90IG1lcmdlZCB5ZXQgKHN1Z2dlc3RlZAo+ID4gICBieSBDbGVtZW50KQo+ID4g
LSBhZGRlZCBtaXNzaW5nIHNpZ25lZC1vZi1ieXMKPiA+IC0gY2hhbmdlZCAmdXNiMm90ZyBkcl9t
b2RlIHRvIG90ZywgYW5kIGFkZGVkIGEgbm90ZSBhYm91dCBWQlVTCj4gPiAtIGltcHJvdmVkIHdv
cmRpbmcgb2YgSERNSSBkcml2ZXIncyBEREMgcG93ZXIgc3VwcGx5IHBhdGNoCj4gPiAKPiA+IElj
ZW5vd3kgWmhlbmcgKDIpOgo+ID4gICBuZXQ6IHN0bW1hYzogc3VuOGk6IGFkZCBzdXBwb3J0IGZv
ciBBbGx3aW5uZXIgSDYgRU1BQwo+ID4gICBuZXQ6IHN0bW1hYzogc3VuOGk6IGZvcmNlIHNlbGVj
dCBleHRlcm5hbCBQSFkgd2hlbiBubyBpbnRlcm5hbCBvbmUKPiA+IAo+ID4gT25kcmVqIEppcm1h
biAoNCk6Cj4gPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogb3JhbmdlLXBpLTM6IEVuYWJsZSBl
dGhlcm5ldAo+ID4gICBkdC1iaW5kaW5nczogZGlzcGxheTogaGRtaS1jb25uZWN0b3I6IFN1cHBv
cnQgRERDIGJ1cyBlbmFibGUKPiA+ICAgZHJtOiBzdW40aTogQWRkIHN1cHBvcnQgZm9yIGVuYWJs
aW5nIEREQyBJMkMgYnVzIHRvIHN1bjhpX2R3X2hkbWkgZ2x1ZQo+ID4gICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IG9yYW5nZS1waS0zOiBFbmFibGUgSERNSSBvdXRwdXQKPiA+IAo+ID4gIC4uLi9k
aXNwbGF5L2Nvbm5lY3Rvci9oZG1pLWNvbm5lY3Rvci50eHQgICAgICB8ICAxICsKPiA+ICAuLi4v
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMgICAgfCA3MCArKysrKysrKysr
KysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX2R3X2hkbWkuYyAgICAg
ICAgIHwgNTQgKysrKysrKysrKysrLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlf
ZHdfaGRtaS5oICAgICAgICAgfCAgMiArCj4gPiAgLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1zdW44aS5jIHwgMjEgKysrKysrCj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

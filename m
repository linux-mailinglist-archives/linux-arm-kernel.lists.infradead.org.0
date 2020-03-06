Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C72417BA41
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAMvIs0IaUwTQXubZ+folhOD7ZyjSsx+qWeRs3dPISs=; b=derVxI3HQDST+s
	5UZK0EDv5o2kwyxbOWWTizhhs1KWqe4BHtopbWsyXfwGLyNJHBbHGZCePAvDr3MaFaCbmbvGjekP4
	Y+FnAy+tD+O3gcKkJ2ujFzVnMIFcKSldRnrr/8xQh9C+Tcdlqp8nHWDs/k4jyrAYnMOhAAnPTLBgb
	5gsw0K7zpUFBqSAvtkGCyarUsgZK7sTTswOJOwB6cpg35ShpYwdS8FHK3cRf9X/FuE79l3yz5ongN
	MChRGj2Puo3vBoGwjN3wJpwp7oVsVjszFBVtEn5t5deC2XqyHFoxnHGF2EFy7RpoCi6LkLvrYOuio
	F19T4GEpQ/JabBPaB8MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAGG-0005R8-D3; Fri, 06 Mar 2020 10:31:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAG7-0005QZ-RM; Fri, 06 Mar 2020 10:31:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id EC114296FC2
Message-ID: <8f3ef079b0c96d65e5855a58efd6d8dc32cd32e7.camel@collabora.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Kever Yang <kever.yang@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?=
 <heiko@sntech.de>
Date: Fri, 06 Mar 2020 07:30:56 -0300
In-Reply-To: <933e1ce3-68be-9e78-18a3-eb3d4e038cfb@rock-chips.com>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <5fa8402863c7fb4171d8b2021a776b9ac0be1596.camel@collabora.com>
 <35989681.7qWAQounLj@diego>
 <8b993ec8ae9dccc6a8633cfe5e5b6d40d58ffbae.camel@collabora.com>
 <506e1aeda3ed14276734f22f320b0ceb6a4b06b0.camel@collabora.com>
 <933e1ce3-68be-9e78-18a3-eb3d4e038cfb@rock-chips.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023112_150051_7EA83386 
X-CRM114-Status: GOOD (  30.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>,
 sboyd@kernel.org, mturquette@baylibre.com, linux@armlinux.org.uk,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAzLTA2IGF0IDEwOjQ0ICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+IEhp
IEV6ZXF1aWVsLAo+IAo+IAo+IE9uIDIwMjAvMy81IOS4i+WNiDc6MzUsIEV6ZXF1aWVsIEdhcmNp
YSB3cm90ZToKPiA+IChBZGRpbmcgS2V2ZXIgdG8gdGhlIGxvb3ApCj4gPiAKPiA+IE9uIFRodSwg
MjAyMC0wMy0wNSBhdCAwODozMiAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gPiBP
biBUaHUsIDIwMjAtMDMtMDUgYXQgMDE6NTEgKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
ID4gPiA+IEhpIEV6ZXF1aWVsLAo+ID4gPiA+IAo+ID4gPiA+IEFtIERvbm5lcnN0YWcsIDUuIE3D
pHJ6IDIwMjAsIDAxOjAzOjMwIENFVCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNpYToKPiA+ID4gPiA+
IEhpIEhlaWtvLAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBPbiBXZWQsIDIwMjAtMDMtMDQgYXQgMTE6
NTkgKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IEFtIE1vbnRhZywgMi4gTcOkcnogMjAyMCwgMTY6NTc6MDIgQ0VUIHNj
aHJpZWIgTXlsw6huZSBKb3NzZXJhbmQ6Cj4gPiA+ID4gPiA+ID4gRGV0ZXJtaW5lIHdoaWNoIHJl
dmlzaW9uIG9mIHJrMzI4OCBieSBjaGVja2luZyB0aGUgSERNSSB2ZXJzaW9uLgo+ID4gPiA+ID4g
PiA+IEFjY29yZGluZyB0byB0aGUgUm9ja2NoaXAgQlNQIGtlcm5lbCwgb24gcmszMjg4dywgdGhl
IEhETUkKPiA+ID4gPiA+ID4gPiByZXZpc2lvbiBlcXVhbHMgMHgxQSB3aGljaCBpcyBub3QgdGhl
IGNhc2UgZm9yIHRoZSByazMyODggWzFdLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEFz
IHRoZXNlIFNPQyBoYXZlIHNvbWUgZGlmZmVyZW5jZXMsIHRoZSBuZXcgZnVuY3Rpb24KPiA+ID4g
PiA+ID4gPiAnc29jX2lzX3JrMzI4OHcnIHdpbGwgaGVscCB1cyB0byBrbm93IG9uIHdoaWNoIHJl
dmlzaW9uCj4gPiA+ID4gPiA+ID4gd2UgYXJlLgo+ID4gPiA+ID4gPiB3aGF0IGhhcHBlbmVkIHRv
IGp1c3QgaGF2aW5nIGEgZGlmZmVyZW50IGNvbXBhdGlibGUgaW4gdGhlIGR0cz8KPiA+ID4gPiA+
ID4gQWthIGRvaW5nIGEKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IHJrMzI4OHcuZHRzaSB3aXRo
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAjaW5jbHVkZSAicmszMjg4LmR0c2kiCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiAmY3J1IHsKPiA+ID4gPiA+ID4gCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMjg4dy1jcnUiOwo+ID4gPiA+ID4gPiB9Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBn
dWVzcyB5b3UgaGF2ZSBzb21ldGhpbmcgbGlrZSB0aGlzIGluIG1pbmQ6Cj4gPiA+ID4gPiAKPiA+
ID4gPiA+IHN0YXRpYyB2b2lkIF9faW5pdCByazMyODhfY2xrX2luaXQoc3RydWN0IGRldmljZV9u
b2RlICpucCkKPiA+ID4gPiA+IHsKPiA+ID4gPiA+ICAgICAgICAgIF9fcmszMjg4X2Nsa19pbml0
KG5wLCBSSzMyODhfU09DX1JFVl9SSzMyODhXKTsKPiA+ID4gPiA+IH0KPiA+ID4gPiA+IENMS19P
Rl9ERUNMQVJFKHJrMzI4OF9jcnUsICJyb2NrY2hpcCxyazMyODgtY3J1IiwgcmszMjg4X2Nsa19p
bml0KTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gc3RhdGljIHZvaWQgX19pbml0IHJrMzI4OHdfY2xr
X2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiA+ID4gPiA+IHsKPiA+ID4gPiA+ICAgICAg
ICAgIF9fcmszMjg4X2Nsa19pbml0KG5wLCBSSzMyODhfU09DX1JFVl9SSzMyODgpOwo+ID4gPiA+
ID4gfQo+ID4gPiA+ID4gQ0xLX09GX0RFQ0xBUkUocmszMjg4X2NydSwgInJvY2tjaGlwLHJrMzI4
OHctY3J1IiwgcmszMjg4d19jbGtfaW5pdCk7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFuZCB0aGUg
cmVzdCBpcyBtb3N0bHkgdW50b3VjaGVkLCBleGNlcHQgdGhlIHJldmlzaW9uIGlzCj4gPiA+ID4g
PiBubyBsb25nZXIgcXVlcmllZCBhbmQgaXMgbm93IHBhc3NlZCBieSB0aGUgRFQ/Cj4gPiA+ID4g
RXNzZW50aWFsbHkgeWVzLCBidXQgSSBndWVzcyBJIHdhcyBtb3JlIHRoaW5raW5nIGFsb25nIHRo
ZSBsaW5lcyBvZgo+ID4gPiA+IHRoZSByazMxODgvcmszMDY2YS9yazMxODhhIChkcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGstcmszMTg4LmMpCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gPiBUaGlz
IHdvdWxkIGJlIGNsZWFuZXIgZm9yIHRoZSBrZXJuZWwsIHdpdGggdGhlIG9idmlvdXMKPiA+ID4g
PiA+IGRyYXdiYWNrIGJlaW5nIHRoYXQgeW91IG5vdyBoYXZlIHRvIG1haW50YWluCj4gPiA+ID4g
PiBhbm90aGVyIERUUy4KPiA+ID4gPiBSaWdodCBub3cgd2Ugd291bGQgZW5kIHVwIHdpdGggdGhl
IHByZXR0eSBtaW5pbWFsIGRldmljZXRyZWUKPiA+ID4gPiBoYXZpbmcganVzdCB0aGF0IGNydS4g
U28gbm90IHZlcnkgaW52YXNpdmUuCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIGNv
dWxkIGJlIGFuIGluY29udmVuaWVuY2UuIEkgYmVsaWV2ZQo+ID4gPiA+ID4gUkszMjg4VyBpcyBt
ZWFudCBhcyBhIGRpcmVjdCByZXBsYWNlbWVudCBmb3IgUkszMjg4LAo+ID4gPiA+ID4gc28gZm9s
a3MgYnVpbGRpbmcgcHJvZHVjdHMgd291bGQgZXhwZWN0IHRvIGp1c3QgdXNlCj4gPiA+ID4gPiBS
SzMyODhXLCBhbmQgbm90IHJlYWxseSBib3RoZXIgd2l0aCBwYXNzaW5nIGEKPiA+ID4gPiA+IGRp
ZmZlcmVudCBEVFMgb3Igd2hhdCBub3QuCj4gPiA+ID4gTm90IHN1cmUgSSBmb2xsb3cuIEFzIGJl
bG93LCBJIGRvbid0IHRoaW5rIGJvYXJkcyB3aWxsIG1hZ2ljYWxseSBzd2l0Y2gKPiA+ID4gPiBi
ZXR3ZWVuIHNvYyB2YXJpYW50cywgc28gYSBib2FyZHMgZGV2aWNldHJlZSBzaG91bGQganVzdCBp
bmNsdWRlCj4gPiA+ID4gdGhlIHZhcmlhbnQgLSBlc3BlY2lhbGx5IGFzIEkgZG9uJ3QgcmVhbGx5
IGtub3cgaG93IG1hbnkKPiA+ID4gPiBhZGRpdGlvbmFsIG5ldyBib2FyZHMgd2Ugd2lsbCBzZWUg
d2l0aCBpdCAocmszMjg4IGJlaW5nIHF1aXRlIG9sZCBpdHNlbGYpLgo+ID4gPiA+IAo+ID4gPiBJ
dCdzIG5vdCBhYm91dCBuZXcgYm9hcmRzLCBhbnkgY29tcGFueSBkb2VzIHNlbGxzIHNvbWUgUksz
Mjg4OC1iYXNlZCBwcm9kdWN0LAo+ID4gPiB3aWxsIGV2ZW50dWFsbHkgd2FudCB0byBwcm9kdWNl
IHNvbWUgbW9yZS4KPiA+ID4gCj4gPiA+IElmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIFJLMzI4
OFcgaXMgdGhlIFNvQyB0aGF0IFJvY2tjaGlwIGlzIG5vdyBvZmZlcmluZywKPiA+ID4gYW5kIG5v
dCBSSzMyODggYW55bW9yZS4KPiAKPiBObywgdGhlIFJLMzI4OCB3aWxsIGNvbnRpbnVlIHRvIHN1
cHBseSB0byB0aGUgbGVnYWN5IHByb2plY3RzIHdoaWNoIG1heSAKPiBoYXZlIGEgbG9uZyBjb250
cmFjdCB3aXRoIFJvY2tjaGlwLAo+IAo+IGFuZCBSSzMyODhXIGlzIHRoZSByZWNvbW1lbmQgdG8g
dXNlIGluIGFsbCBuZXcgcHJvamVjdC4KPiAKCkkgZ3Vlc3MgdGhpcyBtZWFucyB0aGF0IGlmIGEg
Y29tcGFueSBub3QgaGF2aW5nIGEgbG9uZyBjb250cmFjdAp3YW50cyB0byBrZWVwIHByb2R1Y2lu
ZyBhbiBSSzMyODgtYmFzZWQgcHJvZHVjdCwgaXQgd2lsbCBoYXZlIHRvCnJlc29ydCB0byBSSzMy
ODhXLgoKQW5kIElJUkMsIGl0J3MgbWVhbnQgdG8gYmUgYSBkaXJlY3QgcmVwbGFjZW1lbnQuCiAK
PiA+ID4gU28sIGlmIHlvdSBoYXZlIHRvIHByb2R1Y2UgYW5vdGhlciBiYXRjaCBvZiBfdGhlIHNh
bWUgUkszMjg4XyBwcm9kdWN0LAo+ID4gPiB5b3UnbGwgaGF2ZSB0byB1c2UgUkszMjg4Vy4gSW4g
b3RoZXIgd29yZHMsIHRoZXkgd291bGQgImp1c3Qgc3dpdGNoIgo+ID4gPiBiZXR3ZWVuIFNvQyB2
YXJpYW50cy4KPiA+ID4gCj4gPiA+IEluIGZhY3QsIHN1Y2ggYSBjYXNlIG1vdGl2YXRlcyB0aGVz
ZSBwYXRjaGVzIDotKQo+ID4gPiAKPiA+ID4gPiA+ID4gSSBzb21laG93IGRvbid0IGV4cGVjdCBi
b2FyZHMgdG8ganVzdCBzd2l0Y2ggYmV0d2VlbiBzb2MgdmFyaWFudHMKPiA+ID4gPiA+ID4gb24g
dGhlIGZseS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiBXaGlsZSBJIGFncmVlIHRoZXkgYXJlIG5h
c3R5LCBxdWlya3MgbGlrZSB0aGlzCj4gPiA+ID4gPiBhcmUgbm90IHVuY29tbW9uLgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IEFsc28sIGRvaW5nIHRoaW5ncyBpbiBtYWNoLXJvY2tjaGlwIGlzIG5v
dCB2ZXJ5IGZ1dHVyZS1wcm9vZjoKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGVyZSBpcyBhY3R1
YWxseSBubyByZWFzb24gdG8ga2VlcCB0aGlzIGluIG1hY2gtcm9ja2NoaXAsIHJpZ2h0Pwo+ID4g
PiA+ID4gCj4gPiA+ID4gPiBUaGUgcXVpcmsgY291bGQgYmUgcGxhY2VkIGluIG90aGVyIHBsYWNl
cy4gRm9yIGluc3RhbmNlLAo+ID4gPiA+ID4gZGlyZWN0bHkgaW4gdGhlIGNsb2NrIGRyaXZlci4K
PiA+ID4gPiBNYXBwaW5nIHRoZSBoZG1pIGNvbnRyb2xsZXIgaW5zaWRlIHRoZSBjbG9jayBkcml2
ZXIgdG8gcmVhZCBzb21lICJyYW5kb20iCj4gPiA+ID4gcmVnaXN0ZXIgdGhhdCBob3BlZnVsbHkg
aW5kaWNhdGVzIGFuICh1bmRvY3VtZW50ZWQpIGRpc3RpbmN0aW9uIGJldHdlZW4gc29jCj4gPiA+
ID4gdmFyaWFudHMuCj4gPiA+ID4gCj4gPiA+ID4gU29tZWhvdyBqdXN0IGhhdmluZyB0aGF0IG1p
bmltYWwgZGV2aWNldHJlZSBmb3IgdGhlICJ3IiBzb3VuZHMKPiA+ID4gPiB3YXkgY2xlYW5lciA7
LSkgLgo+IAo+IEkgYWdyZWUgd2l0aCBIZWlrbyBvbiB0aGlzLgo+IAo+IFdoYXQgUm9ja2NoaXAg
ZG9uZSBpczoKPiAKPiAtIGtlcm5lbCBpcyB1c2luZyAicm9ja2NoaXAscmszMjg4dyIgY29tcGF0
aWJsZSB0byBpZGVudGlmeSByazMyODh3LCAKPiB3aGljaCBpcyBjbGVhbiBpbiBrZXJuZWw7Cj4g
Cj4gLSBrZXJuZWwgZXZiIGR0cyBkbyBub3QgaGF2ZSBjb21wYXRpYmxlICJyb2NrY2hpcCxyazMy
ODh3IiBmb3Igd2Ugd291bGQgCj4gbGlrZSB0byBpZGVudGlmeSBpdCBkeW5hbWljIGluIGJvb3Rs
b2FkZXI7Cj4gCj4gLSBXZSB1c2UgVS1Cb290IHRvIGlkZW50aWZ5IHRoZSByazMyODh3IHdpdGgg
SERNSSByZWcgdmFsdWUsIGFuZCBwYXNzIGl0IAo+IHRvIGtlcm5lbCB2aWEgbW9kaWZ5IHRoZQo+
IAo+ICAgICBkdGIgcGFzcyB0byBrZXJuZWwsIHNvIHRoYXQgd2UgY2FuIHN1cHBvcnQgYWxsIGtp
bmQgb2Ygcm9ja2NoaXAgCj4gY3VzdG9tZXIgcHJvamVjdHMgd2l0aCBhbnkga2luZCBvZiByazMy
ODg7Cj4gCj4gLSBGb3IgdXBzdHJlYW0ga2VybmVsLCBpdCBtYWtlIHNlbnNlIHRvIGFkZCAicm9j
a2NoaXAscmszMjg4dyIgaW4gYm9hcmQgCj4gZHRzIGZvciB3aGljaCB1c2luZyByazMyODh3IFNv
Qy4KPiAKClNvIHlvdSBwcm9wb3NpbmcgdG8gbW92ZSB0aGlzIHJldmlzaW9uIGRldGVjdGlvbiBj
b2RlCmZyb20gdGhlIGtlcm5lbCB0byBhbGwgdGhlIGJvb3Rsb2FkZXJzIChVLUJvb3QgaXMgbm90
IHRoZQpvbmx5IG9uZSwgcmlnaHQ/KS4KCkkgdW5kZXJzdGFuZCB0aGF0IGJvb3Rsb2FkZXJzIGFy
ZSBtYXliZSBsZXNzIHN0cmljdAp0byBxdWlya3MgbGlrZSB0aGlzLCBidXQgT1RPSCB0aGlzIGFw
cHJvYWNoIHNlZW1zIGxpa2UKanVzdCBtb3ZpbnQgdGhpbmdzIGFyb3VuZCwgcGx1cyByZXF1aXJp
bmcgbm93IHRvIHVwZGF0ZQp0d28gY29tcG9uZW50cywgaW5zdGVhZCBvZiBqdXN0IG9uZS4KCkFu
ZCBhbHNvLCBhcmUgd2Ugc3VyZSB0aGUgYm9vdGxvYWRlcnMgbWFpbnRhaW5lcnMKd2lsbCBhY2Nl
cHQgdGhlIHF1aXJrPwoKVGhhbmtzLApFemVxdWllbAoKIAoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

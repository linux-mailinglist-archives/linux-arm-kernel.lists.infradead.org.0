Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9127F84F0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfXVTY3IVv+gofTP66AYu6bl7gF68B5YMDO9d0GyACI=; b=a5c3cFk62n76uK
	h8nYCNpl6q0AxHmwU61q9sPMNlvYAxyoLswn66Eh19KSFS6c0WH7iarBareVu7rWB6ESCFyhUa0on
	KiiUvwGzlD4uNXu/95/p5k8lYPauOfIub30lOZ0msQWA57ijWFsxN++/8ATy6WOp68RAsBAKu1NoP
	PFfh13pRswbThGex1G9FzkM6DDZ8e0BV9C3gjdfR9g9e7kgFeAwRPkAN3PmZMpObukN/9lhT6UmKY
	eaGRvP4EjLMd/iG+Q1LgJLEDyHdx+6jlnDmtLu8Et8HY5jWEYZOrZzpf95YiOvGZ2XuR1tG7eHif6
	2Nqq766yIZliO4JxO2Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNCk-0003zN-04; Wed, 07 Aug 2019 14:46:18 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNCA-0003du-6E
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:45:44 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BF59520000F;
 Wed,  7 Aug 2019 14:45:34 +0000 (UTC)
Date: Wed, 7 Aug 2019 16:45:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Message-ID: <20190807144533.bbgtmkva34su7c5v@flea>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074542_547744_4E9D474F 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Sunil Mohan Adapa <sunil@medhas.org>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIEF1ZyAwNywgMjAxOSBhdCAwODowOToxOVBNICswODAwLCBDaGVuLVl1IFRz
YWkgd3JvdGU6Cj4gT24gV2VkLCBBdWcgNywgMjAxOSBhdCA4OjAxIFBNIE1heGltZSBSaXBhcmQg
PG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgQXVnIDA2
LCAyMDE5IGF0IDAyOjI1OjE3UE0gKzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gT24g
TW9uLCBBdWcgNSwgMjAxOSBhdCA4OjU4IFBNIE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gRmluZSBmb3IgbWUgdG9vLgo+ID4gPiA+
Cj4gPiA+ID4gVGhhbmtzIC4KPiA+ID4gPgo+ID4gPiA+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUt
LS0tLQo+ID4gPiA+IERlIDogU3VuaWwgTW9oYW4gQWRhcGEgW21haWx0bzpzdW5pbEBtZWRoYXMu
b3JnXQo+ID4gPiA+IEVudm95w6kgOiBNb25kYXksIEF1Z3VzdCAwNSwgMjAxOSAxOjI1IEFNCj4g
PiA+ID4gxIQgOiBDaGVuLVl1IFRzYWkKPiA+ID4gPiBDYyA6IE1heGltZSBSaXBhcmQ7IE1hcnRp
biBBeW90dGU7IGxpbnV4LWFybS1rZXJuZWwKPiA+ID4gPiBPYmpldCA6IFJlOiBbUEFUQ0ggdjJd
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgZU1NQyBvbgo+ID4gPiA+IEE2NC1P
TGludVhpbm8KPiA+ID4gPgo+ID4gPiA+IE9uIDA0LzA4LzE5IDg6MzMgcG0sIENoZW4tWXUgVHNh
aSB3cm90ZToKPiA+ID4gPiA+IE9uIEZyaSwgQXVnIDIsIDIwMTkgYXQgMjo0NyBBTSBTdW5pbCBN
b2hhbiBBZGFwYSA8c3VuaWxAbWVkaGFzLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPj4KPiA+ID4gPiA+
PiBPbiAwMS8wOC8xOSA2OjQ5IGFtLCBNYXJ0aW4gQXlvdHRlIHdyb3RlOgo+ID4gPiA+ID4+PiBJ
ZiBteSBTT0IgY291bGQgaGVscCBoZXJlLCBJIGRvbid0IG1pbmQgc2luY2UgSSd2ZSBkb25lIHRo
ZSBjb21taXQKPiA+ID4gPiA+Pj4gbW9yZSB0aGFuIGEgeWVhciBhZ28gZm9yIEFybWJpYW4gLi4u
Cj4gPiA+ID4gPj4+Cj4gPiA+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IE1hcnRpbiBBeW90dGUgPG1h
cnRpbmF5b3R0ZUBnbWFpLmNvbT4KPiA+ID4gPiA+Pj4gVGVzdGVkLWJ5OiBNYXJ0aW4gQXlvdHRl
IDxtYXJ0aW5heW90dGVAZ21haS5jb20+Cj4gPiA+ID4gPj4gZ21haS5jb20gaXMgbGlrZWx5IGEg
dHlwby4KPiA+ID4gPiA+Pgo+ID4gPiA+ID4+PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAxMDo0
MiBQTSBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmcKPiA+ID4gPiA+Pj4KPiA+ID4gPiA+Pj4+
IFRoYW5rcy4gVGhlIHBhdGNoIGxvb2tzIGdvb2Qgb3ZlcmFsbC4gVGhlIGF1dGhvcnNoaXAgaXMg
YSBsaXR0bGUKPiA+ID4gPiA+Pj4+IGNvbmZ1c2luZyB0aG91Z2guIElmIGl0IHdhcyBpbml0aWFs
bHkgZG9uZSBieSBNYXJ0aW4gKENDLWVkKSwgdGhlbgo+ID4gPiA+ID4+Pj4gaGUgc2hvdWxkIGJl
IHRoZSBhdXRob3IsIGFuZCB3ZSBzaG91bGQgZ2V0IGhpcyBTaWduZWQtb2ZmLWJ5IGlmCj4gPiA+
ID4gPj4+PiBwb3NzaWJsZS4KPiA+ID4gPiA+Pgo+ID4gPiA+ID4+IE1hcnRpbiBpcyBpbmRlZWQg
dGhlIG9yaWdpbmFsIGF1dGhvciBvZiB0aGUgcGF0Y2guIFRoYW5rIHlvdSBmb3IKPiA+ID4gPiBy
ZXZpZXdpbmcuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSdkIGxpa2UgdG8gYXBwbHkgdGhpcyBwYXRj
aCB3aXRoIE1hcnRpbiBhcyB0aGUgYXV0aG9yLCBpZiB0aGF0J3MgT0sgd2l0aAo+ID4gPiA+IHlv
dQo+ID4gPiA+ID4gYm90aD8KPiA+ID4gPgo+ID4gPiA+IFRoYXQgaXMgY29tcGxldGVseSBva2F5
IHdpdGggbWUuCj4gPiA+Cj4gPiA+IEFwcGxpZWQgZm9yIDUuNC4KPiA+ID4KPiA+ID4gSSByZW9y
ZGVyZWQgdGhlIHRhZ3Mgc28gdGhleSBtYWtlIG1vcmUgc2Vuc2U6Cj4gPiA+Cj4gPiA+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N1bnhpL2xpbnV4Lmdp
dC9jb21taXQvP2g9c3VueGkvZHQtZm9yLTUuNCZpZD0wODM0ODg3NzMyZGY1YWY0MWI1OWIyZTRk
NTMwZmMxZjU0Nzg5NjVmCj4gPgo+ID4gU29ycnkgZm9yIGJlaW5nIGxhdGUgb24gdGhpcywgYnV0
IGl0IGxvb2tzIGxpa2UgdGhlIGVNTUMsIE5BTkQgYW5kIFNQSQo+ID4gcGlucyBhcmUgY29uZmxp
Y3Rpbmcgb24gdGhlIEE2NC1PbGludXhpbm8gZGVzaWduLgo+ID4KPiA+IFRoZXJlJ3Mgbm8gY29u
ZmlndXJhdGlvbiB3aXRoIGEgTkFORCwgc28gd2UgZG9uJ3QgcmVhbGx5IG5lZWQgdG8gd29ycnkK
PiA+IGFib3V0IHRoYXQsIGJ1dCBpZiB3ZSBtZXJnZSB0aGlzIGluIHRoZSBtYWluIERULCB3ZSds
bCBwcmV2ZW50IGFueW9uZQo+ID4gZnJvbSB1c2luZyB0aGF0IERUIG9uIGFuIG9saW51eGlubyB3
aXRoIGEgU1BJIGZsYXNoLgo+ID4KPiA+IEkgdGhpbmsgd2Ugc2hvdWxkIGp1c3QgY3JlYXRlIGVt
bWMgYW5kIFNQSS1mbGFzaCB2YXJpYW50cyBvZiB0aGF0IERULgo+Cj4gQWN0dWFsbHkgdGhleSBh
cmVuJ3QuIE9saW1leCBzcGVjaWZpY2FsbHkgdXNlcyBlTU1DIG1vZHVsZXMgdGhhdCBkb24ndAo+
IHVzZSB0aGUgZGF0YSBzdHJvYmUgbGluZSwgc28gU1BJIGNhbiBiZSB1c2VkIHRvZ2V0aGVyLgoK
QWgsIHJpZ2h0LgoKU3RpbGwsIHRoaXMgY3JlYXRlcyBhIHByZWNlZGVudCB0aGF0IEknbSBub3Qg
cmVhbGx5IGNvbWZvcnRhYmxlCndpdGguIFRocmVlIGFjdHVhbGx5LgoKTWVyZ2luZyB0aGlzIGlu
IHRoZSBtYWluIERUIG1lYW5zIHRocmVlIHRoaW5nczoKICAtIFdlJ3JlIG5vdCBjb25zaXN0ZW50
IGFueW1vcmUsIGluY2x1ZGluZyB3aXRoaW4gdGhlIG9saW51eGlubwogICAgYm9hcmRzIG9ubHku
IEEyMCBPbGludXhpbm8gaXMgcHJldHR5IG11Y2ggaW4gdGhlIHNhbWUgc2l0dWF0aW9uLAogICAg
eWV0IHdlIGRlYWx0IHdpdGggaXQgZGlmZmVyZW50bHkuCiAgLSBUaGlzIG1lYW5zIHRoYXQgdGhp
cyB3aWxsIGNyZWF0ZSBhIHNwdXJpb3VzIGRldmljZSBhbmQgcmVwb3J0CiAgICBlcnJvcnMgaW4g
dGhlIGtlcm5lbCBtZXNzYWdlIGFuZCB3aGVuZXZlciBzb21lb25lIHdpbGwgdHJ5IHRvCiAgICBh
Y2Nlc3MgdGhlIGRldmljZSBvbiBib2FyZHMgdGhhdCBkb24ndCBoYXZlIGl0IHdpcmVkLiBUaGlz
CiAgICBzaG91bGRuJ3QgaGFwcGVuIGFuZCB3ZSByZWFsbHkgc2hvdWxkbid0IGV4cG9zZSBkZXZp
Y2VzIHRoYXQganVzdAogICAgYXJlbid0IHRoZXJlLCBqdXN0IGxpa2UgeW91IGRvbid0IGhhdmUg
YWxsIHRoZSBkZXZpY2VzIHRoYXQgYXJlCiAgICBub3QgY29ubmVjdGVkIG9uIHlvdXIgVVNCIGNv
bm5lY3Rvci4KICAtIEZpbmFsbHksIHRoaXMgbWVhbnMgdGhhdCBpbiBvcmRlciB0byBrZWVwIGl0
IHNvbWV3aGF0IGNvbnNpc3RlbnQsCiAgICB3ZSB3b3VsZCBoYXZlIHRvIG1lcmdlIHRoZSBTUEkg
Zmxhc2ggaW4gdGhlIG1haW4gRFQgdG9vLiBUaGlzIHdpbGwKICAgIHByZXZlbnQgcGVvcGxlIHdp
dGhvdXQgYSBTUEkgZmxhc2ggdG8gdXNlIHRoZSBTUEkgc2lnbmFscyBvbiB0aGUKICAgIFVFWFQg
Y29ubmVjdG9yIGZvciBzb21ldGhpbmcgZWxzZSwgd2hpY2ggYWdhaW4gZ29lcyBhZ2FpbnN0IHRo
ZQogICAgcG9saWN5IHdlJ3ZlIGhhZCBmb3IgYmFzaWNhbGx5IGFueSBvdGhlciBib2FyZC4KCk1h
eGltZQoKLS0KTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVs
IGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

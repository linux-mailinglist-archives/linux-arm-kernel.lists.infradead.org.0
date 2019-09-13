Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20572B1946
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iW/J+12uJjHL6pImN7x6hkpWATgsH0/rFoE60a36nm4=; b=fLXDwkW89TSjEI
	tkphuNB4in3KmBJOGVL2LMUJZaDyPw4dhNs1TDwwqyfk5uAPb84pllpsTH77DKaboJo0sqiHNzogT
	W4sWJvUYiSOvJv7AvMz5HSGqUlCSRzGborl7a9a5Zxrv2zw0f/MW6rF1EQuzjXifAzELecl8mRAgy
	YDS3Mb2Dj/ll2+fCVBFt1pzOpVXos5iSXXBxTum1IkCCm3TxxU7nadGvJO42NGAmvXcHWGHdhTwqp
	QamAnGFpmiTryJfVcWMOlEeBSaOLyoABlczwliq4rJjXfu1yP1oYur+xUMl7LrXm+p6u/M/AMG+js
	p9eUL2jmzwpwiX39WGQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gU1-0002hB-4o; Fri, 13 Sep 2019 07:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gSl-0002MB-2d
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 07:57:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFDDD20830;
 Fri, 13 Sep 2019 07:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568361469;
 bh=G+tpwlHhHN4Uq2Y+D3u2USOsp4VVgIF3lrlIxrgfRZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KUspfkv+jER4uH9H6OWriR6kaRD0ON4ZJQPyp1P/2vG6Tw1xyHskIbZVuaHXjHw1s
 WutwVnqVYrcfL80RvJiV7VsoY+EoibYqqTJkObjpKKcSqTcOmXqPLQOSG4ItcslXms
 zx1P9KzuFY4Lmec1/jJHxC59wveY2Sz05VYjoRTA=
Date: Fri, 13 Sep 2019 09:57:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/6] ARM: dts: sunxi: h3/h5: Add MBUS controller node
Message-ID: <20190913075746.gws6u6hbextzleke@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <1679881.yZ8pMUtPNZ@jernej-laptop>
 <20190912203427.ajbmtm5djctpkz6p@localhost.localdomain>
 <5193854.KWMFve8tAi@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5193854.KWMFve8tAi@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_005751_380766_EB374461 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTA6NDY6NThQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSDEjWV0cnRlaywgMTIuIHNlcHRlbWJlciAyMDE5IG9iIDIyOjM0OjI3IENF
U1QgamUgTWF4aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+ID4gT24gVGh1LCBTZXAgMTIsIDIwMTkg
YXQgMTA6Mjg6MzdQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiBEbmUgxI1l
dHJ0ZWssIDEyLiBzZXB0ZW1iZXIgMjAxOSBvYiAyMjoyMDo1NyBDRVNUIGplIE1heGltZSBSaXBh
cmQgCj4gbmFwaXNhbChhKToKPiA+ID4gPiBIaSwKPiA+ID4gPiAKPiA+ID4gPiBPbiBUaHUsIFNl
cCAxMiwgMjAxOSBhdCAwNzo1MToyOVBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+
ID4gPiA+IEJvdGgsIEgzIGFuZCBINSwgY29udGFpbiBNQlVTLCB3aGljaCBpcyB0aGUgYnVzIHVz
ZWQgYnkgRE1BIGRldmljZXMgdG8KPiA+ID4gPiA+IGFjY2VzcyBzeXN0ZW0gbWVtb3J5Lgo+ID4g
PiA+ID4gCj4gPiA+ID4gPiBNQlVTIGNvbnRyb2xsZXIgaXMgcmVzcG9uc2libGUgZm9yIGFyYml0
cmF0aW9uIGJldHdlZW4gY2hhbm5lbHMgYmFzZWQKPiA+ID4gPiA+IG9uIHNldCBwcmlvcml0eSBh
bmQgY2FuIGRvIHNvbWUgb3RoZXIgdGhpbmdzIGFzIHdlbGwsIGxpa2UgcmVwb3J0Cj4gPiA+ID4g
PiBiYW5kd2lkdGggdXNlZC4gSXQgYWxzbyBtYXBzIFJBTSByZWdpb24gdG8gZGlmZmVyZW50IGFk
ZHJlc3MgdGhhbiBDUFUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gCj4gPiA+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSB8IDkgKysr
KysrKysrCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+ID4gPiA+
ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUu
ZHRzaQo+ID4gPiA+ID4gYi9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpIGluZGV4
IGViYTE5MGIzZjlkZS4uZWYxZDAzODEyNjM2Cj4gPiA+ID4gPiAxMDA2NDQKPiA+ID4gPiA+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKPiA+ID4gPiA+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKPiA+ID4gPiA+IEBAIC0xMDksNiArMTA5
LDcgQEAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gIAkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsK
PiA+ID4gPiA+ICAJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gPiA+ID4gIAkJI3NpemUtY2Vs
bHMgPSA8MT47Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICsJCWRtYS1yYW5nZXM7Cj4gPiA+ID4gPiAK
PiA+ID4gPiA+ICAJCXJhbmdlczsKPiA+ID4gPiA+ICAJCQo+ID4gPiA+ID4gIAkJZGlzcGxheV9j
bG9ja3M6IGNsb2NrQDEwMDAwMDAgewo+ID4gPiA+ID4gCj4gPiA+ID4gPiBAQCAtNTM4LDYgKzUz
OSwxNCBAQAo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgCQkJfTsKPiA+ID4gPiA+ICAJCQo+ID4gPiA+
ID4gIAkJfTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gKwkJbWJ1czogZHJhbS1jb250cm9sbGVyQDFj
NjIwMDAgewo+ID4gPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLWgzLW1i
dXMiOwo+ID4gPiA+ID4gKwkJCXJlZyA9IDwweDAxYzYyMDAwIDB4MTAwMD47Cj4gPiA+ID4gPiAr
CQkJY2xvY2tzID0gPCZjY3UgMTEzPjsKPiA+ID4gPiA+ICsJCQlkbWEtcmFuZ2VzID0gPDB4MDAw
MDAwMDAgMHg0MDAwMDAwMAo+ID4gPiAKPiA+ID4gMHhjMDAwMDAwMD47Cj4gPiA+IAo+ID4gPiA+
ID4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MT47Cj4gPiA+ID4gPiArCQl9Owo+ID4gPiA+
ID4gKwo+ID4gPiA+IAo+ID4gPiA+IElmIHRoYXQncyBlYXN5IGVub3VnaCB0byBhY2Nlc3MsIGNh
biB5b3UgYWxzbyBhZGQgdGhlIHJlZmVyZW5jZXMgaW4KPiA+ID4gPiB0aGUgZGV2aWNlcyB0aGF0
IGFyZSBhbHJlYWR5IHRoZXJlPyAoQ1NJIGFuZCBERSBjb21lcyB0byBteSBtaW5kLCBidXQKPiA+
ID4gPiB0aGVyZSBtaWdodCBiZSBvdGhlcnMpLgo+ID4gPiAKPiA+ID4gU3RyYW5nZWx5LCBERTIg
ZG9lc24ndCB1c2UgdGhpcyBvZmZzZXQuIFRoYXQgd2FzIHRlc3RlZCBvbiBPcmFuZ2VQaQo+ID4g
PiBQbHVzMkUsCj4gPiA+IHdoaWNoIGhhcyAyIEdpQiBvZiBSQU0gYW5kIHN1YnRyYWN0aW5nIHRo
aXMgb2Zmc2V0IGNhdXNlcyBjb3JydXB0ZWQgaW1hZ2UuCj4gPiAKPiA+IE9rLCB3ZWlyZC4gQnV0
IGlmIGl0IHdhcyB0ZXN0ZWQgdGhlbiBmaW5lIGJ5IG1lIDopCj4gPiAKPiA+ID4gQnV0IEkgY2Fu
IGFkZCB0aGlzIHByb3BlcnRpZXMgdG8gQ1NJIHRvby4gSG93ZXZlciwgd291bGRuJ3QgdGhhdCBu
ZWVkIENTSQo+ID4gPiBEVCBiaW5kaW5nIGV4cGFuc2lvbiB3aXRoIHRob3NlIHByb3BlcnRpZXM/
IG90aGV0d2lzZSBEVCBjaGVjayB3aWxsIGZhaWwuCj4gPiBPaCByaWdodCwgd2UgZGVmaW5pdGVs
eSBuZWVkIHRvIHVwZGF0ZSB0aGUgYmluZGluZyBpbmRlZWQuIFRoZSBjb2RlCj4gPiBzaG91bGQg
YmUgYWJsZSB0byBjb3BlIHdpdGggYm90aCBjYXNlcyBhbHJlYWR5Lgo+IAo+IEkgZ3Vlc3MgaXQn
cyBiZXR0ZXIgdG8gaGFuZGxlIHRoYXQgd2l0aCBhbm90aGVyIHBhdGNoIHNlcmllcyB0aGVuPyBD
aGFuZ2luZyAKPiBDU0kgYmluZGluZ3MgZG9lc24ndCBmaXQgaGVyZS4KClllYWgsIHlvdSBjYW4g
ZG8gaXQgaW4gYSBzZXBhcmF0ZSBzZXJpZXMgaWYgeW91IHByZWZlcgoKTWF4aW1lCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0379A87543
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5euetuHoXwiC7u1R5m2h3QhKYwGwZUg419HRX//uVc0=; b=G5kGGkudDikOtm
	JGxjKJgOTaUUNR3RgUNX+twvnxJJR6MGkAWn/3/V58UlcbOpyIEdIcqL6eh4OmU5z3h0j9uargkxf
	K64wnyRuV3BKgxzyMEq92+9SsGAH5VOhDv01x9M3go8/5Tvadbz0EB9U90yQ67nkeXQT1iuTrNLeC
	2GhsTuE8WTzwFaluDmfoqqJUT4d0kCa3y4mlzEVJu4Gjk2BY+XSCaMz5LtwrRY56Nxfvi3/N3d4lu
	O7UonHvRcPUZ5j8jWsAyl7CxPgW6CCZY3BJ0O/xysmyg60pTTypP85NxxwUxI4nvULQ1RlAn8wwPq
	xSlbgDZltsptM3Ox3DuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw10t-0005A1-D2; Fri, 09 Aug 2019 09:16:43 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw10e-00059U-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565342186; bh=058fnVgEdld0XWcxrIoVMkGIvEFjKF/KELntlth1H7Y=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=QED54Z6SSAM6GpHg9GkeBumXygOE+uGYcbOUyEZ9cs3qsVjloPPJcPaoWwHrtpIsq
 98dW5idtdWYH3HUAO8Xn4vgDBzZhDR7Bv02o8SKJTsAafO6SXIZSriBzJmZV/HcfIQ
 BZIUIfh4poi+kviXd1y+WPaGI2SqNEYTghwjBE0Q=
Date: Fri, 9 Aug 2019 11:16:26 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [linux-sunxi] [PATCH 0/3] Add basic support for RTC on Allwinner
 H6 SoC
Message-ID: <20190809091626.6kanjbmvbi4oipco@core.my.home>
Mail-Followup-To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
References: <20190412120730.473-1-megous@megous.com>
 <CAGb2v66cbpsoHJoiFJkBwhZ5SbO+uO+Kf6gtnA3kPFQZq0329Q@mail.gmail.com>
 <20190806183045.edhm3qzpegscf2z7@core.my.home>
 <20190807105502.GK3600@piout.net>
 <20190808121237.g6twq2nh3sayu3vx@core.my.home>
 <20190808233930.GM3600@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808233930.GM3600@piout.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_021628_784756_77480DD8 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMDksIDIwMTkgYXQgMDE6Mzk6MzBBTSArMDIwMCwgQWxleGFuZHJlIEJlbGxv
bmkgd3JvdGU6Cj4gT24gMDgvMDgvMjAxOSAxNDoxMjozNyswMjAwLCBPbmTFmWVqIEppcm1hbiB3
cm90ZToKPiA+IE9uIFdlZCwgQXVnIDA3LCAyMDE5IGF0IDEyOjU1OjAyUE0gKzAyMDAsIEFsZXhh
bmRyZSBCZWxsb25pIHdyb3RlOgo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IE9uIDA2LzA4LzIwMTkg
MjA6MzA6NDUrMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gTWF5YmUgd2hldGhl
ciBYTyBvciBEQ1hPIGlzIHVzZWQgYWxzbyBtYXR0ZXJzIGlmIHlvdSB3YW50IHRvIGRvIHNvbWUg
ZmluZQo+ID4gPiA+IHR1bm5pbmcgb2YgRENYTyAoY29udHJvbCByZWdpc3RlciBoYXMgcGxldG55
IG9mIG9wdGlvbnMpLCBidXQgdGhhdCdzIHByb2JhYmx5Cj4gPiA+ID4gYmV0dGVyIGRvbmUgaW4g
dS1ib290LiBBbmQgdGhlcmUncyBzdGlsbCBubyBuZWVkIHRvIHJlYWQgSE9TQyBzb3VyY2UgZnJv
bSBEVC4KPiA+ID4gPiBUaGUgZHJpdmVyIGNhbiBqdXN0IGNoZWNrIGNvbXBhdGlibGUsIGFuZCBp
ZiBpdCBpcyBINiBhbmQgT1NDX0NMS19TUkNfU0VMIGlzIDEsCj4gPiA+ID4gaXQgY2FuIGRvIGl0
J3MgRENYTyB0dW5uaW5nLCBvciB3aGF0ZXZlci4gQnV0IG5laXRoZXIgT1Mgbm9yIGJvb3Rsb2Fk
ZXIgd2lsbAo+ID4gPiA+IGJlIHVzaW5nIHRoaXMgaW5mbyB0byBnYXRlL2Rpc2FibGUgdGhlIG9z
Y2lhbGxhdG9yLgo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gSXQgaXMgYWN0dWFsbHkgdXNlZnVsIHRv
IGJlIGFibGUgdG8gdHdlYWsgdGhlIGNyeXN0YWwgdHVuaW5nIGF0Cj4gPiA+IHJ1bnRpbWUgdG8g
YmUgYWJsZSB0byByZWR1Y2UgY2xvY2sgZHJpZnQgYW5kIGNvbXBhcmUgd2l0aCBhIHJlbGlhYmxl
Cj4gPiA+IHNvdXJjZSAoZS5nLiBOVFApLgo+ID4gCj4gPiBJIGRvbid0IHRoaW5rIHRoZXJlJ3Mg
YSBMaW51eCBrZXJuZWwgQVBJIHRoYXQgeW91IGNhbiB1c2UgdG8gYWNoaWV2ZSB0aGF0LCBzbwo+
ID4gdGhhdCdzIGEgcmF0aGVyIHRoZW9yZXRpY2FsIGNvbmNlcm4gYXQgdGhlIG1vbWVudC4KPiA+
IAo+IAo+IFRoZXJlIGlzIC9zeXMvY2xhc3MvcnRjL3J0Y1gvb2Zmc2V0IHdoaWNoIGlzIGV2ZW4g
cHJvcGVybHkgZG9jdW1lbnRlZC4KPiAKPiBUaGUgcmVhc29uIEkgYXNrZWQgaXMgdGhhdCBzb21l
IFJUQ3MgaGF2ZSBib3RoIGFuYWxvZyAoY2hhbmdpbmcgdGhlCj4gb3NjaWxsYXRvciBjYXBhY2l0
YW5jZSkgYW5kIGRpZ2l0YWwgKGNoYW5naW5nIHRoZSBSVEMgY291bnRlcikgc28gSSdtCj4gd29u
ZGVyaW5nIHdoZXRoZXIgdGhpcyBpbnRlcmZhY2Ugc2hvdWxkIGJlIGV4dGVuZGVkLgoKQXMgSSB3
cm90ZSBiZWxvdywgdGhhdCBjYW4ndCBiZSBhY2hpZXZlZCBieSB0dW5pbmcgRENYTy4KCj4gPiBB
bHNvIHRoZXJlIGFyZSBtdWx0aXBsZSBjbG9ja3MsIHRoYXQgY2FuIGRyaXZlIHRoZSBSVEMsIGFu
ZCB5b3UgdXN1YWxseSBkb24ndAo+ID4gZHJpdmUgaXQgZnJvbSAyNE1IeiBEQ1hPIG9zY2lsbGF0
b3IuIFRoZSByZWFzb24gaXMgdGhhdCB5b3UnZCBoYXZlIHRvIGRlYWwgd2l0aAo+ID4gdGhlIGZh
Y3QgdGhhdCB0aGUgY2xvY2sgZm9yIFJUQyB0aGVuIGJlY29tZXMgMjQwMDAwMDAvNzUwICg3NTAg
aXMgZml4ZWQKPiA+IGRpdmlkZXIpLCB3aGljaCBpcyAzMjAwMC4KPiA+IAo+ID4gU28gaWYgeW91
IHdhbnQgdG8gZ2V0IDMyNzY4SHogZm9yIFJUQyBieSB0dW5pbmcgdGhlIERDWE8sIGl0IHdvdWxk
IGhhdmUgdG8gaGF2ZQo+ID4gMjQgNTc2IDAwMCBIei4gQW5kIGV2ZW4gaWYgeW91IGNvdWxkIGFj
aGlldmUgdGhhdCAoZG91YnRmdWwpLCBpdCB3b3VsZCB0aHJvdyBvZmYKPiA+IHRpbWluZ3MgaW4g
dGhlIHJlc3Qgb2YgdGhlIHN5c3RlbSAoc2F5IFVBUlQsIFVTQiwgQ1BVLCBkaXNwbGF5IGN0bCkg
aW4gYSBtYWpvciB3YXkuCj4gPiAKPiA+IEkgZ3Vlc3MgeW91IGNhbiB0cnkgdHVuaW5nIDI0TUh6
IG9zY2lsbGF0b3Igc28gdGhhdCBpdCdzIGNsb3NlciB0byB0aGUKPiA+IHJlYWwtd29ybGQgMjRN
SHogdmlhIE5UUCByZWZlcmVuY2UgZm9yIG90aGVyIHJlYXNvbnMuIEJ1dCBpdCB3b3VsZCBiZQo+
ID4gY29tcGxpY2F0ZWQsIGFuZCByZXF1aXJlIHByZWNpc2UgaW50ZXJhY3Rpb24gd2l0aCBvdGhl
ciBjb21wb25lbnRzLCBsaWtlIHVzaW5nCj4gPiBIVyB0aW1lcnMgc291cmNlZCBmcm9tIDI0TUh6
IEhPU0MgY2xvY2ssIGJlY2F1c2UgeW91IGNhbid0IHVzZSBDUFUncyB0aW1lcnMsCj4gPiBiZWNh
dXNlIG9mIGluYWNjdXJhY2llcyBpbnRyb2R1Y2VkIGR1cmluZyBEVkZTLCBmb3IgZXhhbXBsZS4K
PiA+IAo+ID4gcmVnYXJkcywKPiA+IAlvLgo+ID4gCj4gPiA+IEknbSBjdXJpb3VzLCB3aGF0IGtp
bmQgb2Ygb3B0aW9ucyBkb2VzIHRoaXMgUlRDIGhhdmU/Cj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4g
QWxleGFuZHJlIEJlbGxvbmksIEJvb3RsaW4KPiA+ID4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5l
bCBlbmdpbmVlcmluZwo+ID4gPiBodHRwczovL2Jvb3RsaW4uY29tCj4gPiA+IAo+ID4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCj4gCj4gLS0gCj4gQWxleGFuZHJlIEJlbGxvbmksIEJvb3RsaW4K
PiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGlu
LmNvbQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F39C0AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 00:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yi83xUwR9pyK8eBY2Q7v5Js4J2zo0CL2ZHCrQlZ/Tlo=; b=LG8uCie0xRh3au
	FiqH0I4U2PKQY3FPL8VEPJa+6c8bPtgm6NQ/4P16eK12pSx5JhvNJmG6K3vNHit5vopi0wLapkRPx
	Ri14y3LBSHbXtQLVFpWDueTRhNYsq3M2j89WdbTQ0mvrsyh7jg665PnmTRWJXNCycE3CK1o0mM1J0
	xoklWP36IaXJhFwtL96PPIYvHtliBt8HU921ewfm0DoBLT62hFuyNJdW8fiQeStvqG1kH3q1H2j8k
	PiNDYAdXTdj1cPh14J1URaYSckzqmzSz3yqobZcuCkVimILep1q0UCYUMd5tPR55gRg6MjCzIyc3x
	f19MN7bLNb0bsDL7Lz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1eLM-0004Dw-An; Sat, 24 Aug 2019 22:17:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eKz-0004DT-Cn
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 22:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566684998; bh=AsOxRhcbCf7VZl7oMHpWnpYauCEftDRhqiCkn6rkDqk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=aDghlMgS0KlmNASkm6II80Hph5ASAkcy2zUuFCPWgZK4ffFAx4bGDHqmmgHb4KaB8
 HtWoS2NTJ3LkvHf9h7uJwWjpHOXsarTIzTbia6Tq6cVGH/hVd67KA9yDE2wmyUjnAx
 9uUMlrVR6N+/ymYdDfWbKtnIRDI/YXGaG6kJOJg0=
Date: Sun, 25 Aug 2019 00:16:38 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190824221638.ztoqpp5y6btshgit@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Mark Rutland <mark.rutland@arm.com>, 
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <20190820151934.3860-1-megous@megous.com>
 <1690798.2HKiRSsjat@jernej-laptop>
 <20190824212746.a5pyilkrrvysjjbd@core.my.home>
 <7913281.jYEbquIlsS@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7913281.jYEbquIlsS@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_151645_771165_A314C187 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMTE6MzY6MjZQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBzb2JvdGEsIDI0LiBhdmd1c3QgMjAxOSBvYiAyMzoyNzo0NiBDRVNUIGpl
IE9uZMWZZWogSmlybWFuIG5hcGlzYWwoYSk6Cj4gPiBIZWxsbyBKZXJuZWosCj4gPiAKPiA+IE9u
IFNhdCwgQXVnIDI0LCAyMDE5IGF0IDExOjA5OjQ5UE0gKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3
cm90ZToKPiA+ID4gPiBWaXN1YWxseT8KPiA+ID4gPiAKPiA+ID4gPiBUaGF0IHdvdWxkIGV4cGxh
aW4gd2h5IGl0IGRvZXNuJ3Qgd29yayBmb3IgeW91LiBUaGUgbWFpbmxpbmUgUlRDIGRyaXZlcgo+
ID4gPiA+IGRpc2FibGVzIGF1dG8tc3dpdGNoIGZlYXR1cmUsIGFuZCBpZiB5b3VyIGJvYXJkIGRv
ZXNuJ3QgaGF2ZSBhIGNyeXN0YWwKPiA+ID4gPiBmb3IKPiA+ID4gPiBMT1NDLCBSVEMgd2lsbCBu
b3QgZ2VuZXJhdGUgYSBjbG9jayBmb3IgdGhlIFJUQy4KPiA+ID4gPiAKPiA+ID4gPiBINidzIGR0
c2kgZGVzY3JpYmVzIGJ5IGRlZmF1bHQgYSBzaXR1YXRpdW9uIHdpdGggZXh0ZXJuYWwgMzJrIGNy
eXN0YWwKPiA+ID4gPiBvc2NpbGxhdG9yLiBTZWUgZXh0X29zYzMyayBub2RlLiBUaGF0J3MgaW5j
b3JyZWN0IGZvciB5b3VyIGJvYXJkIGlmIGl0Cj4gPiA+ID4gZG9lc24ndCBoYXZlIHRoZSBjcnlz
dGFsLiBZb3UgbmVlZCB0byBmaXggdGhpcyBpbiB0aGUgRFRTIGZvciB5b3VyIGJvYXJkCj4gPiA+
ID4gaW5zdGVhZCBvZiBwYXRjaGluZyB0aGUgZHJpdmVyLgo+ID4gPiAKPiA+ID4gSSBzZWUgdGhh
dCByZXBhcmVudGluZyBpcyBzdXBwb3J0ZWQsIGJ1dCBJJ20gbm90IHN1cmUgaG93IHRvIGZpeCB0
aGF0IGluCj4gPiA+IERULiBBbnkgc3VnZ2VzdGlvbj8KPiA+IAo+ID4gWW91IG1heSB0cnkgcmVt
b3ZpbmcgdGhlIGNsb2NrcyBwcm9wZXJ0eSBmcm9tIHJ0YyBub2RlLgo+IAo+IEkgZG9uJ3QgdGhp
bmsgdGhpcyB3b3VsZCB3b3JrOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xh
dGVzdC9zb3VyY2UvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMjTDI0NgoKV2VsbCwgSSBkb24ndCBr
bm93LiBUaGVyZSBoYXMgdG8gYmUgc29tZSB3YXkgdG8gbWFrZSBpdCB3b3JrLCBzaW5jZSB0aGUg
Y29kZQpkZWFscyB3aXRoIGl0IGhlcmU6CgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jI0wyNzAKCk51bWJlciBvZiBw
YXJlbnRzIGZvciBMT1NDIGlzIGNhbGN1bGF0ZWQgZnJvbSB0aGUgRFQgc29tZWhvdy4gTWF5Ym5l
IHNvbWV0aGluZwp0byBkbyB3aXRoIHRoZSAjY2xvY2stY2VsbHMgcHJvcGVydHk/CgpTb3JyeSBJ
IGNhbid0IGJlIG9mIG1vcmUgaGVscCBoZXJlLgoKPiA+IAo+ID4gPiA+IFRoZSBkcml2ZXIgaGFz
IHBhcmVudCBjbG9jayBzZWxlY3Rpb24gbG9naWMgaW4gY2FzZSB0aGUgTE9TQyBjcnlzdGFsIGlz
Cj4gPiA+ID4gbm90Cj4gPiA+ID4gdXNlZC4KPiA+ID4gPiAKPiA+ID4gPiBZb3VyIHBhdGNoIGVu
YWJsZXMgYXV0b21hdGljIGRldGVjdGlvbiBvZiBMT1NDIGZhaWx1cmUgYW5kIFJUQyBjaGFuZ2Vz
Cj4gPiA+ID4gY2xvY2sgdG8gTE9TQyBhdXRvbWF0aWNhbGx5LCBkZXNwaXRlIHdoYXQncyBkZXNj
cmliZWQgaW4gdGhlIERUUy4gVGhhdAo+ID4gPiA+IG1heSBmaXggdGhlIGlzc3VlLCBidXQgaXMg
bm90IHRoZSBjb3JyZWN0IHNvbHV0aW9uLgo+ID4gPiA+IAo+ID4gPiA+IFJlZ2lzdGVycyBvbiBt
eSBib2FyZCBsb29rIGxpa2UgdGhpcyAoZXh0ZXJuYWwgMzJrIG9zYyBpcyB1c2VkKSBmb3IKPiA+
ID4gPiByZWZlcmVuY2U6Cj4gPiA+ID4gCj4gPiA+ID4gTE9TQ19DVFJMX1JFR1s3MDAwMDAwXTog
ODAxMQo+ID4gPiA+IAo+ID4gPiA+IAlLRVlfRklFTEQgICAgICAgICAgICAgICAgICAgICAgPz8/
ICAgICAgICAgICAgICAgICAgKDApCj4gPiA+ID4gCUxPU0NfQVVUT19TV1RfQllQQVNTICAgICAg
ICAgICBFTiAgICAgICAgICAgICAgICAgICAoMSkKPiA+ID4gPiAJTE9TQ19BVVRPX1NXVF9FTiAg
ICAgICAgICAgICAgIERJUyAgICAgICAgICAgICAgICAgICgwKQo+ID4gPiA+IAlFWFRfTE9TQ19F
TiAgICAgICAgICAgICAgICAgICAgRU4gICAgICAgICAgICAgICAgICAgKDEpCj4gPiA+ID4gCUVY
VF9MT1NDX0dTTSAgICAgICAgICAgICAgICAgICBMT1cgICAgICAgICAgICAgICAgICAoMCkKPiA+
ID4gPiAJQkFUVEVSWV9ESVIgICAgICAgICAgICAgICAgICAgIERJU0NIQVJHRSAgICAgICAgICAg
ICgwKQo+ID4gPiA+IAlMT1NDX1NSQ19TRUwgICAgICAgICAgICAgICAgICAgRVhUMzJrICAgICAg
ICAgICAgICAgKDEpCj4gPiA+ID4gCj4gPiA+ID4gTE9TQ19BVVRPX1NXVF9TVEFfUkVHWzcwMDAw
MDRdOiAxCj4gPiA+ID4gCj4gPiA+ID4gCUVYVF9MT1NDX1NUQSAgICAgICAgICAgICAgICAgICBP
SyAgICAgICAgICAgICAgICAgICAoMCkKPiA+ID4gPiAJTE9TQ19BVVRPX1NXVF9QRU5EICAgICAg
ICAgICAgIE5PRUZGICAgICAgICAgICAgICAgICgwKQo+ID4gPiA+IAlMT1NDX1NSQ19TRUxfU1RB
ICAgICAgICAgICAgICAgRVhUMzJLICAgICAgICAgICAgICAgKDEpCj4gPiA+IAo+ID4gPiBJbiBt
eSBjYXNlIExPU0NfQ1RSTF9SRUcgaGFzIHZhbHVlIDB4NDAxMCBhbmQgTE9TQ19BVVRPX1NXVF9T
VEFfUkVHCj4gPiA+IGhhcyB2YWx1ZSAweDQsIHNvIHRoZXJlIGlzIGlzc3VlIHdpdGggZXh0ZXJu
YWwgY3J5c3RhbCAoaXQncyBtaXNzaW5nKSBhbmQKPiA+ID4gUlRDIHN3aXRjaGVkIHRvIGludGVy
bmFsIG9uZS4KPiA+ID4gCj4gPiA+IEJUVywgd2hhdCdzIHdyb25nIHdpdGggYXV0b21hdGljIHN3
aXRjaGluZz8gV2h5IGlzIGl0IGRpc2FibGVkPwo+ID4gCj4gPiBJdCBhbHdheXMgd2FzIGRpc2Fi
bGVkIG9uIG1haW5saW5lIChiaXQgMTQgd2FzIHNldCB0byAwIGV2ZW4gYmVmb3JlIG15Cj4gPiBw
YXRjaCkuIEg2IGp1c3QgcHJvYmFibHkgaGFzIGFub3RoZXIgZXh0cmEgdW5kb2N1bW1lbnRlZCBi
aXQsIHRoYXQncyBuZWVkZWQKPiA+IHRvIGRpc2FibGVzIGl0IHByb3Blcmx5Lgo+ID4gCj4gPiBZ
b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCBhIGdsaXRjaCB0byBzd2l0Y2ggeW91ciBSVEMgZnJvbSBo
aWdoLXByZWNpc2lvbgo+ID4gY2xvY2sgdG8gYSBsb3cgcHJlY2lzaW9uIG9uZSBwb3NzaWJseSB3
aXRob3V0IGFueSBpbmRpY2F0aW9uIGluIHRoZQo+ID4gdXNlcnNwYWNlIG9yIGEga2VybmVsIGxv
Zy4KPiA+IAo+ID4gUmVnYXJkbGVzcyBvZiBhbGwgdGhpcywgRFRTIG5lZWRzIHRvIGhhdmUgYSBj
b3JyZWN0IGRlc2NyaXB0aW9uIG9mIHRoZSBIVywKPiA+IHdoaWNoIG1lYW5zIGlmIFJUQyBtb2R1
bGUgaXMgbm90IGNvbm5lY3RlZCB0byB0aGUgMzIuNzU3a0h6IGNyeXN0YWwvY2xvY2ssCj4gPiBj
bG9ja3MgcHJvcGVydHkgc2hvdWxkIGJlIGVtcHR5Lgo+IAo+IElmIHdlIGFyZSB0YWxraW5nIGFi
b3V0IGNvcnJlY3QgSFcgZGVzY3JpcHRpb24sIHRoZW4gY2xvY2sgcHJvcGVydHkgc2hvdWxkIAo+
IGFjdHVhbGx5IGhhdmUgcG9zc2liaWxpdHkgdGhhdCB0d28gY2xvY2tzIGFyZSBkZWZpbmVkIC0g
b25lIGZvciBpbnRlcm5hbCBSQyAKPiAoYWx3YXlzIHByZXNlbnQpIGFuZCBvbmUgZXh0ZXJuYWwg
Y3J5c3RhbCAob3B0aW9uYWwpLiBJbiBzdWNoIGNhc2UgSSBjb3VsZCAKPiByZWFsbHkganVzdCBv
bWl0IGV4dGVybmFsIGNsb2NrIGFuZCBiZSBkb25lIHdpdGggaXQuIEJ1dCBJJ20gbm90IHN1cmUg
aWYgc3VjaCAKCkludGVybmFsIFJDIGlzIHRob3VnaHQgdG8gYmUgcGFydCBvZiB0aGUgUlRDIG1v
ZHVsZSwgc28gaXQncyBub3QgZGVmaW5lZCBhcyBhbgppbnB1dCBjbG9jayB0byB0aGUgUlRDIG1v
ZHVsZS4KCnJlZ2FyZHMsCglPbmRyZWoKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+
ID4gCj4gPiByZWdhcmRzLAo+ID4gCW8uCj4gPiAKPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBK
ZXJuZWoKPiA+ID4gCj4gPiA+ID4gcmVnYXJkcywKPiA+ID4gPiAKPiA+ID4gPiAJby4KPiA+ID4g
PiAJCj4gPiA+ID4gPiA+IFRoZSByZWFsIGlzc3VlIHByb2JhYmx5IGlzIHRoYXQgdGhlIG1haW5s
aW5lIGRyaXZlciBpcyBtaXNzaW5nIHRoaXM6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBodHRw
czovL21lZ291cy5jb20vZ2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmM/aD1o
Ni00LjktYgo+ID4gPiA+ID4gPiBzcCNuCj4gPiA+ID4gPiA+IDY1MAo+ID4gPiA+ID4gCj4gPiA+
ID4gPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5IHRoYXQuIGV4dCB2cy4gaW50IHNvdXJjZSBz
ZWxlY3Rpb24/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBCZXN0
IHJlZ2FyZHMsCj4gPiA+ID4gPiBKZXJuZWoKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiByZWdhcmRz
LAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gCW8uCj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

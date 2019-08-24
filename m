Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881D49BE06
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eba9MZUOp769mt5c1pi0bYL7OXkTaWJit/0uX+oyGDE=; b=E9r/CdaTE9unuy
	lljdAC2llPm5ozNuB/zYBeBcPdRxBUlKbw5QQpZi7VAcP7wGAXui13pQXGpWs3h1789jYnm0ecrcB
	bZJ2JK5eaNJyyWiWpOjslBxDd3Xo3/TFcA5tba299nxM0LWIw7cmEuc0gmLsLzmILXDyOQAkWaung
	4bqo/lVoj2a1H7y6/Lv0NzDz4iLTuoryblWfYMLRSxhiJ4lzA5fGGbwEOTDJTSr7cmoczg09rQlDW
	4MypQ5QPSfelP7A6oZUleGGGdBXFFiJamPBnXjMTbdpVWEw7jqzQYeDRItvkuSoSWL9QMBTntFFw1
	71RZ9HVclQVEtgSASizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1W8T-0007Z8-7J; Sat, 24 Aug 2019 13:31:17 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1W8G-0007Yl-Bw
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 13:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566653457; bh=1b0F19iq/dWBCPJilMmXF0tZd8omjFMbcmvxarQbmQI=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=TdfHV2sRGBejRPc60TO/xNtxXoMQrgORh1uzO3ax8qM2TULUmdlklwyC+q6SBkb67
 X8q8E/TKXKlyfSRhsctitiynXh3aM39lLZTXbEmMOnmo0bhrYivJaIlltE+Ex1RCBN
 rQ71VD+FiXbej48nDgXDuB/CZx4Jdu/LUfw4jsIY=
Date: Sat, 24 Aug 2019 15:30:57 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190824133057.rhpj3xuzr3vymdiy@core.my.home>
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
 <2544007.NTLiB2pbcT@jernej-laptop>
 <20190824130544.kxypq3siv7kffidp@core.my.home>
 <10880274.nteIY8W56H@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10880274.nteIY8W56H@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_063104_749624_7579696E 
X-CRM114-Status: GOOD (  33.34  )
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

T24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMDM6MTY6NDFQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBzb2JvdGEsIDI0LiBhdmd1c3QgMjAxOSBvYiAxNTowNTo0NCBDRVNUIGpl
IE9uZMWZZWogSmlybWFuIG5hcGlzYWwoYSk6Cj4gPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAw
Mjo1MTo1NFBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+IERuZSBzb2JvdGEs
IDI0LiBhdmd1c3QgMjAxOSBvYiAxNDo0Njo1NCBDRVNUIGplIE9uZMWZZWogSmlybWFuIG5hcGlz
YWwoYSk6Cj4gPiA+ID4gSGksCj4gPiA+ID4gCj4gPiA+ID4gT24gU2F0LCBBdWcgMjQsIDIwMTkg
YXQgMDI6MzI6MzJQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiA+ID4gSGkh
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IERuZSB0b3JlaywgMjAuIGF2Z3VzdCAyMDE5IG9iIDE3OjE5
OjMzIENFU1QgamUgbWVnb3VzQG1lZ291cy5jb20KPiA+ID4gCj4gPiA+IG5hcGlzYWwoYSk6Cj4g
PiA+ID4gPiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gUlRDIG9uIEg2IGlzIG1vc3RseSB0aGUgc2FtZSBhcyBvbiBINSBh
bmQgSDMuIEl0IGhhcyBzbGlnaHQKPiA+ID4gPiA+ID4gZGlmZmVyZW5jZXMKPiA+ID4gPiA+ID4g
bW9zdGx5IGluIGZlYXR1cmVzIHRoYXQgYXJlIG5vdCB5ZXQgc3VwcG9ydGVkIGJ5IHRoaXMgZHJp
dmVyLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU29tZSBkaWZmZXJlbmNlcyBhcmUgYWxyZWFk
eSBzdGF0ZWQgaW4gdGhlIGNvbW1lbnRzIGluIGV4aXN0aW5nCj4gPiA+ID4gPiA+IGNvZGUuCj4g
PiA+ID4gPiA+IE9uZSBvdGhlciBkaWZmZXJlbmNlIGlzIHRoYXQgSDYgaGFzIGV4dHJhIGJpdCBp
biBMT1NDX0NUUkxfUkVHLAo+ID4gPiA+ID4gPiBjYWxsZWQKPiA+ID4gPiA+ID4gRVhUX0xPU0Nf
RU4gdG8gZW5hYmxlL2Rpc2FibGUgZXh0ZXJuYWwgbG93IHNwZWVkIGNyeXN0YWwgb3NjaWxsYXRv
ci4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEl0IGFsc28gaGFzIGJpdCBFWFRfTE9TQ19TVEEg
aW4gTE9TQ19BVVRPX1NXVF9TVEFfUkVHLCB0byBjaGVjawo+ID4gPiA+ID4gPiB3aGV0aGVyCj4g
PiA+ID4gPiA+IGV4dGVybmFsIGxvdyBzcGVlZCBvc2NpbGxhdG9yIGlzIHdvcmtpbmcgY29ycmVj
dGx5Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9y
IGVuYWJsaW5nIExPU0Mgd2hlbiBuZWNlc3Nhcnk6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAt
IGR1cmluZyByZXBhcmVudGluZwo+ID4gPiA+ID4gPiAtIHdoZW4gcHJvYmluZyB0aGUgY2xvY2sK
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEg2IGFsc28gaGFzIGNhcGFjYmlsaXR5IHRvIGF1dG9t
YXRpY2FsbHkgcmVwYXJlbnQgUlRDIGNsb2NrIGZyb20KPiA+ID4gPiA+ID4gZXh0ZXJuYWwgY3J5
c3RhbCBvc2NpbGxhdG9yLCB0byBpbnRlcm5hbCBSQyBvc2NpbGxhdG9yLCBpZiBleHRlcm5hbAo+
ID4gPiA+ID4gPiBvc2NpbGxhdG9yIGZhaWxzLiBUaGlzIGlzIGVuYWJsZWQgYnkgZGVmYXVsdC4g
RGlzYWJsZSBpdCBkdXJpbmcKPiA+ID4gPiA+ID4gcHJvYmUuCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+
ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KPiA+ID4g
PiA+ID4gLS0tCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgZHJpdmVycy9ydGMvcnRjLXN1bjZp
LmMgfCA0MAo+ID4gPiA+ID4gPiAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLQo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
dGMvcnRjLXN1bjZpLmMgYi9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYwo+ID4gPiA+ID4gPiBpbmRl
eCBkNTBlZTAyM2I1NTkuLmIwYzM3NTJiZWQzZiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ydGMvcnRjLXN1
bjZpLmMKPiA+ID4gPiA+ID4gQEAgLTMyLDkgKzMyLDExIEBACj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiAgLyogQ29udHJvbCByZWdpc3RlciAqLwo+ID4gPiA+ID4gPiAgI2RlZmluZSBTVU42SV9M
T1NDX0NUUkwJCQkJMHgwMDAwCj4gPiA+ID4gPiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9L
RVkJCQkoMHgxNmFhIAo+IDw8IDE2KQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gKyNkZWZpbmUg
U1VONklfTE9TQ19DVFJMX0FVVE9fU1dUX0JZUEFTUwkJQklUKDE1KQo+ID4gPiA+ID4gCj4gPiA+
ID4gPiBVc2VyIG1hbnVhbCBzYXlzIHRoYXQgYWJvdmUgZmllbGQgaXMgYml0IDE0Lgo+ID4gPiA+
IAo+ID4gPiA+IFNlZSB0aGUgcHJldmlvdXMgZGlzY3Vzc2lvbiwgdGhpcyBpcyBmcm9tIEJTUC4K
PiA+ID4gCj4gPiA+IEkgaGF2ZSB0d28gdmVyc2lvbnMgb2YgQlNQIChkb24ndCBhc2sgbWUgd2hp
Y2gpIHdoaWNoIGhhdmUgdGhpcyBzZXQgYXMgYml0Cj4gPiA+IDE0IGFuZCBjaGFuZ2luZyB0aGlz
IHRvIDE0IGFjdHVhbGx5IHNvbHZlcyBhbGwgbXkgcHJvYmxlbXMgd2l0aCBMT1NDIChubwo+ID4g
PiBtb3JlIGlzc3VlcyB3aXRoIHNldHRpbmcgUlRDIGFuZCBIRE1JLUNFQyB3b3JrcyBub3cgLSBp
dCB1c2VzIExPU0MgYXMKPiA+ID4gcGFyZW50KSBvbiBUYW5peCBUWDYgYm94Lgo+ID4gCj4gPiBJ
bnRlcmVzdGluZy4gSXMgTE9TQyBmZWQgZXh0ZXJuYWxseSBnZW5lcmF0ZWQgY2xvY2ssIG9yIGlz
IGl0IHNldHVwIGFzIGEKPiA+IGNyeXN0YWwgb3NjaWxsYXRvciBvbiB5b3VyIGJvYXJkPwo+IAo+
IEkgcmVhbGx5IGRvbid0IGtub3csIGJ1dCBoZXJlIGlzIERUOiBodHRwOi8vaXguaW8vMVRoSQo+
IAo+ID4gCj4gPiBBbnl3YXksIHNlZSBoZXJlOgo+ID4gCj4gPiBodHRwczovL21lZ291cy5jb20v
Z2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmg/aD1oNi00LjktYnNwI242NDkK
PiA+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL3J0Yy9ydGMtc3Vu
eGkuYz9oPWg2LTQuOS1ic3AjbjY1Mgo+IAo+IEludGVyZXN0aW5nLCA0LjkgQlNQIGhhcyBhZGRp
dGlvbmFsIGJpdCBkZWZpbml0aW9uLCB3aGljaCBpcyBub3QgZG9jdW1lbnRlZCBpbiAKPiBtYW51
YWwgYW5kIDMuMTAgQlNQIHRvIHdoaWNoIEkgcmVmZXIuCj4gCj4gSSB3YXMgcmVmZXJyaW5nIHRv
IDMuMTAgQlNQLCB3aGljaCB1c2VzIG9ubHkgYml0IDE0LiBJIHRob3VnaHQgdGhhdCB5b3UgbmFt
ZWQgCj4gaXQgZGlmZmVyZW50bHkuCj4gCj4gPiAKPiA+IEl0IHdvdWxkIGJlIG5pY2UgdG8ga25v
dyB3aGF0J3MgcmVhbGx5IGhhcHBlbmluZy4KPiA+IAo+ID4gTXkgb3V0cHV0IGlzOgo+ID4gCj4g
PiBbICAgIDAuODMyMjUyXSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IHJlZ2lzdGVyZWQgYXMgcnRj
MAo+ID4gWyAgICAwLjgzMjI1N10gc3VuNmktcnRjIDcwMDAwMDAucnRjOiBSVEMgZW5hYmxlZAo+
ID4gWyAgICAxLjcyODk2OF0gc3VuNmktcnRjIDcwMDAwMDAucnRjOiBzZXR0aW5nIHN5c3RlbSBj
bG9jayB0bwo+ID4gMTk3MC0wMS0wMVQwMDowMDowNyBVVEMgKDcpCj4gCj4gV2l0aCBjaGFuZ2Us
IEkgZ2V0IHNhbWUgb3V0cHV0Lgo+IAo+ID4gCj4gPiBJIHRoaW5rLCB5b3UgbWF5IGhhdmUganVz
dCBlbmFibGVkIHRoZSBhdXRvIHN3aXRjaCBmZWF0dXJlLCBhbmQgcnVubmluZyB0aGUKPiA+IGNs
b2NrIGZyb20gbG93IHByZWNpc2lvbiBSQyBvc2NpbGxhdG9yIHdpdGggeW91ciBwYXRjaC4KPiAK
PiBUcnVlLCBub3cgSSB0aGluayB0aGVyZSBpcyBubyBleHRlcm5hbCBjcnlzdGFsLCBidXQgSSdt
IHN0aWxsIG5vdCBzdXJlIGhvdyB0byAKPiBjb25maXJtIHRoYXQuCgpWaXN1YWxseT8KClRoYXQg
d291bGQgZXhwbGFpbiB3aHkgaXQgZG9lc24ndCB3b3JrIGZvciB5b3UuIFRoZSBtYWlubGluZSBS
VEMgZHJpdmVyCmRpc2FibGVzIGF1dG8tc3dpdGNoIGZlYXR1cmUsIGFuZCBpZiB5b3VyIGJvYXJk
IGRvZXNuJ3QgaGF2ZSBhIGNyeXN0YWwgZm9yIExPU0MsClJUQyB3aWxsIG5vdCBnZW5lcmF0ZSBh
IGNsb2NrIGZvciB0aGUgUlRDLgoKSDYncyBkdHNpIGRlc2NyaWJlcyBieSBkZWZhdWx0IGEgc2l0
dWF0aXVvbiB3aXRoIGV4dGVybmFsIDMyayBjcnlzdGFsCm9zY2lsbGF0b3IuIFNlZSBleHRfb3Nj
MzJrIG5vZGUuIFRoYXQncyBpbmNvcnJlY3QgZm9yIHlvdXIgYm9hcmQgaWYgaXQgZG9lc24ndApo
YXZlIHRoZSBjcnlzdGFsLiBZb3UgbmVlZCB0byBmaXggdGhpcyBpbiB0aGUgRFRTIGZvciB5b3Vy
IGJvYXJkIGluc3RlYWQgb2YKcGF0Y2hpbmcgdGhlIGRyaXZlci4KClRoZSBkcml2ZXIgaGFzIHBh
cmVudCBjbG9jayBzZWxlY3Rpb24gbG9naWMgaW4gY2FzZSB0aGUgTE9TQyBjcnlzdGFsIGlzIG5v
dAp1c2VkLgoKWW91ciBwYXRjaCBlbmFibGVzIGF1dG9tYXRpYyBkZXRlY3Rpb24gb2YgTE9TQyBm
YWlsdXJlIGFuZCBSVEMgY2hhbmdlcyBjbG9jawp0byBMT1NDIGF1dG9tYXRpY2FsbHksIGRlc3Bp
dGUgd2hhdCdzIGRlc2NyaWJlZCBpbiB0aGUgRFRTLiBUaGF0IG1heSBmaXggdGhlCmlzc3VlLCBi
dXQgaXMgbm90IHRoZSBjb3JyZWN0IHNvbHV0aW9uLgoKUmVnaXN0ZXJzIG9uIG15IGJvYXJkIGxv
b2sgbGlrZSB0aGlzIChleHRlcm5hbCAzMmsgb3NjIGlzIHVzZWQpIGZvciByZWZlcmVuY2U6CgpM
T1NDX0NUUkxfUkVHWzcwMDAwMDBdOiA4MDExCglLRVlfRklFTEQgICAgICAgICAgICAgICAgICAg
ICAgPz8/ICAgICAgICAgICAgICAgICAgKDApCglMT1NDX0FVVE9fU1dUX0JZUEFTUyAgICAgICAg
ICAgRU4gICAgICAgICAgICAgICAgICAgKDEpCglMT1NDX0FVVE9fU1dUX0VOICAgICAgICAgICAg
ICAgRElTICAgICAgICAgICAgICAgICAgKDApCglFWFRfTE9TQ19FTiAgICAgICAgICAgICAgICAg
ICAgRU4gICAgICAgICAgICAgICAgICAgKDEpCglFWFRfTE9TQ19HU00gICAgICAgICAgICAgICAg
ICAgTE9XICAgICAgICAgICAgICAgICAgKDApCglCQVRURVJZX0RJUiAgICAgICAgICAgICAgICAg
ICAgRElTQ0hBUkdFICAgICAgICAgICAgKDApCglMT1NDX1NSQ19TRUwgICAgICAgICAgICAgICAg
ICAgRVhUMzJrICAgICAgICAgICAgICAgKDEpCgpMT1NDX0FVVE9fU1dUX1NUQV9SRUdbNzAwMDAw
NF06IDEKCUVYVF9MT1NDX1NUQSAgICAgICAgICAgICAgICAgICBPSyAgICAgICAgICAgICAgICAg
ICAoMCkKCUxPU0NfQVVUT19TV1RfUEVORCAgICAgICAgICAgICBOT0VGRiAgICAgICAgICAgICAg
ICAoMCkKCUxPU0NfU1JDX1NFTF9TVEEgICAgICAgICAgICAgICBFWFQzMksgICAgICAgICAgICAg
ICAoMSkKCnJlZ2FyZHMsCglvLgoKPiA+IAo+ID4gVGhlIHJlYWwgaXNzdWUgcHJvYmFibHkgaXMg
dGhhdCB0aGUgbWFpbmxpbmUgZHJpdmVyIGlzIG1pc3NpbmcgdGhpczoKPiA+IAo+ID4gaHR0cHM6
Ly9tZWdvdXMuY29tL2dpdC9saW51eC90cmVlL2RyaXZlcnMvcnRjL3J0Yy1zdW54aS5jP2g9aDYt
NC45LWJzcCNuNjUwCj4gPiAKPiAKPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5IHRoYXQuIGV4
dCB2cy4gaW50IHNvdXJjZSBzZWxlY3Rpb24/CgoKCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+
IAo+ID4gcmVnYXJkcywKPiA+IAlvLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

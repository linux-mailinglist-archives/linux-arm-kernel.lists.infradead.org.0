Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C45110C315
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 04:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAoCtNpAqgd9mnjF/L5Bjp8jCSkeMhBxlUAZiQAcrqg=; b=Gu4yy8idR7EjCn
	52IS+l0Uie/pRdcFO27jmyBoBrRwzntTN6kq6beegIPFc3GHCaZNkmRt5XgFRQSPQCZgT5j4mFzmB
	iIgVYRVwsNKgpSmKLaAvNHBmHihx6hor7tHIXEvTFeBP/oT5ElnZC9yMQe6jF0PyRPvz5c4ladUtA
	Z7Cr7ue3svpsfRux5W07bKS1V3GihqWEf5C6z/GLtSlUSN4yvJSnGiPWcfrB4Kypr8zZM8ivuxrgz
	n2hexjqVdQIOHQ0ENo8NRnn69noIpo8a0NNP5MLBQUgVUYRzoNcEf66uVIifEpE+Oq0hNcujS7PdP
	sTC2mzXkqmoWX5fu0U4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAph-0001Sl-ST; Thu, 28 Nov 2019 03:51:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaApX-0001SJ-6P
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 03:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574913057; bh=hB03qpPNWYS3iArdRrHy4en2dGRtsQueqDDZF+PJRKc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=sXRONiwpoL7PYA4FVdkl7wTRTDpPWQc71IoZ8wH7cAawjF+mLYBjFllflUzBG4PNU
 KRKpegwktWjXBTYmRPCZ1Bh6+TkARyvykcj7uzCTiZrBrWFGxj/iidbrEMVitz/HvS
 E1pMUcQ57Yf+lgzWUNLdOFmTuPMBNFLhmSSJOiqU=
Date: Thu, 28 Nov 2019 04:50:56 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH] media: sun6i-csi: Fix incorrect
 HSYNC/VSYNC/PCLK polarity configuration
Message-ID: <20191128035056.77554jav3eo6h7su@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>, Yong <yong.deng@magewell.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191128020259.1338188-1-megous@megous.com>
 <20191128102608.035cbb996c8681a6fb035336@magewell.com>
 <20191128030653.5fhcolvib6tzf4zc@core.my.home>
 <CAGb2v65+4LhHU5UCOhnowKqK+GUiAKzi+wcPxkmuwtJ=itv-iw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v65+4LhHU5UCOhnowKqK+GUiAKzi+wcPxkmuwtJ=itv-iw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_195059_557353_D3E13916 
X-CRM114-Status: GOOD (  35.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Yong <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTE6MjY6MjRBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFRodSwgTm92IDI4LCAyMDE5IGF0IDExOjA2IEFNIE9uZMWZZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGksCj4gPgo+ID4gT24gVGh1LCBOb3Yg
MjgsIDIwMTkgYXQgMTA6MjY6MDhBTSArMDgwMCwgWW9uZyB3cm90ZToKPiA+ID4gSGkgT25kcmVq
LAo+ID4gPgo+ID4gPiBUaGlzIGhhcyBiZWVuIGRpc2N1c3NlZC4KPiA+ID4gQW5kIE1heGltZSBz
ZW50IGEgcGF0Y2ggZm9yIHRoaXM6Cj4gPiA+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20v
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnL21zZzEyNzE0OS5odG1sCj4gPgo+ID4gVGhhbmtz
IGZvciBwb2ludGluZyB0byB0aGUgcHJldmlvdXMgcGF0Y2guIEJ1dCB0aGF0IHBhdGNoIGRvZXNu
J3QgbWFrZSBhbnkKPiA+IHNlbnNlLCBhbmQgYnJlYWtzIHRoaW5ncyBmb3IgbWUsIGFuZCBkb2Vz
bid0IGV2ZW4gbWF0Y2ggQlNQIGNvZGUsIHdoaWNoCj4gPiBoYXMgbm8gc3VjaCByZXZlcnNhbCwg
YW5kIHdvcmtzIGZpbmUgd2l0aCBhYm91dCAzMCBjYW0gZHJpdmVycy4KPiA+Cj4gPiBBbHNvIGhv
dyBkbyB5b3UgZXhwbGFpbiBteSBmaW5kaW5ncz8KPiA+Cj4gPiBNeSBjYW1lcmEgaXMgc2VuZGlu
ZyBjb3JyZWN0IHNpZ25hbHMsIHZlcmlmaWVkIGJ5IGxvb2tpbmcgYXQgdGhlbSBhY3R1YWxseSAo
c2VlCj4gPiBiZWxvdyksIGFuZCBDU0kgaXMgbm90IHJlY2VpdmluZyB0aGUgaW1hZ2UuIEkgaGF2
ZSB0byBmbGlwIEhTWU5DL1ZTWU5DIHRvIGJlCj4gPiBvcG9zaXRlIG9mIHRoYXQgd2hhdCBDU0kg
ZHJpdmVyIGV4cGVjdHMgYW5kIEkgZ2V0IGEgbm9pc3kgaW1hZ2UgYW5kIGlmIEkgZml4Cj4gPiBQ
Q0xLIHBvbGFyaXR5IHRvbywgdGhlIG5vaXNlIGdvZXMgYXdheSwgd2hpY2ggbWVhbnMgbm93IEkn
bSBhbHNvIHNhbXBsaW5nIHdoZW4KPiA+IHRoZSBkYXRhIGFyZSBzdGFibGUgYW5kIG5vdCB3aGVu
IHRoZXkncmUgY2hhbmdpbmcuCj4gPgo+ID4gSGVyZTogKG91dHB1dCBmcm9tIG15IGNhbSwgdGhh
dCBJIGNvbmZpZ3VyZWQgdG8gaGF2ZSBWU1lOQyBBQ1RJVkUgTE9XLCBIU1lOQwo+ID4gQUNUSVZF
IExPVykgQW5kIHRoZSBzaWduYWwgaXMgY2xlYXJseSB0aGF0LCBhcyB5b3UgY2FuIHNlZSB5b3Vy
c2VsZjoKPiA+Cj4gPiAgIGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvOThkZjgxYjdlZDAxMjZl
Yy5wbmcKPiAKPiBGcm9tIHRoZSBsb29rcyBvZiB0aGluZ3MgeW91IGhhdmUgYWN0aXZlLWhpZ2gg
VlNZTkMgd2l0aCBhY3RpdmUtbG93IEhSRUYuCj4gSFJFRiBpcyBub3QgdGhlIHNhbWUgYXMgSFNZ
TkMsIGluIGZhY3QgcXVpdGUgdGhlIG9wcG9zaXRlLiBWL0ggU1lOQyBhcmUKPiBwdWxzZXMsIGFj
dGl2ZSBvbmx5IHdoZW4gdGhlcmUgc2hvdWxkIGJlIG5vIGRhdGEgYW5kIHRoZSBsaW5lL2ZyYW1l
IHN3aXRjaAo+IGhhcHBlbnMsIHdoaWxlIFYvSCBSRUYgYXJlIGhlbGQgYWN0aXZlIHdoZW4gdGhl
cmUgaXMgZGF0YS4gSSBwZXJzb25hbGx5Cj4gZmluZCB0aGVzZSB0ZXJtcyB2ZXJ5IGNvbmZ1c2lu
Zy4gOigKPiAKPiBOb3cgdGhlIHRpbWluZyBkaWFncmFtcyBpbiB0aGUgQWxsd2lubmVyIG1hbnVh
bHMgd291bGQgc3VnZ2VzdCB0aGF0IHdoZW4KPiB0aGV5IGFyZSB0YWxraW5nIGFib3V0IEgvViBT
WU5DLCB0aGV5IGFyZSBhY3R1YWxseSByZWZlcnJpbmcgdG8gSC9WIFJFRi4KPiBUaGUgSFNZTkMg
bGluZSBpcyBoaWdoL2FjdGl2ZSB3aGVuIHRoZXJlIGlzIHZhbGlkIGRhdGEsIGFuZCB0aGUgVlNZ
TkMgbGluZQo+IGlzIGhpZ2gvYWN0aXZlIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGZyYW1lLgo+
IAo+IEkgdGhpbmsgYm90aCBzaWRlcyBuZWVkIHRvIGJlIGNoZWNrZWQgdGhhdCB0aGV5IGFyZSB1
c2luZyB0aGUgY29ycmVjdAo+IHBvbGFyaXR5LCBhbmQgbWF5YmUgYWxzbyBoYXZlIHRoZSBtZWRp
YSBtYWludGFpbmVycyBjbGFyaWZ5IGhvdyB0aGUKPiBwb2xhcml0eSBzaG91bGQgYmUgaW50ZXJw
cmV0ZWQgd2hlbiB0aGUgaGFyZHdhcmUgdXNlcyBIL1YgcmVmIGluc3RlYWQKPiBvZiBIL1Ygc3lu
Yy4KCk9oIG15LCBzbyBpdCdzIGp1c3QgYSB0ZXJtaW5vbG9neSBpc3N1ZT8gOikKClRoaXMgcHJv
YmFibHkgc2hvdWxkIGJlIGRvY3VtbWVudGVkIHNvbWV3aGVyZS4gSSBqdXN0IHRob3VnaHQgeFNZ
TkNfQUNUSVZFX0hJR0gKbWVhbnQgdGhlIHJlc3BlY3RpdmUgc2lnbmFscyBhcmUgc3VwcG9zZWQg
dG8gYmUgSElHSCBkdXJpbmcgYWN0aXZlIHBoYXNlIG9mIGRhdGEKdHJhbnNtaXNzaW9uOiB0aGF0
IGlzIFZTWU5DIEhJR0ggZHVyaW5nIGVudGlyZSBmcmFtZSwgYW5kIEhTWU5DIGhpZ2ggZHVyaW5n
IHJvdy4KCkRUIGJpbmRpbmdzIGRvY3VtZW50YXRpb24gZG9lc24ndCBoZWxwIG11Y2ggZWl0aGVy
LgoKQW5kIG9idmlvdXNseSBtYW51ZmFjdHVyZXJzIGFyZSBjb25mdXNlZCB0b28uCgogIGh0dHBz
Oi8vbWVnb3VzLmNvbS9kbC90bXAvZmFlMDdkZmI0ODk3YmJiMy5wbmcKCkhTWU5DL1ZTWU5DICJs
b3cgdmFsaWQiIHByb2R1Y2VzIHdoYXQgeW91IHNlZSBvbiB0aGUgcHJldmlvdXMgc2lnbmFsIGNh
cHR1cmUKSSBwb3N0ZWQuIDspCgpyZWdhcmRzLAoJby4KCj4gCj4gQ2hlbll1Cj4gCj4gPiBUaGUg
YWJvdmUgc2lnbmFscyBhcmUgcmVjZWl2ZWQgd2l0aCBDU0kgZHJpdmVyIGNvbmZpZ3VyZWQgd2l0
aAo+ID4gVjRMMl9NQlVTX1ZTWU5DX0FDVElWRV9ISUdIIFY0TDJfTUJVU19IU1lOQ19BQ1RJVkVf
SElHSC4gU28gQ1NJIGRyaXZlciBpcwo+ID4gY2xlYXJseSB3cm9uZy4KPiA+Cj4gPiBJIHRoaW5r
IHRoaXMgaXMgcHJldHR5IGNsZWFyIHRoZSBkcml2ZXIgaXMgYnVnZ3kuIEF0IGxlYXN0IGZvciBB
ODNUIFNvQy4KPiA+Cj4gPiBJJ20gbm90IHN1cmUgd2hhdCBNYXhpbWUgZm91bmQgb3V0LCBidXQg
aGUgc2hvdWxkIHByb2JhYmx5IHJlLWNoZWNrIGhpcwo+ID4gZmluZGluZ3MuIE1heGltZSwgY2Fu
IHlvdSBjb21tZW50IG9uIHRoaXM/Cj4gPgo+ID4gcmVnYXJkcywKPiA+ICAgICAgICAgby4KPiA+
Cj4gPiA+IE9uIFRodSwgMjggTm92IDIwMTkgMDM6MDI6NTkgKzAxMDAKPiA+ID4gT25kcmVqIEpp
cm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiA+IFRoaXMgd2FzIGRp
c2NvdmVyZWQgYnkgd3JpdGluZyBhIG5ldyBjYW1lcmEgZHJpdmVyIGFuZCB3b25kZXJpbmcsIHdo
eQo+ID4gPiA+IGhzeW5jL3ZzeW5jIHBvbGFyaXR5IHNldHRpbmcgYmVoYXZlcyBpbiByZXZlcnNl
IHRvIHdoYXQgd291bGQgYmUKPiA+ID4gPiBleHBlY3RlZC4gVmVyaWZpZWQgYnkgbG9va2luZyBh
dCB0aGUgYWN0dWFsIHNpZ25hbHMgYW5kIHRoZSBTb0MKPiA+ID4gPiB1c2VyIG1hbnVhbC4KPiA+
ID4gPgo+ID4gPiA+IEZpeGVzOiA1Y2M3NTIyZDg5NjUgKCJtZWRpYTogc3VuNmk6IEFkZCBzdXBw
b3J0IGZvciBBbGx3aW5uZXIgQ1NJIFYzcyIpCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVq
IEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jIHwgNiArKystLS0KPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+
ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1
bjZpLWNzaS9zdW42aV9jc2kuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmkt
Y3NpL3N1bjZpX2NzaS5jCj4gPiA+ID4gaW5kZXggZjE3ZTU1NTA2MDJkLi45OGJiY2NhNTlhOTAg
MTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1j
c2kvc3VuNmlfY3NpLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhp
L3N1bjZpLWNzaS9zdW42aV9jc2kuYwo+ID4gPiA+IEBAIC00MTcsMTIgKzQxNywxMiBAQCBzdGF0
aWMgdm9pZCBzdW42aV9jc2lfc2V0dXBfYnVzKHN0cnVjdCBzdW42aV9jc2lfZGV2ICpzZGV2KQo+
ID4gPiA+ICAgICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19GSUVMRF9FVkVOX0xPVykK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgIGNmZyB8PSBDU0lfSUZfQ0ZHX0ZJRUxEX1BPU0lU
SVZFOwo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgICAgICAgaWYgKGZsYWdzICYgVjRMMl9NQlVTX1ZT
WU5DX0FDVElWRV9MT1cpCj4gPiA+ID4gKyAgICAgICAgICAgaWYgKGZsYWdzICYgVjRMMl9NQlVT
X1ZTWU5DX0FDVElWRV9ISUdIKQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgY2ZnIHw9IENT
SV9JRl9DRkdfVlJFRl9QT0xfUE9TSVRJVkU7Cj4gPiA+ID4gLSAgICAgICAgICAgaWYgKGZsYWdz
ICYgVjRMMl9NQlVTX0hTWU5DX0FDVElWRV9MT1cpCj4gPiA+ID4gKyAgICAgICAgICAgaWYgKGZs
YWdzICYgVjRMMl9NQlVTX0hTWU5DX0FDVElWRV9ISUdIKQo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfSFJFRl9QT0xfUE9TSVRJVkU7Cj4gPiA+ID4KPiA+ID4g
PiAtICAgICAgICAgICBpZiAoZmxhZ3MgJiBWNEwyX01CVVNfUENMS19TQU1QTEVfUklTSU5HKQo+
ID4gPiA+ICsgICAgICAgICAgIGlmIChmbGFncyAmIFY0TDJfTUJVU19QQ0xLX1NBTVBMRV9GQUxM
SU5HKQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgY2ZnIHw9IENTSV9JRl9DRkdfQ0xLX1BP
TF9GQUxMSU5HX0VER0U7Cj4gPiA+ID4gICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gICAgIGNh
c2UgVjRMMl9NQlVTX0JUNjU2Ogo+ID4gPiA+IC0tCj4gPiA+ID4gMi4yNC4wCj4gPiA+ID4KPiA+
ID4gPiAtLQo+ID4gPiA+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJl
IHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4KPiA+
ID4gPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVt
YWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdv
b2dsZWdyb3Vwcy5jb20uCj4gPiA+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdl
YiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIw
MTkxMTI4MDIwMjU5LjEzMzgxODgtMS1tZWdvdXMlNDBtZWdvdXMuY29tLgo+ID4gPgo+ID4gPgo+
ID4gPiBUaGFua3MsCj4gPiA+IFlvbmcKPiA+Cj4gPiAtLQo+ID4gWW91IHJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAi
bGludXgtc3VueGkiIGdyb3VwLgo+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFu
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1z
dW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gVG8gdmlldyB0aGlzIGRpc2N1
c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lk
L2xpbnV4LXN1bnhpLzIwMTkxMTI4MDMwNjUzLjVmaGNvbHZpYjZ0emY0emMlNDBjb3JlLm15Lmhv
bWUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==

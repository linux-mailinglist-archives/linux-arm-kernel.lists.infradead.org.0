Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EA71EB05F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 22:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8k+kMbjpOqjKbUrgidR5nqKt9K5zUKcmkJqy3s4Vww=; b=BRZDujOdZsiMeb
	+T2kZrjLsMlndr/cD5rm4DiJldrVfAs+T4nLPp1rZXczRSVV2ur5fCtLMb6TGLqgM04TiWs/U76CB
	3pkWKAVM4qwfPP4QWEyVLtcp5Gm9cZpCT1sGE1oy/x3cVY5/GN94kbKq6B0ydsG34/6fLqpd8AZ3z
	jM8qpA/Fsvm99S+ALLE6YDwkZnHL0C0iMno0YR6HYfHu+1Zwmi5wEwiYhiJf9kW4ATmG5UF+oKILE
	kIzPXwh3i1yvooj4Jnwj8gfbAOWxmgVAP15ftDoxwxccF8carF4FE0TPen60bZ2xnD8jt6yqHmjU4
	jmISEI1oCwVGBR+1pOmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrG7-000273-39; Mon, 01 Jun 2020 20:42:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrFz-00020n-Ll
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 20:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umNH2IL374QzFan0BCFcUz4Yz1dQZIoKe9xkPK7BB8s=; b=B9o5hLZiZ1dPkxYLQykjzopdu
 GHX4LxcCtCvEGM3Etjy9cC/j67bI6OG7DXbk0FL3NMs4GZPx3NMDcxHGu3AhZgoQfMRYa5T/fklLd
 bQCadn2i3BcPIvBWj5CYlGe+NVeD+Iqwq5oR+Un9UgUzM7efNQbclkYVxmA1vrd4bg6oxwZAbG+aD
 ZOV2yspeu/h0j4c8lr2P52OlKgu8GVA2XqaVq+HSjhtnbubUjqs98lgJN3Ml6vPnD22gho5e+Ntxh
 kvqtycKCARRli2besSBD53t/GNcT3V3NK7tGXYyioK0xIldo9fhgWMcI4HYTljt0NHPKx9Tte0zh4
 553jyL+pQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40102)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jfrFa-0001Eq-Lu; Mon, 01 Jun 2020 21:41:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jfrFQ-0003e1-2I; Mon, 01 Jun 2020 21:41:28 +0100
Date: Mon, 1 Jun 2020 21:41:28 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Message-ID: <20200601204127.GS1551@shell.armlinux.org.uk>
References: <20200601182555.GP1551@shell.armlinux.org.uk>
 <CGME20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a@eucas1p1.samsung.com>
 <dleftj8sh6sf9a.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftj8sh6sf9a.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134203_721105_078AA1DE 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMTA6Mjc6NDVQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNi0wMSBwb24gMTk6MjU+LCB3aGVuIFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDAxLCAyMDIwIGF0IDA2
OjE5OjUyUE0gKzAyMDAsIEx1a2FzeiBTdGVsbWFjaCB3cm90ZToKPiA+PiBJdCB3YXMgPDIwMjAt
MDYtMDEgcG9uIDE1OjU1Piwgd2hlbiBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3Jv
dGU6Cj4gPj4gPiBPbiBNb24sIEp1biAwMSwgMjAyMCBhdCAwNDoyNzo1MlBNICswMjAwLCDFgXVr
YXN6IFN0ZWxtYWNoIHdyb3RlOgo+ID4+ID4+IEFkZCBEQ1NaIHRhZyB3aGljaCBob2xkcyBkeW5h
bWljIG1lbW9yeSAoc3RhY2ssIGJzcywgbWFsbG9jIHBvb2wpCj4gPj4gPj4gcmVxdWlyZW1lbnRz
IG9mIHRoZSBkZWNvbXByZXNzb3IgY29kZS4KPiA+PiA+Cj4gPj4gPiBXaHkgZG8gd2UgbmVlZCB0
byBrbm93IHRoZSBzdGFjayBhbmQgQlNTIHNpemUsIHdoZW4gdGhlIHVzZXJzcGFjZQo+ID4+ID4g
a2V4ZWMgdG9vbCBkb2Vzbid0IG5lZWQgdG8ga25vdyB0aGlzIHRvIHBlcmZvcm0gdGhlIHNhbWUg
ZnVuY3Rpb24uCj4gPj4gCj4gPj4gCj4gPj4ga2V4ZWMtdG9vbHMgbG9hZCB6SW1hZ2UgYXMgbG93
IGluIERSQU0gYXMgcG9zc2libGUgYW5kIHJlbHkgb24gdHdvCj4gPj4gYXNzdW1wdGlvbnM6Cj4g
Pj4gCj4gPj4gICAgICsgdGhlIHpJbWFnZSB3aWxsIGNvcHkgaXRzZWxmIHRvIG1ha2UgZW5vdWdo
IHJvb20gZm9yIHRoZSBrZXJuZWwsCj4gPj4gICAgICsgc2l6ZW9mKHpJbWFnZSttZW0pIDwgc2l6
ZW9mKGtlcm5lbCttZW0pLCB3aGljaCBpcyB0cnVlIGJlY2F1c2UKPiA+PiAgICAgICBvZiBjb21w
cmVzc2lvbi4KPiA+PiAKPiA+PiAgICAgICAgRFJBTSBzdGFydAo+ID4+ICAgICAgICArIDB4ODAw
MAo+ID4+IAo+ID4+IHpJbWFnZSAgICB8LS0tLS0tLS0tLS18LS0tLS18LS0tLS0tLXwKPiA+PiAg
ICAgICAgICAgICB0ZXh0K2RhdGEgICBic3MgICBzdGFjayAKPiA+PiAKPiA+PiAgICAgICAgICAg
ICAgICAgIHRleHQrZGF0YSAgICAgICAgICAgYnNzICAgCj4gPj4ga2VybmVsICAgIHwtLS0tLS0t
LS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS0tLS0tLXwKPiA+PiAKPiA+PiAKPiA+PiBpbml0
cmQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfC1pbml0cmQt
fC1kdGItfAo+ID4KPiA+IFRoaXMgaXMgYWN0dWFsbHkgaW5jb3JyZWN0LCBiZWNhdXNlIHRoZSBk
ZWNvbXByZXNzb3Igd2lsbCBzZWxmLQo+ID4gcmVsb2NhdGUgaXRzZWxmIHRvIGF2b2lkIHRoZSBh
cmVhIHRoYXQgaXQgaXMgZ29pbmcgdG8gZGVjb21wcmVzcwo+ID4gaW50by4KPiAKPiBJIGRlc2Ny
aWJlZCB0aGUgc3RhdGUgcmlnaHQgYWZ0ZXIga2V4ZWMoOCkgaW52b2NhdGlvbi4KCkFjdHVhbGx5
LCB5b3UgaGF2ZW4ndCwgYmVjYXVzZSB0aGlzIGlzIF9ub3RfIGhvdyBrZXhlYyg4KSBsYXlzIGl0
Cm91dCwgYXMgSSBhdHRlbXB0ZWQgdG8gZGV0YWlsIGZ1cnRoZXIgZG93biBpbiBteSByZXBseS4K
Cj4gPiBTbywgd2hpbGUgdGhlIGRlY29tcHJlc3NvciBydW5zLCBpbiB0aGUgYWJvdmUgc2l0dWF0
aW9uIGl0Cj4gPiBlbmRzIHVwIGFzOgo+ID4KPiA+Cj4gPiByYW0gICAgfC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS4uLgo+ID4gICAgICAgICAg
ICAgICAgICB0ZXh0K2RhdGEgICAgICAgICAgIGJzcyAgIAo+ID4ga2VybmVsICAgIHwtLS0tLS0t
LS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS0tLS0tLXwKPiA+IHpJbWFnZSAgICAgICAgICAg
ICAgICAgICAgICAgICAgfC0tLS0tLS0tLS0tfC0tLS0tfC0tLS0tLS18Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdGV4dCtkYXRhICAgYnNzICAgc3RhY2srbWFsbG9jCgpO
b3RlIGhlcmUgLSBpZiB0aGUgaW5pdHJkIHdhcyBwbGFjZWQgYXMgX3lvdV8gZGVzY3JpYmUgYXQg
dGhlIGVuZApvZiB3aGVyZSB0aGUgekltYWdlIGVuZHMgdXAgaW5jbHVkaW5nIGl0cyBCU1MsIGl0
IHdvdWxkIGJlCmNvcnJ1cHRlZCBieSB0aGUgc3RhY2sgYW5kIG1hbGxvYyBzcGFjZSBvZiB0aGUg
ZGVjb21wcmVzc29yIHdoaWxlCnJ1bm5pbmcuICBFcmdvLCB5b3VyIGRlc2NyaXB0aW9uIG9mIGhv
dyBrZXhlYyg4KSBsYXlzIHN0dWZmIG91dAppcyBpbmNvcnJlY3QuCgo+ID4gV2hlcmUgInRleHQr
ZGF0YSIgaXMgYWN0dWFsbHkgc21hbGxlciB0aGFuIHRoZSBpbWFnZSBzaXplIHRoYXQKPiA+IHdh
cyBsb2FkZWQgLSB0aGUgcGFydCBvZiB0aGUgaW1hZ2UgdGhhdCBwZXJmb3JtcyB0aGUgcmVsb2Nh
dGlvbgo+ID4gaXMgZGlzY2FyZGVkICh0aGUgZmlyc3QgY2h1bmsgb2YgY29kZSB1cCB0byAicmVz
dGFydCIgLSAyMDAKPiA+IGJ5dGVzLikgIFRoZSBCU1MgaXMgdHlwaWNhbGx5IHNtYWxsZXIgdGhh
biAyMDAgYnl0ZXMsIHNvIHdlJ3ZlCj4gPiBiZWVuIGFibGUgdG8gZ2V0IGF3YXkgd2l0aG91dCBr
bm93aW5nIHRoZSBhY3R1YWwgQlNTIHNpemUgc28KPiA+IGZhci4KPiA+Cj4gPgo+ID4gcmFtICAg
IHwtLXwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0u
Li4KPiA+ICAgICAgICB8PD58IFRFWFRfT0ZGU0VUCj4gPiBrZXJuZWwgICAgfC0tLS0tLS0tLS0t
LS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tLS0tfAo+ID4gICAgICAgICAgIHw8LS0tLWVkYXRh
X3NpemUtLS0tLT58PC0tLS0tYnNzX3NpemUtLS0tPnwKPiA+ICAgICAgICAgICB8PC0tLS0tLS0t
LS0tLS0tLWtlcm5lbF9zaXplLS0tLS0tLS0tLS0tLT58Cj4gPiB6SW1hZ2UgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwtLS0tLS0tLS0tLXwtLS0tLXwtLS0tLS0tfAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8PC0tLS0tLS1sZW4tLS0tLS0tPnwgKGluaXRpYWwpCj4gPiAJ
CQkJfDwtLS0tLS0tLS0tbGVuLS0tLS0tLS0tLS0tPnwgKGZpbmFsKQo+ID4KPiA+IFRoZSAiZmlu
YWwiIGxlbiB2YWx1ZSBpcyB3aGF0IHRoZSBkZWNvbXByZXNzb3IgcHJpbnRzIGFzIHRoZSAieklt
YWdlCj4gPiByZXF1aXJlcyIgZGVidWdnaW5nIHZhbHVlLgo+ID4KPiA+IEhlbmNlLCB0aGUgc2l6
ZSB0aGF0IHRoZSBkZWNvbXByZXNzZWQga2VybmVsIHJlcXVpcmVzIGlzIGtlcm5lbF9zaXplLgo+
ID4KPiA+IFRoZSBzaXplIHRoYXQgdGhlIGRlY29tcHJlc3NvciByZXF1aXJlcyBpcyBlZGF0YV9z
aXplICsgbGVuKGZpbmFsKS4KPiA+Cj4gPiBOb3csIGlmIHlvdSBpbnRlbmQgdG8gbG9hZCB0aGUg
a2VybmVsIHRvIHJhbSArIFRFWFRfT0ZGU0VUICsgZWRhdGFfc2l6ZQo+ID4gdGhlbiBpdCBpc24n
dCBnb2luZyB0byBsb3NlIHRoZSBmaXJzdCAyMDAgYnl0ZXMgb2YgY29kZSwgc28gYXMgeW91Cj4g
PiBjb3JyZWN0bHkgcG9pbnQgb3V0LCB3ZSBuZWVkIHRvIGtub3cgdGhlIEJTUyBzaXplLgo+IAo+
IEZvcm1hbCBub3RlOiBjYW4gd2Uga2VlcCB1c2luZyB0ZXJtcyB6SW1hZ2UgYW5kIGtlcm5lbCBh
cyBzZXBhcmF0ZSwKPiB3aGVyZSB6SW1hZ2UgaXMgd2hhdCBpcyBsb2FkZWQgd2l0aCBrZXhlYyBh
bmQga2VybmVsIGlzIHRoZSBkZWNvbXByZXNzZWQKPiBjb2RlIGxvYWRlZCBhdCBURVhUX09GRlNF
VC4gSSBiZWxpZXZlLCBpdCB3aWxsIGhlbHAgdXMgYXZvaWQgbWlzdGFrZXMuCj4gCj4gPj4gPj4g
K3N0cnVjdCBhcm1femltYWdlX3RhZ19kYyB7Cj4gPj4gPj4gKwlzdHJ1Y3QgdGFnX2hlYWRlciBo
ZHI7Cj4gPj4gPj4gKwl1bmlvbiB7Cj4gPj4gPj4gKyNkZWZpbmUgWklNQUdFX1RBR19ERUNPTVBf
U0laRSBBUk1fWklNQUdFX01BR0lDNAo+ID4+ID4+ICsJCXN0cnVjdCB6aW1hZ2VfZGVjb21wX3Np
emUgewo+ID4+ID4+ICsJCQlfX2xlMzIgYnNzX3NpemU7Cj4gPj4gPj4gKwkJCV9fbGUzMiBzdGFj
a19zaXplOwo+ID4+ID4+ICsJCQlfX2xlMzIgbWFsbG9jX3NpemU7Cj4gPj4gPj4gKwkJfSBkZWNv
bXBfc2l6ZTsKPiA+Cj4gPiBZb3UgY2VydGFpbmx5IGRvbid0IG5lZWQgdG8ga25vdyBhbGwgdGhp
cy4gIEFsbCB5b3UgbmVlZCB0byBrbm93IGlzCj4gPiBob3cgbXVjaCBzcGFjZSB0aGUgZGVjb21w
cmVzc29yIHJlcXVpcmVzIGFmdGVyIHRoZSBlbmQgb2YgdGhlIGltYWdlLAo+ID4gZW5jb21wYXNz
aW5nIHRoZSBCU1Mgc2l6ZSwgc3RhY2sgc2l6ZSBhbmQgbWFsbG9jIHNpemUsIHdoaWNoIGlzIG9u
ZQo+ID4gdmFsdWUuCj4gCj4gSSBhZ3JlZS4gSG93ZXZlciwgc2luY2Ugd2UgYXJlIG5vdCBmaWdo
dGluZyBoZXJlIGZvciBldmVyeSBzaW5nbGUgYnl0ZSwKPiBJJ2QgcmF0aGVyIGFkZCB0aGVtIGFz
IHNlcGFyYXRlIHZhbHVlcyBhbmQgbWFrZSB0aGUgdGFnLCBldmVuIGlmIG9ubHkKPiBzbGlnaHRs
eSwgbW9yZSBmdXR1cmUtcHJvb2YuCgpJdCBkb2Vzbid0IG1ha2UgaXQgbW9yZSBmdXR1cmUtcHJv
b2YuICBXaGF0IGhhcHBlbnMgaWYgd2UgYWRkIHNvbWV0aGluZwplbHNlLCBkbyB3ZSBuZWVkIHRv
IGxpc3QgaXQgc2VwYXJhdGVseSwgYW5kIHRoZW4gY2hhbmdlIHRoZSBrZXJuZWwgdG8KYWNjZXB0
IHRoZSBuZXcgdmFsdWUgYW5kIG1heWJlIGFsc28ga2V4ZWMoOCk/ICBPciBkbyB3ZSBqdXN0IHNh
eSAidGhlCmRlY29tcHJlc3NvciBuZWVkcyBYIG1hbnkgYnl0ZXMgYWZ0ZXIgdGhlIGltYWdlIiBh
bmQgYmUgZG9uZSB3aXRoIGl0PwpUaGUgbGF0dGVyIHNvdW5kcyB3YXkgbW9yZSBmdXR1cmUtcHJv
b2YgdG8gbWUuCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5v
cmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVEMgZm9yIDAuOG0gKGVzdC4gMTc2Mm0pIGxpbmUg
aW4gc3VidXJiaWE6IHN5bmMgYXQgMTMuMU1icHMgZG93biA0MjRrYnBzIHVwCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

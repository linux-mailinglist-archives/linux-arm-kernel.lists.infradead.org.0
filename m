Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37776188C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h5kD9vxjqLPZyxgYwQFrqVy5wbdCK5mJKLS8iK2tI2Q=; b=G4idu15nackrG6pIX5hXufp8d
	UoRcIhnCNL/m7s2x1H60WrJ3BU9UOuVeKbaCjtriFwmk7+NhlupKu86wIOhWnPOSiv9fHVCz6O9LM
	rbqPF+kGbxXIz8XWnLaapj7t/YPSxLryg+cJ9j1O7BfBz/l7t6U30LYIzauLxLJO5BUMyRxn4IiCV
	jeRd/fmG/JCUo8hWOxJxeD//4LUuU1KvQ5mZEJTN++JJ6IaHg9OE8xDi+kFUFVfnD4S0eJcOVlv3o
	Z39Y6qn6mwCcynYMXCVJiYSQ0l2RDjaHcNe7D/b6FCJ59Sl+SuyGGEh/+u8eCjlHKh+uu1LY8JjvC
	SPrmRKklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGOs-0001gQ-4c; Tue, 17 Mar 2020 17:53:10 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGOj-0001f6-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kYE0yHNNN9LAxleq7P2y1gIFBIIP2Wmb0USpvPZmwSM=; b=qr4URIDH2cQk45mFHknGWBzW2M
 bQwg7rAVDWTrTlb+Z7P+knyEsBmvdVuw715UOGwMdlsgnc0J+GP2h7kE1SRvVF2db1VaaD+lk6ZYB
 GjTvXOPCjHahkS4pxBwaNS1Q/1FtkUg4N2zkbVL1KZVx8EMGPArFgZqfRNArCEwg2c6XDh11B3ibz
 ShxBPIbEE7Sd12Pqk75icoOHKKHX/8iFLszEoR2pNpYJ2bd0yB7OXCgMmYQeDPICfmdaYI7TNuLZh
 mqni9XKg0dFLx2iNrechiSS9sn3CYPDYRD1Hya2ZZUKFH3GAOUrftrUfhPS7EhoKlkwSatcGJbQ+2
 zUL7BQSA==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:41856
 helo=mail-slave01.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.92.3)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jEGOY-003b4c-Dm; Tue, 17 Mar 2020 18:52:50 +0100
MIME-Version: 1.0
Date: Tue, 17 Mar 2020 18:52:50 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: pwm: sun4i: pwm-backlight not working since 5.6-rc1
In-Reply-To: <20200317173208.t5s63pfz3byxsgzi@pengutronix.de>
References: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
 <20200312132942.2kfspvmoc3mxkdx4@pengutronix.de>
 <6e995c4c22c4e6c93acb1f491e5aa109@pascalroeleven.nl>
 <20200316072613.37lnjfloac4npudf@pengutronix.de>
 <20200317173208.t5s63pfz3byxsgzi@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <ddd9b9c5b3d28a30c888fdcfc1ac6d64@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_105301_450607_1A39F2E6 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xNyAxODozMiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8gUGFz
Y2FsLAo+IAo+IE9uIE1vbiwgTWFyIDE2LCAyMDIwIGF0IDA4OjI2OjEzQU0gKzAxMDAsIFV3ZSBL
bGVpbmUtS8O2bmlnIHdyb3RlOgo+PiBPbiBUaHUsIE1hciAxMiwgMjAyMCBhdCAwNDowNjowN1BN
ICswMTAwLCBQYXNjYWwgUm9lbGV2ZW4gd3JvdGU6Cj4+ID4gT24gMjAyMC0wMy0xMiAxNDoyOSwg
VXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+ID4gPiBPbiBUaHUsIE1hciAxMiwgMjAyMCBhdCAw
MToyMjoxM1BNICswMTAwLCBQYXNjYWwgUm9lbGV2ZW4gd3JvdGU6Cj4+ID4gPiA+IEhpIGFsbCwK
Pj4gPiA+ID4KPj4gPiA+ID4gSSBhbSB3b3JraW5nIG9uIGFkZGluZyBhbiBvbGQgQTEwIGRldmlj
ZSB0byBtYWlubGluZSBhbmQgbm90aWNlZCBhbgo+PiA+ID4gPiBpc3N1ZQo+PiA+ID4gPiB3aGVu
IHRlc3Rpbmcgb24gNS41LjggdnMgbWFzdGVyLgo+PiA+ID4gPgo+PiA+ID4gPiBTaW5jZSA1LjYt
cmMxLCBJIGNhbid0IGNvbnRyb2wgdGhlIGJyaWdodG5lc3Mgb2YgbXkgTENEIGJhY2tsaWdodAo+
PiA+ID4gPiBhbnltb3JlLgo+PiA+ID4gPiBUaGUgYmFja2xpZ2h0IHN0YXlzIG9uIGZ1bGwgYnJp
Z2h0bmVzcyBpbnN0ZWFkLiBJIGFtIGNvbnRyb2xsaW5nIHRoZQo+PiA+ID4gPiBicmlnaHRuZXNz
IHZhbHVlIHZpYSBzeXNmcyBmb3IgdGVzdGluZy4KPj4gPiA+ID4KPj4gPiA+ID4gSSBhbSBub3Qg
c3VyZSBpZiB0aGlzIGlzIGEgZ2VuZXJhbCBwd20tc3VuNGkgaXNzdWUgb3IgaWYgaXQgaXMKPj4g
PiA+ID4gcmVsYXRlZCB0bwo+PiA+ID4gPiB0aGUgYmFja2xpZ2h0LiBIb3dldmVyIEkgbmFycm93
ZWQgaXQgZG93biB0byBvbmUgY29tbWl0IGZvciBwd20tc3VuNGk6Cj4+ID4gPiA+Cj4+ID4gPiA+
IGZhNGQ4MTc4NDY4MWEyNmJjZjdkMmE0M2M2YWM1Y2Y5OTFlZjI4ZjUKPj4gPiA+ID4KPj4gPiA+
ID4gSWYgSSB1c2UgcHdtLXN1bjRpLmMgZnJvbSA1YjA5MGI0MzBkNzUwOTYxMzA1MDMwMjMyMzE0
YjZhY2RiMDEwMmFhIG9uCj4+ID4gPiA+IG1hc3RlciwgdGhlIGJhY2tsaWdodCB3b3JrcyBmaW5l
LiBVbmZvcnR1bmF0ZWx5LCBkdWUgdG8gbXkgbGFjayBvZgo+PiA+ID4gPiBrZXJuZWwKPj4gPiA+
ID4gZXhwZXJpZW5jZSwgSSBjYW4ndCBzZWUgaG93IHRoZSBjb21taXQgYWJvdmUgYnJva2UgaXQu
Cj4+ID4gPgo+PiA+ID4gSG1tLCBJIGNhbm5vdCBzZWUgaG93IGZhNGQ4MTc4NDY4MWEyNmJjZjdk
MmE0M2M2YWM1Y2Y5OTFlZjI4ZjUgYnJlYWtzCj4+ID4gPiB0aGlzLiBMb29raW5nIGF0IHRoZSBv
dXRwdXQgb2YKPj4gPiA+Cj4+ID4gPiAJZ2l0IHNob3cgLWIgZmE0ZDgxNzg0NjgxYTI2YmNmN2Qy
YTQzYzZhYzVjZjk5MWVmMjhmNQo+PiA+ID4KPj4gPiA+IChpLmUuIGlnbm9yaW5nIHdoaXRlc3Bh
Y2UgY2hhbmdlcykgSSBkb24ndCBzZWUgaG93IHRoZSBiZWhhdmlvdXIgeW91J3JlCj4+ID4gPiBy
ZXBvcnRpbmcgY2FuIGJlIGV4cGxhaW5lZC4KPj4gPiA+Cj4+ID4gPiBBcmUgeW91IHN1cmUgdGhh
dCBmYTRkODE3ODQ2ODFhMjZiY2Y3ZDJhNDNjNmFjNWNmOTkxZWYyOGY1IGlzIHRoZSBiYWQKPj4g
PiA+IGNvbW1pdD8KPj4gPiA+Cj4+ID4gPiBDYW4geW91IGluc3RhbGwgYSB0b29sIHRvIGluc3Bl
Y3QgcmVnaXN0ZXIgdmFsdWVzIGFuZCBjaGVjayBob3cgdGhlCj4+ID4gPiBhZmZlY3RlZCByZWdp
c3RlcnMgY2hhbmdlIGlmIHlvdSBzd2l0Y2gga2VybmVsIHZlcnNpb25zIGFuZC9vciBwd20KPj4g
PiA+IHNldHRpbmdzPwo+PiA+ID4KPj4gPiA+IChlLmcuCj4+ID4gPiAJbWVtdG9vbCBtZCAweDFj
MjBlMDArMHhjCj4+ID4gPiApCj4+ID4gPgo+PiA+ID4gQmVzdCByZWdhcmRzCj4+ID4gPiBVd2UK
Pj4gPgo+PiA+IFRoYW5rcyBmb3IgeW91ciByZXNwb25zZS4KPj4gPgo+PiA+IFllcyBJIGFtIHN1
cmUgdGhhdCBpcyB0aGUgY29tbWl0LiBJZiBJIGFtIG9uIG1hc3RlciwgYW5kIHJlcGxhY2UgcHdt
LXN1bjRpLmMKPj4gPiB3aXRoIHRoZSBvbmUgZnJvbSA1YjA5MGI0MywgZXZlcnl0aGluZyB3b3Jr
cy4gSWYgSSB0aGVuIGFwcGx5IGZhNGQ4MTc4LCBpdAo+PiA+IHN0b3BzIHdvcmtpbmcuCj4+ID4K
Pj4gPiBBbmQgc3RyYW5nZWx5IHRoZSBvdXRwdXQgb2YgdGhlIHJlZ2lzdGVycyBpcyBleGFjdGx5
IHRoZSBzYW1lIGJlZm9yZSBhbmQKPj4gPiBhZnRlciBmYTRkODE3ODoKPj4gPgo+PiA+IDAxYzIw
ZTAwOiAwMDAwMDA1MCAwMDEzMDAxNCAwMDAwMDAwMCAoZnVsbCBicmlnaHRuZXNzKQo+PiA+IDAx
YzIwZTAwOiAwMDAwMDA1MCAwMDEzMDAwNiAwMDAwMDAwMCAobWluIGJyaWdodG5lc3MpCj4+ID4K
Pj4gPiBFdmVuIHdoZW4gSSdtIG9uIDViMDkwYjQzIGFuZCBjaGVycnktcGljayBmYTRkODE3OCBj
YW4gSSByZXByb2R1Y2UgdGhlCj4+ID4gaXNzdWUuCj4+IAo+PiBWZXJ5IHN0cmFuZ2UuIEknbSBv
dXQgb2Ygc2Vuc2libGUgaWRlYXMuIFRoZSByZW1haW5pbmcgb25lcyBhcmU6Cj4+IAo+PiAtIGVu
YWJsZSB0cmFjaW5nIGluIHRoZSBrZXJuZWwgYW5kIGJvb3Qgd2l0aAo+PiAKPj4gCXRyYWNlX2V2
ZW50PXB3bQo+PiAKPj4gICBBbmQgdGhlbiBjaGVjayBhZnRlciB0aGUgcHJvYmxlbSBvY2N1cnJl
ZCBpbgo+PiAgIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UgaWYgc29tZXRoaW5nIHN0
aWNrcyBvdXQuCj4+IAo+PiAtIFRyeSBtb2RpZnlpbmcgdGhlIHJlZ2lzdGVycyB1c2luZyBtZW10
b29sLiBFLmcuCj4+IAo+PiAJbWVtdG9vbCBtdyAweDAxYzIwZTA0IDB4MDAxMzAwMTIKPj4gCj4+
IC0gRG8geW91IGhhdmUgZXF1aXBtZW50IHRvIGNoZWNrIHRoZSBhY3R1YWwgb3V0cHV0IG9mIHRo
ZSBQV00gCj4+IGhhcmR3YXJlPwo+PiAgIElmIHNvLCB3aGF0IGRvIHlvdSBzZWU/Cj4gCj4gSSBh
c3N1bWUgdGhlIHN1bjRpLXNlcmllcyB5b3Ugc2VudCBlYXJsaWVyIHRvZGF5IHJlc29sdmVzIHRo
ZSBwcm9ibGVtcwo+IHlvdSByZXBvcnRlZCBoZXJlPwo+IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoK
SGkgVXdlLAoKWWVzIGl0IGRvZXMsIGJ1dCBhcyBFbWlsIG1lbnRpb25lZCBpdCdzIHByb2JhYmx5
IG5vdCBjb21wbGV0ZS4gSXQncyBqdXN0IAphbiBSRkMgZm9yIG5vdyB0byBtYWtlIHN1cmUgaXQg
ZG9lc24ndCBjYXVzZSBhIHJlZ3Jlc3Npb24uIFR1cm5zIG91dCB0aGUgCkFsbHdpbm5lciBQV00g
Y29udHJvbGxlciBpcyBldmVuIG1vcmUgcGlja2llciB0aGFuIEkgdGhvdWdodC4KCkFnYWluLCB0
aGFuayB5b3UgZm9yIHlvdXIgaGVscC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B996031
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpyTxAvdG9fOCF88hHkbFgqEIxtse7ortZHldXZ7c/g=; b=n8NhB1U0rZHzAk
	BREdAQLgoyQ/E9M39FWfqbLohpB7N2vieiVSglOemu/50Sa2/vvBgfCUc9Vqx+wHKLsO9oBf1jaNR
	CeDCVCMsKHUcmhhKUtlF9SYjxX5xW0I1AnXxqZqt6gGrdIMR3ADmdweHuea8SjWVe1EMvQ4ox1g81
	+XNJ/H8dooQrZOu0Ih8NTT92sLY6zfmB1Fa1jmMveOBLo1/78CcAkAU/gMXWe2HwA9x+FKjj7AhUk
	5G54N/Hs6sL/Y0MoenLOpXb4s4Dx82lm7g0JtV3jhkG0FhggPn8jAJt7VVV2ddUxZefz6iAsz0E/W
	UrppCS33pO+3bjbi9pLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04Hw-0008Kb-9J; Tue, 20 Aug 2019 13:35:04 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04Hc-0008J5-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566308081; bh=epDoDcu9vV/+qVSbBiiLAnXsmtqh1AFCqKWEoP5d07Y=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=B+Ejfd/XKihqEtbkxkoyT0kdsF5I8XhFqI/jCO8VMuS4w1ARNugt6H0uJ0KQAiyP2
 CpBKx0FSqhwLw7Ksw5mMkRXfzPPyx5VB5zTQHWwB1lifgMOzep1TZMd4Us2vMUq96J
 ZlONOB2560B/t4xr4jN2Mm3Lh1UxLr0aQLOfnEEg=
Date: Tue, 20 Aug 2019 15:34:41 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 04/10] mailbox: sunxi-msgbox: Add a new mailbox driver
Message-ID: <20190820133441.g56apl2oclioi4ts@core.my.home>
Mail-Followup-To: Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-5-samuel@sholland.org>
 <20190820111825.2w55fleehrnon27u@core.my.home>
 <bc09e14c-1cf5-8124-fc34-c651b78577ce@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc09e14c-1cf5-8124-fc34-c651b78577ce@sholland.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_063444_823445_5062F94D 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCAwODowNzo1M0FNIC0wNTAwLCBTYW11ZWwgSG9s
bGFuZCB3cm90ZToKPiBPbiA4LzIwLzE5IDY6MTggQU0sIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+
ID4gSGkgU2FtdWVsLAo+ID4gCj4gPiBPbiBNb24sIEF1ZyAxOSwgMjAxOSBhdCAxMDoyMzowNVBN
IC0wNTAwLCBTYW11ZWwgSG9sbGFuZCB3cm90ZToKPiA+PiBBbGx3aW5uZXIgc3VuOGksIHN1bjlp
LCBhbmQgc3VuNTBpIFNvQ3MgY29udGFpbiBhIGhhcmR3YXJlIG1lc3NhZ2UgYm94Cj4gPj4gdXNl
ZCBmb3IgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIHRoZSBBUk0gQ1BVcyBhbmQgdGhlIEFSSVNDIG1h
bmFnZW1lbnQKPiA+PiBjb3Byb2Nlc3Nvci4gVGhlIGhhcmR3YXJlIGNvbnRhaW5zIDggdW5pZGly
ZWN0aW9uYWwgNC1tZXNzYWdlIEZJRk9zLgo+ID4+Cj4gPj4gQWRkIGEgZHJpdmVyIGZvciBpdCwg
c28gaXQgY2FuIGJlIHVzZWQgZm9yIFNDUEkgb3Igb3RoZXIgY29tbXVuaWNhdGlvbgo+ID4+IHBy
b3RvY29scy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxA
c2hvbGxhbmQub3JnPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL21haWxib3gvS2NvbmZpZyAgICAg
ICAgfCAgMTAgKwo+ID4+ICBkcml2ZXJzL21haWxib3gvTWFrZWZpbGUgICAgICAgfCAgIDIgKwo+
ID4+ICBkcml2ZXJzL21haWxib3gvc3VueGktbXNnYm94LmMgfCAzMjMgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgMzM1IGluc2VydGlvbnMo
KykKPiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWFpbGJveC9zdW54aS1tc2dib3gu
Ywo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9LY29uZmlnIGIvZHJpdmVy
cy9tYWlsYm94L0tjb25maWcKPiA+PiBpbmRleCBhYjRlYjc1MGJiZGQuLjU3ZDEyOTM2MTc1ZSAx
MDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL21haWxib3gvS2NvbmZpZwo+ID4+ICsrKyBiL2RyaXZl
cnMvbWFpbGJveC9LY29uZmlnCj4gPj4gQEAgLTIyNyw0ICsyMjcsMTQgQEAgY29uZmlnIFpZTlFN
UF9JUElfTUJPWAo+ID4+ICAJICBtZXNzYWdlIHRvIHRoZSBJUEkgYnVmZmVyIGFuZCB3aWxsIGFj
Y2VzcyB0aGUgSVBJIGNvbnRyb2wKPiA+PiAgCSAgcmVnaXN0ZXJzIHRvIGtpY2sgdGhlIG90aGVy
IHByb2Nlc3NvciBvciBlbnF1aXJlIHN0YXR1cy4KPiA+PiAgCj4gPj4gK2NvbmZpZyBTVU5YSV9N
U0dCT1gKPiA+PiArCXRyaXN0YXRlICJBbGx3aW5uZXIgc3VueGkgTWVzc2FnZSBCb3giCj4gPj4g
KwlkZXBlbmRzIG9uIEFSQ0hfU1VOWEkgfHwgQ09NUElMRV9URVNUCj4gPj4gKwlkZWZhdWx0IEFS
Q0hfU1VOWEkKPiA+PiArCWhlbHAKPiA+PiArCSAgTWFpbGJveCBpbXBsZW1lbnRhdGlvbiBmb3Ig
dGhlIGhhcmR3YXJlIG1lc3NhZ2UgYm94IHByZXNlbnQgaW4KPiA+PiArCSAgQWxsd2lubmVyIHN1
bjhpLCBzdW45aSwgYW5kIHN1bjUwaSBTb0NzLiBUaGUgaGFyZHdhcmUgbWVzc2FnZSBib3ggaXMK
PiA+PiArCSAgdXNlZCBmb3IgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIHRoZSBhcHBsaWNhdGlvbiBD
UFVzIGFuZCB0aGUgcG93ZXIKPiA+PiArCSAgbWFuYWdlbWVudCBjb3Byb2Nlc3Nvci4KPiA+PiAr
Cj4gPj4gIGVuZGlmCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZSBi
L2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZQo+ID4+IGluZGV4IGMyMmZhZDZmNjk2Yi4uYmVjMmQ1
MGIwOTc2IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZQo+ID4+ICsr
KyBiL2RyaXZlcnMvbWFpbGJveC9NYWtlZmlsZQo+ID4+IEBAIC00OCwzICs0OCw1IEBAIG9iai0k
KENPTkZJR19TVE0zMl9JUENDKSAJKz0gc3RtMzItaXBjYy5vCj4gPj4gIG9iai0kKENPTkZJR19N
VEtfQ01EUV9NQk9YKQkrPSBtdGstY21kcS1tYWlsYm94Lm8KPiA+PiAgCj4gPj4gIG9iai0kKENP
TkZJR19aWU5RTVBfSVBJX01CT1gpCSs9IHp5bnFtcC1pcGktbWFpbGJveC5vCj4gPj4gKwo+ID4+
ICtvYmotJChDT05GSUdfU1VOWElfTVNHQk9YKQkrPSBzdW54aS1tc2dib3gubwo+ID4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21haWxib3gvc3VueGktbXNnYm94LmMgYi9kcml2ZXJzL21haWxib3gv
c3VueGktbXNnYm94LmMKPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uMjlhNTEwMWE1MzkwCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2RyaXZl
cnMvbWFpbGJveC9zdW54aS1tc2dib3guYwo+ID4+IEBAIC0wLDAgKzEsMzIzIEBACj4gPj4gKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPj4gKy8vCj4gPj4gKy8vIENvcHly
aWdodCAoYykgMjAxNy0yMDE5IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3JnPgo+
ID4+ICsKPiA+PiArI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ID4+ICsjaW5jbHVkZSA8bGlu
dXgvY2xrLmg+Cj4gPj4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPiA+PiArI2luY2x1ZGUg
PGxpbnV4L2Vyci5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gPj4gKyNp
bmNsdWRlIDxsaW51eC9pby5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gPj4g
KyNpbmNsdWRlIDxsaW51eC9tYWlsYm94X2NvbnRyb2xsZXIuaD4KPiA+PiArI2luY2x1ZGUgPGxp
bnV4L21vZHVsZS5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiA+PiArI2luY2x1ZGUg
PGxpbnV4L29mX2lycS5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4gPj4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgvc3Bp
bmxvY2suaD4KPiA+PiArCj4gPj4gKyNkZWZpbmUgTlVNX0NIQU5TCQk4Cj4gPj4gKwo+ID4+ICsj
ZGVmaW5lIENUUkxfUkVHKG4pCQkoMHgwMDAwICsgMHg0ICogKChuKSAvIDQpKQo+ID4+ICsjZGVm
aW5lIENUUkxfUlgobikJCUJJVCgwICsgOCAqICgobikgJSA0KSkKPiA+PiArI2RlZmluZSBDVFJM
X1RYKG4pCQlCSVQoNCArIDggKiAoKG4pICUgNCkpCj4gPj4gKwo+ID4+ICsjZGVmaW5lIFJFTU9U
RV9JUlFfRU5fUkVHCTB4MDA0MAo+ID4+ICsjZGVmaW5lIFJFTU9URV9JUlFfU1RBVF9SRUcJMHgw
MDUwCj4gPj4gKyNkZWZpbmUgTE9DQUxfSVJRX0VOX1JFRwkweDAwNjAKPiA+PiArI2RlZmluZSBM
T0NBTF9JUlFfU1RBVF9SRUcJMHgwMDcwCj4gPj4gKwo+ID4+ICsjZGVmaW5lIFJYX0lSUShuKQkJ
QklUKDAgKyAyICogKG4pKQo+ID4+ICsjZGVmaW5lIFJYX0lSUV9NQVNLCQkweDU1NTUKPiA+PiAr
I2RlZmluZSBUWF9JUlEobikJCUJJVCgxICsgMiAqIChuKSkKPiA+PiArI2RlZmluZSBUWF9JUlFf
TUFTSwkJMHhhYWFhCj4gPj4gKwo+ID4+ICsjZGVmaW5lIEZJRk9fU1RBVF9SRUcobikJKDB4MDEw
MCArIDB4NCAqIChuKSkKPiA+PiArI2RlZmluZSBGSUZPX1NUQVRfTUFTSwkJR0VOTUFTSygwLCAw
KQo+ID4+ICsKPiA+PiArI2RlZmluZSBNU0dfU1RBVF9SRUcobikJCSgweDAxNDAgKyAweDQgKiAo
bikpCj4gPj4gKyNkZWZpbmUgTVNHX1NUQVRfTUFTSwkJR0VOTUFTSygyLCAwKQo+ID4+ICsKPiA+
PiArI2RlZmluZSBNU0dfREFUQV9SRUcobikJCSgweDAxODAgKyAweDQgKiAobikpCj4gPj4gKwo+
ID4+ICsjZGVmaW5lIG1ib3hfZGJnKG1ib3gsIC4uLikJZGV2X2RiZygobWJveCktPmNvbnRyb2xs
ZXIuZGV2LCBfX1ZBX0FSR1NfXykKPiA+PiArCj4gPj4gK3N0cnVjdCBzdW54aV9tc2dib3ggewo+
ID4+ICsJc3RydWN0IG1ib3hfY29udHJvbGxlciBjb250cm9sbGVyOwo+ID4+ICsJc3RydWN0IGNs
ayAqY2xrOwo+ID4+ICsJc3BpbmxvY2tfdCBsb2NrOwo+ID4+ICsJdm9pZCBfX2lvbWVtICpyZWdz
Owo+ID4+ICt9Owo+ID4+ICsKPiA+PiArc3RhdGljIGJvb2wgc3VueGlfbXNnYm94X2xhc3RfdHhf
ZG9uZShzdHJ1Y3QgbWJveF9jaGFuICpjaGFuKTsKPiA+PiArc3RhdGljIGJvb2wgc3VueGlfbXNn
Ym94X3BlZWtfZGF0YShzdHJ1Y3QgbWJveF9jaGFuICpjaGFuKTsKPiA+PiArCj4gPj4gK3N0YXRp
YyBpbmxpbmUgaW50IGNoYW5uZWxfbnVtYmVyKHN0cnVjdCBtYm94X2NoYW4gKmNoYW4pCj4gPj4g
K3sKPiA+PiArCXJldHVybiBjaGFuIC0gY2hhbi0+bWJveC0+Y2hhbnM7Cj4gPj4gK30KPiA+PiAr
Cj4gPj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IHN1bnhpX21zZ2JveCAqY2hhbm5lbF90b19tc2di
b3goc3RydWN0IG1ib3hfY2hhbiAqY2hhbikKPiA+PiArewo+ID4+ICsJcmV0dXJuIGNoYW4tPmNv
bl9wcml2Owo+ID4+ICt9Cj4gPj4gKwo+ID4+ICtzdGF0aWMgaXJxcmV0dXJuX3Qgc3VueGlfbXNn
Ym94X2lycShpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4gPj4gK3sKPiA+PiArCXN0cnVjdCBzdW54
aV9tc2dib3ggKm1ib3ggPSBkZXZfaWQ7Cj4gPj4gKwl1aW50MzJfdCBzdGF0dXM7Cj4gPj4gKwlp
bnQgbjsKPiA+PiArCj4gPj4gKwkvKiBPbmx5IGV4YW1pbmUgY2hhbm5lbHMgdGhhdCBhcmUgY3Vy
cmVudGx5IGVuYWJsZWQuICovCj4gPj4gKwlzdGF0dXMgPSByZWFkbChtYm94LT5yZWdzICsgTE9D
QUxfSVJRX0VOX1JFRykgJgo+ID4+ICsJCSByZWFkbChtYm94LT5yZWdzICsgTE9DQUxfSVJRX1NU
QVRfUkVHKTsKPiA+PiArCj4gPj4gKwlpZiAoIShzdGF0dXMgJiBSWF9JUlFfTUFTSykpCj4gPj4g
KwkJcmV0dXJuIElSUV9OT05FOwo+ID4+ICsKPiA+PiArCWZvciAobiA9IDA7IG4gPCBOVU1fQ0hB
TlM7ICsrbikgewo+ID4+ICsJCXN0cnVjdCBtYm94X2NoYW4gKmNoYW4gPSAmbWJveC0+Y29udHJv
bGxlci5jaGFuc1tuXTsKPiA+PiArCj4gPj4gKwkJaWYgKCEoc3RhdHVzICYgUlhfSVJRKG4pKSkK
PiA+PiArCQkJY29udGludWU7Cj4gPj4gKwo+ID4+ICsJCXdoaWxlIChzdW54aV9tc2dib3hfcGVl
a19kYXRhKGNoYW4pKSB7Cj4gPj4gKwkJCXVpbnQzMl90IG1zZyA9IHJlYWRsKG1ib3gtPnJlZ3Mg
KyBNU0dfREFUQV9SRUcobikpOwo+ID4+ICsKPiA+PiArCQkJbWJveF9kYmcobWJveCwgIkNoYW5u
ZWwgJWQgcmVjZWl2ZWQgMHglMDh4XG4iLCBuLCBtc2cpOwo+ID4+ICsJCQltYm94X2NoYW5fcmVj
ZWl2ZWRfZGF0YShjaGFuLCAmbXNnKTsKPiA+PiArCQl9Cj4gPj4gKwo+ID4+ICsJCS8qIFRoZSBJ
UlEgY2FuIGJlIGNsZWFyZWQgb25seSBvbmNlIHRoZSBGSUZPIGlzIGVtcHR5LiAqLwo+ID4+ICsJ
CXdyaXRlbChSWF9JUlEobiksIG1ib3gtPnJlZ3MgKyBMT0NBTF9JUlFfU1RBVF9SRUcpOwo+ID4+
ICsJfQo+ID4+ICsKPiA+PiArCXJldHVybiBJUlFfSEFORExFRDsKPiA+PiArfQo+ID4+ICsKPiA+
PiArc3RhdGljIGludCBzdW54aV9tc2dib3hfc2VuZF9kYXRhKHN0cnVjdCBtYm94X2NoYW4gKmNo
YW4sIHZvaWQgKmRhdGEpCj4gPj4gK3sKPiA+PiArCXN0cnVjdCBzdW54aV9tc2dib3ggKm1ib3gg
PSBjaGFubmVsX3RvX21zZ2JveChjaGFuKTsKPiA+PiArCWludCBuID0gY2hhbm5lbF9udW1iZXIo
Y2hhbik7Cj4gPj4gKwl1aW50MzJfdCBtc2cgPSAqKHVpbnQzMl90ICopZGF0YTsKPiA+PiArCj4g
Pj4gKwkvKiBVc2luZyBhIGNoYW5uZWwgYmFja3dhcmRzIGdldHMgdGhlIGhhcmR3YXJlIGludG8g
YSBiYWQgc3RhdGUuICovCj4gPj4gKwlpZiAoV0FSTl9PTl9PTkNFKCEocmVhZGwobWJveC0+cmVn
cyArIENUUkxfUkVHKG4pKSAmIENUUkxfVFgobikpKSkKPiA+PiArCQlyZXR1cm4gMDsKPiA+PiAr
Cj4gPj4gKwkvKiBXZSBjYW5ub3QgcG9zdCBhIG5ldyBtZXNzYWdlIGlmIHRoZSBGSUZPIGlzIGZ1
bGwuICovCj4gPj4gKwlpZiAocmVhZGwobWJveC0+cmVncyArIEZJRk9fU1RBVF9SRUcobikpICYg
RklGT19TVEFUX01BU0spIHsKPiA+PiArCQltYm94X2RiZyhtYm94LCAiQ2hhbm5lbCAlZCBidXN5
IHNlbmRpbmcgMHglMDh4XG4iLCBuLCBtc2cpOwo+ID4+ICsJCXJldHVybiAtRUJVU1k7Cj4gPj4g
Kwl9Cj4gPj4gKwo+ID4+ICsJd3JpdGVsKG1zZywgbWJveC0+cmVncyArIE1TR19EQVRBX1JFRyhu
KSk7Cj4gPj4gKwltYm94X2RiZyhtYm94LCAiQ2hhbm5lbCAlZCBzZW50IDB4JTA4eFxuIiwgbiwg
bXNnKTsKPiA+PiArCj4gPj4gKwlyZXR1cm4gMDsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGlj
IGludCBzdW54aV9tc2dib3hfc3RhcnR1cChzdHJ1Y3QgbWJveF9jaGFuICpjaGFuKQo+ID4+ICt7
Cj4gPj4gKwlzdHJ1Y3Qgc3VueGlfbXNnYm94ICptYm94ID0gY2hhbm5lbF90b19tc2dib3goY2hh
bik7Cj4gPj4gKwlpbnQgbiA9IGNoYW5uZWxfbnVtYmVyKGNoYW4pOwo+ID4+ICsKPiA+PiArCS8q
IFRoZSBjb3Byb2Nlc3NvciBpcyByZXNwb25zaWJsZSBmb3Igc2V0dGluZyBjaGFubmVsIGRpcmVj
dGlvbnMuICovCj4gPj4gKwlpZiAocmVhZGwobWJveC0+cmVncyArIENUUkxfUkVHKG4pKSAmIENU
UkxfUlgobikpIHsKPiA+PiArCQkvKiBGbHVzaCB0aGUgcmVjZWl2ZSBGSUZPLiAqLwo+ID4+ICsJ
CXdoaWxlIChzdW54aV9tc2dib3hfcGVla19kYXRhKGNoYW4pKQo+ID4+ICsJCQlyZWFkbChtYm94
LT5yZWdzICsgTVNHX0RBVEFfUkVHKG4pKTsKPiA+PiArCQl3cml0ZWwoUlhfSVJRKG4pLCBtYm94
LT5yZWdzICsgTE9DQUxfSVJRX1NUQVRfUkVHKTsKPiA+PiArCj4gPj4gKwkJLyogRW5hYmxlIHRo
ZSByZWNlaXZlIElSUS4gKi8KPiA+PiArCQlzcGluX2xvY2soJm1ib3gtPmxvY2spOwo+ID4+ICsJ
CXdyaXRlbChyZWFkbChtYm94LT5yZWdzICsgTE9DQUxfSVJRX0VOX1JFRykgfCBSWF9JUlEobiks
Cj4gPj4gKwkJICAgICAgIG1ib3gtPnJlZ3MgKyBMT0NBTF9JUlFfRU5fUkVHKTsKPiA+PiArCQlz
cGluX3VubG9jaygmbWJveC0+bG9jayk7Cj4gPj4gKwl9Cj4gPj4gKwo+ID4+ICsJbWJveF9kYmco
bWJveCwgIkNoYW5uZWwgJWQgc3RhcnR1cCBjb21wbGV0ZVxuIiwgbik7Cj4gPj4gKwo+ID4+ICsJ
cmV0dXJuIDA7Cj4gPj4gK30KPiA+PiArCj4gPj4gK3N0YXRpYyB2b2lkIHN1bnhpX21zZ2JveF9z
aHV0ZG93bihzdHJ1Y3QgbWJveF9jaGFuICpjaGFuKQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3Qgc3Vu
eGlfbXNnYm94ICptYm94ID0gY2hhbm5lbF90b19tc2dib3goY2hhbik7Cj4gPj4gKwlpbnQgbiA9
IGNoYW5uZWxfbnVtYmVyKGNoYW4pOwo+ID4+ICsKPiA+PiArCWlmIChyZWFkbChtYm94LT5yZWdz
ICsgQ1RSTF9SRUcobikpICYgQ1RSTF9SWChuKSkgewo+ID4+ICsJCS8qIERpc2FibGUgdGhlIHJl
Y2VpdmUgSVJRLiAqLwo+ID4+ICsJCXNwaW5fbG9jaygmbWJveC0+bG9jayk7Cj4gPj4gKwkJd3Jp
dGVsKHJlYWRsKG1ib3gtPnJlZ3MgKyBMT0NBTF9JUlFfRU5fUkVHKSAmIH5SWF9JUlEobiksCj4g
Pj4gKwkJICAgICAgIG1ib3gtPnJlZ3MgKyBMT0NBTF9JUlFfRU5fUkVHKTsKPiA+PiArCQlzcGlu
X3VubG9jaygmbWJveC0+bG9jayk7Cj4gPj4gKwo+ID4+ICsJCS8qIEF0dGVtcHQgdG8gZmx1c2gg
dGhlIEZJRk8gdW50aWwgdGhlIElSUSBpcyBjbGVhcmVkLiAqLwo+ID4+ICsJCWRvIHsKPiA+PiAr
CQkJd2hpbGUgKHN1bnhpX21zZ2JveF9wZWVrX2RhdGEoY2hhbikpCj4gPj4gKwkJCQlyZWFkbCht
Ym94LT5yZWdzICsgTVNHX0RBVEFfUkVHKG4pKTsKPiA+PiArCQkJd3JpdGVsKFJYX0lSUShuKSwg
bWJveC0+cmVncyArIExPQ0FMX0lSUV9TVEFUX1JFRyk7Cj4gPj4gKwkJfSB3aGlsZSAocmVhZGwo
bWJveC0+cmVncyArIExPQ0FMX0lSUV9TVEFUX1JFRykgJiBSWF9JUlEobikpOwo+ID4+ICsJfQo+
ID4+ICsKPiA+PiArCW1ib3hfZGJnKG1ib3gsICJDaGFubmVsICVkIHNodXRkb3duIGNvbXBsZXRl
XG4iLCBuKTsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGJvb2wgc3VueGlfbXNnYm94X2xh
c3RfdHhfZG9uZShzdHJ1Y3QgbWJveF9jaGFuICpjaGFuKQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3Qg
c3VueGlfbXNnYm94ICptYm94ID0gY2hhbm5lbF90b19tc2dib3goY2hhbik7Cj4gPj4gKwlpbnQg
biA9IGNoYW5uZWxfbnVtYmVyKGNoYW4pOwo+ID4+ICsKPiA+PiArCS8qCj4gPj4gKwkgKiBUaGUg
aGFyZHdhcmUgYWxsb3dzIHNub29waW5nIG9uIHRoZSByZW1vdGUgdXNlcidzIElSUSBzdGF0dXNl
cy4KPiA+PiArCSAqIFdlIGNvbnNpZGVyIGEgbWVzc2FnZSB0byBiZSBhY2tub3dsZWRnZWQgb25s
eSBvbmNlIHRoZSByZWNlaXZlIElSUQo+ID4+ICsJICogZm9yIHRoYXQgY2hhbm5lbCBpcyBjbGVh
cmVkLiBTaW5jZSB0aGUgcmVjZWl2ZSBJUlEgZm9yIGEgY2hhbm5lbAo+ID4+ICsJICogY2Fubm90
IGJlIGNsZWFyZWQgdW50aWwgdGhlIEZJRk8gZm9yIHRoYXQgY2hhbm5lbCBpcyBlbXB0eSwgdGhp
cwo+ID4+ICsJICogZW5zdXJlcyB0aGF0IHRoZSBtZXNzYWdlIGhhcyBhY3R1YWxseSBiZWVuIHJl
YWQuIEl0IGFsc28gZ2l2ZXMgdGhlCj4gPj4gKwkgKiByZWNpcGllbnQgYW4gb3Bwb3J0dW5pdHkg
dG8gcGVyZm9ybSBtaW5pbWFsIHByb2Nlc3NpbmcgYmVmb3JlCj4gPj4gKwkgKiBhY2tub3dsZWRn
aW5nIHRoZSBtZXNzYWdlLgo+ID4+ICsJICovCj4gPj4gKwlyZXR1cm4gIShyZWFkbChtYm94LT5y
ZWdzICsgUkVNT1RFX0lSUV9TVEFUX1JFRykgJiBSWF9JUlEobikpOwo+ID4+ICt9Cj4gPj4gKwo+
ID4+ICtzdGF0aWMgYm9vbCBzdW54aV9tc2dib3hfcGVla19kYXRhKHN0cnVjdCBtYm94X2NoYW4g
KmNoYW4pCj4gPj4gK3sKPiA+PiArCXN0cnVjdCBzdW54aV9tc2dib3ggKm1ib3ggPSBjaGFubmVs
X3RvX21zZ2JveChjaGFuKTsKPiA+PiArCWludCBuID0gY2hhbm5lbF9udW1iZXIoY2hhbik7Cj4g
Pj4gKwo+ID4+ICsJcmV0dXJuIHJlYWRsKG1ib3gtPnJlZ3MgKyBNU0dfU1RBVF9SRUcobikpICYg
TVNHX1NUQVRfTUFTSzsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBt
Ym94X2NoYW5fb3BzIHN1bnhpX21zZ2JveF9jaGFuX29wcyA9IHsKPiA+PiArCS5zZW5kX2RhdGEg
ICAgPSBzdW54aV9tc2dib3hfc2VuZF9kYXRhLAo+ID4+ICsJLnN0YXJ0dXAgICAgICA9IHN1bnhp
X21zZ2JveF9zdGFydHVwLAo+ID4+ICsJLnNodXRkb3duICAgICA9IHN1bnhpX21zZ2JveF9zaHV0
ZG93biwKPiA+PiArCS5sYXN0X3R4X2RvbmUgPSBzdW54aV9tc2dib3hfbGFzdF90eF9kb25lLAo+
ID4+ICsJLnBlZWtfZGF0YSAgICA9IHN1bnhpX21zZ2JveF9wZWVrX2RhdGEsCj4gPj4gK307Cj4g
Pj4gKwo+ID4+ICtzdGF0aWMgaW50IHN1bnhpX21zZ2JveF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2Owo+ID4+ICsJc3RydWN0IG1ib3hfY2hhbiAqY2hhbnM7Cj4gPj4gKwlzdHJ1Y3QgcmVzZXRf
Y29udHJvbCAqcmVzZXQ7Cj4gPj4gKwlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiA+PiArCXN0cnVj
dCBzdW54aV9tc2dib3ggKm1ib3g7Cj4gPj4gKwlpbnQgaSwgcmV0Owo+ID4+ICsKPiA+PiArCW1i
b3ggPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKm1ib3gpLCBHRlBfS0VSTkVMKTsKPiA+PiAr
CWlmICghbWJveCkKPiA+PiArCQlyZXR1cm4gLUVOT01FTTsKPiA+PiArCj4gPj4gKwljaGFucyA9
IGRldm1fa2NhbGxvYyhkZXYsIE5VTV9DSEFOUywgc2l6ZW9mKCpjaGFucyksIEdGUF9LRVJORUwp
Owo+ID4+ICsJaWYgKCFjaGFucykKPiA+PiArCQlyZXR1cm4gLUVOT01FTTsKPiA+PiArCj4gPj4g
Kwlmb3IgKGkgPSAwOyBpIDwgTlVNX0NIQU5TOyArK2kpCj4gPj4gKwkJY2hhbnNbaV0uY29uX3By
aXYgPSBtYm94Owo+ID4+ICsKPiA+PiArCW1ib3gtPmNsayA9IGRldm1fY2xrX2dldChkZXYsIE5V
TEwpOwo+ID4+ICsJaWYgKElTX0VSUihtYm94LT5jbGspKSB7Cj4gPj4gKwkJcmV0ID0gUFRSX0VS
UihtYm94LT5jbGspOwo+ID4+ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBjbG9jazog
JWRcbiIsIHJldCk7Cj4gPj4gKwkJcmV0dXJuIHJldDsKPiA+PiArCX0KPiA+PiArCj4gPj4gKwly
ZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUobWJveC0+Y2xrKTsKPiA+PiArCWlmIChyZXQpIHsKPiA+
PiArCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBlbmFibGUgY2xvY2s6ICVkXG4iLCByZXQpOwo+
ID4+ICsJCXJldHVybiByZXQ7Cj4gPj4gKwl9Cj4gPj4gKwo+ID4+ICsJcmVzZXQgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0KGRldiwgTlVMTCk7Cj4gPj4gKwlpZiAoSVNfRVJSKHJlc2V0KSkgewo+
ID4+ICsJCXJldCA9IFBUUl9FUlIocmVzZXQpOwo+ID4+ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVk
IHRvIGdldCByZXNldCBjb250cm9sOiAlZFxuIiwgcmV0KTsKPiA+PiArCQlnb3RvIGVycl9kaXNh
YmxlX3VucHJlcGFyZTsKPiA+PiArCX0KPiA+PiArCj4gPj4gKwlyZXQgPSByZXNldF9jb250cm9s
X2RlYXNzZXJ0KHJlc2V0KTsKPiA+PiArCWlmIChyZXQpIHsKPiA+PiArCQlkZXZfZXJyKGRldiwg
IkZhaWxlZCB0byBkZWFzc2VydCByZXNldDogJWRcbiIsIHJldCk7Cj4gPj4gKwkJZ290byBlcnJf
ZGlzYWJsZV91bnByZXBhcmU7Cj4gPj4gKwl9Cj4gPiAKPiA+IFlvdSBuZWVkIHRvIGFzc2VydCB0
aGUgcmVzZXQgYWdhaW4gZnJvbSBub3cgb24sIGluIGVycm9yIHBhdGhzLiBkZXZtCj4gPiB3aWxs
IG5vdCBkbyB0aGF0IGZvciB5b3UuCj4gCj4gSSBrbm93LCBhbmQgdGhhdCdzIGludGVudGlvbmFs
LiBUaGlzIHNhbWUgbWVzc2FnZSBib3ggZGV2aWNlIGlzIHVzZWQgZm9yIEFURiB0bwo+IGNvbW11
bmljYXRlIHdpdGggU0NQIGZpcm13YXJlIChvbiBhIGRpZmZlcmVudCBjaGFubmVsKS4gVGhpcyBj
b3VsZCBiZSBoYXBwZW5pbmcKPiBvbiBhIGRpZmZlcmVudCBjb3JlIHdoaWxlIExpbnV4IGlzIHJ1
bm5pbmcuIFNvIExpbnV4IGlzIG5vdCBhbGxvd2VkIHRvIGRlYXNzZXJ0Cj4gdGhlIHJlc2V0LiBj
bGtfZGlzYWJsZV91bnByZXBhcmUoKSBpcyBvbmx5IG9rYXkgYmVjYXVzZSB0aGUgY2xvY2sgaXMg
bWFya2VkIGFzCj4gY3JpdGljYWwuCgpPa2F5LiBJdCBuZWVkcyB0byBiZSBkb2N1bW1lbnRlZCBo
ZXJlIHRob3VnaCwgc28gdGhhdCBzb21lb25lIHdpbGwKbm90ICJmaXgiIGl0IGluIHRoZSBmdXR1
cmUsIGFmdGVyIGZpbmRpbmcgdGhpcyB3aXRoIGNvY2NpbmVsbGUgb3IKc29tZXRoaW5nLgoKcmVn
YXJkcywKCW8uCgo+ID4+ICsJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVT
T1VSQ0VfTUVNLCAwKTsKPiA+PiArCWlmICghcmVzKSB7Cj4gPj4gKwkJcmV0ID0gLUVOT0RFVjsK
PiA+PiArCQlnb3RvIGVycl9kaXNhYmxlX3VucHJlcGFyZTsKPiA+PiArCX0KPiA+PiArCj4gPj4g
KwltYm94LT5yZWdzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4g
Pj4gKwlpZiAoSVNfRVJSKG1ib3gtPnJlZ3MpKSB7Cj4gPj4gKwkJcmV0ID0gUFRSX0VSUihtYm94
LT5yZWdzKTsKPiA+PiArCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBtYXAgTU1JTyByZXNvdXJj
ZTogJWRcbiIsIHJldCk7Cj4gPj4gKwkJZ290byBlcnJfZGlzYWJsZV91bnByZXBhcmU7Cj4gPj4g
Kwl9Cj4gPj4gKwo+ID4+ICsJLyogRGlzYWJsZSBhbGwgSVJRcyBmb3IgdGhpcyBlbmQgb2YgdGhl
IG1zZ2JveC4gKi8KPiA+PiArCXdyaXRlbCgwLCBtYm94LT5yZWdzICsgTE9DQUxfSVJRX0VOX1JF
Ryk7Cj4gPj4gKwo+ID4+ICsJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShkZXYsIGlycV9vZl9wYXJz
ZV9hbmRfbWFwKGRldi0+b2Zfbm9kZSwgMCksCj4gPj4gKwkJCSAgICAgICBzdW54aV9tc2dib3hf
aXJxLCAwLCBkZXZfbmFtZShkZXYpLCBtYm94KTsKPiA+PiArCWlmIChyZXQpIHsKPiA+PiArCQlk
ZXZfZXJyKGRldiwgIkZhaWxlZCB0byByZWdpc3RlciBJUlEgaGFuZGxlcjogJWRcbiIsIHJldCk7
Cj4gPj4gKwkJZ290byBlcnJfZGlzYWJsZV91bnByZXBhcmU7Cj4gPj4gKwl9Cj4gPj4gKwo+ID4+
ICsJbWJveC0+Y29udHJvbGxlci5kZXYgICAgICAgICAgID0gZGV2Owo+ID4+ICsJbWJveC0+Y29u
dHJvbGxlci5vcHMgICAgICAgICAgID0gJnN1bnhpX21zZ2JveF9jaGFuX29wczsKPiA+PiArCW1i
b3gtPmNvbnRyb2xsZXIuY2hhbnMgICAgICAgICA9IGNoYW5zOwo+ID4+ICsJbWJveC0+Y29udHJv
bGxlci5udW1fY2hhbnMgICAgID0gTlVNX0NIQU5TOwo+ID4+ICsJbWJveC0+Y29udHJvbGxlci50
eGRvbmVfaXJxICAgID0gZmFsc2U7Cj4gPj4gKwltYm94LT5jb250cm9sbGVyLnR4ZG9uZV9wb2xs
ICAgPSB0cnVlOwo+ID4+ICsJbWJveC0+Y29udHJvbGxlci50eHBvbGxfcGVyaW9kID0gNTsKPiA+
PiArCj4gPj4gKwlzcGluX2xvY2tfaW5pdCgmbWJveC0+bG9jayk7Cj4gPj4gKwlwbGF0Zm9ybV9z
ZXRfZHJ2ZGF0YShwZGV2LCBtYm94KTsKPiA+PiArCj4gPj4gKwlyZXQgPSBtYm94X2NvbnRyb2xs
ZXJfcmVnaXN0ZXIoJm1ib3gtPmNvbnRyb2xsZXIpOwo+ID4+ICsJaWYgKHJldCkgewo+ID4+ICsJ
CWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIHJlZ2lzdGVyIGNvbnRyb2xsZXI6ICVkXG4iLCByZXQp
Owo+ID4+ICsJCWdvdG8gZXJyX2Rpc2FibGVfdW5wcmVwYXJlOwo+ID4+ICsJfQo+ID4+ICsKPiA+
PiArCXJldHVybiAwOwo+ID4+ICsKPiA+PiArZXJyX2Rpc2FibGVfdW5wcmVwYXJlOgo+ID4+ICsJ
Y2xrX2Rpc2FibGVfdW5wcmVwYXJlKG1ib3gtPmNsayk7Cj4gPj4gKwo+ID4+ICsJcmV0dXJuIHJl
dDsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGludCBzdW54aV9tc2dib3hfcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gK3sKPiA+PiArCXN0cnVjdCBzdW54aV9t
c2dib3ggKm1ib3ggPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiA+PiArCj4gPj4gKwlt
Ym94X2NvbnRyb2xsZXJfdW5yZWdpc3RlcigmbWJveC0+Y29udHJvbGxlcik7Cj4gPj4gKwljbGtf
ZGlzYWJsZV91bnByZXBhcmUobWJveC0+Y2xrKTsKPiA+IAo+ID4gQWxzbywgYXNzZXJ0IHRoZSBy
ZXNldCBoZXJlLgo+IAo+IFNhbWUgY29tbWVudCBhcyBhYm92ZS4gVGhpcyBpcyBpbnRlbnRpb25h
bC4KPiAKPiBUaGFua3MsCj4gU2FtdWVsCj4gCj4gPj4gKwlyZXR1cm4gMDsKPiA+PiArfQo+ID4+
ICsKPiA+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VueGlfbXNnYm94X29m
X21hdGNoW10gPSB7Cj4gPj4gKwl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW42aS1hMzEt
bXNnYm94IiwgfSwKPiA+PiArCXt9LAo+ID4+ICt9Owo+ID4+ICtNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBzdW54aV9tc2dib3hfb2ZfbWF0Y2gpOwo+ID4+ICsKPiA+PiArc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgc3VueGlfbXNnYm94X2RyaXZlciA9IHsKPiA+PiArCS5kcml2ZXIgPSB7
Cj4gPj4gKwkJLm5hbWUgPSAic3VueGktbXNnYm94IiwKPiA+PiArCQkub2ZfbWF0Y2hfdGFibGUg
PSBzdW54aV9tc2dib3hfb2ZfbWF0Y2gsCj4gPj4gKwl9LAo+ID4+ICsJLnByb2JlICA9IHN1bnhp
X21zZ2JveF9wcm9iZSwKPiA+PiArCS5yZW1vdmUgPSBzdW54aV9tc2dib3hfcmVtb3ZlLAo+ID4+
ICt9Owo+ID4+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHN1bnhpX21zZ2JveF9kcml2ZXIpOwo+
ID4+ICsKPiA+PiArTU9EVUxFX0FVVEhPUigiU2FtdWVsIEhvbGxhbmQgPHNhbXVlbEBzaG9sbGFu
ZC5vcmc+Iik7Cj4gPj4gK01PRFVMRV9ERVNDUklQVElPTigiQWxsd2lubmVyIHN1bnhpIE1lc3Nh
Z2UgQm94Iik7Cj4gPj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsKPiA+PiAtLSAKPiA+PiAy
LjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

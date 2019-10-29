Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938B6E888A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TabMFdo6RdVhNkwg/lDaKI7QQmy6xIdIDXUxnSX8h3Y=; b=eMbaI+VcWmjl9c
	qOAk1wEqKKKBcUsGTpulpHGAB4O+erLCDhsnFbcPj6uQaRA2CASMmk9Io7Xxtlp9X6kkhILjpKdLs
	hbKVlbarYsa24tPajVErULSB7rpzZQlYrtG2QT+tULoiuIgcy4pK0Ut388LENc/G46oVJCUIWMX2M
	QsTdUCmPHdLrStxkWAk3hd1bfw8lAJaVi6v/qSoyPgdY7+HI3q07wFb/rZ9JIjDQBzgKk1I4dhZRv
	faoAgK1PHVoiqQGHofoehW86KvbXefeDMJSN/qmGv9nTRS7UZa/V3HeoXtx9DjQKW3tHGb6VDj6b1
	1ZyWvJS9SbiYJcFeDCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQqt-0004KO-Ff; Tue, 29 Oct 2019 12:43:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQqV-00047n-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572353011; bh=k3Nz5ZjLe0bnhm7wv+maW9ij16pFEqan6p8GTLgONJE=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=lB3OlaK+8qw1a9OhXelLYEtS7kgLE3SNVXasH07XVZyr5LOr2fUFsp3FKKr1EpZi5
 eBsbPmfSk7r1Ml/o0ED8JU5AZLsfeW1+/haYNRQYuErqWcPvKJzqY4KfLZECEJMmMb
 Cunx4bJni6LzSFIVbwFU+qrSEhiVGx7L+5HYYd4Q=
Date: Tue, 29 Oct 2019 13:43:31 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] input: sun4i-lradc-keys: Add wakup
 support
Message-ID: <20191029124331.7yh5kccsq2syxm47@core.my.home>
Mail-Followup-To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Hans de Goede <hdegoede@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191028221502.3503543-1-megous@megous.com>
 <20191028233828.GA57214@dtor-ws>
 <20191028235626.5afvszxtppsieywi@core.my.home>
 <20191029001250.GB57214@dtor-ws>
 <20191029014559.gif3ay7anq24un2i@core.my.home>
 <20191029041804.GF57214@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029041804.GF57214@dtor-ws>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054335_619453_05E5D6F7 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-sunxi@googlegroups.com,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDk6MTg6MDRQTSAtMDcwMCwgRG1pdHJ5IFRvcm9raG92
IHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0IDAyOjQ1OjU5QU0gKzAxMDAsIE9uZMWZ
ZWogSmlybWFuIHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDU6MTI6NTBQTSAt
MDcwMCwgRG1pdHJ5IFRvcm9raG92IHdyb3RlOgo+ID4gPiBPbiBUdWUsIE9jdCAyOSwgMjAxOSBh
dCAxMjo1NjoyNkFNICswMTAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+ID4gPiBPbiBNb24s
IE9jdCAyOCwgMjAxOSBhdCAwNDozODoyOFBNIC0wNzAwLCBEbWl0cnkgVG9yb2tob3Ygd3JvdGU6
Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKwllcnJvciA9IGRldl9wbV9zZXRfd2FrZV9pcnEo
ZGV2LCBpcnEpOwo+ID4gPiA+ID4gPiArCWlmIChlcnJvcikgewo+ID4gPiA+ID4gPiArCQlkZXZf
ZXJyKGRldiwgIkNvdWxkIG5vdCBzZXQgd2FrZSBJUlFcbiIpOwo+ID4gPiA+ID4gPiArCQlyZXR1
cm4gZXJyb3I7Cj4gPiA+ID4gPiA+ICsJfQo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IEkgd29uZGVyIGlmIHdlIGNvdWxkIHRlYWNoIHBsYXRmb3JtIGRyaXZlciBjb3JlIHRvIGhh
bmRsZSB0aGlzIGZvciB1cy4KPiA+ID4gPiAKPiA+ID4gPiBOb3Qgc3VyZSwgc29tZSBkcml2ZXJz
IGRvIGVuYWJsZS9kaXNhYmxlIHdha2VfaXJxIGJ5IGhhbmQgaW4gc3VzcGVuZC9yZXN1bWUKPiA+
ID4gPiBjYWxsYmFja3MsIHNvIGl0IHdvdWxkIHByb2JhYmx5IG5lZWQgdG8gYmUgb3B0LWluIHNv
bWVob3cuIEkgZ3Vlc3MgY2FsbGluZyB0aGUKPiA+ID4gPiBmdW5jdGlvbiBsaWtlIHRoaXMgaXMg
b25lIHdheSB0byBtYWtlIGl0IG9wdC1pbi4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgb3RoZXIgd2F5
IG1heSBiZSBieSBwYXNzaW5nIGEgZmxhZyBzb21ld2hlcmUsIGxpa2UgdG8KPiA+ID4gPiByZXF1
ZXN0X3RocmVhZGVkX2lycS4gRGlkIHlvdSBoYXZlIHNvbWV0aGluZyBtb3JlIGNvbmNyZXRlIGlu
IG1pbmQ/Cj4gPiA+IAo+ID4gPiBJIHRoaW5rIGl0IGlzIHBlcmZlY3RseSBmaW5lIHRvIGNvbnRp
bnVlIHVzaW5nIGVuYWJsZV9pcnFfd2FrZSBhbmQKPiA+ID4gZGlzYWJsZV9pcnFfd2FrZSBmcm9t
IHRoZSBkcml2ZXIgd2hpbGUgbWFya2luZyBpcnEgYXMgYmVpbmcgd2FrZSBpcnEKPiA+ID4gZm9y
bSB0aGUgY29yZS4KPiA+IAo+ID4gSSBzZWUsIGl0IGxvb2tzIGxpa2UgaXJxX3NldF9pcnFfd2Fr
ZSB3aWxsIHRyYWNrIHRoZSBjYWxscyB2aWEgd2FrZV9kZXB0aAo+ID4gCj4gPiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2tlcm5lbC9pcnEvbWFuYWdlLmMj
TDcxNAo+ID4gCj4gPiBCdXQgYWxsIGlycXMgYXJlIG5vdCBuZWNlc3NhcmlseSB3YWtlIGlycXMs
IG5vPyBTbyBpdCBzdGlsbCBtYXkgbmVlZCB0byBiZQo+ID4gb3B0LWluIHNvbWVob3cuCj4gCj4g
SSB0aG91Z2h0IHdlJ2QgZG8gdGhhdCBmb3IgSVJRIG5hbWVkICJ3YWtlaXJxIiBvciB0aGUgdmVy
eSBmaXJzdCBJUlEgaWYKPiB0aGVyZSBpcyBubyBuYW1lZCBJUlEsIGFuZCB3aGVuIHdlIGhhdmUg
dGhlICJ3YWtldXAtc291cmNlIiBwcm9wZXJ0eSwKPiBzaW1pbGFybHkgdG8gd2hhdCB3ZSBkbyBp
biBJMkMgYnVzLgoKSSBzZWUuIEkndmUgbG9va2VkIGF0IGRyaXZlcnMgdXNpbmcgZGV2X3BtX3Nl
dF93YWtlX2lycSBhbmQKZGV2X3BtX3NldF9kZWRpY2F0ZWRfd2FrZV9pcnEgYW5kIG5vdCBtYW55
IHBsYXRmb3JtIGRyaXZlcnMgd291bGQgcG90ZW50aWFsbHkKYmVuZWZpdCAofjI1IG91dCBvZiAy
MzAwKSwgb2YgdGhvc2Ugb25seSBzb21lIHVzZSBPRiBhbmQgYXJlIHBsYXRmb3JtCmRyaXZlcnMs
IG1heWJlIDE1LTIwOgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L2lk
ZW50L2Rldl9wbV9zZXRfd2FrZV9pcnEKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
bGF0ZXN0L2lkZW50L2Rldl9wbV9zZXRfZGVkaWNhdGVkX3dha2VfaXJxCgpJIGRvbid0IHRoaW5r
IGl0J3Mgd29ydGggaXQuCgpyZWdhcmRzLAoJby4KCj4gVGhhbmtzLgo+IAo+IC0tIAo+IERtaXRy
eQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

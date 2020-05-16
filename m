Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9762A1D6315
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gnsRib6mfWEhQl3o0h1dWx+L7k7d8tNtN366XcZ3Io=; b=IumuWlsIgwwrXD
	WdY5XeAt44i7it1p9IjYCxxr+tT3ZdNOtyahWCi4t4wNGXJ+oxmBUsPRaSFEcvDqXWFSL554rI8mm
	Ccerx62m9gw52/W6ow5IV31uY0r6M3RTCXipdHoHoojGAoTvG83zaCQRASraluxEcZze5snA+34vc
	5yh4i3abB2h0/+6efcs7GPEtE5E7ek4JNK0pJ35qsaLg5GIGKVRf58R1m69PrzsZc/0viOnNR+sZL
	Iae8r0Te6J3KKwSxZvSsEtz0AeHS90c18CblPs9Rf77nNJpMdHTsajlQc7Qm2xEZSkb4UgebaVAjy
	McLbmcJ5OBLtqjs6GKvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0eG-0005Sx-BV; Sat, 16 May 2020 17:30:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0e7-0005Sc-A2
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:30:48 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA81E2065C;
 Sat, 16 May 2020 17:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589650247;
 bh=sy/ZwK4XLIWwnJ1X2r/NS7nH5MIkDalgPGtw2Za22Cg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZAO9rW0QLWqZYrooCxJIjDBdwAhuUHzT/l6jU1YUon2n+JAYT+1laLXlRkfEiA4S4
 IXt7UXY2xcvrGd58Yhy0+D3c9jcLumHvktP2IGjxC6jn9gDUZmouB6T9clhXwxEUOJ
 mgf3FuBHRk+5c5ZtQEV9PeLGxJd24EpNWYJKnppc=
Date: Sat, 16 May 2020 18:30:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Sa, Nuno" <Nuno.Sa@analog.com>
Subject: Re: [PATCH v2 7/8] iio: core: simplify alloc alignment code
Message-ID: <20200516183041.79b4dd74@archlinux>
In-Reply-To: <BN6PR03MB3347D0598B1700D1A5C6974C99BD0@BN6PR03MB3347.namprd03.prod.outlook.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-8-alexandru.ardelean@analog.com>
 <BN6PR03MB33472A1B559F98E3BDCAB40B99BD0@BN6PR03MB3347.namprd03.prod.outlook.com>
 <1d89df334b08486e73ca181cf9035d9af8fbccf2.camel@analog.com>
 <BN6PR03MB3347D0598B1700D1A5C6974C99BD0@BN6PR03MB3347.namprd03.prod.outlook.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_103047_390001_515A4153 
X-CRM114-Status: GOOD (  29.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "ak@it-klinger.de" <ak@it-klinger.de>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "eugen.hristev@microchip.com" <eugen.hristev@microchip.com>, "Ardelean,
 Alexandru" <alexandru.Ardelean@analog.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNSBNYXkgMjAyMCAxMjozNzoyOCArMDAwMAoiU2EsIE51bm8iIDxOdW5vLlNhQGFu
YWxvZy5jb20+IHdyb3RlOgoKPiA+IEZyb206IEFyZGVsZWFuLCBBbGV4YW5kcnUgPGFsZXhhbmRy
dS5BcmRlbGVhbkBhbmFsb2cuY29tPgo+ID4gU2VudDogRnJlaXRhZywgMTUuIE1haSAyMDIwIDEz
OjQ4Cj4gPiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1z
dG0zMkBzdC1tZC0KPiA+IG1haWxtYW4uc3Rvcm1yZXBseS5jb207IFNhLCBOdW5vIDxOdW5vLlNh
QGFuYWxvZy5jb20+OyBsaW51eC0KPiA+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWlp
b0B2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsdWRvdmljLmRlc3JvY2hlc0BtaWNyb2NoaXAuY29t
OyBuaWNvbGFzLmZlcnJlQG1pY3JvY2hpcC5jb207Cj4gPiBhbGV4YW5kcmUudG9yZ3VlQHN0LmNv
bTsgYWtAaXQta2xpbmdlci5kZTsgamljMjNAa2VybmVsLm9yZzsKPiA+IGV1Z2VuLmhyaXN0ZXZA
bWljcm9jaGlwLmNvbTsgbWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbTsKPiA+IGFsZXhhbmRyZS5i
ZWxsb25pQGJvb3RsaW4uY29tCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDcvOF0gaWlvOiBj
b3JlOiBzaW1wbGlmeSBhbGxvYyBhbGlnbm1lbnQgY29kZQo+ID4gCj4gPiBPbiBGcmksIDIwMjAt
MDUtMTUgYXQgMDc6MTIgKzAwMDAsIFNhLCBOdW5vIHdyb3RlOiAgCj4gPiA+IEhleSBBbGV4LAo+
ID4gPgo+ID4gPiBKdXN0IGEgc21hbGwgcXVlc3Rpb24uLi4KPiA+ID4gIAo+ID4gPiA+IEZyb206
IGxpbnV4LWlpby1vd25lckB2Z2VyLmtlcm5lbC5vcmcgPGxpbnV4LWlpby0gIAo+ID4gb3duZXJA
dmdlci5rZXJuZWwub3JnPiAgCj4gPiA+ID4gT24gQmVoYWxmIE9mIEFsZXhhbmRydSBBcmRlbGVh
bgo+ID4gPiA+IFNlbnQ6IERvbm5lcnN0YWcsIDE0LiBNYWkgMjAyMCAxNToxNwo+ID4gPiA+IFRv
OiBsaW51eC1paW9Admdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmc7ICAKPiA+IGxpbnV4LSAgCj4gPiA+ID4gc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9y
bXJlcGx5LmNvbTsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+ID4gPiA+IENjOiBsdWRv
dmljLmRlc3JvY2hlc0BtaWNyb2NoaXAuY29tOyBldWdlbi5ocmlzdGV2QG1pY3JvY2hpcC5jb207
Cj4gPiA+ID4gamljMjNAa2VybmVsLm9yZzsgbmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tOwo+
ID4gPiA+IGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tOyBhbGV4YW5kcmUudG9yZ3VlQHN0
LmNvbTsKPiA+ID4gPiBtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tOyBha0BpdC1rbGluZ2VyLmRl
OyBBcmRlbGVhbiwgQWxleGFuZHJ1Cj4gPiA+ID4gPGFsZXhhbmRydS5BcmRlbGVhbkBhbmFsb2cu
Y29tPgo+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiA3LzhdIGlpbzogY29yZTogc2ltcGxpZnkg
YWxsb2MgYWxpZ25tZW50IGNvZGUKPiA+ID4gPgo+ID4gPiA+IFRoZXJlIHdhcyBhIHJlY2VudCBk
aXNjdXNzaW9uIGFib3V0IHRoaXMgY29kZToKPiA+ID4gPiAgIGh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC0KPiA+ID4gPiAgCj4gPiBpaW8v
MjAyMDAzMjIxNjUzMTcuMGIxZjA2NzRAYXJjaGxpbnV4L19fOyEhQTNOaThDUzB5MlkhcGdkVVNh
eUpDZnhNaUUgIAo+ID4gPiA+IHc4RnB2MExrRVp1ckNTa1gwc0VjTG5YZURTQ0xtaHB1MXhvbnQ2
LXZCUWozWmJDdyQKPiA+ID4gPgo+ID4gPiA+IFRoaXMgbG9va3MgbGlrZSBhIGdvb2QgdGltZSB0
byByZXdvcmsgdGhpcywgc2luY2UgYW55IGlzc3VlcyBhYm91dCBpdAo+ID4gPiA+IHNob3VsZCBw
b3AtdXAgdW5kZXIgdGVzdGluZywgYmVjYXVzZSB0aGUgaWlvX2RldiBpcyBoYXZpbmcgYSBiaXQg
b2YgYW4KPiA+ID4gPiBvdmVyaGF1bCBhbmQgc3R1ZmYgYmVpbmcgbW92ZWQgdG8gaWlvX2Rldl9w
cml2Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJ1IEFyZGVsZWFuIDxh
bGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVy
cy9paW8vaW5kdXN0cmlhbGlvLWNvcmUuYyB8IDEwICsrKy0tLS0tLS0KPiA+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tY29yZS5jIGIvZHJpdmVycy9p
aW8vaW5kdXN0cmlhbGlvLQo+ID4gPiA+IGNvcmUuYwo+ID4gPiA+IGluZGV4IGExYjI5ZTBmOGZk
Ni4uNzY3MWQzNmVmYWU3IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvaWlvL2luZHVzdHJp
YWxpby1jb3JlLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tY29yZS5j
Cj4gPiA+ID4gQEAgLTE1MTQsMTMgKzE1MTQsOSBAQCBzdHJ1Y3QgaWlvX2RldiAqaWlvX2Rldmlj
ZV9hbGxvYyhpbnQgIAo+ID4gc2l6ZW9mX3ByaXYpICAKPiA+ID4gPiAgCXN0cnVjdCBpaW9fZGV2
ICpkZXY7Cj4gPiA+ID4gIAlzaXplX3QgYWxsb2Nfc2l6ZTsKPiA+ID4gPgo+ID4gPiA+IC0JYWxs
b2Nfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgaWlvX2Rldl9vcGFxdWUpOwo+ID4gPiA+IC0JaWYgKHNp
emVvZl9wcml2KSB7Cj4gPiA+ID4gLQkJYWxsb2Nfc2l6ZSA9IEFMSUdOKGFsbG9jX3NpemUsIElJ
T19BTElHTik7Cj4gPiA+ID4gLQkJYWxsb2Nfc2l6ZSArPSBzaXplb2ZfcHJpdjsKPiA+ID4gPiAt
CX0KPiA+ID4gPiAtCS8qIGVuc3VyZSAzMi1ieXRlIGFsaWdubWVudCBvZiB3aG9sZSBjb25zdHJ1
Y3QgPyAqLwo+ID4gPiA+IC0JYWxsb2Nfc2l6ZSArPSBJSU9fQUxJR04gLSAxOwo+ID4gPiA+ICsJ
YWxsb2Nfc2l6ZSA9IEFMSUdOKHNpemVvZihzdHJ1Y3QgaWlvX2Rldl9vcGFxdWUpLCBJSU9fQUxJ
R04pOwo+ID4gPiA+ICsJaWYgKHNpemVvZl9wcml2KQo+ID4gPiA+ICsJCWFsbG9jX3NpemUgKz0g
QUxJR04oc2l6ZW9mX3ByaXYsIElJT19BTElHTik7ICAKPiA+ID4KPiA+ID4gRG8gd2UgYWN0dWFs
bHkgbmVlZCB0byBkbyB0aGUgYEFMSUdOYCBhZ2Fpbj8gSXQgc2VlbXMgdG8gbWUgdGhhdCAgCj4g
PiBgYWxsb2Nfc2l6ZSAgCj4gPiA+ICs9IHNpemVvZl9wcml2YAo+ID4gPiB3b3VsZCBiZSBlbm91
Z2ggb3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZyBvYnZpb3VzPyAgCj4gPiAKPiA+IFdlbGwsIGl0
J3Mgbm90IGFsd2F5cyBjbGVhciB3aGF0IHZhbHVlICdzaXplb2ZfcHJpdicgaGFzLCBhbmQgd2hl
dGhlciBpdCBpcwo+ID4gcHJvdmlkZWQgYWxyZWFkeSBhbGlnbmVkLgo+ID4gVGhlIHJlcXVpcmVt
ZW50IGlzIHVzdWFsbHkgdGhhdCB0aGlzIGRhdGEgYmUgY2FjaGVsaW5lIGFsaWduZWQuCj4gPiAK
PiA+IFNvLCBzaXplb2Yoc3RydWN0IGlpb19kZXZfb3BhcXVlKSBpcyBhbGlnbmVkIGFscmVhZHkg
YSBmZXcgbGluZXMgYWJvdmUsIGJ1dAo+ID4gdGhlCj4gPiBwcml2YXRlIGluZm9ybWF0aW9uIHNo
b3VsZCBhbHNvIGJlIGFsaWduZWQgW2dpdmVuIHRoYXQgaXQncyBhbiB1bmtub3duIHZhbHVlCj4g
PiBwcm92aWRlZCBieSB0aGUgZHJpdmVyXS4KPiA+IEkgdGhpbmsgdGhpcyBpcyBtb3N0bHkgaW1w
b3J0YW50LCBpZiB3ZSBuZWVkIHRvIGRvIERNQSBhY2Nlc3MgdG8gYnVmZmVycwo+ID4gYWxsb2Nh
dGVkIG9uIHRoZSBkcml2ZXIncyBzdGF0ZS1zdHJ1Y3QsIHdoaWNoIGlzIGFsbG9jYXRlZCBoZXJl
LCBhbmQgd2hpY2ggaXMKPiA+IHVzdWFsbHkgcHJvdmlkZWQgYXMgc2l6ZW9mX3ByaXYuICAKPiAK
PiBZZXMsIEFGQUlVIHRoaXMgaXMgdG8gZ3VhcmFudGVlIHRoYXQgdGhlIHByaXYgc3RydWN0IHdp
bGwgc3RhcnQgYXQgYW4gYWRkcmVzcyB0aGF0IGlzIAo+IERNQSBzYWZlIChjYWNoZWxpbmUtYWxp
Z25lZCkuIEhlbmNlLCBpZiB0aGVyZSBpcyBhbnkgZGF0YSBpbiAncHJpdicgdGhhdCBuZWVkcyB0
byBiZSBETUEKPiBzYWZlLCB3ZSBhcmUgZmluZS4uLgo+IAo+IFdlbGwsIEkgd2FzIGFsc28gbWlz
cmVhZGluZyB0aGUgY29kZS4gU3RpbGwsIEkgdGhpbmsgaXQgc2hvdWxkIGxvb2sgc29tZXRoaW5n
IGxpa2U6Cj4gCj4gYGBgYAo+IGFsbG9jX3NpemUgPSBzaXplb2Yoc3RydWN0IGlpb19kZXZfb3Bh
cXVlKQo+IGlmIChzaXplb2ZfcHJpdikKPiAJYWxsb2Nfc2l6ZSArPSBBTElHTihhbGxvY19zaXpl
LCBJSU9fQUxJR04pOwo+IGBgYGAKPiAKPiBJZiB0aGVyZSBpcyBubyBwcml2LCBJIHRoaW5rIHdl
IGRvbid0IG5lZWQgdGhlIHBhZGRpbmcgYnl0ZXMuLi4KQWdyZWVkIC0gbm8gbmVlZCB0byBndWFy
YW50ZWUgYWxpZ25tZW50IG9mIHNvbWV0aGluZyB0aGF0IGRvZXNuJ3QgZXhpc3QgOikKCj4gCj4g
LSBOdW5vIFPDoQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBA11705FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjvpigpTOolHzkhdZGlBH7VZRShkH9H0f3y6Ukdkbv8=; b=BdikMKS6cpn+Y1
	7kHe/maLWQmaryXZipOBtuxAMK7LX2IWjjL8cnTbSE2R+/XCQohed4Fd86sLDikQ49abOncAm2OBK
	iT8BHx5JADmT1gEF9S+H762/kKOeklxBPEFukHLbCykhCfQAak0uNVEdbeTHnS66EsHuVe4Dnvz6J
	KAeLwaOs7FhnwDz/ug+Osw+h1lJtDkoh1lqZ7xQslqE0Q+FCJSG6AHwC/2EfDragIEf9c2AJpUSDV
	2ezg2Uws+RAFGfxMRGAspr2aWRpg7xLp3qRY5SR9BsOCut/raEJFeXF3VliVvBHYdPrawSl214XSv
	b4uU/g3UXI9qp3GYS7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70PI-0006dx-9R; Wed, 26 Feb 2020 17:23:36 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70P8-0006d8-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:23:28 +0000
Received: by mail-wr1-f68.google.com with SMTP id v4so4076198wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 09:23:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=aLmTyqAd/P94kRIyBjL+cb/Y+cTLarFng2zpE1bkPwE=;
 b=S9a+koi7Ax88rzKvo/kWtq+wRvUm+nKyaFSj/EFCiEZFh/HYJs/kJyEKj71tk+onvK
 009548nv/Vx9xvIefqx4o0dBDXuTOmj6s11DLv2Ir5o/FO3SLXupfnFOQ91Ym2Rscopm
 Tf/qBucRkvK2CxxDPNcbzeiMh8Jdi1CG9czGAySRO9cpB/yYMQLZSUgm3WtuEbPv9EFX
 mzJNEWEKPoWz7b2cdmIoJqLmh+b+b4k/hwxxPH1vdNbF/gGRzCOza77jhAJyGBghOlWD
 MldmxBjo/LZW6xTsBgiqvju9dH7yVoVKU8JM6rvYJPbvQH+zB0wYZHp5SoIUMdzfUA8V
 qLSg==
X-Gm-Message-State: APjAAAUqkdUahKU9VOJ3YQ/KicoLpnRdRQa2xx3pSJqXlmXu90xxOaBb
 MlzzQiYOrmT7PEAgKKXBU6I=
X-Google-Smtp-Source: APXvYqyUjShzivLFLN+R84aLDGeH3LJmk13HXBtoRVbokmE0gc0Nd/SoVz2Mm3vNZuChMhpzJT59sA==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr6281250wrp.378.1582737803473; 
 Wed, 26 Feb 2020 09:23:23 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id j12sm4121316wrt.35.2020.02.26.09.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 09:23:22 -0800 (PST)
Message-ID: <f3c4f7791c86235683541a3d51ed02631b784bf6.camel@andred.net>
Subject: Re: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our
 own events
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Robin Gong <yibin.gong@nxp.com>
Date: Wed, 26 Feb 2020 17:23:21 +0000
In-Reply-To: <VE1PR04MB66385DDED7C654AE2181E08E89EA0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-6-git@andred.net>
 <VE1PR04MB66385DDED7C654AE2181E08E89EA0@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_092326_211512_7EA0CFC8 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Horia Geanta <horia.geanta@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDAxOjE1ICswMDAwLCBSb2JpbiBHb25nIHdyb3RlOgo+IE9u
IDIwMjAvMDIvMjYgQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PiB3cm90ZTogCj4gPiBU
aGUgc252c19wd3JrZXkgc2hhcmVzIHRoZSBTTlZTIExQU1Igc3RhdHVzIHJlZ2lzdGVyIHdpdGgg
dGhlIHNudnNfcnRjLgo+ID4gCj4gPiBUaGlzIGRyaXZlciBoZXJlIHNob3VsZCBvbmx5IHJldHVy
biBJUlFfSEFORExFRCBpZiB0aGUgc3RhdHVzIHJlZ2lzdGVyCj4gPiBpbmRpY2F0ZXMgdGhhdCB0
aGUgZXZlbnQgd2UncmUgaGFuZGxpbmcgaW4gdGhlIGlycSBoYW5kbGVyIHdhcyBnZW51aW5lbHkK
PiA+IGludGVuZGVkIGZvciB0aGlzIGRyaXZlci4gT3RoZXJpd3NlIHRoZSBpbnRlcnJ1cHQgc3Vi
c3lzdGVtIHdpbGwgYXNzdW1lIHRoZQo+ID4gaW50ZXJydXB0IHdhcyBoYW5kbGVkIHN1Y2Nlc3Nm
dWxseSBldmVuIHRob3VnaCBpdCB3YXNuJ3QgYXQgYWxsLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJlZC5uZXQ+Cj4gPiBDYzogIkhvcmlhIEdlYW50xIMi
IDxob3JpYS5nZWFudGFAbnhwLmNvbT4KPiA+IENjOiBBeW1lbiBTZ2hhaWVyIDxheW1lbi5zZ2hh
aWVyQG54cC5jb20+Cj4gPiBDYzogSGVyYmVydCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3Jn
LmF1Pgo+ID4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+ID4g
Q2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gPiBDYzogTWFyayBSdXRsYW5k
IDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiA+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5l
bC5vcmc+Cj4gPiBDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4g
Q2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Cj4gPiBD
YzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+ID4gQ2M6IE5YUCBMaW51eCBU
ZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KPiA+IENjOiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50
b3Jva2hvdkBnbWFpbC5jb20+Cj4gPiBDYzogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5j
b20+Cj4gPiBDYzogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPgo+ID4gQ2M6IGxpbnV4
LWNyeXB0b0B2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
Zwo+ID4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gQ2M6IGxp
bnV4LWlucHV0QHZnZXIua2VybmVsLm9yZwo+ID4gCj4gPiAtLS0KPiA+IHYyOgo+ID4gKiBubyBj
aGFuZ2VzCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2lucHV0L2tleWJvYXJkL3NudnNfcHdya2V5LmMg
fCAxMiArKysrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnB1dC9rZXlib2Fy
ZC9zbnZzX3B3cmtleS5jCj4gPiBiL2RyaXZlcnMvaW5wdXQva2V5Ym9hcmQvc252c19wd3JrZXku
Ywo+ID4gaW5kZXggMzgyZDJhZTgyYzliLi45ODA4Njc4ODZiMzQgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2lucHV0L2tleWJvYXJkL3NudnNfcHdya2V5LmMKPiA+ICsrKyBiL2RyaXZlcnMvaW5w
dXQva2V5Ym9hcmQvc252c19wd3JrZXkuYwo+ID4gQEAgLTgyLDcgKzgyLDkgQEAgc3RhdGljIGly
cXJldHVybl90IGlteF9zbnZzX3B3cmtleV9pbnRlcnJ1cHQoaW50IGlycSwgdm9pZAo+ID4gKmRl
dl9pZCkKPiA+ICAJY2xrX2VuYWJsZShwZGF0YS0+Y2xrKTsKPiA+IAo+ID4gIAlyZWdtYXBfcmVh
ZChwZGF0YS0+c252cywgU05WU19MUFNSX1JFRywgJmxwX3N0YXR1cyk7Cj4gPiAtCWlmIChscF9z
dGF0dXMgJiBTTlZTX0xQU1JfU1BPKSB7Cj4gPiArCWxwX3N0YXR1cyAmPSBTTlZTX0xQU1JfU1BP
Owo+ID4gKwo+ID4gKwlpZiAobHBfc3RhdHVzKSB7Cj4gPiAgCQlpZiAocGRhdGEtPm1pbm9yX3Jl
diA9PSAwKSB7Cj4gPiAgCQkJLyoKPiA+ICAJCQkgKiBUaGUgZmlyc3QgZ2VuZXJhdGlvbiBpLk1Y
WzZ8N10gU29DcyBvbmx5IHNlbmQgYW4gQEAgLTk4LDE0Cj4gPiArMTAwLDE0IEBAIHN0YXRpYyBp
cnFyZXR1cm5fdCBpbXhfc252c19wd3JrZXlfaW50ZXJydXB0KGludCBpcnEsIHZvaWQKPiA+ICpk
ZXZfaWQpCj4gPiAgCQkJbW9kX3RpbWVyKCZwZGF0YS0+Y2hlY2tfdGltZXIsCj4gPiAgCQkJICAg
ICAgICAgIGppZmZpZXMgKyBtc2Vjc190b19qaWZmaWVzKERFQk9VTkNFX1RJTUUpKTsKPiA+ICAJ
CX0KPiA+IC0JfQo+ID4gCj4gPiAtCS8qIGNsZWFyIFNQTyBzdGF0dXMgKi8KPiA+IC0JcmVnbWFw
X3dyaXRlKHBkYXRhLT5zbnZzLCBTTlZTX0xQU1JfUkVHLCBTTlZTX0xQU1JfU1BPKTsKPiA+ICsJ
CS8qIGNsZWFyIFNQTyBzdGF0dXMgKi8KPiA+ICsJCXJlZ21hcF93cml0ZShwZGF0YS0+c252cywg
U05WU19MUFNSX1JFRywgU05WU19MUFNSX1NQTyk7Cj4gQnV0IGlycSBzdG9ybSB3aWxsIGNvbWUg
aW4gb25jZSB0aGVyZSBpcyBvdGhlciBpbnRlcnJ1cHQgdHJpZ2dlcmVkIGFzIHVuZXhwZWN0ZWQs
Cj4gYWx0aG91Z2ggSSBuZXZlciBtZXQgaXQgYmVmb3JlLiBDb3VsZCB3ZSBkcm9wIHRoaXMgcGF0
Y2ggbm93PyBPdGhlcnMgYXJlIG9rIGZvciBtZS4KCkkgZG9uJ3QgaGF2ZSBzdHJvbmcgZmVlbGlu
Z3MgYWJvdXQgdGhpcyBwYXRjaCwgYnV0IHRoaXMgYml0IG1lcmVseSBjaGFuZ2VzIGJlaGF2aW91
ciB0bwpjbGVhciBTUDAgaWYgU1AwIHdhcyBpbiBmYWN0ICE9IDAgaW4gdGhlIGZpcnN0IHBsYWNl
LCB3aGVyZWFzIGJlZm9yZSBTUDAgd2FzIGFsd2F5cwpjbGVhcmVkLCBldmVuIGlmIGl0IHdhcyA9
PSAwIGFueXdheS4gU2VlbXMgbW9yZSBsb2dpY2FsIGluIG15IGV5ZXMuCgoKPiBSZXZpZXdlZC1i
eTogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHA+Cj4gPiArCX0KPiA+IAo+ID4gIAljbGtfZGlz
YWJsZShwZGF0YS0+Y2xrKTsKPiA+IAo+ID4gLQlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gPiArCXJl
dHVybiBscF9zdGF0dXMgPyBJUlFfSEFORExFRCA6IElSUV9OT05FOwoKSWYgeW91J3JlIHRhbGtp
bmcgYWJvdXQgdGhpcyBwYXJ0LCB0aGUgcnRjLXNudnMgZHJpdmVyIGRvZXMgdGhlIHNhbWUgaW4g
aXRzIGludGVycnVwdCBoYW5kbGVyLgpJbiBvdGhlciB3b3JkcywgdGhpcyBkcml2ZXIgaGVyZSBj
b3VsZCBwcmV2ZW50IHRoZSBydGMtc252cyBkcml2ZXIgZnJvbSBzZWVpbmcgaXRzIGV2ZW50cy4K
CgoKQ2hlZXJzLApBbmRyZScKCiAKPiA+ICB9Cj4gPiAKPiA+ICBzdGF0aWMgdm9pZCBpbXhfc252
c19wd3JrZXlfYWN0KHZvaWQgKnBkYXRhKQo+ID4gLS0KPiA+IDIuMjMuMC5yYzEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

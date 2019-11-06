Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE1DF20C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYulP7nRG/xV/Ii/uFYBb0Baw+AVIO/M6h+KM25ndPI=; b=oXnTZdN3HuNNQH
	vz1PP/AIozliIFQmWIpajVEFZ19PBM9KpkwEjhSwzdppsdbCFESENM9udZC9bQQfHCVED5aVbVPD7
	9i8XCN88MeWg8Y+4dXk0oI6+eYoT50KXd+AuB46JFlpBmnU61yo6RfIcsTEwq2X4u5597kX3cRrBB
	M+F9fw+mfhoGcaRlbpjtCtAwmZKdWZeCOdX8BpDXxhEeT6v8A+mGhWwxH0M+PBbPmx4CPRaJcp/6A
	OjqDLRHCw2NthBg2kKBTFDnjs2u0Yes1sYeoWqm1nq7JJmSdL0aX9ORXE3sXtB8+Yd15mr6FT46cz
	PvDXIVIZsdJfRjf32wwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSnh-0004TW-Od; Wed, 06 Nov 2019 21:25:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSnM-0004S5-8V
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:24:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id f2so224119wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 13:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Soz8WtFTFYQ3Yhy0YEr2VY/OqOycp6OKY0yTpNQTkFw=;
 b=r9vZIVJCWykgW/nN32WfACkf4jz43sN6bgKR6zhShogOCOQ1tUniFQrEZ7lQR8IVS0
 kRTQUCpXGp7ylRNvNqIdROXtKQ9kzd3KXzBsEPJSyide6Wet9MtfJcAJLf8cJYnBzna4
 FCVqZDkR7pW1YLwLvuvG08bcbw9Sxu4aizimdlNddnw3ZKHc0ol6TNoSpm31APRDnFW7
 CLQkt8Tcu+K3iHBpKFFfBKFtfybdZBKJtpogFJP7u0v12bN4l3YbmuNjgPoxJo0mzA3Y
 zeWVechXbanbAjOJgizujceGFHrNI2GP2FSkyBmKT+dc69S9B8DZM3lJtaCgaGsoWlc8
 by9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Soz8WtFTFYQ3Yhy0YEr2VY/OqOycp6OKY0yTpNQTkFw=;
 b=k4IfuZ5UraPOzUgdA31xsAqHvB2eVCgcOQZi5mVSxDtCB5GiQzDMEG8y4jHBbMk3+D
 crMTBrIUa0tNtT8bOdN4SWvUZCve3n5qZuxvx5Uc93xbSmc7vmhS28xDhvkF7FPwkDqW
 nFV2MqoGkmnTW0gW2GJR0LJ78kTtpXuHMxsHry7tsb94OaqpfGBjf8E9GGSHkS3ATLI9
 l9VP8pssQZqfmgLT4h70UHnZn1zQ+W2MbCUwCteV5A8y8sOa1FT1x4SCUxFp1sVxmqtM
 WwbnISoat3JaTXrRjXexeHGgk9ZTEka3gFV4orylJtCov8KIXdBbd4TbVqMhEYnXnujv
 /mrQ==
X-Gm-Message-State: APjAAAWLNkfgNNhbE2Mt7zyGhSfsri8zSExjm789TU0BCP83J1zkPA0Z
 03Z+XifzBeq7u7f8FBc5S2/eQlFLYnGp2qTLfOg=
X-Google-Smtp-Source: APXvYqzxY2Zi37gqEk4onhPJdIaLEgv2hV0xed9u6vFW9KegQrjOjRehlIouz7HG5lrDsV9X9J4GPfU2gXyZn+dqNXM=
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr4633064wrw.167.1573075490460; 
 Wed, 06 Nov 2019 13:24:50 -0800 (PST)
MIME-Version: 1.0
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-5-peron.clem@gmail.com>
 <20191105145659.ffezqntodsys4phn@pengutronix.de>
In-Reply-To: <20191105145659.ffezqntodsys4phn@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 6 Nov 2019 22:24:39 +0100
Message-ID: <CAJiuCcdXr3y0oe19ZNaiQoN7Y39p54p8LjQjXfjHbTH8tbnrpw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_132456_257595_A2205527 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCA1IE5vdiAyMDE5IGF0IDE1OjU3LCBVd2UgS2xlaW5lLUvDtm5pZwo8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDA1
LCAyMDE5IGF0IDAyOjE0OjUzUE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEZy
b206IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+Cj4gPiBQV00g
Y29yZSBoYXMgYW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9sZSBsb2dpYyBhbmQgb3V0cHV0IHVuY2hh
bmdlZCBzb3VyY2UKPiA+IGNsb2NrIGFzIFBXTSBvdXRwdXQuIFRoaXMgaXMgYWNoaWV2ZWQgYnkg
ZW5hYmxpbmcgYnlwYXNzIGJpdC4KPiA+Cj4gPiBOb3RlIHRoYXQgd2hlbiBieXBhc3MgaXMgZW5h
YmxlZCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5pbmcsIG5vdAo+ID4gZXZlbiBlbmFi
bGUgYml0Lgo+ID4KPiA+IFRoaXMgbW9kZSBvZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFjaGll
dmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRvCj4gPiBzZXJ2ZSBhcyBjbG9jayBzb3VyY2UgZm9y
IEFDMjAwIGNoaXAgd2hpY2ggaXMgaW50ZWdyYXRlZCBpbnRvIHNhbWUKPiA+IHBhY2thZ2UgYXMg
SDYgU29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDM4
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDM3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gaW5k
ZXggNTRlMTlmYTU2YTRlLi44MTBhYmY0N2MyNjEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3B3
bS9wd20tc3VuNGkuYwo+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IEBAIC0z
LDYgKzMsMTAgQEAKPiA+ICAgKiBEcml2ZXIgZm9yIEFsbHdpbm5lciBzdW40aSBQdWxzZSBXaWR0
aCBNb2R1bGF0aW9uIENvbnRyb2xsZXIKPiA+ICAgKgo+ID4gICAqIENvcHlyaWdodCAoQykgMjAx
NCBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAZnJlZS1lbGVjdHJvbnMuY29t
Pgo+ID4gKyAqCj4gPiArICogTGltaXRhdGlvbnM6Cj4gPiArICogLSBXaGVuIG91dHB1dGluZyB0
aGUgc291cmNlIGNsb2NrIGRpcmVjdGx5LCB0aGUgUFdNIGxvZ2ljIHdpbGwgYmUgYnlwYXNzZWQK
PiA+ICsgKiAgIGFuZCB0aGUgY3VycmVudGx5IHJ1bm5pbmcgcGVyaW9kIGlzIG5vdCBndWFyYW50
ZWVkIHRvIGJlIGNvbXBsZXRlZAo+ID4gICAqLwo+ID4KPiA+ICAjaW5jbHVkZSA8bGludXgvYml0
b3BzLmg+Cj4gPiBAQCAtNzMsNiArNzcsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHByZXNjYWxlcl90
YWJsZVtdID0gewo+ID4KPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewo+ID4gICAgICAgYm9v
bCBoYXNfcHJlc2NhbGVyX2J5cGFzczsKPiA+ICsgICAgIGJvb2wgaGFzX2RpcmVjdF9tb2RfY2xr
X291dHB1dDsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBucHdtOwo+ID4gIH07Cj4gPgo+ID4gQEAg
LTExOCw2ICsxMjMsMjAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dldF9zdGF0ZShzdHJ1Y3Qg
cHdtX2NoaXAgKmNoaXAsCj4gPgo+ID4gICAgICAgdmFsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRp
X3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+Cj4gPiArICAgICAvKgo+ID4gKyAgICAgICogUFdNIGNo
YXB0ZXIgaW4gSDYgbWFudWFsIGhhcyBhIGRpYWdyYW0gd2hpY2ggZXhwbGFpbnMgdGhhdCBpZiBi
eXBhc3MKPiA+ICsgICAgICAqIGJpdCBpcyBzZXQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBt
ZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVyaW1lbnQKPiA+ICsgICAgICAqIHByb3ZlZCB0aGF0IGFs
c28gZW5hYmxlIGJpdCBpcyBpZ25vcmVkIGluIHRoaXMgY2FzZS4KPiA+ICsgICAgICAqLwo+ID4g
KyAgICAgaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSkpICYmCj4gPiAr
ICAgICAgICAgc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4g
PiArICAgICAgICAgICAgIHN0YXRlLT5wZXJpb2QgPSBESVZfUk9VTkRfVVBfVUxMKE5TRUNfUEVS
X1NFQywgY2xrX3JhdGUpOwo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+ZHV0eV9jeWNsZSA9IHN0
YXRlLT5wZXJpb2QgLyAyOwo+Cj4gUGxlYXNlIHJvdW5kIHVwIGhlcmUuCk9rCj4KPiA+ICsgICAg
ICAgICAgICAgc3RhdGUtPnBvbGFyaXR5ID0gUFdNX1BPTEFSSVRZX05PUk1BTDsKPiA+ICsgICAg
ICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSB0cnVlOwo+ID4gKyAgICAgICAgICAgICByZXR1cm47
Cj4gPiArICAgICB9Cj4gPiArCj4gPiAgICAgICBpZiAoKFBXTV9SRUdfUFJFU0NBTCh2YWwsIHB3
bS0+aHdwd20pID09IFBXTV9QUkVTQ0FMX01BU0spICYmCj4gPiAgICAgICAgICAgc3VuNGlfcHdt
LT5kYXRhLT5oYXNfcHJlc2NhbGVyX2J5cGFzcykKPiA+ICAgICAgICAgICAgICAgcHJlc2NhbGVy
ID0gMTsKPiA+IEBAIC0yMDMsNyArMjIyLDggQEAgc3RhdGljIGludCBzdW40aV9wd21fYXBwbHko
c3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+ID4gIHsKPiA+
ICAgICAgIHN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtID0gdG9fc3VuNGlfcHdtX2No
aXAoY2hpcCk7Cj4gPiAgICAgICBzdHJ1Y3QgcHdtX3N0YXRlIGNzdGF0ZTsKPiA+IC0gICAgIHUz
MiBjdHJsOwo+ID4gKyAgICAgdTMyIGN0cmwsIGNsa19yYXRlOwo+ID4gKyAgICAgYm9vbCBieXBh
c3M7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4gICAgICAgdW5zaWduZWQgaW50IGRlbGF5X3VzOwo+
ID4gICAgICAgdW5zaWduZWQgbG9uZyBub3c7Cj4gPiBAQCAtMjE4LDYgKzIzOCwxNSBAQCBzdGF0
aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21f
ZGV2aWNlICpwd20sCj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgIH0KPiA+Cj4gPiArICAg
ICAvKgo+ID4gKyAgICAgICogQWx0aG91Z2ggaXQgd291bGQgbWFrZSBtdWNoIG1vcmUgc2Vuc2Ug
dG8gY2hlY2sgZm9yIGJ5cGFzcyBpbgo+ID4gKyAgICAgICogc3VuNGlfcHdtX2NhbGN1bGF0ZSgp
LCB2YWx1ZSBvZiBieXBhc3MgYml0IGFsc28gZGVwZW5kcyBvbiAiZW5hYmxlZCIuCj4gPiArICAg
ICAgKi8KPiA+ICsgICAgIGNsa19yYXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3bS0+Y2xrKTsK
Pgo+IGNsa19nZXRfcmF0ZSBtdXN0IG5vdCBiZSBjYWxsZWQgaWYgdGhlIGNsayBtaWdodCBiZSBv
ZmYuCk9rLAoKPgo+ID4gKyAgICAgYnlwYXNzID0gc3RhdGUtPmVuYWJsZWQgJiYKPiA+ICsgICAg
ICAgICAgICAgIChzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDKSAmJgo+
Cj4gVGhpcyBpcyB0b28gY29hcnNlLiBXaXRoIHN0YXRlLT5wZXJpb2QgPSAxMDAwMDAwIHRoaXMg
aXMgZnVsZmlsbGVkCj4gKHVubGVzcyB0aGUgbXVsdGlwbGljYXRpb24gb3ZlcmZsb3dzKS4KClNv
cnJ5LCBtaXN1bmRlcnN0b29kIHRoZSBwcmV2aW91cyBtYWlsCgpXaGF0IGFib3V0IHNvbWV0aGlu
ZyBsaWtlIHRoaXMgPwooKHN0YXRlLT5wZXJpb2QgLSAxKSAqIGNsa19yYXRlIDw9IE5TRUNfUEVS
X1NFQykgJiYKKChzdGF0ZS0+cGVyaW9kICsgMSkgKiBjbGtfcmF0ZSA+PSBOU0VDX1BFUl9TRUMp
ICYmCiAoKHN0YXRlLT5kdXR5X2N5Y2xlIC0gMSkgKiAyIDw9IHN0YXRlLT5wZXJpb2QpICYmCiAo
KHN0YXRlLT5kdXR5X2N5Y2xlICsgMSkgKiAyID49IHN0YXRlLT5wZXJpb2QpOwoKV2UgYXJlIHN1
cmUgdGhhdCB0aGUgdXNlciBpcyBsb29raW5nIGZvciBhIFBXTSBhcm91bmQgdGhlIE9TQyB3aXRo
IGEKNTAlIGR1dHkgY3ljbGUgPwoKUmVnYXJkcywKQ2xlbWVudAoKPgo+ID4gKyAgICAgICAgICAg
ICAgKHN0YXRlLT5kdXR5X2N5Y2xlICogMiA9PSBzdGF0ZS0+cGVyaW9kKTsKPgo+IFRoaXMgaXMg
dG9vIHN0cmljdC4gU2VlIG15IHByZXZpb3VzIG1haWwgYWJvdXQgaG93IHRoaXMgc2hvdWxkIGJl
IGRvbmUuCj4KPiBJZiBieXBhc3MgaXMgdHJ1ZSAoYW5kIHRoZSBoYXJkd2FyZSBzdXBwb3J0IGl0
KSB5b3UgY2FuIHNraXAgdGhlCj4gY2FsY3VsYXRpb24gb2YgdGhlIG90aGVyIHBhcmFtZXRlcnMu
ClllcyBjb3JyZWN0IGFuZCBhbHNvIHdlIGNhbiBza2lwCgoKPgo+ID4gKwo+ID4gICAgICAgc3Bp
bl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiAgICAgICBjdHJsID0gc3VuNGlfcHdt
X3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+Cj4gPiBAQCAtMjY1LDYgKzI5NCwx
MyBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0
cnVjdCBwd21fZGV2aWNlICpwd20sCj4gPiAgICAgICAgICAgICAgIGN0cmwgJj0gfkJJVF9DSChQ
V01fQ0xLX0dBVElORywgcHdtLT5od3B3bSk7Cj4gPiAgICAgICB9Cj4gPgo+ID4gKyAgICAgaWYg
KHN1bjRpX3B3bS0+ZGF0YS0+aGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dCkgewo+ID4gKyAgICAg
ICAgICAgICBpZiAoYnlwYXNzKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGN0cmwgfD0gQklU
X0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdwd20pOwo+ID4gKyAgICAgICAgICAgICBlbHNlCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgY3RybCAmPSB+QklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdw
d20pOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gICAgICAgc3VuNGlfcHdtX3dyaXRlbChzdW40aV9w
d20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7Cj4gPgo+ID4gICAgICAgc3Bpbl91bmxvY2soJnN1bjRp
X3B3bS0+Y3RybF9sb2NrKTsKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRy
b25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAg
ICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

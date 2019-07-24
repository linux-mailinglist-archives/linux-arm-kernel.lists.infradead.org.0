Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFA1737F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLk5Xgp12/jKWZu1m+pwM8Xb8bUCGyGoa3SnRF5SM3s=; b=AlTiZ3HqioV3uR
	ExK3HbtTj/TD9CNjYEj+0i05xscG8LlwzUbkv8dqVPX6ASOd97UhQo02wjOfkrvJoZz6oIfchsOZS
	lRTPX+KJk2P6a41y8YcW9twBuPjd/McU/2ilY5zXWapIfr9oKO3nlspWVMmg2IwJW/2G3GyNfmb5E
	Wxg8/y0zUTVaA+YfmckpEAKrrInypnLuPTBaJqIDsJGM+wYckvnfyP84gmlmMJ+QDm84BEMdY6jEg
	mEMVJ9cRu9kIZRIs8OGaw3/CbZSmXJG0pkE3ideRbFTMLDYWwnXt4gnHt0Lt4fAoPgwI5XyyURkjU
	yhYtc4k6x72mM4xtAqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMsW-0005l3-98; Wed, 24 Jul 2019 19:24:44 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMsJ-0005jP-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:24:32 +0000
Received: by mail-wr1-f66.google.com with SMTP id c2so44952149wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lfXxMsdfj3/069jvw/iy7OsZv8+UN7ABTGl62C7QKYA=;
 b=DsAs8gO0wmbG6eMCVc0mChRS6J2H/wFtzIa1P8/5BtCCKazQ+QvwUTneb8E5XSuAmR
 b51EHBhwiYC4+ApyL8aG5Oj+sXayEMWFsMKuDX+5k/TfTsPTYhj+C43Zpi/af+aeD70y
 xRdINiuYH6ld7YB5ExK5TpcYARpSGzTijX3GOvp1Nue3kKzm6xeAlwYvI1NXYiXCjEhZ
 a55zm0pzNfOicXoQEsockIrXFjel/x15F4NEA71t9uNG+Ajd97VP5dYlYZkVivX+cuf8
 RiTuCDzPr3qXYSgWPD+KPR/LQulHcOgdjZueFFAAvxoXNMR0OSqU6dBgCaqzOTjDR81v
 gj0Q==
X-Gm-Message-State: APjAAAXMjhoCdIEwxSKb74xFhc7UnVOkuzXhASMgevTQzqH+aFA1+AL1
 luFTD2ggUknjW04rDLEPF8w=
X-Google-Smtp-Source: APXvYqxsoh43HV2OpAyo0WN3mesXUKeJis1EeqQpdnzoRNCOZlfiNYz32Xds+Ra9u+/5tu5G/kpe4w==
X-Received: by 2002:adf:80e6:: with SMTP id 93mr51827758wrl.298.1563996269437; 
 Wed, 24 Jul 2019 12:24:29 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id o6sm91244088wra.27.2019.07.24.12.24.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:24:28 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:24:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
Message-ID: <20190724192426.GJ14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98@eucas1p2.samsung.com>
 <20190723122016.30279-9-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-9-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_122431_206732_F5C85E0D 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MTNQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIHR3byBmaWVsZHMgdHAgdGhlIEV4eW5vczQ0MTIgRFRT
OgoKdHAtPnRvCgo+ICAgLSBwYXJlbnQ6IHRvIGRlY2xhcmUgY29ubmVjdGlvbnMgYmV0d2VlbiBu
b2RlcyB0aGF0IGFyZSBub3QgaW4gYQo+ICAgICBwYXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gZGV2
ZnJlcTsKCklzIGl0IGEgc3RhbmRhcmQgcHJvcGVydHk/ClRoZSBleHBsYW5hdGlvbiBuZWVkcyBz
b21lIGltcHJvdmVtZW50Li4uIHdoeSBhcmUgeW91IGFkZGluZyBwYXJlbnQgdG8gYQpkZXZpY2Vz
IHdoaWNoIGFyZSBub3QgY2hpbGQtcGFyZW50PwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCj4g
ICAtICNpbnRlcmNvbm5lY3QtY2VsbHM6IHJlcXVpcmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJh
bWV3b3JrLgo+IAo+IFBsZWFzZSBub3RlIHRoYXQgI2ludGVyY29ubmVjdC1jZWxscyBpcyBhbHdh
eXMgemVybyBhbmQgbm9kZSBJRHMgYXJlIG5vdAo+IGhhcmRjb2RlZCBhbnl3aGVyZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0
c2kgfCAxICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAg
ICAgfCA5ICsrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9u
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+
IGluZGV4IGVhNTVmMzc3ZDE3Yy4uYmRkNjFhZTg2MTAzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiBAQCAtMTA2LDYgKzEwNiw3
IEBACj4gICZidXNfbGVmdGJ1cyB7Cj4gIAlkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9sZWZ0YnVz
XzM+LCA8JnBwbXVfcmlnaHRidXNfMz47Cj4gIAl2ZGQtc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+
ICsJcGFyZW50ID0gPCZidXNfZG1jPjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+IGluZGV4IGQyMGRiMmRmZThlMi4uYTcwYTY3MWFj
YWNkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+IEBAIC0zOTAsNiArMzkwLDcg
QEAKPiAgCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0RNQz47Cj4gIAkJCWNsb2NrLW5hbWVz
ID0gImJ1cyI7Cj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxl
PjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKPiAgCQl9Owo+ICAKPiBAQCAtMzk4LDYgKzM5OSw3IEBACj4gIAkJCWNsb2NrcyA9IDwm
Y2xvY2sgQ0xLX0RJVl9BQ1A+Owo+ICAJCQljbG9jay1uYW1lcyA9ICJidXMiOwo+ICAJCQlvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZidXNfYWNwX29wcF90YWJsZT47Cj4gKwkJCSNpbnRlcmNvbm5l
Y3QtY2VsbHMgPSA8MD47Cj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4g
QEAgLTQwNiw2ICs0MDgsNyBAQAo+ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfQzJDPjsK
PiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwm
YnVzX2RtY19vcHBfdGFibGU+Owo+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAJ
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+IEBAIC00NTksNiArNDYyLDcgQEAK
PiAgCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0dETD47Cj4gIAkJCWNsb2NrLW5hbWVzID0g
ImJ1cyI7Cj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJs
ZT47Cj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gIAkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gIAkJfTsKPiAgCj4gQEAgLTQ2Nyw2ICs0NzEsNyBAQAo+ICAJCQljbG9ja3MgPSA8
JmNsb2NrIENMS19ESVZfR0RSPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgCQkJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiArCQkJI2ludGVy
Y29ubmVjdC1jZWxscyA9IDwwPjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+
ICAKPiBAQCAtNDc1LDYgKzQ4MCw3IEBACj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0FDTEsx
NjA+Owo+ICAJCQljbG9jay1uYW1lcyA9ICJidXMiOwo+ICAJCQlvcGVyYXRpbmctcG9pbnRzLXYy
ID0gPCZidXNfZGlzcGxheV9vcHBfdGFibGU+Owo+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0g
PDA+Owo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+IEBAIC00ODMsNiAr
NDg5LDcgQEAKPiAgCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEzMz47Cj4gIAkJCWNsb2Nr
LW5hbWVzID0gImJ1cyI7Cj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19mc3lzX29w
cF90YWJsZT47Cj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gIAkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4gQEAgLTQ5MSw2ICs0OTgsNyBAQAo+ICAJCQljbG9j
a3MgPSA8JmNsb2NrIENMS19BQ0xLMTAwPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAg
CQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX3Blcmlfb3BwX3RhYmxlPjsKPiArCQkJI2lu
dGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9
Owo+ICAKPiBAQCAtNDk5LDYgKzUwNyw3IEBACj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX1ND
TEtfTUZDPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50
cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxs
cyA9IDwwPjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiAtLSAKPiAy
LjE3LjEKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8678B473F7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 11:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bUrxZ90b8VagLymc7Y5ZjXrZYrmpyRUuOUfEBYMJE0=; b=rJtqZp1DeXejPg
	91XTlQy8AyArp7KBQ1ghgAq6OTOCOroNudptOmaiJDhqjDdcRwU2gw8gWmIwGirWbK3R4IibkKTYp
	rHlD2GqtdpthT3+89D1AG4nQox0ndJt90cX+GA352D57JAWBeANieqhFyxY/ZbwuacHylqI0ixSbi
	TiQbh0przY0YNCbhtXsu5HOk2v0jBh3Kvi9nNDQt2PX7naKYDFEXxlqAA02PhUA11duAdClNXXv0e
	BPYPcgsWHG5nfIgWBvtmHVAjydemBCywLCKW8JCFLm3dOn9+5jbsLZJ487gMh/RGbXMay4ZOPoA2/
	CLxUiW7StcefbZthAVGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcRVy-0002Y8-9E; Sun, 16 Jun 2019 09:31:54 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcRVd-0002Xk-0K; Sun, 16 Jun 2019 09:31:34 +0000
Received: by mail-wm1-f65.google.com with SMTP id c66so6305609wmf.0;
 Sun, 16 Jun 2019 02:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=P7np2R0uiRKT2gJN8ek7rdfOANAI0XwQdtdo70dDyiU=;
 b=V4gPpKuEBqsXCDJW3Bw9w+RcT82R++CK5KesjETAXXKxtO42cXSzpZHeLuqGVJRHIJ
 b7SlePiaauIwi71Mmb1N7KOhj2JiatoB2Uhj5aFfIPV7K93083/hFGzZVfxsfw15hsV2
 5e8F2lHuaQjW7EebxvK+IvQk+zflBhKyf55UGSJzCEAhK5bv1ZWap/QB3vHEKtDZRRet
 ARSSlO/3I+UtxfK/9iUeeGxkTsUUn5U2+MRb+cyTAgHYv7Yivi8niE3bWgpN+ohOB7SQ
 uRD9j+GNW9Vnr4I8i9uzL68BWZf/3Wf2V3LTbDivAK/LBvE8o9zu0uW6u+1k2ZteXcjm
 b9Xw==
X-Gm-Message-State: APjAAAUjLvXRnz6GS0Wnw6BOl+h4NSt8ijhjHjOglG2OPT3LFv7tnJj8
 d5tiuN/zcdTeUze4SLTt5GA=
X-Google-Smtp-Source: APXvYqwrQ37EbqFHvz3Vz48TrUGqOVW3AcltditTb1gdeHf5Yz1/YUzW/ieDtmIwy2CL4dOiT39uOQ==
X-Received: by 2002:a1c:e183:: with SMTP id
 y125mr14510016wmg.152.1560677490827; 
 Sun, 16 Jun 2019 02:31:30 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id c6sm3766254wma.25.2019.06.16.02.31.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Jun 2019 02:31:29 -0700 (PDT)
Date: Sun, 16 Jun 2019 11:31:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
Message-ID: <20190616093127.GC3826@kozik-lap>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil>
 <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
 <e5a4f850-27e0-cad3-04bd-6c004fca2b81@arm.com>
 <9bf85c22-f1ba-3dbc-0b67-17e124484fa1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bf85c22-f1ba-3dbc-0b67-17e124484fa1@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_023133_217257_DF940981 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Viresh Kumar <viresh.kumar@linaro.org>, dianders@chromium.org,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Randy Li <ayaka@soulik.info>,
 Vicente Bergas <vicencb@gmail.com>, edubezval@gmail.com,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MzA6MTNQTSArMDIwMCwgRGFuaWVsIExlemNhbm8g
d3JvdGU6Cj4gT24gMTQvMDYvMjAxOSAxNjowMiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+ID4gT24g
MTQvMDYvMjAxOSAxNDowMywgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPj4gT24gMTQvMDYvMjAx
OSAxMTozNSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPj4+IEhpIERhbmllbCwKPiA+Pj4KPiA+
Pj4gQW0gRGllbnN0YWcsIDQuIEp1bmkgMjAxOSwgMTg6NTc6NTcgQ0VTVCBzY2hyaWViIERhbmll
bCBMZXpjYW5vOgo+ID4+Pj4gQ3VycmVudGx5IHRoZSBjb21tb24gdGhlcm1hbCB6b25lcyBkZWZp
bml0aW9ucyBmb3IgdGhlIHJrMzM5OSBhc3N1bWVzCj4gPj4+PiBtdWx0aXBsZSB0aGVybWFsIHpv
bmVzIGFyZSBzdXBwb3J0ZWQgYnkgdGhlIGdvdmVybm9ycy4gVGhpcyBpcyBub3QgdGhlCj4gPj4+
PiBjYXNlIGFuZCBlYWNoIHRoZXJtYWwgem9uZSBoYXMgaXRzIG93biBnb3Zlcm5vciBpbnN0YW5j
ZSBhY3RpbmcKPiA+Pj4+IGluZGl2aWR1YWxseSB3aXRob3V0IGNvbGxhYm9yYXRpb24gd2l0aCBv
dGhlciBnb3Zlcm5vcnMuCj4gPj4+Pgo+ID4+Pj4gQXMgdGhlIGNvb2xpbmcgZGV2aWNlIGZvciB0
aGUgQ1BVIGFuZCB0aGUgR1BVIHRoZXJtYWwgem9uZXMgaXMgdGhlCj4gPj4+PiBzYW1lLCBlYWNo
IGdvdmVybm9ycyB0YWtlIGRpZmZlcmVudCBkZWNpc2lvbnMgZm9yIHRoZSBzYW1lIGNvb2xpbmcK
PiA+Pj4+IGRldmljZSBsZWFkaW5nIHRvIGNvbmZsaWN0aW5nIGluc3RydWN0aW9ucyBhbmQgYW4g
ZXJyYXRpYyBiZWhhdmlvci4KPiA+Pj4+Cj4gPj4+PiBBcyB0aGUgY29vbGluZy1tYXBzIGlzIGFi
b3V0IHRvIGJlY29tZSBhbiBvcHRpb25hbCBwcm9wZXJ0eSwgbGV0J3MKPiA+Pj4+IHJlbW92ZSB0
aGUgY3B1IGNvb2xpbmcgZGV2aWNlIG1hcCBmcm9tIHRoZSBHUFUgdGhlcm1hbCB6b25lLgo+ID4+
Pj4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPgo+ID4+Pj4gLS0tCj4gPj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS5kdHNpIHwgOSAtLS0tLS0tLS0KPiA+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA5
IGRlbGV0aW9ucygtKQo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gPj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LmR0c2kKPiA+Pj4+IGluZGV4IDE5NmFjOWI3ODA3Ni4uZTEzNTdlMGY2MGY3
IDEwMDY0NAo+ID4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTku
ZHRzaQo+ID4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRz
aQo+ID4+Pj4gQEAgLTgyMSwxNSArODIxLDYgQEAKPiA+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eXBlID0gImNyaXRpY2FsIjsKPiA+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiA+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4gPj4+PiAtCj4gPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5n
LW1hcHMgewo+ID4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXAwIHsKPiA+
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0cmlwID0gPCZncHVf
YWxlcnQwPjsKPiA+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b29saW5nLWRldmljZSA9Cj4gPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmNwdV9iMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+
LAo+ID4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZjcHVfYjEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPiA+Pj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiA+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIH07Cj4gPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiA+Pj4+IMKgwqDCoMKgwqAgfTsK
PiA+Pj4KPiA+Pj4gbXkga25vd2xlZGdlIG9mIHRoZSB0aGVybWFsIGZyYW1ld29yayBpcyBub3Qg
dGhhdCBiaWcsIGJ1dCB3aGF0IGFib3V0Cj4gPj4+IHRoZQo+ID4+PiByazMzOTktZGV2aWNlcyB3
aGljaCBmdXJ0aGVyIGRldGFpbCB0aGUgY29vbGluZy1tYXBzIGxpa2UKPiA+Pj4gcmszMzk5LWdy
dS1rZXZpbgo+ID4+PiBhbmQgdGhlIHJrMzM5OS1uYW5vcGMtdDQgd2l0aCBpdHMgZmFuLWhhbmRs
aW5nIGluIHRoZSBjb29saW5nLW1hcHM/Cj4gPj4KPiA+PiBUaGUgcmszMzk5LWdydS1rZXZpbiBp
cyBjb3JyZWN0Lgo+ID4+Cj4gPj4gVGhlIHJrMzM5OS1uYW5vcGMtdDQgaXMgbm90IGNvcnJlY3Qg
YmVjYXVzZSB0aGUgY3B1IGFuZCB0aGUgZ3B1IGFyZQo+ID4+IHNoYXJpbmcgdGhlIHNhbWUgY29v
bGluZyBkZXZpY2UgKHRoZSBmYW4pLiBUaGVyZSBhcmUgZGlmZmVyZW50Cj4gPj4gY29uZmlndXJh
dGlvbnM6Cj4gPj4KPiA+PiAxLiBUaGUgY3B1IGNvb2xpbmcgZGV2aWNlIGZvciB0aGUgQ1BVIGFu
ZCB0aGUgZmFuIGZvciB0aGUgR1BVCj4gPj4KPiA+PiAyLiBEaWZmZXJlbnQgdHJpcCBwb2ludHMg
b24gdGhlIENQVSB0aGVybWFsIHpvbmUsIGVnLiBvbmUgdG8gZm9yIHRoZSBDUFUKPiA+PiBjb29s
aW5nIGRldmljZSBhbmQgYW5vdGhlciBvbmUgZm9yIHRoZSBmYW4uCj4gPj4KPiA+PiBUaGVyZSBh
cmUgc29tZSB2YXJpYW50IGZvciB0aGUgYWJvdmUuIElmIHRoaXMgYm9hcmQgaXMgbm90IG9uIGJh
dHRlcnksCj4gPj4geW91IG1heSB3YW50IHRvIGdpdmUgcHJpb3JpdHkgdG8gdGhlIHRocm91Z2hw
dXQsIHNvIGFjdGl2YXRlIHRoZSBmYW4KPiA+PiBmaXJzdCBhbmQgdGhlbiBjb29sIGRvd24gdGhl
IENQVS4gT3IgaWYgeW91IGFyZSBvbiBiYXR0ZXJ5LCB5b3UgbWF5IHdhbnQKPiA+PiB0byBpbnZl
cnQgdGhlIHRyaXAgcG9pbnRzLgo+ID4+Cj4gPj4gSW4gYW55IGNhc2UsIGl0IGlzIG5vdCBwb3Nz
aWJsZSB0byBzaGFyZSB0aGUgc2FtZSBjb29saW5nIGRldmljZSBmb3IKPiA+PiBkaWZmZXJlbnQg
dGhlcm1hbCB6b25lcy4KPiA+IAo+ID4gT0ssIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24u
IEknbGwgZ2V0IG15IGJvYXJkIHNldCB1cCBhZ2FpbiB0bwo+ID4gZmlndXJlIG91dCB0aGUgYmVz
dCBmaXggZm9yIHJrMzM5OS1uYW5vcGMtdDQgKEZXSVcgbW9zdCB1c2VycyBhcmUKPiA+IHByb2Jh
Ymx5IGp1c3QgdXNpbmcgcGFzc2l2ZSBjb29saW5nIG9yIGEgcGxhaW4gREMgZmFuIGFueXdheSku
IFlvdSBtaWdodAo+ID4gd2FudCB0byByYWlzZSB0aGlzIGlzc3VlIHdpdGggdGhlIG1haW50YWlu
ZXJzIG9mCj4gPiBhcmNoL2FybS9ib290L2R0cy9leHlub3M1NDIyLW9kcm9pZHh1My1jb21tb24u
ZHRzaSwgc2luY2UgdGhlCj4gPiBldmVyeXRoaW5nLXNoYXJlZC1ieS1ldmVyeXRoaW5nIGFwcHJv
YWNoIGluIHRoZXJlIHdhcyB3aGF0IEkgdXNlZCBhcyBhCj4gPiByZWZlcmVuY2UuCj4gCj4gQ2Mn
ZWQ6IEt1a2ppbiBLaW0gYW5kIEtyenlzenRvZiBLb3psb3dza2kKPiAKPiBFYXN5IDopCj4KCkFz
c3VtaW5nIHRoYXQgYWxsIHRyaXAtcG9pbnRzIGFyZSB0aGUgc2FtZSBiZXR3ZWVuIHRoZXJtYWwg
em9uZXMsIEkKdW5kZXJzdGFuZCB0aGF0IHNvbHV0aW9uIGNvdWxkIGJlIHRvIGhhdmUgb25lIHRo
ZXJtYWwgem9uZSB3aXRoIHRoZXJtYWwKbXVsdGlwbGUgc2Vuc29ycyAoc29tZSB0aW1lIGFnbyBi
aW5kaW5ncyBkaWQgbm90IHN1cHBvcnQgaXQpIGFuZCBhbGwKY29vbGluZyBkZXZpY2VzPyBUaGVu
IG9ubHkgb25lIGdvdmVybm9yIHdvdWxkIGJlIGFzc2lnbmVkPwoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==

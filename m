Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A501D16AD3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFZBhX68YXwlObrwHlo1Kw4YTIBhVqCtubQoC4dSln8=; b=g7M/da3JEEoLh/
	pUT3Jbv0Ais4jjSH9RqRKWoQ6Gu+0qhJoYgVeuEoaanK8LmSvoOs0osKVe1cDjNLFqFp92KBgfZ7c
	7nwpZ0dNOmcfip19ZZA3FCdHFSIhtrFwjtpzBKVrlAch6imogh8XiRhQbhRD/3VY0bTctLgNFPbxn
	j6nGWlMuBIqvNGWQErQ8vFBha26S1Kjp7vIQchjeaZMh/y4nDXmIIVzs6Y73u4lFCcw4T85IVyZ+L
	fT95U6AEimj2+d3vzU+28P+WMtsm67T/TiAk4Mtj+xXwV5lYMsdMhSgCNP46xezYMeTA/NRrhcjOd
	H8+IMBp1bvz22nF8+KOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HSF-00080k-PI; Mon, 24 Feb 2020 17:23:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HS6-0007zv-GN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582565008; bh=bd4Uuy+8NdF8pyhX5zAyIND0GOYY5+tfdsLIGI0STkY=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=h1RRqRCRYXFCxoDJO6jPP6II2ps9oswey4T2PFiwvq2vrZbVBQg2rrJiJzV7Xyk4r
 kNPRhzIQeeePwaujC76aAlQCVufqcsuTc9SYASpY8Uj1FJxVnoc3Aim4E1c8LyGl97
 GLzrudZoPO8yo1w/G52Ig9+sYovPq+/rJoTbsdrA=
Date: Mon, 24 Feb 2020 18:23:28 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
Message-ID: <20200224172328.yauwfgov664ayrd6@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200224165417.334617-1-megous@megous.com>
 <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_092330_713031_52B66A89 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIAoKT24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDY6MDY6MjBQTSArMDEwMCwgRGFuaWVsIExl
emNhbm8gd3JvdGU6Cj4gT24gMjQvMDIvMjAyMCAxNzo1NCwgT25kcmVqIEppcm1hbiB3cm90ZToK
PiA+IFRoaXMgZW5hYmxlcyBwYXNzaXZlIGNvb2xpbmcgYnkgZG93bi1yZWd1bGF0aW5nIENQVSB2
b2x0YWdlCj4gPiAgCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0MxQ1BVWD47Cj4gPiBAQCAtMTE4OCwx
MiArMTE4OCw2MCBAQCBjcHUwX3RoZXJtYWw6IGNwdTAtdGhlcm1hbCB7Cj4gPiAgCQkJcG9sbGlu
Zy1kZWxheS1wYXNzaXZlID0gPDA+Owo+ID4gIAkJCXBvbGxpbmctZGVsYXkgPSA8MD47Cj4gPiAg
CQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMD47Cj4gPiArCj4gPiArCQkJdHJpcHMgewo+ID4g
KwkJCQljcHUwX2hvdDogY3B1LWhvdCB7Cj4gPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw4MDAwMD47
Cj4gPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4gKwkJCQkJdHlwZSA9ICJwYXNzaXZl
IjsKPiA+ICsJCQkJfTsKPiA+ICsKPiA+ICsJCQkJY3B1MF92ZXJ5X2hvdDogY3B1LXZlcnktaG90
IHsKPiA+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEwMDAwMD47Cj4gPiArCQkJCQloeXN0ZXJlc2lz
ID0gPDA+Owo+ID4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gPiArCQkJCX07Cj4gPiArCQkJ
fTsKPiA+ICsKPiA+ICsJCQljb29saW5nLW1hcHMgewo+ID4gKwkJCQljcHUtaG90LWxpbWl0IHsK
PiA+ICsJCQkJCXRyaXAgPSA8JmNwdTBfaG90PjsKPiA+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0g
PCZjcHUwIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiArCQkJCQkJCSA8
JmNwdTEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiA+ICsJCQkJCQkJIDwm
Y3B1MiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ID4gKwkJCQkJCQkgPCZj
cHUzIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD47Cj4gPiArCQkJCX07Cj4gPiAr
CQkJfTsKPiA+ICAJCX07Cj4gPiAgCj4gPiAgCQljcHUxX3RoZXJtYWw6IGNwdTEtdGhlcm1hbCB7
Cj4gPiAgCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+IAo+IE5vIHBvbGxpbmcgdG8g
bWl0aWdhdGU/CgpQb2xsaW5nIHRvIG1pdGlnYXRlIHdoYXQ/CgpUaGUgZHJpdmVyIGlzIHVzaW5n
IGludGVycnVwdHMgd2hlbmV2ZXIgbmV3IHJlYWRpbmcgaXMgYXZhaWxhYmxlLCBhbmQKbm90aWZp
ZXMgdHogb2YgdGhlIGNoYW5nZS4gSSBkb24ndCBoYXZlIGEgcmVhc29uIHRvIGJlbGlldmUgYW55
IG5ldwp2YWx1ZXMgYXJlIGF2YWlsYWJsZSBmcm9tIHRoZXJtYWwgc2Vuc29yIG91dHNpZGUgb2Yg
dGhlIGludGVycnVwdApwZXJpb2QuCgo+ID4gIAkJCXBvbGxpbmctZGVsYXkgPSA8MD47Cj4gPiAg
CQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMT47Cj4gPiArCj4gPiArCQkJdHJpcHMgewo+ID4g
KwkJCQljcHUxX2hvdDogY3B1LWhvdCB7Cj4gPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDw4MDAwMD47
Cj4gPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4gKwkJCQkJdHlwZSA9ICJwYXNzaXZl
IjsKPiAKPiBJJ20gY3VyaW91cywgY2FuIHlvdSByZWFsbHkgcmVhY2ggdGhpcyB0ZW1wZXJhdHVy
ZSB3aXRoIGEgY29ydGV4LWE3Cj4gcnVubmluZyBhdCAxLjJHSHogbWF4PwoKVGhhdCBkZXBlbmRz
IG9uIGFtYmllbnQgdGVtcGVyYXR1cmUuIEknZCBzYXkgZWFzaWx5LiBNeSBBODNUIGlzIHJ1bm5p
bmcKaW5pc2lkZSBlbmNsb3NlZCBzcGFjZSB3aXRoIG5vIGNvb2xpbmcgb3RoZXIgdGhhbiBkaXNz
aXBhdGluZyBoZWF0IHRvCnRoZSBib2FyZC4KCkFueXdheSwgSSdtIHJ1bm5pbmcgbXkgQTgzVCBi
b2FyZHMgYXQgMS44R0h6LiBBbmQgQTgzVCBjYW4gcnVuIHVwIHRvIDJHSHoKYXQgdGhlIGJlc3Qg
U29DIGJpbi4KCkknbGwgcHJvYmFibHkgc3VibWl0IHVwZGF0ZWQgY3B1ZnJlcSB0YWJsZSBhdCBz
b21lIHBvaW50IHRvbywgb25jZSBJIGZpeAppdCB1cCB0byB1c2UgdGhlIFNvQyBiaW4gaW5mb3Jt
YXRpb24uCgpodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L2NvbW1pdC8/aD10aHMtNS42Jmlk
PTE3MWI3YzNjM2RiOThiNTkzOWQyOGQwYzk2YjM4NGVkZGE5NWNlYzMKCnJlZ2FyZHMsCglvLgoK
PiA+ICsJCQkJfTsKPiA+ICsKPiA+ICsJCQkJY3B1MV92ZXJ5X2hvdDogY3B1LXZlcnktaG90IHsK
PiA+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEwMDAwMD47Cj4gPiArCQkJCQloeXN0ZXJlc2lzID0g
PDA+Owo+ID4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gPiArCQkJCX07Cj4gPiArCQkJfTsK
PiA+ICsKPiA+ICsJCQljb29saW5nLW1hcHMgewo+ID4gKwkJCQljcHUtaG90LWxpbWl0IHsKPiA+
ICsJCQkJCXRyaXAgPSA8JmNwdTFfaG90PjsKPiA+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZj
cHUxMDAgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiA+ICsJCQkJCQkJIDwm
Y3B1MTAxIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiArCQkJCQkJCSA8
JmNwdTEwMiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ID4gKwkJCQkJCQkg
PCZjcHUxMDMgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPiA+ICsJCQkJfTsK
PiA+ICsJCQl9Owo+ID4gIAkJfTsKPiA+ICAKPiA+ICAJCWdwdV90aGVybWFsOiBncHUtdGhlcm1h
bCB7Cj4gPiAKPiAKPiAKPiAtLSAKPiAgPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+IAo+IEZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cj4g
PGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo+IDxodHRwOi8vd3d3
LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDED9E75C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4mXpIuFZQdry4QArrc7RQ5bJCPMAIekxkzixOrB+t8=; b=l0Zb2ropl1t/gZ
	qx6Io9I5Bln2JNXN9TtGNQMmSvIjwyg43cIAHnEZAl3SmuOPJhphTGwoSu3TXUgefh3pS3RqZi/FD
	8JX8K/DiUFYJl43RGTy4iof87xD1Ql4epuKbfJ4XEPJK6C9U2YGZne2sQ9n8ZmcNZXn5PcJvpDfSk
	r7IRt4YngDqcbdLz1CauRhLq/4w97RAvjQiqNQzDpiYphQFDwhZYBTg0Nu0W7u4CzDorA2Zn/5CqZ
	4DyWU1poTLXy68QI0Fl9dTQfAZNZy3LdoNgIIxXEra9Ccx0vQ7TzB5j/dSSonuqiaQPyXqznoX08p
	Qi1uZhCw/5T/xXoS9PBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aIE-0000VV-St; Tue, 27 Aug 2019 12:09:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aI1-0000VA-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:09:34 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D2E523405
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 12:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566907772;
 bh=fUcUeDsVMM74MJ34Ry+nmElbDrbiFBZpMPM2hzgixd0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a/HU21B1cyQ6s40aeFD4kglNlgx/8tu55rjKwGr1G3GYTZwUzCWGnPKMfw7u3icX6
 lg9PzWKcnnP3PvbousMWaYQLUOR4BFPYNU1XJ57UIy2rxgYRhPrRY3RZPAkCycs07A
 mZiI8mDd73MKcYwA2EC9W5/61ATgG6Q4muAxpEMM=
Received: by mail-qt1-f180.google.com with SMTP id k13so20939417qtm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 05:09:32 -0700 (PDT)
X-Gm-Message-State: APjAAAUygkiG49hhzxLxUDL47PD9f4aV2tV79c21r3n0iv+O4XuSd+sL
 WIdWY4v/1kIz3499nuRlv1NQRJNna2eLbnnzLg==
X-Google-Smtp-Source: APXvYqwITMYFg2CYFwhIyWqxLZ/aKw9ADPAqPzY//V2prhlPF7exrU3jWDce1/49wEhaqDxEIWNDGyMlSPrc6zzUzds=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr22702194qtc.110.1566907771556; 
 Tue, 27 Aug 2019 05:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566470526.git.agx@sigxcpu.org>
 <36f62b431f32bc76e92d21e04dc48464aef43869.1566470526.git.agx@sigxcpu.org>
In-Reply-To: <36f62b431f32bc76e92d21e04dc48464aef43869.1566470526.git.agx@sigxcpu.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 07:09:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLOa9yg+oWHM4o8b8b=4DGYC40b3o7YB_pKHSOTBEuvTA@mail.gmail.com>
Message-ID: <CAL_JsqLOa9yg+oWHM4o8b8b=4DGYC40b3o7YB_pKHSOTBEuvTA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_050933_203093_E703B0CB 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Arnd Bergmann <arnd@arndb.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNTo0NCBBTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IFRoZSBOb3J0aHdlc3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBj
YW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0NzLgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
YnJpZGdlL253bC1kc2kueWFtbCAgICAgIHwgMTU1ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwK
Pgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9icmlkZ2UvbndsLWRzaS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi4yNGQxN2E2MzEwZGMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFt
bAo+IEBAIC0wLDAgKzEsMTU1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAKCihHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKSBpcyBwcmVmZXJyZWQgZm9yIG5ldyBi
aW5kaW5ncy4KCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IE5v
cnRod2VzdCBMb2dpYyBNSVBJLURTSSBjb250cm9sbGVyIG9uIGkuTVggU29Dcwo+ICsKPiArbWFp
bnRhaW5lcnM6Cj4gKyAgLSBHdWlkbyBHw7pudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+ICsgIC0g
Um9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0BueHAuY29tPgo+ICsKPiArZGVzY3JpcHRpb246
IHwKPiArICBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyIGZvdW5kIG9uIGkuTVg4IHBsYXRm
b3Jtcy4gVGhpcyBpcyBhIGRzaSBicmlkZ2UgZm9yCj4gKyAgdGhlIFNPQ3MgTldMIE1JUEktRFNJ
IGhvc3QgY29udHJvbGxlci4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiAr
ICAgIGNvbnN0OiBmc2wsaW14OG1xLW53bC1kc2kKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRl
bXM6IDEKPiArCj4gKyAgaW50ZXJydXB0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNs
b2NrczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBEU0kgY29yZSBjbG9j
awo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBSWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1v
ZGUpCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFRYX0VTQyBjbG9jayAodXNlZCBpbiBlc2NhcGUg
bW9kZSkKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUEhZX1JFRiBjbG9jawo+ICsKPiArICBjbG9j
ay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4gKyAgICAgIC0g
Y29uc3Q6IHJ4X2VzYwo+ICsgICAgICAtIGNvbnN0OiB0eF9lc2MKPiArICAgICAgLSBjb25zdDog
cGh5X3JlZgo+ICsKPiArICBtdXgtY29udHJvbHM6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAg
ICAgbXV4IGNvbnRyb2xsZXIgbm9kZSB0byB1c2UgZm9yIG9wZXJhdGluZyB0aGUgaW5wdXQgbXV4
Cj4gKwo+ICsgIHBoeXM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsgICAgZGVzY3JpcHRpb246Cj4g
KyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcGh5IG1vZHVsZSByZXByZXNlbnRpbmcgdGhlIERQSFkK
PiArCj4gKyAgcGh5LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGRwaHkK
PiArCj4gKyAgcG93ZXItZG9tYWluczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAgICBkZXNjcmlw
dGlvbjoKPiArICAgICAgQSBwaGFuZGxlIHRvIHRoZSBwb3dlciBkb21haW4KCkRvbid0IG5lZWQg
YSBkZXNjcmlwdGlvbiBmb3IgY29tbW9uIHByb3BlcnRpZXMgdW5sZXNzIHlvdSBoYXZlCnNvbWV0
aGluZyBzcGVjaWZpYyBhYm91dCB0aGlzIGRldmljZSB0byBzYXkuCgo+ICsKPiArICByZXNldHM6
Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgcGhhbmRsZXMgdG8gdGhlIHJlc2V0IGNvbnRy
b2xsZXIKClNhbWUgaGVyZS4KCj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjog
ZHNpIGJ5dGUgcmVzZXQgbGluZQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgZHBpIHJlc2V0
IGxpbmUKPiArICAgICAgLSBkZXNjcmlwdGlvbjogZHNpIGVzYyByZXNldCBsaW5lCj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IGRzaSBwY2xrIHJlc2V0IGxpbmUKPiArCj4gKyAgcmVzZXQtbmFtZXM6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogYnl0ZQo+ICsgICAgICAtIGNvbnN0OiBk
cGkKPiArICAgICAgLSBjb25zdDogZXNjCj4gKyAgICAgIC0gY29uc3Q6IHBjbGsKPiArCj4gKyAg
cG9ydHM6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBB
IG5vZGUgY29udGFpbmluZyBEU0kgaW5wdXQgJiBvdXRwdXQgcG9ydCBub2RlcyB3aXRoIGVuZHBv
aW50Cj4gKyAgICAgIGRlZmluaXRpb25zIGFzIGRvY3VtZW50ZWQgaW4KPiArICAgICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dyYXBoLnR4dC4KPiArCj4gKyAgcG9ydEAwOgoK
VGhlc2UgYXJlIGNoaWxkIG5vZGVzIG9mIHBvcnRzLiBTbyB1bmRlciBwb3J0cyB5b3UgbmVlZCAn
cHJvcGVydGllcycKd2l0aCB0aGVzZS4gQW5kICdyZXF1aXJlZCcuCgo+ICsgICAgdHlwZTogb2Jq
ZWN0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgSW5wdXQgcG9ydCBub2RlIHRvIHJlY2Vp
dmUgcGl4ZWwgZGF0YSBmcm9tIHRoZQo+ICsgICAgICBkaXNwbGF5IGNvbnRyb2xsZXIKPiArCj4g
KyAgcG9ydEAxOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAg
ICAgRFNJIG91dHB1dCBwb3J0IG5vZGUgdG8gdGhlIHBhbmVsIG9yIHRoZSBuZXh0IGJyaWRnZQo+
ICsgICAgICBpbiB0aGUgY2hhaW4KPiArCj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICJecGFu
ZWxAWzAtOV0rJCI6IHRydWUKClRoaXMgaXMgYSBub2RlLCBzbzoKCnR5cGU6IG9iamVjdAoKPiAr
Cj4gK3JlcXVpcmVkOgo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY29t
cGF0aWJsZQo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gbXV4LWNvbnRyb2xzCj4gKyAgLSBwaHkt
bmFtZXMKPiArICAtIHBoeXMKPiArICAtIHBvcnRzCj4gKyAgLSByZWcKPiArICAtIHJlc2V0LW5h
bWVzCj4gKyAgLSByZXNldHMKCkFkZCBhOgoKYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCgo+
ICsKPiArZXhhbXBsZXM6Cj4gKyAtIHwKPiArCj4gKyAgIG1pcGlfZHNpOiBtaXBpX2RzaUAzMGEw
MDAwMCB7Cj4gKyAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAg
ICAgICAgI3NpemUtY2VsbHMgPSA8MD47CgpUaGVzZSBuZWVkIHRvIGJlIGxpc3RlZCBhYm92ZS4K
Cj4gKyAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW53bC1kc2kiOwo+ICsg
ICAgICAgICAgICAgIHJlZyA9IDwweDMwQTAwMDAwIDB4MzAwPjsKPiArICAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8JmNsayAyNDU+LCA8JmNsayAxNjQ+Owo+
ICsgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImNvcmUiLCAicnhfZXNjIiwgInR4X2VzYyIs
ICJwaHlfcmVmIjsKPiArICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDAgMzQgND47Cj4gKyAg
ICAgICAgICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXggMD47Cj4gKyAgICAgICAgICAgICAgcG93
ZXItZG9tYWlucyA9IDwmcGdjX21pcGk+Owo+ICsgICAgICAgICAgICAgIHJlc2V0cyA9IDwmc3Jj
IDA+LCA8JnNyYyAxPiwgPCZzcmMgMj4sIDwmc3JjIDM+Owo+ICsgICAgICAgICAgICAgIHJlc2V0
LW5hbWVzID0gImJ5dGUiLCAiZHBpIiwgImVzYyIsICJwY2xrIjsKPiArICAgICAgICAgICAgICBw
aHlzID0gPCZkcGh5PjsKPiArICAgICAgICAgICAgICBwaHktbmFtZXMgPSAiZHBoeSI7Cj4gKwo+
ICsgICAgICAgICAgICAgIHBhbmVsQDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJyb2NrdGVjaCxqaDA1N24wMDkwMCI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICBwb3J0QDAgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2RzaV9vdXQ+Owo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICAgICAgICAg
fTsKPiArICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICBwb3J0cyB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgIHBvcnRA
MCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbWlwaV9kc2lfaW46IGVuZHBvaW50IHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbGNkaWZfbWlw
aV9kc2k+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAg
ICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBt
aXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAg
ICAgIH07Cj4gKyAgICAgIH07Cj4gLS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

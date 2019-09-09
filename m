Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DEEADA25
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QIBB6m6MfkS2l740sjjdKp1VYxdZT0NnF24+GHv14U=; b=ibYwgOBCM86/Cq
	gxJSx5BIPdqnJQgtAGUb6u+UgauuDLJsIOsWZJygCj9f04b35nWlobu5S5IRjJylNCgKW8+J0HURo
	ORrUpB7fqEa4tXB6YwfG0l0eaIMxoGXqvcd952smJfM5mZpmsYVwZpDnTkr/EfZBicmKkKrcMw0l0
	Qp2Kfqi1nPQ9BDFV5fxyGfiQMVSXA0/rOfApltq194ceG2leZU4Pc36P1j9iPzDFXjV9SfI9TYtN9
	dkbA+3Z/HDMucDSnZTCi74IqG7cMWyo/u8cnV678dXf/S7k7Ycclkslw24xgttCMrS1VPPPq0Uml3
	gaL8zS6WxKxLPiPy5Enw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JuV-0007ht-Pt; Mon, 09 Sep 2019 13:40:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JuI-0007hT-EU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:40:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id r195so14765519wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=uU5JBRHXIvx/8FJrzT3Q8CzzXnkxCEsE/V9AOb2mS4I=;
 b=GJ+dgc+rY09904fO5gRxx6o63f0twPMfDJSQdqowLkOjfgAXLFQCemSI2tCdamoI0F
 PK/16ehPFz8eZ1J+/to26wtJpYeny8zIx3HweIIfUZDuzVkQcEiUEmQrnxzoy8QvnKUj
 ogiVG2aAYw23JVQDI4CXFpfkoYvN06e3FEonUTDVBPbJLpJH5B9h2DsBpEY049QpMrIA
 zdrhsg4SsRkqUhioUfsP+4UVph7LI0kKasz0lE3f7JPKuLNkGw54V/6KwOO87hOnICZj
 GVaLCF8Vot3aD0lBr2IHng4BNbweksp6XRbO05QV/tMj6PG/IpFu0eMm8MorVzjObnxq
 J8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=uU5JBRHXIvx/8FJrzT3Q8CzzXnkxCEsE/V9AOb2mS4I=;
 b=CmRn2hQ2SgV5ccwE/BVD62/MTqJtr0uJMlaFLPRCLBkBopd0dFJA4oZ5aTJvi5SRLm
 P/U82WljIIuydzXdTFPzuH+0HhapT26TC37sfqcfsrQAIO3BL1th8A/x483S3bTxuCH9
 SPC1zPr0J64XLTqT0wsnjW3R1TWnqafAO3bamWqiVueltpbb58gZnOtESv+1Zv1OZaBJ
 MlVAKPsI/8FMVTOWNDBiKOEGre7H5k1tcwDIwBeV2QNZKK+TC27PBdiwgWNoSZrrpnC0
 bKlnBEe5GNxx/9aWEQGJ6Y1c27cRSfAidGU1VT3+Qe7PFOZd6oKohi3klB5uGPjhmg9N
 9G9w==
X-Gm-Message-State: APjAAAV4BP2oXiFGmpHHhl5+4yB68SwCpHrAcnpx8r6gKjKQy6PJWRN9
 EStjJWVYEL1PriCHhG6aOPA=
X-Google-Smtp-Source: APXvYqxHaF/yMZggxxln8G4flQD0InZGwOQ1ivuk3uCKtnT1meqyiO91xNlY2j5uvD1R7UsJvqTdjg==
X-Received: by 2002:a1c:a404:: with SMTP id n4mr18354841wme.137.1568036436379; 
 Mon, 09 Sep 2019 06:40:36 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id g201sm20586327wmg.34.2019.09.09.06.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 06:40:35 -0700 (PDT)
Date: Mon, 9 Sep 2019 15:40:33 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190909134033.s26eiurpat3iekse@pali>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064038_491335_D874AF75 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pali.rohar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uZGF5IDA5IFNlcHRlbWJlciAyMDE5IDA4OjM3OjA5IEFkYW0gRm9yZCB3cm90ZToKPiBP
biBNb24sIFNlcCA5LCAyMDE5IGF0IDc6MTMgQU0gQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgU2VwIDUsIDIwMTkgYXQgNjowNCBQTSBUb255IExp
bmRncmVuIDx0b255QGF0b21pZGUuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4g
PiA+ICogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+IFsxOTA4MjggMTU6MDFdOgo+ID4g
PiA+IFRoZSBkYXRhc2hlZXQgZm9yIHRoZSBBTTM1MTcgc2hvd3MgdGhlIFJORyBpcyBjb25uZWN0
ZWQgdG8gTDQuCj4gPiA+ID4gSXQgc2hvd3MgdGhlIG1vZHVsZSBhZGRyZXNzIGZvciB0aGUgUk5H
IGlzIDB4NDgwQTAwMDAsIGFuZCBpdAo+ID4gPiA+IG1hdGNoZXMgdGhlIG9tYXAyLmR0c2kgZGVz
Y3JpcHRpb24uICBTaW5jZSB0aGUgZHJpdmVyIGNhbiBzdXBwb3J0Cj4gPiA+ID4gb21hcDIgYW5k
IG9tYXA0LCBpdCBzZWVtcyByZWFzb25hYmxlIHRvIGFzc3VtZSB0aGUgb21hcDMgd291bGQKPiA+
ID4gPiB1c2UgdGhlIHNhbWUgY29yZSBmb3IgdGhlIFJORy4KPiA+ID4gPgo+ID4gPiA+IFRoaXMg
UkZDLCBtaW1pY3MgbXVjaCBvZiB0aGUgb21hcDIgaHdtb2RzIG9uIHRoZSBPTUFQMy4gSXQKPiA+
ID4gPiBhbHNvIGFkZHMgdGhlIG5lY2Vzc2FyeSBjbG9jayBmb3IgZHJpdmluZyB0aGUgUk5HLiAg
VW5mb3J0dW5hdGVseSwKPiA+ID4gPiBpdCBhcHBlYXJzIG5vbi1mdW5jdGlvbmFsLiAgSWYgYW55
b25lIGhhcyBhbnkgc3VnZ2VzdGlvbnMgb24gaG93Cj4gPiA+ID4gdG8gZmluaXNoIHRoZSBod21v
ZCAob3IgcG9ydCBpdCB0byB0aGUgbmV3ZXIgbDQgZGV2aWNlIHRyZWUKPiA+ID4gPiBmb3JtYXQp
LCBmZWVkYmFjayBpcyByZXF1ZXN0ZWQuCj4gPiA+Cj4gPiA+IFl1cCBJJ2xsIHRha2UgdGhlIGJh
aXQgOikgVGhlIHBhdGNoIGJlbG93IHNlZW1zIHRvIGRvIHRoZSB0cmljawo+ID4gPiBmb3IgbWUg
b24gZG0zNzMwIGJhc2VkIG9uIHRyYW5zbGF0aW5nIHlvdXIgcGF0Y2ggdG8gcHJvYmUgd2l0aAo+
ID4gPiB0aS1zeXNjLgo+ID4gPgo+ID4gPiBOb3Qgc3VyZSBhYm91dCAzNHh4LCBpdCBzZWVtcyB3
ZSdyZSBtaXNzaW5nIHJuZ19jbGs/IENhcmUKPiA+ID4gdG8gZ2l2ZSBpdCBhIHRyeSBhbmQgYXR0
ZW1wdCBzaW1sYXIgcGF0Y2hlcyBmb3IgMzR4eCBhbmQKPiA+ID4gMzUxNz8KPiA+ID4KPiA+ID4g
QXQgbGVhc3QgSSdtIG5vdCBuZWVkaW5nIHRoZSAidGksbm8tcmVzZXQtb24taW5pdCIgcHJvcGVy
dHkKPiA+ID4gdGhhdCB5b3VyIHBhdGNoIGhhcyBhIGNvbW1lbnQgZm9yLiBNYXliZSB0aGF0J3Mg
bmVlZGVkIG9uCj4gPiA+IHNvbWUgb3RoZXIgb21hcDMuCj4gPiA+Cj4gPiA+IE9oIGFuZCB0aGlz
IG5lZWRzIHRvIGRlZmF1bHQgdG8gc3RhdHVzID0gImRpc2FibGVkIiBmb3IKPiA+ID4gSFMgZGV2
aWNlcyBsaWtlIG45MDAgYXMgaXQgbmVlZHMgdG8gdXNlIHRoZSBvbWFwMy1yb20tcm5nLgo+ID4g
Pgo+ID4gPiBSZWdhcmRzLAo+ID4gPgo+ID4gPiBUb255Cj4gPiA+Cj4gPiA+IDg8IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9vbWFw
MzZ4eC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDM2eHguZHRzaQo+ID4gPiAtLS0gYS9h
cmNoL2FybS9ib290L2R0cy9vbWFwMzZ4eC5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL29tYXAzNnh4LmR0c2kKPiA+ID4gQEAgLTE0MCw2ICsxNDAsMjkgQEAKPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gICAgICAgICAgICAgICAgIH07Cj4gPiA+Cj4gPiA+
ICsgICAgICAgICAgICAgICBybmdfdGFyZ2V0OiB0YXJnZXQtbW9kdWxlQDQ4MGEwMDAwIHsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxzeXNjLW9tYXAyIiwg
InRpLHN5c2MiOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHg0ODBhMDAz
YyAweDQ+LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHg0ODBhMDA0MCAw
eDQ+LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHg0ODBhMDA0NCAweDQ+
Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByZWctbmFtZXMgPSAicmV2IiwgInN5c2Mi
LCAic3lzcyI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHRpLHN5c2MtbWFzayA9IDwo
U1lTQ19PTUFQMl9BVVRPSURMRSk+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICB0aSxz
eXNjLXNpZGxlID0gPFNZU0NfSURMRV9GT1JDRT4sCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA8U1lTQ19JRExFX05PPjsKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgdGksc3lzcy1tYXNrID0gPDE+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBjbG9ja3MgPSA8JnJuZ19pY2s+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBjbG9j
ay1uYW1lcyA9ICJpY2siOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8
MT47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJhbmdlcyA9IDwwIDB4NDgwYTAwMDAg
MHgyMDAwPjsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBybmc6IHJuZ0Aw
IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInRp
LG9tYXAyLXJuZyI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0g
PDB4MCAweDIwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVy
cnVwdHMgPSA8NTI+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiArICAg
ICAgICAgICAgICAgfTsKPiA+ID4gKwo+IAo+IEkgYXBwbGllZCB0aGlzIG9uIDUuMyBhbmQgaXQg
aXMgd29ya2luZy4gIEkgYXNzdW1lIHRoZSBzYW1lIGlzIHRydWUgaW4gZm9yLW5leHQuCj4gCj4g
RG8geW91IHdhbnQgdG8gc3VibWl0IGEgZm9ybWFsIHBhdGNoPyAgSSAgY2FuIG1hcmsgaXQgYXMg
J3Rlc3RlZC1ieScKPiBUaGlzIHJlYWxseSBoZWxwcyBzcGVlZCB1cCB0aGUgc3RhcnR1cCBzZXF1
ZW5jZSBvbiBib2FyZHMgd2l0aCBzc2hkCj4gYmVjYXVzZSBpdCBkZWxheXMgZm9yIG5lYXJseSA4
MCBzZWNvbmRzIHdhaXRpbmcgZm9yIGVudHJvcHkgd2l0aG91dAo+IHRoZSBod3JuZy4KCkhpISBX
aGVuIGFwcGx5aW5nIGEgcGF0Y2gsIGNvdWxkIHlvdSBwbGVhc2UgZGlzYWJsZSB0aGlzIHJuZyBm
b3IgbjkwMD8KCkluIG9tYXAzLW45MDAuZHRzIGZvciBybmcgc2hvdWxkIGJlIHN0YXR1cyA9ICJk
aXNhYmxlZCIgKGFzIFRvbnkgYWxyZWFkeQp3cm90ZSksIHNpbWlsYXJseSBsaWtlIGZvciBhZXMu
CgpUaGFua3MhCgo+IGFkYW0KPiA+Cj4gPiBUb255LAo+ID4KPiA+IENhbiB5b3UgdGVsbCBtZSB3
aGF0IGJyYW5jaCB5b3UncmUgdXNpbmc/ICBJIGFtIG5vdCBzZWVpbmcgdGhlIG5vdGUKPiA+IGJl
bG93LCBzbyBJIGFtIG5vdCBleGFjdGx5IHN1cmUgd2hhdCB2ZXJzaW9uIHRvIGJhc2UgbXkgdGVz
dGluZy4KPiA+Cj4gPiBhZGEsCj4gPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gPiAgICAgICAg
ICAgICAgICAgICogTm90ZSB0aGF0IHRoZSBzeXNjb25maWcgcmVnaXN0ZXIgbGF5b3V0IGlzIGEg
c3Vic2V0IG9mIHRoZQo+ID4gPiAgICAgICAgICAgICAgICAgICogInRpLHN5c2Mtb21hcDQiIHR5
cGUgcmVnaXN0ZXIgd2l0aCBqdXN0IHNpZGxlIGFuZCBtaWRsZSBiaXRzCgotLSAKUGFsaSBSb2jD
oXIKcGFsaS5yb2hhckBnbWFpbC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

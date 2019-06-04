Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F283834B98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bg7W59/akXvurtwVr53BVf0ucorq2ASv08PYK5fP68w=; b=OmCpjHfzgkpDMUqgLHw7JGAyIQ
	hufrfOV3MdXKieV4d+SmplsfQ8Hk939UArK+AFB5Ko8+uK3rnHuwIVpeTnws2B+eFAciAV2ej4qkU
	4DDGnY4m/acERoJsLbEFc7HfYp3hVW83Q5oE7XAOiuwOLtweyaCs4XSNzbO6WbE/OxpL448saP19F
	LPjRq3GMczkoYNgX2Z5CLWhZiorTIkPJ4bdiAK08Zb02RVKaS8JtRqS1ie42zWe169jb9dLtouqXB
	lzFHAeGZsZQC8sIKPmTTRuy/rzagtOd/gN++nP+THN9nniG/GxlCKxzVVqhey3VrC0DCoo/LRs7iW
	TPkrRFFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYB21-00063o-Rd; Tue, 04 Jun 2019 15:07:21 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYB1v-00063K-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:07:16 +0000
Received: by mail-yb1-xb44.google.com with SMTP id y2so8088285ybo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=23p9X9zBoSMLGhknvca0JK5D4XHYNE8yPKnQx10h6s8=;
 b=gMU6oJeE2lr6pV13r9GGAJIls9j+xGhfH0N/YjegqEmi2Wny9VODN1HATKDWkH98BQ
 AG/aum3OvI4aBAZptlFlJRuuWaYXbfX2a87hgMyJuI0gvZOERQUVonoFnJUiZ662yeXv
 e0tnOUb6D+BToERRPNvFqhdSzuECtMnoOHj08NROLZJjMHB9Up8n8x5Z6BZK6UqQfO+T
 8bpCwNyY/n5iEQLE8VHO9WdHjUkWKh0rArmfu0L90LvAxqvCr1ebFUMwQ+LGFUkH8pQO
 wVQXlffY2Jc8XKjEniPGRT4RL79S0+QbXDpwlFVEOVt4cbSaoM5hJaKRi2cMfeMEC6Eb
 0BpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=23p9X9zBoSMLGhknvca0JK5D4XHYNE8yPKnQx10h6s8=;
 b=XhaeuNpgDLA6DtpwhDnFgVS/4nAxxE+d+GOMlbAxwAAZMzSpAiGUKc+C2vBWTwepHu
 Jpf/Odk/AwB4J6Kn8+avDdlDQo6d0b1jNbwOBcRsOHSzmMigM1thOSeS2hNyFAQDQt6T
 0Qix+kxAksGSuV4nOrc4V3hgnN06HUQQfrNJ8eynW+p9WoghnU3QxHDCpiYTNjuc+087
 QerUXkB+NPcx8u6RHLeMa+hIPt+yVkWyCtj0DV6cNXuWyp3GJdfoT8d+/cEyYN+g4dzV
 aZJE/QzE0aTc/55IDrc+S+gz//m+xZld1qL87iHZlyoVBKVOV6chcRTEanuxerp25IxL
 aDcQ==
X-Gm-Message-State: APjAAAWyEvC3mv93aaJEaNoWdxdPIeI16i707TFN9qWZmNn62dTmBO+n
 VVxIC4akx0MusVPpEvWn7ziF76FIvCGLeXvamYg=
X-Google-Smtp-Source: APXvYqyQUaxTBUErXW8OWKn+Up7TUX7BWxL7hCytLPrZDa8lAjAfPNRBZ7nQkbkj0mdpWkAcIxEOHvjkK+ra37fLLBI=
X-Received: by 2002:a25:28e:: with SMTP id 136mr390734ybc.127.1559660833492;
 Tue, 04 Jun 2019 08:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-4-peron.clem@gmail.com>
 <20190604145430.xqufpyosetgb4bo7@core.my.home>
In-Reply-To: <20190604145430.xqufpyosetgb4bo7@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 4 Jun 2019 17:07:02 +0200
Message-ID: <CAJiuCceqATLiDjpNLTq+gOhUHun40udJdpXYirn=Z=GVQLQzaw@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] media: rc: sunxi: Add A31 compatible
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_080715_104470_BBF8483A 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIDQgSnVuIDIwMTkgYXQgMTY6NTQsIE9uZMWZZWogSmlybWFuIDxtZWdvdXNA
bWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAyOCwgMjAxOSBhdCAwNjoxNDozMVBN
ICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBbGx3aW5lciBBMzEgaGFzIGEgZGlm
ZmVyZW50IG1lbW9yeSBtYXBwaW5nIHNvIGFkZCB0aGUgY29tcGF0aWJsZQo+ID4gd2Ugd2lsbCBu
ZWVkIGl0IGxhdGVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNp
ci5jIHwgOSArKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgYi9kcml2ZXJz
L21lZGlhL3JjL3N1bnhpLWNpci5jCj4gPiBpbmRleCBkMDJkY2I2ZmQwYTUuLjA1MDRlYmZjODMx
ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKPiA+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKPiA+IEBAIC0zNDMsNiArMzQzLDExIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgc3VueGlfaXJfcXVpcmtzIHN1bjVpX2ExM19pcl9xdWlya3MgPSB7
Cj4gPiAgICAgICAuZmlmb19zaXplID0gNjQsCj4gPiAgfTsKPiA+Cj4gPiArc3RhdGljIGNvbnN0
IHN0cnVjdCBzdW54aV9pcl9xdWlya3Mgc3VuNmlfYTMxX2lyX3F1aXJrcyA9IHsKPiA+ICsgICAg
IC5oYXNfcmVzZXQgPSB0cnVlLAo+ID4gKyAgICAgLmZpZm9fc2l6ZSA9IDY0LAo+ID4gK307Cj4g
PiArCj4KPiBCVFcsIEg2IEJTUCB1c2VzIEZJRk8gc2l6ZSA0MDoKPgo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9vcmFuZ2VwaS14dW5sb25nL09yYW5nZVBpSDZfTGludXg0XzkvYmxvYi9tYXN0ZXIvZHJp
dmVycy9tZWRpYS9yYy9zdW54aS1pci1kZXYuYyNMMjkwCj4KPiBIYXZlIHlvdSB0cmllZCBmaWxs
aW5nIHRoZSBmaWZvIHdpdGggb3ZlciA0MCB3b3JkcyBvbiBINiwgdG8gc2VlIGlmIGl0IHdvcmtz
PwpObyBJIGRpZG4ndCB0cnkgdGhpcywgYnV0IEkgdHJ1c3QgbW9yZSB0aGUgdXNlciBtYW51YWwg
dGhhbiB0aGUgZHJpdmVyLgpBbmQgSSBkb24ndCBzZWUgd2h5IHRoZXkgd291bGQgaGF2ZSByZWR1
Y2UgdGhlIGZpZm8gc2l6ZSBpbiB0aGUgbmV3IGdlbmVyYXRpb24uCkFueXdheSwgSSB3aWxsIGJl
IGFibGUgdG8gdGVzdCB0aGF0IGF0IHRoZSBlbmQgb2YgdGhlIHdlZWsuCgpSZWdhcmRzLApDbMOp
bWVudAoKPiBJIGtub3cgaXQncyBkb2N1bW1lbnRlZCBhcyBoYXZpbmcgNjQgd29yZHMgaW4gdGhl
IG1hbnVhbCwgc28gbWF5YmUgQWxsd2luZXIKPiBqdXN0IGRpZG4ndCBjYXJlIGVub3VnaCB0byBt
YWtlIHRoZSBkcml2ZXIgY29uZmlndXJhYmxlLCBhbmQgdGhlIEg2Cj4gRklGTyByZWFsbHkgaGFz
IHRoYXQgZGVwdGguCj4KPiByZWdhcmRzLAo+ICAgICAgICAgby4KPgo+ID4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bnhpX2lyX21hdGNoW10gPSB7Cj4gPiAgICAgICB7Cj4g
PiAgICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40aS1hMTAtaXIiLAo+
ID4gQEAgLTM1Miw2ICszNTcsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
c3VueGlfaXJfbWF0Y2hbXSA9IHsKPiA+ICAgICAgICAgICAgICAgLmNvbXBhdGlibGUgPSAiYWxs
d2lubmVyLHN1bjVpLWExMy1pciIsCj4gPiAgICAgICAgICAgICAgIC5kYXRhID0gJnN1bjVpX2Ex
M19pcl9xdWlya3MsCj4gPiAgICAgICB9LAo+ID4gKyAgICAgewo+ID4gKyAgICAgICAgICAgICAu
Y29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIiwKPiA+ICsgICAgICAgICAgICAg
LmRhdGEgPSAmc3VuNmlfYTMxX2lyX3F1aXJrcywKPiA+ICsgICAgIH0sCj4gPiAgICAgICB7fQo+
ID4gIH07Cj4gPiAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VueGlfaXJfbWF0Y2gpOwo+ID4g
LS0KPiA+IDIuMjAuMQo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

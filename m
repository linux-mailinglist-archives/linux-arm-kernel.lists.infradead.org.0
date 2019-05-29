Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E902E15E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbQaUWoy4w5GiMv+IO2DH+6hOGTTll0KvjLT48Umhfg=; b=cKb5tDCNj0ILVJ
	xCgAw8c5I4uHmZi9WTWdAQK4RjQ7Wmw2B4KFHl/Fst6+1z7J+boNxKqwIYqZquQx7RwSQuq+p94LP
	npGUp9dqsL2LmXTj9K8cDPOZrFJsURtGopS7g3gj9Q1Jdy6ztO8TspQ2ipSlZ6aE7TJrg4yLRS7kF
	EbcFsEMiDeeq9UKWtIUlEPxn976eIHy19TddHnP03AzuwASxP5bTNz04M/C5ktth2nZ4SvJ3+1Aw0
	enn2TWiZFyo7iMq9ULhgqjqV8yJJ+FemGKpXkU5za0yo3ZLuWQaIhkv70qbnv3VteKjhqMenKEru0
	eEpFnOr3pDFFdfQb6nig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0io-0005ay-29; Wed, 29 May 2019 15:42:34 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0ie-0005aW-Tg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:42:26 +0000
Received: by mail-it1-f193.google.com with SMTP id i63so28770ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/j7gWc8iISYWxGlnTZ+LY1ElrHO5aM1K4ex0tPbofbE=;
 b=tiX7US3QrSbFFBfwu8h4ADERFGok6j2nRUf1orpQmFzRGoVu+HBCDybjDPylRFSd23
 mnSfCYpPPdtVcqV9qz4I2ORQReBQc3GAGCYn8ArEe12ME5uQHLOLhHVP/jxIKD+9/azR
 ipFIW1wHnVn+D7dijDqDhucYC41vqFMs47tVJC3B2Xd+Iaoa0SxVhxztRmh3f1FRTkss
 0pQl9/0J3JhGhcffCX1BeIMOgEbDiJbrmHCeYR53o0eLOXCxgSNIEcvDJbo/UTNmZEfQ
 i+QLH9hmmaICz2JvquavbB1fpSkhY+961MACp6OYwa/a7qtkKoIBSa1kJeafrva+fCf7
 aPVw==
X-Gm-Message-State: APjAAAV00UKeDalh4yRqP/MX0aDKjSOvEWEg8dMWwGSHKEOfP798mLRy
 LN2uuW+Lom8lM6FsH5EYXiwSGyGXdeRq+CiHBcDW/g==
X-Google-Smtp-Source: APXvYqxx5oCnY0ckeXgGB+mbjowC9PFLcxwUeTiuKxwAnSfLcvoimR2T5iJwjxqjFjmj4DF/QeOL++us1RCXTMjmKUU=
X-Received: by 2002:a24:6583:: with SMTP id u125mr7911125itb.168.1559144543170; 
 Wed, 29 May 2019 08:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <20190529153255.40038-1-tomeu.vizoso@collabora.com>
 <CAJiuCccFG1SATp7QuSOi11MmbjmgX0ZHsTv=4zuXqXMG+=-7Dw@mail.gmail.com>
In-Reply-To: <CAJiuCccFG1SATp7QuSOi11MmbjmgX0ZHsTv=4zuXqXMG+=-7Dw@mail.gmail.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Wed, 29 May 2019 17:42:12 +0200
Message-ID: <CAAObsKCWJmx-TKyiHFvUaDtGOpz8SXNOBFK3AbmUWW7KprD2Rw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Add GPU operating points for H6
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_084224_962180_07421E45 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBNYXkgMjAxOSBhdCAxNzozNywgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBUb21ldSwKPgo+IE9uIFdlZCwgMjkgTWF5IDIwMTkg
YXQgMTc6MzMsIFRvbWV1IFZpem9zbyA8dG9tZXUudml6b3NvQGNvbGxhYm9yYS5jb20+IHdyb3Rl
Ogo+ID4KPiA+IFRoZSBHUFUgZHJpdmVyIG5lZWRzIHRoZW0gdG8gY2hhbmdlIHRoZSBjbG9jayBm
cmVxdWVuY3kgYW5kIHJlZ3VsYXRvcgo+ID4gdm9sdGFnZSBkZXBlbmRpbmcgb24gdGhlIGxvYWQu
Cj4KPiBBcyByZXF1ZXN0ZWQgYnkgTWF4aW1lLCBJIGhhdmUgZHJvcHBlZCB0aGVzZSBPUFAgdGFi
bGUgYXMgSXQncyB0YWtlbgo+IGZyb20gdmVuZG9yIGFuZCB1bnRlc3RlZCB3aXRoIFBhbmZyb3N0
Lgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNjAzNzQvCgpP
aywgZ3Vlc3MgdGhpcyBzZXJpZXMgc2hvdWxkIHdhaXQgdGhlbiB1bnRpbCB3ZSBjYW4gcnVuIFBh
bmZyb3N0IG9uIGl0CmFuZCBjaGVjayBob3cgRFZGUyBpcyB3b3JraW5nLgoKVGhhbmtzLAoKVG9t
ZXUKCj4gUmVnYXJkcywKPiBDbMOpbWVudAo+Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVG9tZXUg
Vml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KPiA+IENjOiBDbMOpbWVudCBQw6ly
b24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4KPiA+IC0tLQo+ID4KPiA+IEZlZWwgZnJlZSB0
byBwaWNrIHVwIHRoaXMgcGF0Y2ggaWYgeW91IGFyZSBnb2luZyB0byBrZWVwIHB1c2hpbmcgdGhp
cwo+ID4gc2VyaWVzIGZvcndhcmQuCj4gPgo+ID4gVGhhbmtzLAo+ID4KPiA+IFRvbWV1Cj4gPiAt
LS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDY2
ICsrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDY2IGluc2VydGlvbnMo
KykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aQo+ID4gaW5kZXggNmFhZDA2MDk1YzQwLi5kZWNmN2I1NmUyZGYgMTAwNjQ0Cj4gPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IEBAIC0xNTcsNiAr
MTU3LDcxIEBACj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBhbGx3aW5uZXIsc3JhbSA9IDwm
dmVfc3JhbSAxPjsKPiA+ICAgICAgICAgICAgICAgICB9Owo+ID4KPiA+ICsgICAgICAgICAgICAg
ICBncHVfb3BwX3RhYmxlOiBvcHAtdGFibGUyIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gPiArCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBvcHAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IG9wcC1oeiA9IC9iaXRzLyA2NCA8NzU2MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDwxMDQwMDAwPjsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAwMSB7Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NjI0MDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw5
NTAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIG9wcDAyIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDw1NzYwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvcHAtbWljcm92b2x0ID0gPDkzMDAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwMDMgewo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDU0MDAwMDAwMD47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8OTEwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBvcHAwNCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9
IC9iaXRzLyA2NCA8NTA0MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgb3BwLW1pY3Jvdm9sdCA9IDw4OTAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
fTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcDA1IHsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDw0NTYwMDAwMDA+Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDg3MDAwMD47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
b3BwMDYgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0
cy8gNjQgPDQzMjAwMDAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9w
cC1taWNyb3ZvbHQgPSA8ODYwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICBvcHAwNyB7Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NDIwMDAwMDAwPjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw4NTAwMDA+Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcDA4
IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0
IDw0MDgwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWlj
cm92b2x0ID0gPDg0MDAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgb3BwMDkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDM4NDAwMDAwMD47Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8ODMwMDAwPjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAxMCB7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MzYw
MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9s
dCA9IDw4MjAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIG9wcDExIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwzMzYwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgxMDAwMD47Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICB9Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwMTIgewo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDMxMjAwMDAw
MD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8
ODEwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBvcHAxMyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9w
cC1oeiA9IC9iaXRzLyA2NCA8MjY0MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw4MTAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcDE0IHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwyMTYwMDAwMDA+Owo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgxMDAw
MD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAgICAgICAgIH07
Cj4gPiArCj4gPiAgICAgICAgICAgICAgICAgZ3B1OiBncHVAMTgwMDAwMCB7Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtbWFsaSIs
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImFybSxtYWxpLXQ3MjAi
Owo+ID4gQEAgLTE2OCw2ICsyMzMsNyBAQAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZjY3UgQ0xLX0dQVT4sIDwmY2N1IENMS19CVVNfR1BVPjsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImNvcmUiLCAiYnVzIjsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfR1BVPjsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmdwdV9vcHBfdGFibGU+Owo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICAgICAgICAg
ICAgICAgICB9Owo+ID4KPiA+IC0tCj4gPiAyLjIwLjEKPiA+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C4619FC65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 20:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=422JIyedPjeFWqVP6O435amAHKDGHDOur7FVQfN/nQI=; b=ncUVF0dqFu3dCt
	0d3vQXET3OVcinX4d5IcU2e3k+1L+6oBPY1+7+JmLcW+cWT6s+YWt82LtypHKzV01voGkyXg3z3ko
	MNqSr92tBF58Yrt65JGqAkhf6o8t2QvUjoTDI+KTSXyWTUkbMn7NP3/Ejh9JlcJyJlnyChoUyae88
	KPG3Ca8+j7GEH9+MGgOvWHp/WItBfiMvUYf2T8FSKitzcLPaJC/l6wtETg4lZX4fMmVj6wssCUGYt
	EH2221a+uMGYydXRkZw/fhL2kN154Of/Pivqle1GYscazNz9h83vnmXVl7dqkQ9fuHvc/F6mSRXh+
	wv8nN0K1+KMvxmZOj+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLW6G-0006Po-5D; Mon, 06 Apr 2020 18:03:56 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLW68-0006Ov-13
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 18:03:49 +0000
Received: by mail-il1-x141.google.com with SMTP id k29so413023ilg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3LY5VeGYnWEgSR/Pz3b1gospRiVVwkBxzjMdAq8KEH0=;
 b=DviDx6kcod6zhCYaVgHB68jWRCIHmauXkn0qel17bCPlzhf3b069PYzbAfgJV4kPpQ
 EW3e0/VaO2c59Rq4n2C378XEL324cIV80rb3hlugm+X55/5FFpKWg+esg/JTC73dNGz7
 PAcKnnbx1dOCBhI+vC24KOH+JJBhBSiwtQaH5cVm5RkkKf4NyDQ48U0Y1lKnW1B5lrfb
 xyZzR5cUIJ5n/v2wUajvD2ZiwGDSwWlASB1gyhL9i+qQm1OOBKKLHHOC0SxvPAgjr0G2
 XwJmlvwdryhWyBmFPexZszn1zLi1sLH7YAEyVn5Luqhyd5dBTveUMVg+vPt1R5zqR49k
 6gjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3LY5VeGYnWEgSR/Pz3b1gospRiVVwkBxzjMdAq8KEH0=;
 b=pQNRLQM8xJJlfl6oBpU0efywYB4J7xX79n+7qcs04ksJK8yugcVzmQoB6XaLEg2IZM
 +QQJ8WM2Jbmu+4bZizqwk2iBiQ0LK2qiTZvCKWqES0bD5vXN2YDL6wb06s6cpgWtKGCU
 6Sl7ulFocY/a4lJJwtaR3iJaTqkiHXAxOOWqylTv0cXFCMq38cxhRcOWcIy/QHsdrCJM
 zvrSNXlKHfjhE0j0oGJCN3F4Stoj5Gb5FgS5yT8spYPD+aRReZGCU7Eg0Vmpkhhn9j7j
 2N+sQBx56K04pzj+8zalLkDXU1TfKfeBzTOKBV6DjGzPBo8AoVlY3I1BTMszRqWZ9q5J
 YtjA==
X-Gm-Message-State: AGi0PuY/Tl3gQoHHWyunmV+zh+5YGOT8IgJ/arKhmgthaO23xz9RG+Sn
 KMGFMtgvOMQKx21zXs8kKebTYn88nQWKnk8oQEM=
X-Google-Smtp-Source: APiQypLVNaXxCOgsWF52COqW2pQQQ3sR2dVnqs5kVI6zorVvktZclg6R2CBTYUFEywvnTHs3vVkCUYJZ0wrUdjKBx7I=
X-Received: by 2002:a05:6e02:c8f:: with SMTP id
 b15mr504343ile.35.1586196225471; 
 Mon, 06 Apr 2020 11:03:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-4-peron.clem@gmail.com>
 <20200406081412.ubdogkjknlofynei@gilmour.lan>
In-Reply-To: <20200406081412.ubdogkjknlofynei@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 6 Apr 2020 20:03:34 +0200
Message-ID: <CAJiuCcdTQHGhZ=7Z_Du-zcZ_OWdGO1iEpYOBD4z=eNDYzMA5tg@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] arm64: dts: allwinner: h6: Add CPU Operating
 Performance Points table
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_110348_075108_33046652 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree <devicetree@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDYgQXByIDIwMjAgYXQgMTA6MTQsIE1heGltZSBSaXBhcmQgPG1heGltZUBj
ZXJuby50ZWNoPiB3cm90ZToKPgo+IE9uIFN1biwgQXByIDA1LCAyMDIwIGF0IDA3OjM1OjU3UE0g
KzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1l
Z291c0BtZWdvdXMuY29tPgo+ID4KPiA+IEFkZCBhbiBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9p
bnRzIHRhYmxlIGZvciB0aGUgQ1BVIGNvcmVzIHRvCj4gPiBlbmFibGUgRHluYW1pYyBWb2x0YWdl
ICYgRnJlcXVlbmN5IFNjYWxpbmcgb24gdGhlIEg2Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE9u
ZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1l
bnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaSB8IDEyMSArKysrKysrKysrKysrKysr
KysKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAg
IDQgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTI1IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1v
cHAuZHRzaQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYtY3B1LW9wcC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LWNwdS1vcHAuZHRzaQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4
IDAwMDAwMDAwMDAwMC4uOGMxZTQxM2M2YWY5Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCj4gPiBA
QCAtMCwwICsxLDEyMSBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCsgT1IgTUlUKQo+ID4gKy8vIENvcHlyaWdodCAoQykgMjAyMCBPbmRyZWogSmlybWFuIDxtZWdv
dXNAbWVnb3VzLmNvbT4KPiA+ICsvLyBDb3B5cmlnaHQgKEMpIDIwMjAgQ2zDqW1lbnQgUMOpcm9u
IDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ICsKPiA+ICsvIHsKPiA+ICsgICAgIGNwdTBfb3Bw
X3RhYmxlOiBvcHBfdGFibGUwIHsKPgo+IE5vZGUgbmFtZXMgc2hvdWxkbid0IGhhdmUgYW4gdW5k
ZXJzY29yZSwgdGhpcyB3aWxsIHRyaWdnZXIgYSBEVEMKPiB3YXJuaW5nLgo+Cj4gPiArICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1vcGVyYXRpbmctcG9pbnRz
IjsKPiA+ICsgICAgICAgICAgICAgbnZtZW0tY2VsbHMgPSA8JnNwZWVkYmluX2VmdXNlPjsKPiA+
ICsgICAgICAgICAgICAgb3BwLXNoYXJlZDsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgb3BwQDQ4
MDAwMDAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbGF0ZW5jeS1ucyA9IDwy
NDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCj4gPiArICAgICAgICAgICAgICAgICAgICAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDw0ODAwMDAwMDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDg4MDAwMD47Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8ODIwMDAwPjsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw4MjAwMDA+Owo+ID4gKyAgICAgICAgICAg
ICB9Owo+Cj4gQW5kIHNpbWlsYXJseSwgaWYgeW91IGhhdmUgYSB1bml0LWFkZHJlc3MgKHRoZSBw
YXJ0IGFmdGVyIEApLCB5b3UKPiBzaG91bGQgaGF2ZSBhIG1hdGNoaW5nIHJlZyBwcm9wZXJ0eS4g
WW91IHNob3VsZCB1c2UgYSBkYXNoIGluc3RlYWQuCj4KPiA+ICsgICAgICAgICAgICAgb3BwQDcy
MDAwMDAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbGF0ZW5jeS1ucyA9IDwy
NDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCj4gPiArICAgICAgICAgICAgICAgICAgICAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDw3MjAwMDAwMDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDg4MDAwMD47Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8ODIwMDAwPjsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw4MjAwMDA+Owo+ID4gKyAgICAgICAgICAg
ICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBvcHBAODE2MDAwMDAwIHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlv
ZHMgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDgxNjAw
MDAwMD47Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVl
ZDAgPSA8ODgwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0LXNw
ZWVkMSA9IDw4MjAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQt
c3BlZWQyID0gPDgyMDAwMD47Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAg
ICAgICAgIG9wcEA4ODgwMDAwMDAgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxh
dGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8ODg4MDAwMDAwPjsKPiA+ICsKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDgyMDAwMD47Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8ODIwMDAwPjsKPiA+
ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgb3BwQDEwODAwMDAwMDAg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0Pjsg
LyogOCAzMmsgcGVyaW9kcyAqLwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9i
aXRzLyA2NCA8MTA4MDAwMDAwMD47Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgb3Bw
LW1pY3Jvdm9sdC1zcGVlZDAgPSA8OTQwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBv
cHAtbWljcm92b2x0LXNwZWVkMSA9IDw4ODAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDg4MDAwMD47Cj4gPiArICAgICAgICAgICAgIH07Cj4g
PiArCj4gPiArICAgICAgICAgICAgIG9wcEAxMzIwMDAwMDAwIHsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8K
PiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8gNjQgPDEzMjAwMDAwMDA+
Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0g
PDEwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQx
ID0gPDk0MDAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVl
ZDIgPSA8OTQwMDAwPjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAg
ICAgb3BwQDE0ODgwMDAwMDAgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVu
Y3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTQ4ODAwMDAwMD47Cj4gPiArCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA2MDAwMD47Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTAwMDAwMD47Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8MTAwMDAwMD47Cj4g
PiArICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgIG9wcEAxNjA4MDAwMDAw
IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47
IC8qIDggMzJrIHBlcmlvZHMgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAv
Yml0cy8gNjQgPDE2MDgwMDAwMDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9w
cC1taWNyb3ZvbHQtc3BlZWQwID0gPDEwOTAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDEwMzAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDEwMzAwMDA+Owo+ID4gKyAgICAgICAgICAgICB9
Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBvcHBAMTcwNDAwMDAwMCB7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2Rz
ICovCj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwxNzA0MDAw
MDAwPjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0LXNwZWVk
MCA9IDwxMTIwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0LXNw
ZWVkMSA9IDwxMDYwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0
LXNwZWVkMiA9IDwxMDYwMDAwPjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAg
ICAgICAgICAgb3BwQDE4MDAwMDAwMDAgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
LWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTgwMDAwMDAwMD47Cj4gPiArCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTE2MDAwMD47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEwMDAwMD47
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8MTEwMDAw
MD47Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArICAgICB9Owo+ID4gK307Cj4gPiArCj4gPiAr
JmNwdTAgewo+ID4gKyAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+
Owo+ID4gKyAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gPiArfTsKPiA+ICsKPiA+ICsmY3B1
MSB7Cj4gPiArICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47Cj4g
PiArICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZjcHUyIHsK
PiA+ICsgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3RhYmxlPjsKPiA+ICsg
ICAgICNjb29saW5nLWNlbGxzID0gPDI+Owo+ID4gK307Cj4gPiArCj4gPiArJmNwdTMgewo+ID4g
KyAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+ID4gKyAgICAg
I2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gPiArfTsKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiBpbmRleCBlMGRkMDc1N2JlMGIuLjZiN2FmODU4
NjE0YSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQo+ID4gQEAgLTI1Myw2ICsyNTMsMTAgQEAKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1j
ZWxscyA9IDwxPjsKPiA+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgc3BlZWRiaW5fZWZ1c2U6
IHNwZWVkQDFjIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDFj
IDB4ND47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsKPgo+IFlvdSBzaG91bGQg
b3JkZXIgdGhpcyBieSBhZGRyZXNzLCBzbyBhZnRlciB0aGUgVEhTIGNhbGlicmF0aW9uLiBBbHNv
LAo+IHVzaW5nIGEgbGVzcyBnZW5lcmljIG5vZGUgbmFtZSB0aGFuICJzcGVlZCIgd291bGQgYmUg
Z3JlYXQuIFdoYXQgYWJvdXQKPiBzb2MtYmluID8KCkluZGVlZCBpdCdzIHRvbyBnZW5lcmljLgpJ
IHdpbGwga2VlcCBjb2hlcmVuY3kgd2l0aCBpLk1YOCBhbmQgdXNlICJjcHVfc3BlZWRfZ3JhZGUi
CgpUaGFua3MgZm9yIHRoZSByZXZpZXcsCkNsZW1lbnQKCj4KPiBNYXhpbWUKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

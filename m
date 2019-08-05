Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2518F81906
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6b9VDWOo+7690ITKF0CSENsx0QgXk5g6TbkcHiKuspw=; b=lsEylcO4AGFXVqVH0XQLXXcnrj
	4YOZ3ToZyilJ0pOpHY9YSybLELKqGpXzkugWC5WeWjQ9GXfRmz09MdCcilM7HLSBM2171pA5iFpu2
	p2w0BUJ5qWYTIlrdBnqgRSxKp1CJa1Rm6QM5wiiQyE5wBCGLLRAeKK9v+ptHiCUeORmx8fL3g91dc
	Ekjm0Eajez9L04L0y3ibEO7Ln6gQzdYeNnLcInkuwE/nPRF41c8C3zSlTjBtn3qrs5OgFatTsjMUO
	VxqPwLFP+cYFrNuCw/CxvPv8B2MerB5iK32rrUObeUMREKQLfSZPtW+L68crqlX4zqBskbbC8nSsq
	6c45fzQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubvR-0003tJ-5d; Mon, 05 Aug 2019 12:17:17 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubus-0003Z9-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:16:44 +0000
Received: by mail-yw1-xc43.google.com with SMTP id z197so29422863ywd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=2owfBemMNzwqCr4e/gAfcBxKqGNq66XIVWka4Mym5jY=;
 b=SFYNAWN7q1kCrntsfHCd/5Mo7YDYTYh2CllkkT2KzjFhkLSrLeYDlfv+vAb9KgjMDT
 6Hy7ogRclX8fMxZDBB7Nzl/j60f88PQIZRmX1s4Con3eiISSybd+c5P27xZVe/sj9lDF
 UDvhHIwCCPhK5RkD4FtECE33nJHjTcog1BuaHp8idReWx6QSTQoVOlsqmTZ7UVWFJth4
 eHCDCZxgqxPw+XYEeHVLwPngS1W/9RLEeFdar8F0cQ0Ia1l7XSj8fVKhtoJosTrAs2Z6
 IBFxKzkRuPgJHwltbMLr2m5oRk9k+LjUwU+VjWUiLcVnl+KcBaIkHW6Ebp2/xcGPq51K
 FORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=2owfBemMNzwqCr4e/gAfcBxKqGNq66XIVWka4Mym5jY=;
 b=ucKoqGRvt1ycNMIJzNjkKewUPWevZDvDnksnNT83BM8VrjGVZ+UjJwz/rvr7Q9itQG
 keFZ/cN7xC6n+JS6Uxa6d0xMX6L4yhj3BgpREb/IezgwG9y2vJH68poQ0Ux0kOTCDOIR
 6h5soILCfCmnheZyBY9R9ppo/jl7NC3GS+PJUp1QdXeXmPzaNKV2/wV4Bnf/y0+g47Fv
 OBeqUu9XXOJpYL2UQQPadIRnoH6NmvMs8Vpb+v2RL2FsqnhtMnGO/ui+pTKpRbI8AYwC
 MzI1EW8ycB25ew+SPfmOGg0g1Drz9H6RvnBVubenGcpkMPbpCkxqb+xnY3xVhzwVZMAr
 eHpw==
X-Gm-Message-State: APjAAAUU6FX4ytboBXwWtv8XsjA10Qs8rj2Se/OoGMJyqDWdH5FwyRRf
 wHDXClizzMdofbzZCNPMoA7iOKlpdK2x1C8e0RU=
X-Google-Smtp-Source: APXvYqzVBhE1astHQr64QTNViz/dNyr7vRGzOPPbBam+bd9DR6XH/cv/8ANa7WDEPPUmj6ThBXsw0wDLPy2SGFUCyKg=
X-Received: by 2002:a81:79d2:: with SMTP id
 u201mr86194722ywc.457.1565007400871; 
 Mon, 05 Aug 2019 05:16:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
 <20190805104529.z3mex3m2tss7lzlr@core.my.home>
 <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
 <20190805111037.76vmanzcurffpbdf@core.my.home>
In-Reply-To: <20190805111037.76vmanzcurffpbdf@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 5 Aug 2019 14:16:29 +0200
Message-ID: <CAJiuCcevAHm1_P8USuP1TxCDKH=eJ_CA0SC=sfZP=v03p5y_Yw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
To: megous@megous.com, Chen-Yu Tsai <wens@csie.org>, 
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-rtc@vger.kernel.org, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_051643_009766_F89D46F1 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDUgQXVnIDIwMTkgYXQgMTM6MTAsIE9uZMWZZWogSmlybWFuIDxtZWdvdXNA
bWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwNjo1NDoxN1BN
ICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDY6
NDUgUE0gT25kxZllaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+ID4KW3Nu
aXBdCj4KPiBJbnRlcmVzdGluZy4gOikgSSBoYXZlIHRoZSBCU1AgSSB3YXMgdXNpbmcgc2F2ZWQg
aGVyZToKPgo+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL3J0Yy9y
dGMtc3VueGkuYz9oPWg2LTQuOS1ic3AjbjY0OQo+Cj4gSXQncyBiYXNlZCBvZiA0LjkuMTE5Cj4K
PiBodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L2xvZy8/aD1oNi00LjktYnNwCj4KPiBJIGRv
bid0IHJlbWVtYmVyIHdoZXJlIEkgZm91bmQgaXQuIEJ1dCBJIGltcG9ydGVkIGl0IGZhaXJseSBy
ZWNlbnRseSwgYW5kCj4gdGhlIGNvZGUgeW91IHBvaW50ZWQgdG8gbG9va3MgbGlrZSBhbiBvbGRl
ciB2ZXJzaW9uIHRoYXQgSSBjYW4gZm91bmQgaW4gc29tZQo+IGJldGEgSDYgQlNQLCB0aGF0IEkg
aW1wb3J0ZWQgd2F5IGVhcmxpZXIgYW5kIGlzIGJhc2VkIG9uIDQuOS41NjoKClRoZSBsYXN0IHJl
Y2VudCB0aGF0IEkga25vdyBpcyBmcm9tIE9yYW5nZVBpIEg2IGJ1dCBpdCdzIGJhc2VkIG9uIDQu
OS4xMTguCgpodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9PcmFuZ2VQaUg2X0xp
bnV4NF85CgpSZWdhcmRzLApDbMOpbWVudAoKPgo+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGlu
dXgvdHJlZS9kcml2ZXJzL3J0Yy9ydGMtc3VueGkuYz9oPWxpbnV4LWg2Cj4gaHR0cHM6Ly9tZWdv
dXMuY29tL2dpdC9saW51eC9sb2cvP2g9bGludXgtaDYKPgo+IEhtbSwgYXJjaGVvbG9neS4gOikK
Pgo+ID4gPiBGb3Igb2xkZXIgQlNQcywgdGhlIGluaXQgc2VxdWVuY2UgbG9va2VkIGxpa2UgdGhp
czoKPiA+ID4KPiA+ID4gNDgyICAgICAgICAgLyoKPiA+ID4gNDgzICAgICAgICAgICogU3RlcDE6
IHNlbGVjdCBSVEMgY2xvY2sgc291cmNlCj4gPiA+IDQ4NCAgICAgICAgICAqLwo+ID4gPiA0ODUg
ICAgICAgICB0bXBfZGF0YSA9IHN1bnhpX3J0Y19yZWFkKFNVTlhJX0xPU0NfQ1RSTF9SRUcpOwo+
ID4gPiA0ODYgICAgICAgICB0bXBfZGF0YSAmPSAoflJFR19DTEszMktfQVVUT19TV1RfRU4pOwo+
ID4gPiA0ODcgICAgICAgICB0bXBfZGF0YSB8PSAoUlRDX1NPVVJDRV9FWFRFUk5BTCB8IFJFR19M
T1NDQ1RSTF9NQUdJQyk7Cj4gPiA+IDQ4OCAgICAgICAgIHRtcF9kYXRhIHw9IChFWFRfTE9TQ19H
U00pOwo+ID4gPiA0ODkgICAgICAgICBzdW54aV9ydGNfd3JpdGUodG1wX2RhdGEsIFNVTlhJX0xP
U0NfQ1RSTF9SRUcpOwo+ID4gPiA0OTAKPiA+ID4KPiA+ID4gRVhUX0xPU0NfR1NNIGhhcyB2YWx1
ZXMgNCB2YWx1ZXMgZnJvbSBsb3cgdG8gaGlnaCwgYW5kIEkgZ3Vlc3MgaXQgY29uZmlndXJlcwo+
ID4gPiBnYWluIGZvciB0aGUgb3NjaWxsYXRvcidzIGFtcGxpZmllciBpbiB0aGUgZmVlZGJhY2sg
bG9vcCBvZiB0aGUgY2lyY3VpdC4KPiA+ID4KPiA+ID4gU28gdGhlIG5ldyBjb2RlLCBmb3Igc29t
ZSByZWFzb24gY2hhbmdlZCBmcm9tIHNpbmdsZSB3cml0ZSB0byBzZXF1ZW5jZQo+ID4gPiBvZiBp
bmRpdmlkdWFsIHdyaXRlcy9jb25maWcgc3RlcHM6Cj4gPiA+Cj4gPiA+IDEpIGRpc2FibGUgYXV0
by1zd2l0Y2ggYW5kIGVuYWJsZSBhdXRvLXN3aXRjaCBieXBhc3MKPiA+ID4gMikgc2VsZWN0IFJU
QyBjbG9jayBzb3VyY2UgKHRvIExPU0MpCj4gPiA+ICAgKHdhaXQpCj4gPgo+ID4gTWF5YmUgaXQn
cyBwb3NzaWJsZSB0byBnbGl0Y2ggaWYgdGhlc2UgdHdvIGFyZSBjb21iaW5lZD8KPgo+IFRoYXQn
cyB3aGF0IEkgdGhvdWdodCB0b28uIE9yIHRoZSBwcm9ncmFtbWVyIHRob3VnaHQgc28sIGFuZCB3
YXMganVzdAo+IHByb2dyYW1taW5nIGRlZmVuc2l2ZWx5LCBhbmQgdGhlcmUncyBubyByZWFsIHBy
b2JsZW0gaW4gdGhlIHByYWN0aWNlLgo+Cj4gQnV0IHRoYXQgc3BlY2lmaWMgZGVsYXkoKSBzZWVt
cyBsaWtlIHNvbWVvbmUgdHJ5aW5nIHRvIHNvbHZlIGEgcmVhbCBpc3N1ZS4gT2YKPiBjb3Vyc2Ug
dGhlcmUncyBubyBrbm93aW5nIGlmIGl0IHdhcyBvbiBINiBvciBvbiBzb21lIG90aGVyIFNvQy4K
Pgo+IHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPgo+ID4gPiAzKSBjb25maWd1cmUgZ2FpbiBv
biB0aGUgTE9TQwo+ID4gPgo+ID4gPiByZWdhcmRzLAo+ID4gPiAgICAgICAgIG8uCj4gPiA+Cj4g
PiA+ID4gQ2hlbll1Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3Nh
Z2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4
LXN1bnhpIiBncm91cC4KPiA+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBz
dG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54
aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gPiBUbyB2aWV3IHRoaXMgZGlzY3Vz
c2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQv
bGludXgtc3VueGkvMjAxOTA4MDUxMDQ1MjkuejNtZXgzbTJ0c3M3bHpsciU0MGNvcmUubXkuaG9t
ZS4KPgo+IC0tCj4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vi
c2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+IFRvIHVu
c3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20g
aXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBz
LmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczov
L2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgtc3VueGkvMjAxOTA4MDUxMTEwMzcuNzZ2
bWFuemN1cmZmcGJkZiU0MGNvcmUubXkuaG9tZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

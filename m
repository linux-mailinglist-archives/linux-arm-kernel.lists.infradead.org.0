Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF2E1C4732
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZVsPTnMTwmo84WxQ+gxn/5BMZzKTf1aontwSlEMk6I=; b=ey1h3Mhreu3+P5
	O2nAkfTQZcYb9KMZGoomK2v7Y6wfxonbvp53k/qC5vH8scxhC44mEi+S5rd2YfhSzNDUpr4/pUeh6
	CDLiL6apT3UKF5Puv/4ww77349gk9q5lJIzJe+Lthti5LC3j9OQ7AT5nWOc+A6bd3mvXyxKDGSuuc
	BgPvj1xjfj8+Xvld2W7WS1uZ4vSsPn/RKIZ9u2MwdTUEPW3IBPJLBW08S+oem6rGBKdevfmoyOW2h
	0dXWq+L50dMVZgpVnltT1XdgZKYrwsdSfB8UR8mT+arrZQur+NP144Pxzn1DbQcTxCwFnRvQPx2qB
	a5rlitJ270jbcoP7wbJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgzs-0005cl-VD; Mon, 04 May 2020 19:43:24 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgzl-0005bI-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:43:20 +0000
Received: by mail-il1-x143.google.com with SMTP id u189so30499ilc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 12:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hToGumS7+rYCBAzwPejy/9G9W5aA7qrCKK0guqtnFic=;
 b=SjHLuiCKKUrEzDejZi1OKuJXwdceb+8LNelIll16QEO5qNEjAPQAAsvUxeDszeDR/N
 85+LZzWTsXE8zTa4pkn2s41g8hVSUlTYqbPn3WiM/h785rym9Jxa2Zugy26zWHlmEEWH
 8bmLR8SahzhouwKRk/8mEVPY/9kafpSmS4nBCBPYAeq63JDA3MLxr0THEWQF0//zgRAJ
 d9KQvHnphi+qyo79q9vQ71zi3ww8qqR+RX0+7KIGTtVAoQMsujxB3B/hGBkRaCXQv8EN
 dfcj7gPxu1CcV/uTPSRRS9jkJMxmYHLOwtV1mvVJUxBRDBA0qPtMAI3R+/sa18yiSjZm
 mqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hToGumS7+rYCBAzwPejy/9G9W5aA7qrCKK0guqtnFic=;
 b=s8uSDAaCn2h71pEnwYtp5YKSDKdvC1CbBpX3jKpYjG7o9ucSHieCMMTpPiQT8j+jlJ
 I6kPDSrZDpTeeOlU7G35hefFJpomSn3pizx7agvUMBzyKJZtac4TKZslXpUHCW2nC1ml
 K1HOovJpU3FWHCPs4eYrKSj2N0h9CXfTZbtMjTq/ENkmh+Njk8vLsI18iu7rtaVNK6Nn
 jbjlQ+6yxdzhWFBI0jrD7yXm37GXPITQNlD0l8it/jBgi0CS255h0YNlUnvp5INNahl2
 4Uc1yVNB9Q+YoajVQBznAxQmbipGwmKldzKZz5SrB/aphDB/xHHwK7OmNxTtKOXjnKWR
 oAKg==
X-Gm-Message-State: AGi0PuYd6YzUzHnKguoo9dXWuwymtymDr9lmx0JJ+Wv+6QY6UgSXt+WC
 /0x3hBfIHnLrEY4yDYKrZOwh5b6uUiQLiBAE5R0=
X-Google-Smtp-Source: APiQypJrGXhhqW08yoaeDnDtx/i0JRfzWEst7LvKzsZZk7VobrfRGOVAQHzOHOnx7KngiHH3GuCSo8vUVjpnh9WKeuw=
X-Received: by 2002:a92:3a48:: with SMTP id h69mr55241ila.150.1588621396983;
 Mon, 04 May 2020 12:43:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
 <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
 <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
 <CAJiuCcfXqizcq_JuXRCsqEqM2562cr1SGJ0pmy07jcJxAXojOw@mail.gmail.com>
 <20200430084600.samghw4zxb5zdbez@gilmour.lan>
 <CAJiuCcf_LHrJ6QdZgH8HyN6TRiT+GiD+t4UggFCrz-VwVHXV6w@mail.gmail.com>
 <20200504120942.lnrxnnmykqnvw3fb@gilmour.lan>
In-Reply-To: <20200504120942.lnrxnnmykqnvw3fb@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 May 2020 21:43:05 +0200
Message-ID: <CAJiuCceF340FiLvyeXNZtvqftQMAmk=MtFDLT_9696ix+eH1Yw@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_124318_342839_7CEA6226 
X-CRM114-Status: GOOD (  31.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCA0IE1heSAyMDIwIGF0IDE0OjA5LCBNYXhpbWUgUmlwYXJkIDxt
YXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4KPiBIaSBDbGVtZW50LAo+Cj4gT24gVGh1LCBBcHIg
MzAsIDIwMjAgYXQgMDQ6MDA6MTRQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4g
T24gVGh1LCAzMCBBcHIgMjAyMCBhdCAxMDo0NiwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5v
LnRlY2g+IHdyb3RlOgo+ID4gPiBPbiBXZWQsIEFwciAyOSwgMjAyMCBhdCAwNjozMzowMFBNICsw
MjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCAyOSBBcHIgMjAyMCBh
dCAxNDozNSwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+ID4gPiA+
ID4KPiA+ID4gPiA+IE9uIFR1ZSwgQXByIDI4LCAyMDIwIGF0IDEwOjU1OjQ3QU0gKzAyMDAsIENs
w6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ICtzdGF0aWMgaW50IHN1bjUwaV9p
MnNfc2V0X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLAo+ID4gPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBmbXQpCj4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBUaGUgYWxpZ25tZW50IGlzIG9mZiBoZXJlCj4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ID4gPiArICAgICB1MzIgbW9kZSwg
dmFsOwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgdTggb2Zmc2V0Owo+ID4gPiA+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gPiA+ID4gKyAgICAgLyoKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAqIERBSSBjbG9j
ayBwb2xhcml0eQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICoKPiA+ID4gPiA+ID4gPiA+ICsgICAg
ICAqIFRoZSBzZXR1cCBmb3IgTFJDSyBjb250cmFkaWN0cyB0aGUgZGF0YXNoZWV0LCBidXQgdW5k
ZXIgYQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICogc2NvcGUgaXQncyBjbGVhciB0aGF0IHRoZSBM
UkNLIHBvbGFyaXR5IGlzIHJldmVyc2VkCj4gPiA+ID4gPiA+ID4gPiArICAgICAgKiBjb21wYXJl
ZCB0byB0aGUgZXhwZWN0ZWQgcG9sYXJpdHkgb24gdGhlIGJ1cy4KPiA+ID4gPiA+ID4gPiA+ICsg
ICAgICAqLwo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gRGlkIHlvdSBjaGVjayB0aGlzIG9y
IGhhcyBpdCBiZWVuIGNvcHktcGFzdGVkPwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBjb3B5LXBh
c3RlZCwgSSB3aWxsIGNoZWNrIHRoaXMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSXQncyBub3QgZ29p
bmcgdG8gYmUgZWFzeSB0byBkbyB0aGlzIGlmIHlvdSBvbmx5IGhhdmUgYSBib2FyZCB3aXRoIEhE
TUkuIElmIHlvdQo+ID4gPiA+ID4gY2FuJ3QgdGVzdCB0aGF0IGVhc2lseSwganVzdCByZW1vdmUg
dGhlIGNvbW1lbnQgKG9yIG1ha2UgaXQgZXhwbGljaXQgdGhhdCB5b3UKPiA+ID4gPiA+IGNvcHkg
cGFzdGVkIGl0PyksIG5vIGNvbW1lbnQgaXMgYmV0dGVyIHRoYW4gYSB3cm9uZyBvbmUuCj4gPiA+
ID4KPiA+ID4gPiBJIGhhdmUgdGFsa2VkIHdpdGggTWFyY3VzIENvb3BlciBpdCBtYXkgYmUgYWJs
ZSB0byB0ZXN0IHRoaXMgdGhpcyB3ZWVrLWVuZC4KPiA+ID4gPiBBbHNvIHRoaXMgY2FuIGV4cGxh
aW4gd2h5IHdlIG5lZWQgdGhlICIKPiA+ID4gPiBzaW1wbGUtYXVkaW8tY2FyZCxmcmFtZS1pbnZl
cnNpb247IiBpbiB0aGUgZGV2aWNlLXRyZWUuCj4gPiA+ID4KPiA+ID4gPiBJZiB0aGluayB0aGlz
IGZpeCBoYXMgYmVlbiBpbnRyb2R1Y2VkIGJ5IHlvdSwgY29ycmVjdD8gQ291bGQgeW91IHNheQo+
ID4gPiA+IG9uIHdoaWNoIFNvQyBkaWQgeW91IHNlZSB0aGlzIGlzc3VlPwo+ID4gPgo+ID4gPiBU
aGlzIHdhcyBzZWVuIG9uIGFuIEgzCj4gPgo+ID4gSnVzdCB0d28gbW9yZSBxdWVzdGlvbnM6Cj4g
PiAtIERpZCB5b3Ugb2JzZXJ2ZSB0aGlzIGlzc3VlIG9uIGJvdGggVERNIGFuZCBJMlMgbW9kZT8K
PiA+IC0gT24gd2hpY2ggREFJIG5vZGU/Cj4KPiBUaGlzIGlzIGZhaXJseSBmdXp6eSBub3cgYW5k
IEkgZG9uJ3QgcmVtZW1iZXIgaWYgSSB0ZXN0ZWQgaXQgaW4gSTJTLiBMZXQncwo+IGFzc3VtZSBJ
IGRpZG4ndC4gQW5kIHNpbWlsYXJseSwgSSdtIG5vdCBzdXJlIHdoYXQgdGhlIGV4YWN0IGNvbnRy
b2xsZXIgd2FzLCBidXQKPiBpdCB3YXMgb25lIG9mIHRoZSByZWd1bGFyIGNvbnRyb2xsZXJzIChz
byBub3QgZWl0aGVyIGNvbm5lY3RlZCB0byB0aGUgY29kZWMgb3IKPiB0aGUgSERNSSwgb25lIHRo
YXQgZ29lcyBvdXQgb2YgdGhlIFNvQykuCj4KPiBXZSBoYWQgcHJldHR5IG11Y2ggdGhlIHNhbWUg
aXNzdWUgb24gdGhlIEEzMyBpbiBJMlMgZm9yIHRoZSBjb2RlYyB0aG91Z2g6Cj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L2NvbW1pdC9zb3VuZC9zb2Mvc3VueGkvc3VuOGktY29kZWMuYz9pZD0xOGMxYmYzNWMxYzA5YmNh
MDVjZjcwYmM5ODRhNDc2NGUwYjAzNzJiCj4KPiBJIGRpZG4ndCB0aGluayBvZiBpdCB0aGF0IHdh
eSB0aGVuLCBidXQgaXQgbWlnaHQgdmVyeSB3ZWxsIGhhdmUgYmVlbiB0aGUgaTJzCj4gY29udHJv
bGxlciBzdWZmZXJpbmcgdGhlIHNhbWUgaXNzdWUuCj4KPiA+IFNpbmNlIHJlY2VudCBjaGFuZ2Ug
aW4gc3VuNGktaTJzLmMsIHdlIGhhZCB0byBpbnRyb2R1Y2UgdGhlCj4gPiAic2ltcGxlLWF1ZGlv
LWNhcmQsZnJhbWUtaW52ZXJzaW9uIiBpbiBMaWJyZUVsZWMgdHJlZS4KPgo+IERvIHlvdSBoYXZl
IGEgbGluayB0byB0aGF0IGNvbW1pdCA/IEkgY291bGRuJ3QgZmluZCBhbnl0aGluZyBvbiBsaWJy
ZWVsZWMncwo+IGdpdGh1YiByZXBvLgoKVGhlc2UgY29tbWl0czoKaHR0cHM6Ly9naXRodWIuY29t
L0xpYnJlRUxFQy9MaWJyZUVMRUMudHYvYmxvYi9tYXN0ZXIvcHJvamVjdHMvQWxsd2lubmVyL2Rl
dmljZXMvQTY0L3BhdGNoZXMvbGludXgvMDQtQWRkLWZyYW1lLWludmVyc2lvbi10by1jb3JyZWN0
LW11bHRpLWNoYW5uZWwtYXVkaW8ucGF0Y2gKaHR0cHM6Ly9naXRodWIuY29tL0xpYnJlRUxFQy9M
aWJyZUVMRUMudHYvYmxvYi9tYXN0ZXIvcHJvamVjdHMvQWxsd2lubmVyL2RldmljZXMvSDMvcGF0
Y2hlcy9saW51eC8xNy1BZGQtZnJhbWUtaW52ZXJzaW9uLXRvLWNvcnJlY3QtbXVsdGktY2hhbm5l
bC1hdWRpby5wYXRjaApodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50di9i
bG9iL21hc3Rlci9wcm9qZWN0cy9BbGx3aW5uZXIvZGV2aWNlcy9INi9wYXRjaGVzL2xpbnV4LzE2
LUFkZC1mcmFtZS1pbnZlcnNpb24tdG8tY29ycmVjdC1tdWx0aS1jaGFubmVsLWF1ZGlvLnBhdGNo
Cgo+Cj4gPiBIMyBib2FyZHMgYXJlIHF1aXRlIGNvbW1vbiBpbiBMaWJyZUVsZWMgY29tbXVuaXR5
IHNvIEkgdGhpbms6Cj4gPiAgLSBUaGlzIGZpeCBpcyBvbmx5IG5lZWRlZCBpbiBURE0gbW9kZQo+
ID4gIC0gT3IgdGhpcyBmaXggaXMgbm90IHJlcXVpcmVkIGZvciB0aGUgSERNSSBEQUkgbm9kZSAo
SERNSSBEQUkgaXMgYQo+ID4gbGl0dGxlIGJpdCBkaWZmZXJlbnQgY29tcGFyZSB0byBvdGhlciBE
QUkgYnV0IEkgdGhpbmsgdGhlIGZpcnN0IGd1ZXNzCj4gPiBpcyBtb3JlIGxpa2VseSkKPgo+IEdp
dmVuIHdoYXQgd2Uga25vdyBhYm91dCB0aGUgQTMzLCBJJ2QgYmUgaW5jbGluZWQgdG8gc2F5IHRo
ZSBsYXR0ZXIuIEknZCBkb24ndAo+IGhhdmUgdGhlIHRvb2xzIHRvIGNoZWNrIGFueW1vcmUsIGJ1
dCBpZiB5b3UgaGF2ZSBldmVuIGEgY2hlYXAgbG9naWNhbCBhbmFseXplciwKPiBpMnMgYmVpbmcg
cHJldHR5IHNsb3cgeW91IGNhbiBkZWZpbml0ZWx5IHNlZSBpdC4KCk1lIG5laXRoZXIgYnV0IG1h
eWJlIE1hcmN1cyB3aWxsIGJlIGFibGUgdG8gY2hlY2sgdGhpcy4KVGhhbmtzIGZvciBhbGwgdGhl
c2UgaW5mb3JtYXRpb25zLgoKPgo+IE1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

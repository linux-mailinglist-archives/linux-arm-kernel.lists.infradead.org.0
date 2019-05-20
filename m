Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C9424289
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 23:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEOsqRQ+j3Xd0gi0B4j27eGxZe7OXG+m8DdbwMEXkRQ=; b=HGWxUK241Yf5bw
	VnK0ypXCMaaBHJDIVSrkLUwpgZtIL+ko3WUVZW2cuMGCeqpwPJF2OR8XYwsXrYAfNTL28/ACUvpkQ
	OVrFVyFQlAk3/7Xw8EoZDwZrIRrRFXsmvgomjSmTDQCDQhdCEQYcG4NSmhGnkpSAd8i19NmfMNFC2
	imlCe4RyUzId+mOfPMa4Uri8C+wo1PWWyG/8ikNLpu5VTw0b6RDTBbnZvSs271/y4ZGfKFrgPkgZH
	zdPvp+/tc9PmV4ArIkrYPpEaURRCis254CxUOiK55jopT4kNZbAp8YisFcmwWt35DqLUfl3ndFloD
	Lh+SLKcIlxUywBYGqlEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSpa4-0000NE-Jf; Mon, 20 May 2019 21:12:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSpZx-0000MA-Ri
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 21:12:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so7842366pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 14:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tvhovIH1bm4mrgIUbDfWITwSqOMdeKUwkQsZnjBp6SQ=;
 b=mJn/emhBX8c/yxwZ7hQePgijl18XX1s/vRudt4ZscYNY1Or30y2GLnLv/dqNjy9che
 21GPsFxyOk3+0Gj3ngYYYLEw8b6ONRvN28APdutqSlt7lem2kqTCJaESPFZscGBNntoH
 dBtkthnI1bc2WDhax+S9lIdKVIVaITT2kjxco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tvhovIH1bm4mrgIUbDfWITwSqOMdeKUwkQsZnjBp6SQ=;
 b=NnveEd2qmS7z+BRU5ikFMSf6iixCK3F9RhFwL8hlu40JKtBN4ybs12uVysLVgfBV/V
 kOdloP1drI4q29osXxSI1uRF5ijcS1VyUyPWKR9vzWRAylemJZRrwDgab25Vez3/hZsf
 fOPkTIqj84JGzpOWyyFJmJCBmQiQ730YJIsLCCM5wTW8tWTWgO8MAelkrcAtAd9Typ6x
 XDsvvstWnlwHfHEUTQUBfV+hFD7+lzXf1PjjF1uLne7KDoVo49c1f6lPLLiWw4fqaw2d
 URhWmURGEobaxMBUwIgZQo1hAFug4S/dRS8PXhTwg/eqH/OKU40Wv0BXO8qcIzfGdHf2
 rd7Q==
X-Gm-Message-State: APjAAAWLlOgMuKhI0l7M31b09vBtij1k06oi/ctW2VRWYhM5ReB3qnoE
 sUpQ9Tnlq8GntMuzvG1yCTIzVA==
X-Google-Smtp-Source: APXvYqzB6kYa9tbEkVpPfd33Hr9ccQ26203/RLTGWxFCSb+WR8HAGD3cPwwEDsdADL80Gr948V9KYg==
X-Received: by 2002:a63:1d05:: with SMTP id d5mr76991884pgd.157.1558386736752; 
 Mon, 20 May 2019 14:12:16 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e16sm33603662pfj.77.2019.05.20.14.12.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 14:12:15 -0700 (PDT)
Date: Mon, 20 May 2019 14:12:15 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Limit GPU frequency on veyron
 mickey to 300 MHz when the CPU gets very hot
Message-ID: <20190520211215.GG40515@google.com>
References: <20190520170132.91571-1-mka@chromium.org>
 <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_141217_953761_4010CBE6 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMDE6MTY6NDZQTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gcmszMjg4IHRo
ZSBDUFUgYW5kIEdQVSB0ZW1wZXJhdHVyZXMgYXJlIGNvcnJlbGF0ZWQuIExpbWl0IHRoZSBHUFUK
PiA+IGZyZXF1ZW5jeSBvbiB2ZXlyb24gbWlja2V5IHRvIDMwMCBNSHogZm9yIENQVSB0ZW1wZXJh
dHVyZXMgPj0gODXCsEMuCj4gPgo+ID4gVGhpcyBtYXRjaGVzIHRoZSBjb25maWd1cmF0aW9uIG9m
IHRoZSBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0IGtlcm5lbCwKPiA+IHRoZSAnb2ZmaWNpYWwn
IGtlcm5lbCBmb3IgbWlja2V5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhs
Y2tlIDxta2FAY2hyb21pdW0ub3JnPgo+ID4gLS0tCj4gPiBOb3RlOiB0aGlzIHBhdGNoIGRlcGVu
ZHMgb24gIkFSTTogZHRzOiByb2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCj4gPiBlbnRyeSBm
b3IgcmszMjg4IEdQVSIgKGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8x
MDc1MDA1LykKPiA+IC0tLQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlj
a2V5LmR0cyB8IDYgKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLW1pY2tl
eS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLW1pY2tleS5kdHMKPiA+IGlu
ZGV4IGQ4ODlhYjNjODIzNS4uZjExOGQ5MmE0OWQwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCj4gPiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9yazMyODgtdmV5cm9uLW1pY2tleS5kdHMKPiA+IEBAIC0xMjUsNiArMTI1LDEyIEBACj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3B1MiA4IFRIRVJN
QUxfTk9fTElNSVQ+LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmNwdTMgOCBUSEVSTUFMX05PX0xJTUlUPjsKPiA+ICAgICAgICAgICAgICAgICB9Owo+ID4g
Kwo+ID4gKyAgICAgICAgICAgICAgIC8qIEF0IHZlcnkgaG90LCBkb24ndCBsZXQgR1BVIGdvIG92
ZXIgMzAwIE1IeiAqLwo+ID4gKyAgICAgICAgICAgICAgIGNwdV92ZXJ5X2hvdF9saW1pdF9ncHUg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmY3B1X2FsZXJ0X3ZlcnlfaG90
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvb2xpbmctZGV2aWNlID0gPCZncHUgMiAy
PjsKPiA+ICsgICAgICAgICAgICAgICB9Owo+IAo+IFR3byB0aGluZ3M6Cj4gCj4gQSkgSWYgSSdt
IHJlYWRpbmcgdGhpbmdzIHByb3Blcmx5LCB5b3UncmUgYWN0dWFsbHkgbGltaXRpbmcgdGhpbmdz
IHRvCj4gNDAwIE1Iei4gIFRoaXMgaXMgYmVjYXVzZSB5b3UgZG9uJ3QgaGF2ZSA8aHR0cHM6Ly9j
cnJldi5jb20vYy8xNTc0NTc5Pgo+IHdoaWNoIGRlbGV0ZXMgdGhlIDUwMCBNSHogR1BVIG9wZXJh
dGluZyBwb2ludC4gIFNvIG9uIHVwc3RyZWFtIHRoZQo+IGF2YWlsYWJsZSBwb2ludHMgYXJlOgo+
IAo+IDA6IDYwMCBNSHoKPiAxOiA1MDAgTUh6Cj4gMjogNDAwIE1Iego+IDM6IDMwMCBNSHoKPiA0
OiAyMDAgTUh6Cj4gNTogMTAwIE1Iego+IAo+IC4uLmFuZCBkb3duc3RyZWFtOgo+IAo+IDA6IDYw
MCBNSHoKPiAxOiA0MDAgTUh6Cj4gMjogMzAwIE1Iego+IDM6IDIwMCBNSHoKPiA0OiAxMDAgTUh6
CgpUaGFua3Mgc3BvdHRpbmcgdGhpcyEKCj4gVGhpbmtpbmcgYWJvdXQgaXQgbW9yZSwgSSBiZXQg
SGVpa28gd291bGQgYWN0dWFsbHkgYmUgT0sgZGVsZXRpbmcgdGhlCj4gNTAwIE1IeiBHUFUgb3Bl
cmF0aW5nIHBvaW50IGZvciB2ZXlyb24uICBUZWNobmljYWxseSBpdCdzIG5vdCBuZWVkZWQKPiB1
cHN0cmVhbSBiZWNhdXNlIHVwc3RyZWFtIGRvZXNuJ3QgaGF2ZSBvdXIgaGFja3MgdG8gYWxsb3cg
cmUtcHVycG9zaW5nCj4gTlBMTCBmb3IgSERNSSAoc28gdGhleSBfY2FuXyBtYWtlIDUwMCBNSHop
IGJ1dCBtYXliZSB3ZSBjYW4gbWFrZSB0aGUKPiBhcmd1bWVudCB0aGF0IHRoZXNlIGxhcHRvcHMg
aGF2ZSBvbmx5IGV2ZXIgYmVlbiB0ZXN0ZWQgd2l0aCB0aGUgNTAwCj4gTUh6IG9wZXJhdGluZyBw
b2ludCByZW1vdmVkIGFuZCBhbHNvIHRoYXQgZXZlbnR1YWxseSBzb21lb25qZSB3aWxsCj4gcHJv
YmFibHkgZmlndXJlIG91dCBhIHdheSB0byByZS1wdXJwb3NlIE5QTEwgZm9yIEhETUkgZXZlbiB1
cHN0cmVhbS4uLgoKTG9va3MgbGlrZSBIZWlrbyBpcyBpbmRlZWQgb2sgd2l0aCBpdCwgc28gbGV0
J3MgcmVtb3ZlIHRoZSBPUFAgYW5kIGJlCmluIHN5bmMgd2l0aCBkb3duc3RyZWFtIG9uIHRoaXMu
Cgo+IEIpIEl0IHNlZW1zIGxpa2UgaW4gdGhlIHNhbWUgcGF0Y2ggeW91J2Qgd2FudCB0byBpbnRy
b2R1Y2UKPiAiY3B1X3dhcm1fbGltaXRfZ3B1IiwgQUtBOgo+IAo+IGNwdV93YXJtX2xpbWl0X2dw
dSB7Cj4gICB0cmlwID0gPCZjcHVfYWxlcnRfd2FybT47Cj4gICBjb29saW5nLWRldmljZSA9Cj4g
ICA8JmdwdSAxIDE+Owo+IH07CgpNYWtlcyBzZW5zZSB0byBkbyBpdCBpbiB0aGUgc2FtZSBwYXRj
aCwgd2lsbCBhZGQgaXQgaW4gdjIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

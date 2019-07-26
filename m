Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CA276384
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUn1FtTafEezbr1tlBPkFUhw12d/DwzBivSph9r9I/c=; b=uDedqtxDL30mLK
	u76MFrhNtsR/hb3Z00mj+2LnI26+OWwwu8Ierl17LKt0oxSX6mwqfSLoxVwIQYKU/zjxVHzMY/4Sc
	JnYFDRJmHfc6JSpL03pppLZKgW7/3ZJWABHbm4Rc0Q/Jfehfmrg9GzysYZkcKcy+ihHj1Pe25NnkW
	96sMustdT5soYKSaxxiR8Id7qXeuMn1J5SatgxVj83gyLz4IucSp/CaIRvn0H+aJqzQqog+MyLNsB
	nc+ipjJajbn/QAnmPjA3Z5nC02zRngvqmoHpduZXuDAZTb2QjYFs87iGyypipWe+DBrRHBsm7Z4HE
	jlWjN9TRb/nFCXc9+uXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxSa-0004tD-Q8; Fri, 26 Jul 2019 10:28:24 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxSD-0004fB-Cv
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:28:04 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so103795034iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PzjlKYE1qIEe+zKWFnMwDGXGnYev6skKpACtw6FQfYA=;
 b=p+nKFgaFf1tHT5RNgpYZWcBsVVbiRzd9FTC6bAefOmIFtOJykeCT870R0C3ufGn4vc
 PWNSHa9kupTBucYBi70mlGlMiWsQwW88AcJuMNi5mjP54uMz6VZTDvOW5gQB50uT826R
 /3jc+gCyD43CXmaYBm+H1J6xVxPIKxZljbTPKqfSqimsMLP1H/7mnErn8M/dO8XfkwBs
 Y8w+IWSRvxAAfKb+sUeug4rr67gfH28OOcUOArjUBaDPMDvrVhBHZHe4UYjco91heF+s
 t/WQTFMrSsSh695Tzti0YJ2GBXe7DRanAgzk+m0sBiPGcJrsR60z20QSPaumVw4KZ0cp
 y5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PzjlKYE1qIEe+zKWFnMwDGXGnYev6skKpACtw6FQfYA=;
 b=H+AdIOK/scYOzvc2RN4AvNYdL1dE5/1119d88ZCjCN2JDzf2oe+7TsjaZSxWFROtuh
 zj3sZLUVdWy4ZorG1ChvD9ST/rnhKxqIGyDWevIKo/s+zT13ZBOgGVgjynkfOoTPSlb1
 5tRX/c7Ksw2qJjKU9NLCEDzVm+K31589v9Ocpx87HzyRIbAR9j+V4LEp5P6PBea6bvgJ
 lLgHdZvniLfZU9d++Sozw3sdQW5864h99HPFjw9fiMe+vRahEGslE05uNJUaFTWX1cuc
 PxdYtW3dugXFjP6x9wlEHJ8hmbTNfSoxc+BXvKQG5fzru6boqvfEOvM+rTUdUQb0njqJ
 ipIQ==
X-Gm-Message-State: APjAAAWeip3IoKTub6Rbzc02akxHn4Nq4bmCweThVONlg3iwd4fRF9XW
 emXoqQLz2WXdRhjNvv8/smXmE1vh3u4a4qJZgJfrVw==
X-Google-Smtp-Source: APXvYqxoHOdlu6x2hPEYf3RYGZ50mSWqUgxy2lpy/ibkVJblKXu8OocARgg+QmSbMwzq0EcY+IGZEkPKkyfBWG3maHg=
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr7172969iod.139.1564136880220; 
 Fri, 26 Jul 2019 03:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190722095425.14193-1-amergnat@baylibre.com>
 <20190722095425.14193-4-amergnat@baylibre.com>
 <1j5znqxj74.fsf@starbuckisacylon.baylibre.com>
 <CAGb2v64AJFMkZQaytYMN+EsLT0sS-3VwzWUfb3g7SdL7kCfu+g@mail.gmail.com>
In-Reply-To: <CAGb2v64AJFMkZQaytYMN+EsLT0sS-3VwzWUfb3g7SdL7kCfu+g@mail.gmail.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 26 Jul 2019 12:27:48 +0200
Message-ID: <CAFGrd9pWdhktEjQzGTTk1zdVVXuXaZL--CFjA-BPwia6AzmRQA@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: meson: gxbb: migrate to the new parent
 description method
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_032801_475022_7C8C5081 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, baylibre-upstreaming@groups.io,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAyNSBqdWlsLiAyMDE5IMOgIDE5OjA5LCBDaGVuLVl1IFRzYWkgPHdlbnNAa2VybmVs
Lm9yZz4gYSDDqWNyaXQgOgo+Cj4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6NTAgUE0gSmVy
b21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiAy
MiBKdWwgMjAxOSBhdCAxMTo1NCwgQWxleGFuZHJlIE1lcmduYXQgPGFtZXJnbmF0QGJheWxpYnJl
LmNvbT4gd3JvdGU6Cj4gPgo+ID4KPiA+ID4gQEAgLTE1OTIsMTMgKzE3MzcsMjkgQEAgc3RhdGlj
IHN0cnVjdCBjbGtfcmVnbWFwIGd4YmJfdmlkX3BsbF9kaXYgPSB7Cj4gPiA+ICAgICAgIC5ody5p
bml0ID0gJihzdHJ1Y3QgY2xrX2luaXRfZGF0YSkgewo+ID4gPiAgICAgICAgICAgICAgIC5uYW1l
ID0gInZpZF9wbGxfZGl2IiwKPiA+ID4gICAgICAgICAgICAgICAub3BzID0gJm1lc29uX3ZpZF9w
bGxfZGl2X3JvX29wcywKPiA+ID4gLSAgICAgICAgICAgICAucGFyZW50X25hbWVzID0gKGNvbnN0
IGNoYXIgKltdKXsgImhkbWlfcGxsIiB9LAo+ID4gPiArICAgICAgICAgICAgIC5wYXJlbnRfZGF0
YSA9ICYoY29uc3Qgc3RydWN0IGNsa19wYXJlbnRfZGF0YSkgewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgLyoKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAqIFRoaXMgY2xvY2sgaXMg
ZGVjbGFyZWQgaGVyZSBmb3IgR1hMIGFuZCBHWEJCIFNvQywgc28KPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAqIHdlIG11c3QgdXNlIHN0cmluZyBuYW1lIHRvIHNldCB0aGlzIHBhcmVudCB0
byBhdm9pZAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICogcG9pbnRlciBpc3N1ZS4KPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAqLwo+ID4KPiA+IEkgZG9uJ3QgcmVhbGx5IGdldCB0
aGUgaXNzdWUgd2l0aCB0aGlzIGNvbW1lbnQuCj4gPgo+ID4gSG93IGFib3V0Ogo+ID4KPiA+IC8q
Cj4gPiAgKiBOb3RlOgo+ID4gICogZ3hsIGFuZCBneGJiIGhhdmUgZGlmZmVyZW50IGhkbWlfcGxs
cyAod2l0aCBkaWZmZXJlbnQgc3RydWN0IGNsa19odykuCj4gPiAgKiBXZSBmYWxsYmFjayB0byB0
aGUgZ2xvYmFsIG5hbWluZyBzdHJpbmcgbWVjaGFuaXNtIHNvIHZpZF9wbGxfZGl2IHBpY2tzCj4g
PiAgKiB1cCB0aGUgYXBwcm9wcmlhdGUgb25lLgo+ID4gICovCj4KPiBJZiB5b3UncmUgc3RpY2tp
bmcgdG8gZ2xvYmFsIG5hbWVzIGZvciBub3csIHlvdSBjb3VsZCBqdXN0IHNraXAgY29udmVydGlu
Zwo+IHRoaXMgY2xvY2sgYWx0b2dldGhlci4gSSBzdXNwZWN0IC5wYXJlbnRfbmFtZXMgd2lsbCBi
ZSBhcm91bmQgZm9yIHNvbWUgdGltZS4KCkkgcHJlZmVyIHRvIHBlcmZvcm0gYSBjb21wbGV0ZSBt
aWdyYXRpb24gYmVjYXVzZSBpdCBpcyBwb3NzaWJsZSB0aGF0Ci5wYXJlbnRfbmFtZXMKYmVjb21l
cyBkZXByZWNhdGVkIG9uZSBkYXkuIEkgdGhpbmsgaXQncyBjbGVhbmVyIHRvIGRvIGl0IG9uZSBz
aG90IGFuZAphdm9pZCBrZWVwaW5nCnJlZHVuZGFudCBzdHJ1Y3R1cmUgd2l0aCB0aGUgbmV3IG9u
ZS4KCj4KPiBPbiB0aGUgb3RoZXIgaGFuZCwgaWYgeW91IHJlYWxseSB3YW50IHRvIGdldCByaWQg
b2YgZ2xvYmFsIGNsb2NrIG5hbWUgYmFzZWQKPiBwYXJlbnRpbmcsIHlvdSBjb3VsZCB1c2UgY2xr
X2h3IHBvaW50ZXJzLCBhbmQgaGF2ZSB0aGUgcHJvYmUgZnVuY3Rpb24gZml4Cj4gdXAgdGhpcyBv
bmUgYmFzZWQgb24gdGhlIGNvbXBhdGlibGUgc3RyaW5nLiBUaGF0J3Mgd2hhdCBJIGRpZC4KClNv
dW5kcyBnb29kLCBtYXkgSSBoYXZlIHRoZSBjb21taXQgb3IgZmlsZSB3aGljaCBpcyBpbXBsZW1l
bnQgdGhpcyBwbGVhc2U/Ckkgd29uZGVyIGlmIGl0IHdvcnRoIHRvIGFkZCBjb21wbGV4aXR5IGlu
IHByb2JlIGluc3RlYWQgb2YgdXNpbmcgYSBkZWRpY2F0ZWQKZmllbGQgaW4gLnBhcmVudF9kYXRh
IGZvciBzdHJpbmcgbmFtZS4gSSBndWVzcyB0aGF0IGRlcGVuZCBvbiB0aGUgY29tcGxleGl0eQpk
b25lIGluIHByb2JlLgoKPgo+IEp1c3QgbXkgdHdvIGNlbnRzLgo+Cj4gQ2hlbll1Cj4KPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIC5uYW1lID0gImhkbWlfcGxsIiwKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIC5pbmRleCA9IC0xLAo+ID4gPiArICAgICAgICAgICAgIH0sCj4gPiA+ICAg
ICAgICAgICAgICAgLm51bV9wYXJlbnRzID0gMSwKPiA+ID4gICAgICAgICAgICAgICAuZmxhZ3Mg
PSBDTEtfU0VUX1JBVEVfUEFSRU5UIHwgQ0xLX0dFVF9SQVRFX05PQ0FDSEUsCj4gPiA+ICAgICAg
IH0sCj4gPiA+ICB9Owo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

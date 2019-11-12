Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA83F8699
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 02:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlncpKCBsmCpZWZ0kOeu1oM73CNWDWVqTrRo7dLoiiM=; b=iAa8DtkdfEg7c1
	t3yeUQnPVodvZ/MoV1SM9F8hbJkl5g70gLOgOTANP8wRh/x1FGLct/gHsBfHTk71KApCQozGJmNUq
	yKmEqRdUFUzoSvem+H+IlRLaEKTsf9fVCOI1/vGwVeDXYvfTV3BO4JQyuBHmY/yN1wz0LjBgJzmv0
	Sd+95HEMhppTzhz4nKObEI4whJBR4iMvMRKqXcBZYqdm1stCPVV3SN91sRFrHxLgksQO7dZaasMc7
	7gltcGIy3y0B/hHuWNeYEK/qgC2W71L/6qid68BXxlsM/VEqukDFu2eb4MH5FVCl3ctnNp4qsSGhp
	BTlkiUWoSqLDR2hVsHMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iULIV-0003y9-0V; Tue, 12 Nov 2019 01:48:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iULIK-0003x4-Jv; Tue, 12 Nov 2019 01:48:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id r10so16735577wrx.3;
 Mon, 11 Nov 2019 17:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/bjIqi6hO/adh9b46mmU09qR2JgvrPKcPXsn9PKpydQ=;
 b=HbDnTVrRBD0jVKHLLydC03N06oTzh50Z5atOgRLw2IGC+WSPbw+CBtnAhZ9mE6wenq
 YZlYtu47iMNQxdTRXULdKWL6bgV6ccf7NJPqCMhENEYrsbFeApa63dcWoooL2277eHhG
 ULwctVuQtS33qqUFutyjmnVJ64CqDpvbk4bVYxkVA0Pbaa0IhzN7mR3chlCBkhlJxNFt
 hkqoMZeAmwadBaR1u6Onx0G5lGSUj8Cu8gXOn5UXAaGUNzUVVpoxOh3D3qq32OKnZW5u
 bZ16EvG8hQ0eKh9Da6QFH21godYwbZpHmRMYJpXAfszDFFhiIGnyIT1DmujUS6AxKbix
 pRzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/bjIqi6hO/adh9b46mmU09qR2JgvrPKcPXsn9PKpydQ=;
 b=fRVuOz5GVZQH8mqvawmlWew55DzFX+89Ua2+ajqwoSUhDXk9LdFRb0qRZ87ydNlOWL
 JLGrVIBGRXXYbnKXOlh1bEyO800BG//qgEU5PRW1TJzFiai8mSMqL3NscFSlUX88y5Li
 Pf1C7srSF2q+EnZMmea3KCn3cEToysGaRBhDjwNfPzOmsmi26+doZkBn2TvgedAxW3Ow
 4GCPa5U1hG3wgsroDAQ+0gEVttq0Hu/uIbKiy7EFJ5xVTwEmliD92mo/tfaEmnfYoH9w
 My3EKnyABrhszxgO8VJ72pvpFXkjEV3zm1wbmh2wp0pfeS4yO0gpLIiI14HyqcwI3Qts
 9DAA==
X-Gm-Message-State: APjAAAUw8A7Elp3+T3Nidfi2AtvhmPZaUam1IOLLtwHHCev5brlZGpI7
 acysmP+uO4BGPNJjn7NacvHgifnjQgyieSO95go=
X-Google-Smtp-Source: APXvYqxuxcgymK9jAB/5KQHDa1nDO97DkTPn+jtJT1mWCOODP321UsjLE7Cfn2IHOUjA0/iissWb1hTqLp0z9NvLe7Q=
X-Received: by 2002:adf:8088:: with SMTP id 8mr22613309wrl.230.1573523315058; 
 Mon, 11 Nov 2019 17:48:35 -0800 (PST)
MIME-Version: 1.0
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
 <CA+3zgmtJqN-3Q-kjMhh58B+T7z_1TA-C6be7+UP6nuQb7eq=8A@mail.gmail.com>
In-Reply-To: <CA+3zgmtJqN-3Q-kjMhh58B+T7z_1TA-C6be7+UP6nuQb7eq=8A@mail.gmail.com>
From: Jun Li <lijun.kernel@gmail.com>
Date: Tue, 12 Nov 2019 09:48:22 +0800
Message-ID: <CAKgpwJWj9nqF-j2e+hNZZUtqGY92-2o1cUNWWh0ugePrwjbtsA@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Tim <elatllat@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_174836_656234_E9315E83 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lijun.kernel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YnkgYSBxdWlyaywgdGhvc2UgcGxhdGZvcm1zIHdpdGhvdXQgdGhpcyBxdWlyayBjYW4ndCBiZW5l
Zml0IHRoaXMgZml4LgoKaWYgbGF0ZXIgdGhpcyBidWcgaXMgZml4ZWQgYnkgc29tZSByZXZlcnNp
b24gb2YgZHdjMyBJUCwgd2UgY2FuIGVhc2lseQpyZW1vdmUgdGhlIHdvcmthcm91bmQgYnkgYSBJ
UCB2ZXJzaW9uIGNoZWNrOgppZiAoZHdjLT5yZXZpc2lvbiA8IERXQzNfUkVWSVNJT05fUEFSS19N
T0RFX0ZJWEVEKQp7CiAgICAgICAgICBkaXNhYmxlIHBhcmsgbW9kZSBmb3Igc3M7Cn0KCkxpIEp1
bgoKVGltIDxlbGF0bGxhdEBnbWFpbC5jb20+IOS6jjIwMTnlubQxMeaciDEx5pel5ZGo5LiAIOS4
i+WNiDEwOjA15YaZ6YGT77yaCj4KPiBTcGVjdWxhdGlvbjsKPgo+IE1heWJlIHRoZSBrZXJuZWwg
bWFpbnRhaW5lcnMgcHJlZmVyIHRvIG9wdGltaXN0aWNhbGx5IHBlcm1pdCBmdXR1cmUKPiBwcm9k
dWN0cyB0byBlYXNpbHkgcmVtb3ZlIHdvcmthcm91bmRzIHZpYSBxdWlyayBmbGFncy4KPiBFdmVu
IGlmIGRhdGEgZnJvbSB0ZXN0aW5nIHdlcmUgc2hvd24sIGFuZCBpdCBkaWQgbm90IGltcGFjdAo+
IHBlcmZvcm1hbmNlLCBjb2RlIHJlZHVjdGlvbiBhbmQgY2xhcml0eSBhcmUgZGVzaXJhYmxlLgo+
Cj4gT24gU3VuLCBOb3YgMTAsIDIwMTkgYXQgODo1OCBQTSBKdW4gTGkgPGxpanVuLmtlcm5lbEBn
bWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIE5laWwKPiA+Cj4gPiBBcyBJIGdvdCB0aGUgaW5m
b3JtYXRpb24gZnJvbSBTeW5vcHN5cywgdGhpcyBidWcgZXhpc3RzIG9uIGN1cnJlbnQgSVAgdmVy
c2lvbnMsCj4gPiBhbmQgcGVyIG15IHRlc3RzIHdpdGggZXh0ZXJuYWwgVVNCMyBodWIgKyAyIFN1
cGVyIHNwZWVkIHVkaXNrcyBvbiBkYXRhCj4gPiByZWFkIGJ5IGRkLCBJIGNhbiByZXByb2R1Y2Ug
dGhpcyBpc3N1ZSB3aXRoIGRpZmZlcmVudCBrZXJuZWwgdmVyc2lvbnMsIGFsc28gSQo+ID4gZGlk
bid0IHNlZSBvYnZpb3VzIHBlcmZvcm1hbmNlIGRyb3AgYnkgZGQgdGVzdHMgYWZ0ZXIgZGlzYWJs
ZSBwYXJrIG1vZGUgZm9yCj4gPiBzdXBlciBzcGVlZCwgc28gc2hvdWxkIHdlIGp1c3QgZGlzYWJs
ZSBpdCBieSBkZWZhdWx0IHNvIG5vIG5lZWQgYSBxdWlyaz8KPiA+Cj4gPiBMaSBKdW4KPiA+Cj4g
PiBUaW0gPGVsYXRsbGF0QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDEx5pyIMTHml6XlkajkuIAg5LiK
5Y2IODo0MuWGmemBk++8mgo+ID4gPgo+ID4gPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyBO
ZWlsLAo+ID4gPiBJcyB0aGVyZSBzb21ldGhpbmcgdGhhdCBuZWVkcyBkb2luZyBmb3IgdGhpcyBw
YXRjaCB0byBtYWtlIGl0IGludG8gNS4zIG9yIDUuND8KPiA+ID4gQXMgcHJldmlvdXNseSBtZW50
aW9uZWQgdGhlIHBhdGNoIHNldCBmaXhlcyB0aGUgaXNzdWUgb24gYWZmZWN0ZWQgaGFyZHdhcmU7
Cj4gPiA+ICAgICBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTY0NTE1Lwo+
ID4gPgo+ID4gPgo+ID4gPgo+ID4gPiBPbiBXZWQsIE9jdCAyMywgMjAxOSBhdCA0OjExIFBNIFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gTW9u
LCBPY3QgMTQsIDIwMTkgYXQgMDQ6MTc6MTZQTSArMDIwMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6
Cj4gPiA+ID4gPiBUaGlzIHBhdGNoIHVwZGF0ZXMgdGhlIGRvY3VtZW50YXRpb24gd2l0aCB0aGUg
aW5mb3JtYXRpb24gcmVsYXRlZAo+ID4gPiA+ID4gdG8gdGhlIHF1aXJrcyB0aGF0IG5lZWRzIHRv
IGJlIGFkZGVkIGZvciBkaXNhYmxpbmcgYWxsIFN1cGVyU3BlZWQgWEhDaQo+ID4gPiA+ID4gaW5z
dGFuY2VzIGluIHBhcmsgbW9kZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBDQzogRG9uZ2ppbiBLaW0g
PHRvYmV0dGVyQGdtYWlsLmNvbT4KPiA+ID4gPiA+IENjOiBKaWFueGluIFBhbiA8amlhbnhpbi5w
YW5AYW1sb2dpYy5jb20+Cj4gPiA+ID4gPiBSZXBvcnRlZC1ieTogVGltIDxlbGF0bGxhdEBnbWFp
bC5jb20+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9u
Z0BiYXlsaWJyZS5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdXNiL2R3YzMudHh0IHwgMiArKwo+ID4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IFNpZ2gsIHdoYXQncyBvbmUg
bW9yZSB0byB0aGUgbmV2ZXIgZW5kaW5nIGxpc3Qgb2YgcXVpcmtzLi4uCj4gPiA+ID4KPiA+ID4g
PiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

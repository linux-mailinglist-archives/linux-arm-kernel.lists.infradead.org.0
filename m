Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098CE1819DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIq6yAcmIzVp1x4DnxaUnyVzrPpUNcB0uhUGK1eGc+g=; b=I198/JYZSBNpEC
	aSwqeC7s2iK6duEomAXur2QCFj0QGYFyGnqEy4gHeFW2yqkUAxM1oT8FrKHnr1Xqtt9a7cFBUxiQC
	0YrSm0YjVZisnYlZIbTtS0sqRXpvUE2MAhpex3rYo9QYxXSC/8y3V427YMJ4oeDznnqpEBdDY+GmW
	Plr/rKb+IrS5dcznyJMdvn/W74mdKMEHw0WppXsM6CnEffG3ymEhg5GkcTVdLPW9eZO/m3mbiUYnU
	Ub4UdQBTwAcNhq+Xh9ZGZHlOUJu/CsS9eTs2KxtLQ848FrmbYFCTxUASKeU8yzSM6p6l8A6Y6h31w
	Q5MM+7Cpn+hQoxCVPDfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1Tn-0006Ol-O0; Wed, 11 Mar 2020 13:32:59 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1Tc-0006Mp-8L
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 13:32:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id j16so1940618otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WXC1eWa5pSBG2kIwwU8A6k/UEnvKcy01RlKUph7V4qM=;
 b=td+5kHMW+m3MVBsqw6o60BiEUQM11VPK4Kmh6+o9kx56easM8WTmyDdwACmJXVwUZd
 Y3mNeZAelp/0KETvaK/iXwk30HHYKuPHn56/5S0C1t+KAWiG5LzJ830W9dNGjaj7mGUf
 HkipB2yqLYOpQeTzXhe5YhQGnAbqxhfj0yZt7cNhEOn2seEwaOeXCsv4XbCoDco+ar6q
 /butQOQmyQRPfew3tJNTsKkKyHRkcX/RnO6Ls5CbaG5eg8waBDvfY7h0Cg7K9LerZZaL
 14LK6pY9ol2BbcmwqqW7Y7WaqNbtYiOu9niM5b2ZqqKcL7w+8DZ9jxo4dIHvZ2lbExwB
 kp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WXC1eWa5pSBG2kIwwU8A6k/UEnvKcy01RlKUph7V4qM=;
 b=bZDYuBwFOvxsZ+R+i52mILqKHO9q2whQHP6bdOmuU8POZphlGE35sQ0cM9f0tKyDUK
 zCotXdfL5NVLOFIgHBNy2to3fVd3WRjtr6bnWhwHAoFTAwQoduQOTiKLWd6jXUcICDtr
 e8x19JQYvSMgH/JfFGBOd9eOreKi8Ev48dyMshJM3aOVfrZwrspHyWsCUS1NSfeJVYmD
 nyHY7aN78uvahSxF6WB4wopG5wHgf/uPTDDjf/68uTxd+GxoytkG0Xofl2qpngGOEh+H
 WroyY4UaX9/yfpxH/cMSN6lF0xXffMjAlZbsBRJnFZwCC50rj+Ljr9nguFIw6BPs+Ofx
 5c5w==
X-Gm-Message-State: ANhLgQ24pUI8nyLqKEBcbgvOU4SRhe6ynmKqYl4iqFEJrlThxwLZlX7n
 D/RnFMKE2zRHrc4LNOxObkF5jMyxBdJ2X5Xlm8CFww==
X-Google-Smtp-Source: ADFU+vuCkXbpyI/txzrlxd2TEETHHaxmMQrvc+sXtCR9ejrce9Y8dHGpDSGyvjIcCus/wkaa6oNRCw01tVw1hY82qlo=
X-Received: by 2002:a9d:19e9:: with SMTP id k96mr2402209otk.68.1583933561847; 
 Wed, 11 Mar 2020 06:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
 <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
 <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 11 Mar 2020 14:32:30 +0100
Message-ID: <CAG3jFyv8X=k=1EGMCHnSNqDaRBZ68pht42yDzc5hJPui0wdAjQ@mail.gmail.com>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_063248_298723_A04F6888 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGV5IFNha2FyaSwKCk9uIFdlZCwgMTEgTWFyIDIwMjAgYXQgMTI6NDksIFNha2FyaSBBaWx1cyA8
c2FrYXJpLmFpbHVzQGlraS5maT4gd3JvdGU6Cj4KPiBIaSBSb2JlcnQsCj4KPiBPbiBUdWUsIE1h
ciAxMCwgMjAyMCBhdCAwNDo1NToyMFBNICswMTAwLCBSb2JlcnQgRm9zcyB3cm90ZToKPiA+IEhp
IEFuZHksCj4gPgo+ID4gT24gVHVlLCAxMCBNYXIgMjAyMCBhdCAxNToyNiwgQW5keSBTaGV2Y2hl
bmtvCj4gPiA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3cm90ZToKPiA+ID4K
PiA+ID4gT24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMDI6NDY6MDJQTSArMDEwMCwgUm9iZXJ0IEZv
c3Mgd3JvdGU6Cj4gPiA+ID4gQWRkIGRldmljZXRyZWUgbWF0Y2ggdGFibGUsIGFuZCBlbmFibGUg
b3Y4ODU2X3Byb2JlKCkKPiA+ID4gPiB0byBpbml0aWFsaXplIHBvd2VyLCBjbG9ja3MgYW5kIHJl
c2V0IHBpbnMuCj4gPiA+Cj4gPiA+IC4uLgo+ID4gPgo+ID4gPiA+ICsjZGVmaW5lIE9WODg1Nl9O
VU1fU1VQUExJRVMgQVJSQVlfU0laRShvdjg4NTZfc3VwcGx5X25hbWVzKQo+ID4gPgo+ID4gPiBV
c2UgQVJSQVlfU0laRSgpIGRpcmVjdGx5Lgo+ID4KPiA+IEFjay4KPiA+Cj4gPiA+Cj4gPiA+IEhh
dmUgeW91IHNlZW4gU2FrYXJpJ3MgY29tbWVudHM/Cj4gPiA+IFNha2FyaSwgZG8gSSBoYXZlIGTD
qWrEhSB2dSBvciB5b3UgaW5kZWVkIGNvbW1lbnRlZCB0aGlzIGRyaXZlcj8KPiA+Cj4gPiBZZXMs
IEkgbWF5IGhhdmUgbWlzc2VkIHNvbWUgcGFydCBvZiBpdCwgc28gcGxlYXNlIHRlbGwgbWUgaWYg
SSBoYXZlLgo+ID4KPiA+IFRoZXJlIGlzIGEgcGF0Y2hzZXQgZmxvYXRpbmcgYXJvdW5kIHRoYXQg
aW1wbGVtZW50cyBhIGxhcmdlciBjaHVuayBvZgo+ID4gZnVuY3Rpb25hbGl0eSwKPiA+IGluY2x1
ZGluZyBhIGNvdXBsZSBvZiBuZXcgbW9kZXMuIFRoaXMgaXMgYmFzZWQgb24gdGhhdCBzZXJpZXMu
Cj4KPiBQbGVhc2Ugc2VlIGVhcmxpZXIgY29tbWVudHMgZ2l2ZW4gYWdhaW5zdCBhbiBlYXJsaWVy
IHZhcmlhbnQgb2YgdGhpcyBzZXQuCj4gVGhleSdyZSBvbiBMTU1MLgo+Cj4gPgo+ID4gPgo+ID4g
PiAuLi4KPiA+ID4KPiA+ID4gPiArICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2
LT5uX3NodXRkbl9ncGlvLCBHUElPRF9PVVRfTE9XKTsKPiA+ID4KPiA+ID4gPiArICAgICBncGlv
ZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2LT5uX3NodXRkbl9ncGlvLCBHUElPRF9PVVRfSElH
SCk7Cj4gPiA+Cj4gPiA+IFllcywgc2VlbXMgdGhpcyBvbmUgaXMgaW52ZXJ0ZWQuCj4gPiA+Cj4g
PiA+IC4uLgo+ID4gPgo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2Nh
bnNsZWVwKG92ODg1Ni0+bl9zaHV0ZG5fZ3BpbywgR1BJT0RfT1VUX0xPVyk7Cj4gPiA+ID4gKyAg
ICAgcmVndWxhdG9yX2J1bGtfZGlzYWJsZShPVjg4NTZfTlVNX1NVUFBMSUVTLCBvdjg4NTYtPnN1
cHBsaWVzKTsKPiA+ID4gPiArICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUob3Y4ODU2LT54dmNs
ayk7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gKwo+ID4gPgo+ID4gPiBPbmUgYmxhbmsg
bGluZSBpcyBlbm91Z2guCj4gPiA+Cj4gPiA+IC4uLgo+ID4gPgo+ID4gPiA+ICsgICAgIG92ODg1
Ni0+eHZjbGsgPSBkZXZtX2Nsa19nZXQoJmNsaWVudC0+ZGV2LCAieHZjbGsiKTsKPiA+ID4gPiAr
ICAgICBpZiAoSVNfRVJSKG92ODg1Ni0+eHZjbGspKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBk
ZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxlZCB0byBnZXQgeHZjbGtcbiIpOwo+ID4gPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gKyAgICAgfQo+ID4gPgo+ID4gPiBQ
cmV2aW91c2x5IGl0IHdvcmtlZCB3aXRob3V0IGNsb2NrIHByb3ZpZGVyLCBub3cgeW91IG1ha2Ug
YSBkZXBlbmRlbmN5Lgo+ID4gPgo+ID4gPiBUaGlzIHdvbid0IHdvcmsuCj4gPgo+ID4gU28gdGhl
IGlkZWFsIGJlaGF2aW9yIHdvdWxkIGJlIHRvIG9ubHkgdXNlIHRoZSB4Y2xrIGlmIGl0IGlzIHBy
b3ZpZGVkPwo+Cj4gU2VlIGUuZy4gdGhlIHNtaWFwcCBkcml2ZXIgb24gaG93IHRvIGRvIHRoaXMg
c28gaXQgY29udGludWVzIHRvIHdvcmsgb24KPiBBQ1BJLgoKVGhhbmtzIGZvciB0aGUgcG9pbnRl
ciEKCj4KPiBJIHRoaW5rIGl0J2QgYmUgYWxzbyBhcHByb3ByaWF0ZSB0byBhZGQgdGhlIHVzbGVl
cCgpIGFmdGVyIGxpZnRpbmcgcmVzZXQKPiBvbmx5IGlmIHRoZSByZXNldCBHUElPIGlzIGRlZmlu
ZWQgZm9yIHRoZSBkZXZpY2UuCgpBY2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

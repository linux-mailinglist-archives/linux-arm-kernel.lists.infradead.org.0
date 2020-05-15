Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093791D4E39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALIC+utn+RxbLc1jn/wretZh0Gz+D2glKyER5upUIAM=; b=foH0qHv605gqXk
	LSJgQ5GBpoDCmbhG6/nBthH23z7AwrgBgXQczJHkA27VQpAfeswvd40RCNRIgStQHdBtRKO3tMNF8
	2cml7/3LXfowuaIXaXaP3Yi9ipB/xgNDVSRZyPB98feI1K1bzWnp7+D3jRTxXyGoFhL6g4PmcP1iC
	0reTemyQyWQsiLJupZje6+xTg3X6tG7w3UUDPTPn86dG4M30s8Z20aIuG0pNOym48t/6XO16lRE2+
	IlMongfCfM6xq7HPhbI8q1BjgSJo9LVsfTPLqv7hOBkhuskMK6qJ/bJz+EYqQKmWjoMGaBUcrwEDU
	Enm3lYJs3RT+bgAJZ/8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZt9-00060d-SA; Fri, 15 May 2020 12:56:31 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZsy-0005vq-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:56:22 +0000
Received: by mail-il1-x144.google.com with SMTP id b15so2373665ilq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 05:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UKroOh2PouJyW9aIDGfDz6KjqY9gVQj12EPFSDublmA=;
 b=vQpa/V/2d27tMcZAv7Abd34xjhVsIEeZzrDrtJyVTfhsRI5XbTGjwCIO/aERLAuHrZ
 /IDDIp2Nyi2dbSZdL6+Ei9b5G3ZMuxLX9s5g4bydz+1ckRRkhVPa7wy6pmUCguarxPbh
 epoFYuHCZKmDhp6ZKwj5KTTRyS1Q0tbs+LrdiSIOPYHBYzINIkvLAHCEr5lqIFc76ZZb
 5e0do7Y2NA3anxjjEQ+kcNYGtmyW38wVsVqiIBJnGEzJucPGI8FbisgPd1XdjqPAcXQE
 VqOmfZPXnTlhqnPmebHsDCU0B2A3gx3qh3moPnlcGFqdaG/G3Psf36RCkMHMJmKYMYoU
 xLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UKroOh2PouJyW9aIDGfDz6KjqY9gVQj12EPFSDublmA=;
 b=doB2hHLyK1qss23xD7c0cNUYb5VpUc+UdIPA32+uffDqTOTmlXUlEU0WX8GNpOvC6+
 ibpiPZDS7o2NGS3f/brmoS14eYNCty0Co2h9+oerqLi8Ef5/jIATKx9U3MKl2j8931a0
 SD4Mh/SELHGEpnT0D9V0tFrU8SXu1d+yY2YXqFZLmID0HQhqoa5o1zqIbxNy6ZpkOrZS
 TNy6/CGHTF/XgSwJxm2djwlZS2XwEY1O5l9OFilmfRyA7vo688tfeZei0JMLZ+phiFv+
 vYstDf5i9MQrJrOoLVFba9/pqwWgKWrT3sORNs1Ms8gyrEDDEsXtjHap2NH600sGfcb2
 kSDQ==
X-Gm-Message-State: AOAM530pO5Jtwhy2OhxzNoIK0yqMmqkG9Eh5KM1WBVRiVCZvNxQnFuGk
 0cAzgJ8jsaAE2fvUQdv9VLKwBMhjkZOD9YCM+SqrAg==
X-Google-Smtp-Source: ABdhPJwxlPUfGtzfy33AVJzkSkvw1FkcvOCUrRT614H0OzqvY7RE2DoHu5yieo8v50b5ATxQYMVDFbWOcCKbmYEaOxE=
X-Received: by 2002:a92:aa07:: with SMTP id j7mr3394310ili.40.1589547379907;
 Fri, 15 May 2020 05:56:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
 <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
 <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
 <CAK8P3a0u53rHSW=72CnnbhrY28Z+9f=Yv2K-bbj5OD+2Ds4unA@mail.gmail.com>
In-Reply-To: <CAK8P3a0u53rHSW=72CnnbhrY28Z+9f=Yv2K-bbj5OD+2Ds4unA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 15 May 2020 14:56:09 +0200
Message-ID: <CAMRc=Mf_vYt1J-cc6aZ2-Qv_YDEymVoC7ZiwuG9BrXoGMsXepw@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055620_923352_60306B54 
X-CRM114-Status: GOOD (  30.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAxNSBtYWogMjAyMCBvIDE0OjA0IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5h
cGlzYcWCKGEpOgo+Cj4gT24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgOToxMSBBTSBCYXJ0b3N6IEdv
bGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPiA+Cj4gPiBjencuLCAxNCBtYWogMjAy
MCBvIDE4OjE5IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgo+ID4g
Pgo+ID4gPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAxMDowMCBBTSBCYXJ0b3N6IEdvbGFzemV3
c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPiA+ID4gPiArc3RhdGljIHVuc2lnbmVkIGludCBt
dGtfbWFjX2ludHJfcmVhZF9hbmRfY2xlYXIoc3RydWN0IG10a19tYWNfcHJpdiAqcHJpdikKPiA+
ID4gPiArewo+ID4gPiA+ICsgICAgICAgdW5zaWduZWQgaW50IHZhbDsKPiA+ID4gPiArCj4gPiA+
ID4gKyAgICAgICByZWdtYXBfcmVhZChwcml2LT5yZWdzLCBNVEtfTUFDX1JFR19JTlRfU1RTLCAm
dmFsKTsKPiA+ID4gPiArICAgICAgIHJlZ21hcF93cml0ZShwcml2LT5yZWdzLCBNVEtfTUFDX1JF
R19JTlRfU1RTLCB2YWwpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIHJldHVybiB2YWw7Cj4g
PiA+ID4gK30KPiA+ID4KPiA+ID4gRG8geW91IGFjdHVhbGx5IG5lZWQgdG8gcmVhZCB0aGUgcmVn
aXN0ZXI/IFRoYXQgaXMgdXN1YWxseSBhIHJlbGF0aXZlbHkKPiA+ID4gZXhwZW5zaXZlIG9wZXJh
dGlvbiwgc28gaWYgcG9zc2libGUgdHJ5IHRvIHVzZSBjbGVhciB0aGUgYml0cyB3aGVuCj4gPiA+
IHlvdSBkb24ndCBjYXJlIHdoaWNoIGJpdHMgd2VyZSBzZXQuCj4gPiA+Cj4gPgo+ID4gSSBkbyBj
YXJlLCBJJ20gYWZyYWlkLiBUaGUgcmV0dXJuZWQgdmFsdWUgaXMgYmVpbmcgdXNlZCBpbiB0aGUg
bmFwaQo+ID4gcG9sbCBjYWxsYmFjayB0byBzZWUgd2hpY2ggcmluZyB0byBwcm9jZXNzLgo+Cj4g
SSBzdXBwb3NlIHRoZSBvdGhlciBjYWxsZXJzIGFyZSBub3QgcGVyZm9ybWFuY2UgY3JpdGljYWwu
Cj4KPiBGb3IgdGhlIHJ4IGFuZCB0eCBwcm9jZXNzaW5nLCBpdCBzaG91bGQgYmUgYmV0dGVyIHRv
IGp1c3QgYWx3YXlzIGxvb2sgYXQKPiB0aGUgcXVldWUgZGlyZWN0bHkgYW5kIGlnbm9yZSB0aGUg
aXJxIHN0YXR1cywgaW4gcGFydGljdWxhciB3aGVuIHlvdQo+IGFyZSBhbHJlYWR5IGluIHBvbGxp
bmcgbW9kZTogc3VwcG9zZSB5b3UgcmVjZWl2ZSB0ZW4gZnJhbWVzIGF0IG9uY2UKPiBhbmQgb25s
eSBwcm9jZXNzIGZpdmUgYnV0IGNsZWFyIHRoZSBpcnEgZmxhZy4KPgo+IFdoZW4gdGhlIHBvbGwg
ZnVuY3Rpb24gaXMgY2FsbGVkIGFnYWluLCB5b3Ugc3RpbGwgbmVlZCB0byBwcm9jZXNzIHRoZQo+
IG90aGVycywgYnV0IEkgd291bGQgYXNzdW1lIHRoYXQgdGhlIHN0YXR1cyB0ZWxscyB5b3UgdGhh
dCBub3RoaW5nCj4gbmV3IGhhcyBhcnJpdmVkIHNvIHlvdSBkb24ndCBwcm9jZXNzIHRoZW0gdW50
aWwgdGhlIG5leHQgaW50ZXJydXB0Lgo+Cj4gRm9yIHRoZSBzdGF0aXN0aWNzLCBJIGFzc3VtZSB5
b3UgZG8gbmVlZCB0byBsb29rIGF0IHRoZSBpcnEgc3RhdHVzLAo+IGJ1dCB0aGlzIGRvZXNuJ3Qg
aGF2ZSB0byBiZSBkb25lIGluIHRoZSBwb2xsIGZ1bmN0aW9uLiBIb3cgYWJvdXQKPiBzb21ldGhp
bmcgbGlrZToKPgo+IC0gaW4gaGFyZGlycSBjb250ZXh0LCByZWFkIHRoZSBpcnEgc3RhdHVzIHdv
cmQKPiAtIGlycSByeCBvciB0eCBpcnEgcGVuZGluZywgY2FsbCBuYXBpX3NjaGVkdWxlCj4gLSBp
ZiBzdGF0cyBpcnEgcGVuZGluZywgc2NoZWR1bGUgYSB3b3JrIGZ1bmN0aW9uCj4gLSBpbiBuYXBp
IHBvbGwsIHByb2Nlc3MgYm90aCBxdWV1ZXMgdW50aWwgZW1wdHkgb3IKPiAgIGJ1ZGdldCBleGhh
dXN0ZWQKPiAtIGlmIHBhY2tldCBwcm9jZXNzaW5nIGNvbXBsZXRlZCBpbiBwb2xsIGZ1bmN0aW9u
Cj4gICBhY2sgdGhlIGlycSBhbmQgY2hlY2sgYWdhaW4sIGNhbGwgbmFwaV9jb21wbGV0ZQo+IC0g
aW4gd29yayBmdW5jdGlvbiwgaGFuZGxlIHN0YXRzIGlycSwgdGhlbiBhY2sgaXQKPgoKSSBzZWUg
eW91ciBwb2ludC4gSSdsbCB0cnkgdG8gY29tZSB1cCB3aXRoIHNvbWV0aGluZyBhbmQgc2VuZCBh
IG5ldwp2ZXJzaW9uIG9uIE1vbmRheS4KCj4gPiA+ID4gK3N0YXRpYyB2b2lkIG10a19tYWNfdHhf
Y29tcGxldGVfYWxsKHN0cnVjdCBtdGtfbWFjX3ByaXYgKnByaXYpCj4gPiA+ID4gK3sKPiA+ID4g
PiArICAgICAgIHN0cnVjdCBtdGtfbWFjX3JpbmcgKnJpbmcgPSAmcHJpdi0+dHhfcmluZzsKPiA+
ID4gPiArICAgICAgIHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2ID0gcHJpdi0+bmRldjsKPiA+ID4g
PiArICAgICAgIGludCByZXQ7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgZm9yICg7Oykgewo+
ID4gPiA+ICsgICAgICAgICAgICAgICBtdGtfbWFjX2xvY2socHJpdik7Cj4gPiA+ID4gKwo+ID4g
PiA+ICsgICAgICAgICAgICAgICBpZiAoIW10a19tYWNfcmluZ19kZXNjc19hdmFpbGFibGUocmlu
ZykpIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWFjX3VubG9jayhwcml2
KTsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gPiArICAgICAg
ICAgICAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0ID0gbXRrX21h
Y190eF9jb21wbGV0ZV9vbmUocHJpdik7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQp
IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWFjX3VubG9jayhwcml2KTsK
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gPiArICAgICAgICAg
ICAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKG5ldGlmX3F1ZXVl
X3N0b3BwZWQobmRldikpCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbmV0aWZfd2Fr
ZV9xdWV1ZShuZGV2KTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICAgIG10a19tYWNf
dW5sb2NrKHByaXYpOwo+ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ICt9Cj4gPiA+Cj4gPiA+IEl0
IGxvb2tzIGxpa2UgbW9zdCBvZiB0aGUgc3R1ZmYgaW5zaWRlIG9mIHRoZSBsb29wIGNhbiBiZSBw
dWxsZWQgb3V0Cj4gPiA+IGFuZCBvbmx5IGRvbmUgb25jZSBoZXJlLgo+ID4gPgo+ID4KPiA+IEkg
ZGlkIHRoYXQgaW4gb25lIG9mIHRoZSBwcmV2aW91cyBzdWJtaXNzaW9ucyBidXQgaXQgd2FzIHBv
aW50ZWQgb3V0Cj4gPiB0byBtZSB0aGF0IGEgcGFyYWxsZWwgVFggcGF0aCBtYXkgZmlsbCB1cCB0
aGUgcXVldWUgYmVmb3JlIEkgd2FrZSBpdC4KPgo+IFJpZ2h0LCBJIHNlZSB5b3UgcGx1Z2dlZCB0
aGF0IGhvbGUsIGhvd2V2ZXIgdGhlIHdheSB5b3UgaG9sZCB0aGUKPiBzcGlubG9jayBhY3Jvc3Mg
dGhlIGV4cGVuc2l2ZSBETUEgbWFuYWdlbWVudCBidXQgdGhlbiBnaXZlIGl0Cj4gdXAgaW4gZWFj
aCBsb29wIGl0ZXJhdGlvbiBmZWVscyBsaWtlIHRoaXMgaXMgbm90IHRoZSBtb3N0IGVmZmljaWVu
dAo+IHdheS4KPgoKTWF5YmUgbXkgdGhpbmtpbmcgaXMgd3JvbmcgaGVyZSwgYnV0IEkgYXNzdW1l
ZCB0aGF0IHdpdGggYSBzcGlubG9jawppdCdzIGJldHRlciB0byBnaXZlIG90aGVyIHRocmVhZHMg
dGhlIGNoYW5jZSB0byBydW4gaW4gYmV0d2VlbiBlYWNoCml0ZXJhdGlvbi4gSSBkaWRuJ3QgYmVu
Y2htYXJrIGl0IHRob3VnaC4KCj4gVGhlIGVhc3kgd2F5IHdvdWxkIGJlIHRvIGp1c3QgaG9sZCB0
aGUgbG9jayBhY3Jvc3MgdGhlIGVudGlyZQo+IGxvb3AgYW5kIHRoZW4gYmUgc3VyZSB5b3UgZG8g
aXQgcmlnaHQuIEFsdGVybmF0aXZlbHkgeW91IGNvdWxkCj4gbWluaW1pemUgdGhlIGxvY2tpbmcg
YW5kIG9ubHkgZG8gdGhlIHdha2V1cCBhZnRlciB1cCBkbyB0aGUgZmluYWwKPiB1cGRhdGUgdG8g
dGhlIHRhaWwgcG9pbnRlciwgYXQgd2hpY2ggcG9pbnQgeW91IGtub3cgdGhlIHF1ZXVlIGlzIG5v
dAo+IGZ1bGwgYmVjYXVzZSB5b3UgaGF2ZSBqdXN0IGZyZWVkIHVwIGF0IGxlYXN0IG9uZSBlbnRy
eS4KPgoKTWFrZXMgc2Vuc2UsIEknbGwgc2VlIHdoYXQgSSBjYW4gZG8uCgpCYXJ0b3N6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==

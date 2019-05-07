Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FE61641E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hEDcZmPkPGHtJnknF376H+03aZZ9JP5On7ynM2osAr0=; b=DNJcOWpSdPj2Giv70ijqZokr3A
	BVgHfku+YtyUny2wBMLlEOWyImGECkTjK1vmsnOVkMXSQTQBTtVXicdZTU/vy/OG6hL6Z5UrAtAJS
	BWXQ+SiWJhEyb1xs14u6D2cnTWBvj3UEF85nyTHC6r+EPIh7TBMuTcURIB8XEXMyzVNA7s/uEqQWL
	ze05Gr0tOzkTIQyMM4OsBQKkVCP3iMmeRwuihdmi+iMrWOtK32oNe15y0U9FeWkooBxx9yE8AGO5b
	n62n6Qnwcf1MPvtluQow0i9klHs5NeFU4MxIvonDORc34bSlbczDoc1B65YbVDc5zHWkVhqLrokys
	FlBRo3gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzfP-00051e-Th; Tue, 07 May 2019 12:57:55 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzfI-00051G-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:57:51 +0000
Received: by mail-it1-x144.google.com with SMTP id q14so26235397itk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=0tpjcX8McjyYgv5/kWuINyynciVnOO7CJ86ikKZd+4g=;
 b=Rxxs5hK0qGnzH7fqh66e4Eo+TGmNsKGD4tP0wvGisqVV3aZM0m3FHn1ocajb+McYSu
 zbIzQeYY2ji7/XVMqA7EwE+MbcRV455kTsQx4IofquUaVFBi+s5ScLRn3qmLaxJ2AHsc
 U31Hq+5sV3IV/BsGdTFBkPWbaiZxj4/V5jhy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=0tpjcX8McjyYgv5/kWuINyynciVnOO7CJ86ikKZd+4g=;
 b=sSOts2k5a75EzwwGNSk5ZsP4xYZQc5nGBzf+0fCxYudyxs0JTtlOE9rgITY11tg0Ft
 lzAdPKM/cR/170F6fAAjbPVmuJGt5kf8swcKP+vAVgB2thII6JRP3q+Ya4ueeZMYT4y9
 7B1dGaqMo2mQIMtTpw7umwj/Wv2mELwzfc6A5kwUy7NyKFF27DQp7fD1yOFvIcf4hWZo
 0Plcd/8G76lzbq+/iahWJ0nN0p2mhRzlGdMari74Yr7JxfrbMpIe/fFClOQlSZw8DVfW
 7V3kdaMiebWk3BBMv5hv5HXcfo2B5rwsvxweEfO0Ht9AlHFVYHmMHvD25MWG+EdYfgWd
 WhdQ==
X-Gm-Message-State: APjAAAXg0Uun7DgfnWjWDOR1oh3srKYgDRIdatOFl0m7RC3iksi+WipN
 q6z2HtfryIb9ibtDpe1j174uR9g5dA7iqfjyz62Qng==
X-Google-Smtp-Source: APXvYqz8eEfTlDbhEWXsRqixp4YhLJz9Bp5ddH/g4ZeYiffylPkssVgZj/k76i5n4HZ+v9owl78h9IKz8CO5jtPfxZc=
X-Received: by 2002:a24:1cc4:: with SMTP id c187mr2490255itc.107.1557233867322; 
 Tue, 07 May 2019 05:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
 <20190503144651.ttqfha656dykqjzo@flea>
 <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
 <20190506133101.c3twwwydy5mez3db@core.my.home>
In-Reply-To: <20190506133101.c3twwwydy5mez3db@core.my.home>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 18:27:35 +0530
Message-ID: <CAMty3ZDNi7t-FSj=Wt3p39=CWx-o6QzKgbMKYd93mgDLBMVrbg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: allwinner: h6:
 orangepi-one-plus: Add Ethernet support
To: Jagan Teki <jagan@amarulasolutions.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, 
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Michael Trimarchi <michael@amarulasolutions.com>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-amarula <linux-amarula@amarulasolutions.com>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_055748_940370_B72C579E 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gTW9uLCBNYXkgNiwgMjAxOSBhdCA3OjAxIFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAwMzowMzoxNVBNICsw
NTMwLCBKYWdhbiBUZWtpIHdyb3RlOgo+ID4gT24gRnJpLCBNYXkgMywgMjAxOSBhdCA4OjE2IFBN
IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBPbiBGcmksIE1heSAwMywgMjAxOSBhdCAwNToyOToyOFBNICswNTMwLCBKYWdhbiBUZWtp
IHdyb3RlOgo+ID4gPiA+IEFkZCBFdGhlcm5ldCBzdXBwb3J0IGZvciBvcmFuZ2VwaS1vbmUtcGx1
cyBib2FyZCwKPiA+ID4gPgo+ID4gPiA+IC0gRXRoZXJuZXQgcG9ydCBjb25uZWN0ZWQgdmlhIFJU
TDgyMTFFIFBIWQo+ID4gPiA+IC0gUEhZIHN1cHBpbGVkIHdpdGgKPiA+ID4gPiAgIEdNQUMtMlY1
LCBmaXhlZCByZWd1bGF0b3Igd2l0aCBHTUFDX0VOIHBpbiB2aWEgUEQ2Cj4gPiA+ID4gICBHTUFD
LTNWLCB3aGljaCBpcyBzdXBwbGllZCBieSBWQ0MzVjMtTUFDIHZpYSBhbGRvMgo+ID4gPiA+IC0g
UkdNSUktUkVTRVQgcGluIGNvbm5lY3RlZCB2aWEgUEQxNAo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gPiA+Cj4g
PiA+IFlvdXIgY29tbWl0IGxvZyBzaG91bGQgYmUgaW1wcm92ZWQuIFdlIGNhbiBnZXQgdGhvc2Ug
aW5mb3JtYXRpb25zIGZyb20KPiA+ID4gdGhlIHBhdGNoIGl0c2VsZi4uLgo+ID4KPiA+IFRob3Vn
aHQgaXQgd2FzIGEgY2xlYXIgY29tbWl0IGxvZyA6KSAgd2lsbCB1cGRhdGUgYW55d2F5Lgo+ID4K
PiA+ID4KPiA+ID4gPiAtLS0KPiA+ID4gPiBDaGFuZ2VzIGZvciB2MjoKPiA+ID4gPiAtIGVtYWMg
Y2hhbmdlcyBvbiB0b3Agb2YgaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDg5
OTUyOS8KPiA+ID4gPiAgIHNlcmllcwo+ID4gPiA+Cj4gPiA+ID4gIC4uLi9hbGx3aW5uZXIvc3Vu
NTBpLWg2LW9yYW5nZXBpLW9uZS1wbHVzLmR0cyB8ICA4ICsrKysKPiA+ID4gPiAgLi4uL2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgICAgIHwgNDIgKysrKysrKysrKysrKysr
KysrKwo+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykKPiA+ID4gPgo+
ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtb3JhbmdlcGktb25lLXBsdXMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LW9yYW5nZXBpLW9uZS1wbHVzLmR0cwo+ID4gPiA+IGluZGV4IDEyZTE3NTY3YWI1
Ni4uOWU4ZWQxMDUzNzE1IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS1vbmUtcGx1cy5kdHMKPiA+ID4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktb25lLXBsdXMu
ZHRzCj4gPiA+ID4gQEAgLTksNCArOSwxMiBAQAo+ID4gPiA+ICAvIHsKPiA+ID4gPiAgICAgICBt
b2RlbCA9ICJPcmFuZ2VQaSBPbmUgUGx1cyI7Cj4gPiA+ID4gICAgICAgY29tcGF0aWJsZSA9ICJ4
dW5sb25nLG9yYW5nZXBpLW9uZS1wbHVzIiwgImFsbHdpbm5lcixzdW41MGktaDYiOwo+ID4gPiA+
ICsKPiA+ID4gPiArICAgICBhbGlhc2VzIHsKPiA+ID4gPiArICAgICAgICAgICAgIGV0aGVybmV0
MCA9ICZlbWFjOwo+ID4gPiA+ICsgICAgIH07Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+
ICsmZW1hYyB7Cj4gPiA+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICB9Owo+ID4g
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
b3JhbmdlcGkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1v
cmFuZ2VwaS5kdHNpCj4gPiA+ID4gaW5kZXggNjJlMjc5NDhhM2ZhLi5jNDhlMjRhY2FmOGEgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaQo+ID4gPiA+IEBAIC00NSw2ICs0NSw0OCBAQAo+ID4g
PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4g
PiA+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiA+ICAgICAgIH07
Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIC8qCj4gPiA+ID4gKyAgICAgICogVGhlIGJvYXJkIHVz
ZXMgMi41ViBSR01JSSBzaWduYWxsaW5nLiBQb3dlciBzZXF1ZW5jZSB0byBlbmFibGUKPiA+ID4g
PiArICAgICAgKiB0aGUgcGh5IGlzIHRvIGVuYWJsZSBHTUFDLTJWNSBhbmQgR01BQy0zViAoYWxk
bzIpIHBvd2VyIHJhaWxzCj4gPiA+ID4gKyAgICAgICogYXQgdGhlIHNhbWUgdGltZSBhbmQgdG8g
d2FpdCAxMDBtcy4KPiA+ID4gPiArICAgICAgKi8KPiA+ID4gPiArICAgICByZWdfZ21hY18ydjU6
IGdtYWMtMnY1IHsKPiA+ID4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKPiA+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gImdtYWMtMnY1
IjsKPiA+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDI1MDAw
MDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MjUw
MDAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICBzdGFydHVwLWRlbGF5LXVzID0gPDEwMDAwMD47
Cj4gPiA+ID4gKyAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICBncGlvID0gPCZwaW8gMyA2IEdQSU9fQUNUSVZFX0hJR0g+OyAvKiBHTUFDX0VOOiBQ
RDYgKi8KPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICAvKiBUaGUgcmVhbCBwYXJlbnQg
b2YgZ21hYy0ydjUgaXMgcmVnX3ZjYzV2LCBidXQgd2UgbmVlZCB0bwo+ID4gPiA+ICsgICAgICAg
ICAgICAgICogZW5hYmxlIHR3byByZWd1bGF0b3JzIHRvIHBvd2VyIHRoZSBwaHkuIFRoaXMgaXMg
b25lIHdheQo+ID4gPiA+ICsgICAgICAgICAgICAgICogdG8gYWNoaWV2ZSB0aGF0Lgo+ID4gPiA+
ICsgICAgICAgICAgICAgICovCj4gPiA+ID4gKyAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZy
ZWdfYWxkbzI+OyAvKiBWQ0MzVjMtTUFDOiBHTUFDLTNWICovCj4gPiA+ID4gKyAgICAgfTsKPiA+
ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gKyZlbWFjIHsKPiA+ID4gPiArICAgICBwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiA+ICsgICAgIHBpbmN0cmwtMCA9IDwmZXh0X3JnbWlp
X3BpbnM+Owo+ID4gPiA+ICsgICAgIHBoeS1tb2RlID0gInJnbWlpIjsKPiA+ID4gPiArICAgICBw
aHktaGFuZGxlID0gPCZleHRfcmdtaWlfcGh5PjsKPiA+ID4gPiArICAgICBwaHktc3VwcGx5ID0g
PCZyZWdfZ21hY18ydjU+Owo+ID4gPiA+ICsgICAgIGFsbHdpbm5lcixyeC1kZWxheS1wcyA9IDwx
NTAwPjsKPiA+ID4gPiArICAgICBhbGx3aW5uZXIsdHgtZGVsYXktcHMgPSA8NzAwPjsKPiA+ID4g
PiArfTsKPiA+ID4gPiArCj4gPiA+ID4gKyZtZGlvIHsKPiA+ID4gPiArICAgICBleHRfcmdtaWlf
cGh5OiBldGhlcm5ldC1waHlAMSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPiA+ID4gPiArICAgICAgICAgICAgIHJlZyA9
IDwxPjsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmcGlv
IDMgMTQgR1BJT19BQ1RJVkVfTE9XPjsgLyogUkdNSUktUkVTRVQ6IFBEMTQgKi8KPiA+ID4gPiAr
ICAgICAgICAgICAgIHJlc2V0LWFzc2VydC11cyA9IDwxNTAwMD47Cj4gPiA+ID4gKyAgICAgICAg
ICAgICByZXNldC1kZWFzc2VydC11cyA9IDw0MDAwMD47Cj4gPiA+ID4gKyAgICAgfTsKPiA+ID4g
PiAgfTsKPiA+ID4KPiA+ID4gLi4uIGhvd2V2ZXIsIGF0IG5vIHBvaW50IGluIHRpbWUgeW91IGV4
cGxhaW4gd2h5IHlvdSBtYWRlIHRoYXQgc3dpdGNoLAo+ID4gPiBhbmQgd2hpbGUgbW9zdCBvZiB0
aGUgZGVmaW5pdGlvbiBvZiB0aGUgRU1BQyBub2RlcyBpcyBpbiB0aGUgRFRTSSwgeW91Cj4gPiA+
IG9ubHkgZW5hYmxlIGl0IGluIG9uZSBEVFMuCj4gPgo+ID4gVGhlIGR0c2kgaXMgc2hhcmVkIGIv
dyAxKyBhbmQgbGl0ZTIgYW5kIDErIGhhcyBlbWFjLCBzbyBJIGVuYWJsZWQgdGhlCj4gPiBzdGF0
dXMgZGlyZWN0bHkgb24gZHRzIGFuZCBrZWVwaW5nIHRoZSByZWxldmFudCBub2RlcyBvbiBkdHNp
IGp1c3QKPiA+IGxpa2UgU29DIGR0c2kgZG9lcy4gZG8gSSBuZWVkIHRvIG1lbnRpb24gdGhpcyBp
biBjb21taXQgbG9nPwo+Cj4gTGl0ZSAyIGRvZXNuJ3QgaGF2ZSByZWdfZ21hY18ydjUgYW5kIGl0
IGFsc28gZG9lc24ndCBoYXZlIHRoZSBleHRlcm5hbCBwaHkuCj4gQnV0IHdpdGggdGhpcyBwYXRj
aCwgcmVnX2dtYWNfMnY1IHdpbGwgYWxzbyBzaG93IHVwIGluIHRoZSBMaXRlIDIncyBmaW5hbAo+
IERUQi4KPgo+IENvbWFwcmVkIHRvIFNvQyBkdHNpLCB0aGUgU29DIGFsd2F5cyBoYXMgdGhpbmdz
IHRoYXQgYXJlIGluIHRoZSBkdHNpLCB0aGV5Cj4gYXJlIGp1c3Qgbm90IGVuYWJsZWQvdXNlZCBi
eSB0aGUgYm9hcmQsIGJ1dCB0aGV5IGFyZSBwcmVzZW50IG9uIHRoZSBjaGlwLgo+Cj4gU28gdGhp
cyBjb21lcyBkb3duIHRvIHdoYXQgdGhlIG1lYW5pbmcgb2YgYm9hcmQtbGV2ZWwgZHRzaSBzaG91
bGQgYmUuIEkKPiBkb3VidCB3ZSB3YW50IGl0IHRvIG1lYW4gImEgY29sbGVjdGlvbiBvZiBzdHVm
ZiB0aGF0IG1heSBvciBtYXkgbm90IGJlCj4gcHJlc2VudCBvbiB0aGUgYm9hcmRzIHRoYXQgZGVw
ZW5kIG9uIGl0Ii4KCldhcyB0aGlua2luZyBpbiBhbm90aGVyIGRpcmVjdGlvbiwgdGhhbmtzIGZv
ciB0aGUgaW5mby4gYWdyZWVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC9218B9D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcVVL05UBrgKAV5nzsEx10tyiHgTo9MDIz0d1fb9/FY=; b=EzWssxddB2r2K/
	LWHW+vIl8QkWWNCzFwqgjLfJ8ec1IT7rqPZPIIieTOclG7xWz8qqYVLK4DKtq2jIc4yisyjI1BlA9
	i+otIi58nlaHFtVr8XGOYGf6HTLUsO4OZDpX4R4Bl++Zoi9RgPjFN7sekHRyPFqSZGl1PDmCtsOK7
	MBBfJP5xhiHQu+0ffqARo9P/sFSXrs+NEcovLPSu0FkTdzHJb2AvEcnzITIQbN6Mkz9ChOANTcbwO
	S9TUxlmW+t4aYnVdpQBI/I4yAJkpa4A2x+ySfel0ULpeNh7lCgsvOYdCQrimOCxJhKGGgfmV+gvIN
	fg6GjRQQRUn0rFcR8l5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwdX-00044J-2K; Thu, 19 Mar 2020 14:59:07 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwdL-00043h-Ad
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:58:57 +0000
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id a59de4b0
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Thu, 19 Mar 2020 07:52:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 15C8C4C7F0;
 Thu, 19 Mar 2020 14:51:49 +0000 (UTC)
Message-ID: <d32e59aeb8395af1ae7ac2daa1ce985c56c14acc.camel@aosc.io>
Subject: Re: [linux-sunxi] [PATCH v2 5/5] arm64: allwinner: dts: a64: add
 LCD-related device nodes for PinePhone
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>,  Rob Herring <robh+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,  Ondrej Jirman
 <megous@megous.com>
Date: Thu, 19 Mar 2020 22:51:36 +0800
In-Reply-To: <20200316133503.144650-6-icenowy@aosc.io>
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-6-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584629521;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 bh=p5Ck7dUiaERSo0QVXTsJS7JDgXxthBKb9LsSdQI8mXo=;
 b=o7VpwL9TrDlUsvQeexpwLURHqEq8rejngmj+gnMy03J0jB/SMkZO1e6NwjBPfVaszHVf1e
 SlvcX4TTjNKpkULnFXRvaxuIelgtPfyfZAd8bYOGtiRdwbs8acvJJU3uviggbQlY9O9Mv+
 QoltOKGJe07JmvTwJPNdAQJ2EcrtG20=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_075855_416723_4DF750B0 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMjAtMDMtMTbmmJ/mnJ/kuIDnmoQgMjE6MzUgKzA4MDDvvIxJY2Vub3d5IFpoZW5n5YaZ
6YGT77yaCj4gUGluZVBob25lIHVzZXMgUFdNIGJhY2tsaWdodCBhbmQgYSBYQkQ1OTkgTENEIHBh
bmVsIG92ZXIgRFNJIGZvcgo+IGRpc3BsYXkuCj4gCj4gQWRkIGl0cyBkZXZpY2Ugbm9kZXMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgo+IC0tLQo+
IE5vIGNoYW5nZXMgaW4gdjIuCj4gCj4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtcGlu
ZXBob25lLmR0c2kgICB8IDM3Cj4gKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMzcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LXBpbmVwaG9uZS5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LXBpbmVwaG9uZS5kdHNpCj4gaW5kZXggY2VmZGExNDVj
M2M5Li45NmQ5MTUwNDIzZTAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWE2NC1waW5lcGhvbmUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtcGluZXBob25lLmR0c2kKPiBAQCAtMTYsNiArMTYsMTUg
QEAgYWxpYXNlcyB7Cj4gIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKPiAgCX07Cj4gIAo+ICsJYmFja2xp
Z2h0OiBiYWNrbGlnaHQgewo+ICsJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7Cj4gKwkJ
cHdtcyA9IDwmcl9wd20gMCA1MDAwMCBQV01fUE9MQVJJVFlfSU5WRVJURUQ+Owo+ICsJCWJyaWdo
dG5lc3MtbGV2ZWxzID0gPDAgMTYgMTggMjAgMjIgMjQgMjYgMjkgMzIgMzUgMzggNDIKPiA0NiA1
MSA1NiA2MiA2OCA3NSA4MyA5MSAxMDA+OwoKU2hvdWxkIEkgZHJvcCB0aGUgMCBoZXJlIGFuZCBy
ZXBsYWNlIGl0IHdpdGggMTQ/CgpJIGhhdmUgaGVhcmQgY29tbXVuaXR5IGNvbXBsYWluaW5nIGFi
b3V0IHNldHRpbmcgMCB0byBicmlnaHRuZXNzIG1ha2UKdGhlIHNjcmVlbiBibGFjay4KCihJIHRo
aW5rIGluIHRoaXMgc2l0dWF0aW9uIGJsX3Bvd2VyIG9yIGJsYW5rIHRoZSBEU0kgcGFuZWwgY2Fu
IHN0aWxsCnRvdGFsbHkgc2h1dCBkb3duIHRoZSBiYWNrbGlnaHQpLgoKPiArCQlkZWZhdWx0LWJy
aWdodG5lc3MtbGV2ZWwgPSA8MTU+Owo+ICsJCWVuYWJsZS1ncGlvcyA9IDwmcGlvIDcgMTAgR1BJ
T19BQ1RJVkVfSElHSD47IC8qIFBIMTAgKi8KPiArCQlwb3dlci1zdXBwbHkgPSA8JnJlZ19sZG9f
aW8wPjsKPiArCX07Cj4gKwo+ICAJY2hvc2VuIHsKPiAgCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWww
OjExNTIwMG44IjsKPiAgCX07Cj4gQEAgLTg0LDYgKzkzLDMwIEBAICZkYWkgewo+ICAJc3RhdHVz
ID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJmRlIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsK
PiArCj4gKyZkcGh5IHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZkc2kgewo+
ICsJdmNjLWRzaS1zdXBwbHkgPSA8JnJlZ19kbGRvMT47Cj4gKwkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiArCSNzaXplLWNlbGxzID0gPDA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArCXBh
bmVsQDAgewo+ICsJCWNvbXBhdGlibGUgPSAieGluZ2JhbmdkYSx4YmQ1OTkiOwo+ICsJCXJlZyA9
IDwwPjsKPiArCQlyZXNldC1ncGlvcyA9IDwmcGlvIDMgMjMgR1BJT19BQ1RJVkVfTE9XPjsgLyog
UEQyMyAqLwo+ICsJCWlvdmNjLXN1cHBseSA9IDwmcmVnX2RsZG8yPjsKPiArCQl2Y2Mtc3VwcGx5
ID0gPCZyZWdfbGRvX2lvMD47Cj4gKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+Owo+ICsJfTsK
PiArfTsKPiArCj4gICZlaGNpMCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gQEAgLTE4
OCw2ICsyMjEsMTAgQEAgJnJfcGlvIHsKPiAgCSAqLwo+ICB9Owo+ICAKPiArJnJfcHdtIHsKPiAr
CXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICZyX3JzYiB7Cj4gIAlzdGF0dXMgPSAib2th
eSI7Cj4gIAo+IC0tIAo+IDIuMjQuMQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

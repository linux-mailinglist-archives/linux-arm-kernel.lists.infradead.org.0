Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE669736F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/6qIohcY3Tj3awi2UN/rY2FYJCT/SKWxuK6xqnYlPU=; b=j+fioNIqWInoPr
	I4ZAjVKHbiU5iW+lv5Bzxu1Qh+iSrEQhHjqqL100DpiSKJhKcA21EOmjHHa+e7WpRrmxFOOXw6TQd
	0mDoSPiWBVYftM0XWZAHeoU/9k7UZZmJtk1gANwIvbQxP/v87aAlxJixRggRyoGIMrsNNV+oeK76J
	mzVdgckta2/LmjeaVtzn4MdxwTkZa4uzY+VKkVLlk7ghs6t91izqZ1nXIICApttdrIcyb0xNHYaEw
	beoKV8v2olM7JN6PIs5TPqxRmVLFMkgO3IjxvJseyEdyZ/Vkr9sUF1fJQekkXO1xba3jGhdwu1G44
	zEdtKa/+E2b05eO25Jtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMNg-00068Y-KI; Wed, 24 Jul 2019 18:52:52 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMNT-000683-EV
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:52:40 +0000
Received: by mail-wm1-f68.google.com with SMTP id l2so42528751wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:52:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3hQEInE7wPS7npsqDdyReFD8+DVG0G6gksarFiD+BUE=;
 b=p79E/PPX1ftnrVhS1gMqqrpAcu+unN2aomCNPtintZx4rfXxT6nJCQpPl/kKgULvld
 4ZvxILgWRahbgOg3XE+zlGNdTYIV9t3VaSyMCmOADOAEcbXIaEiZdOGDyaKSJuRuFDo8
 7fssJ+LxcJtMcRfs7FYg8uuAZpsMFCFScV1VyLEEnhA4ZPIL+ZtNri/jBbw4X3BgITju
 7WCRTh/XUAD8h5lH3qRN3hpZQV8JwyGaoEDDuwW/DxnUVdlwPCYf5MSI48nGiQGkFf35
 VzezWsEyoOZL6tYrlrJI+tWNeXX6xptFq8kOwGotQwdtRsbrL4Cx7591UVsclAzY3rJV
 MdJg==
X-Gm-Message-State: APjAAAVmDdg7s3JFIr2+tQoIYCb8DvblcbZvqAeDPhVqtd+3HL98Qmc5
 dcVNnFvJNeQfOuGwyAUW5W4=
X-Google-Smtp-Source: APXvYqybZTUdLFKKpdj8xlUt1rpHKS6FMa+wFWKprezrQieSHRxtcvXpOkuvDUOeXbkAfzPmH5YXgQ==
X-Received: by 2002:a05:600c:10ce:: with SMTP id
 l14mr73562275wmd.118.1563994357830; 
 Wed, 24 Jul 2019 11:52:37 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id w24sm37230033wmc.30.2019.07.24.11.52.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 11:52:36 -0700 (PDT)
Date: Wed, 24 Jul 2019 20:52:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 11/11] drm: exynos: mixer: Add interconnect support
Message-ID: <20190724185234.GB14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122029eucas1p2915f536d9ef43a7bd043a878a553439f@eucas1p2.samsung.com>
 <20190723122016.30279-12-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-12-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115239_487755_85D92635 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MTZQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gRnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29t
Pgo+IAo+IFRoaXMgcGF0Y2ggYWRkcyBpbnRlcmNvbm5lY3Qgc3VwcG9ydCB0byBleHlub3MtbWl4
ZXIuIFBsZWFzZSBub3RlIHRoYXQgdGhlCj4gbWl4ZXIgd29ya3MgdGhlIHNhbWUgYXMgYmVmb3Jl
IHdoZW4gQ09ORklHX0lOVEVSQ09OTkVDVCBpcyAnbicuCj4gCj4gQ28tZGV2ZWxvcGVkLWJ5OiBB
cnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgfCA2OCArKysrKysr
KysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYzIGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3Mv
ZXh5bm9zX21peGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jCj4g
aW5kZXggN2IyNDMzOGZhZDNjLi5mYjc2Mzg1NGIzMDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX21peGVyLmMKPiBAQCAtMTMsNiArMTMsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgv
Y29tcG9uZW50Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvaTJjLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pbnRlcmNvbm5lY3QuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L2ludGVycnVwdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaXJxLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9rZXJuZWwuaD4KPiBAQCAtOTcsNiArOTgsNyBAQCBzdHJ1Y3QgbWl4ZXJfY29udGV4
dCB7Cj4gIAlzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjCSpjcnRjOwo+ICAJc3RydWN0IGV4eW5vc19k
cm1fcGxhbmUJcGxhbmVzW01JWEVSX1dJTl9OUl07Cj4gIAl1bnNpZ25lZCBsb25nCQlmbGFnczsK
PiArCXN0cnVjdCBpY2NfcGF0aAkJKnNvY19wYXRoOwo+ICAKPiAgCWludAkJCWlycTsKPiAgCXZv
aWQgX19pb21lbQkJKm1peGVyX3JlZ3M7Cj4gQEAgLTkzMSw2ICs5MzMsMzcgQEAgc3RhdGljIHZv
aWQgbWl4ZXJfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykKPiAg
CW1peGVyX3JlZ193cml0ZW1hc2sobWl4ZXJfY3R4LCBNWFJfSU5UX0VOLCAwLCBNWFJfSU5UX0VO
X1ZTWU5DKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lk
dGgoc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykKPiArewo+ICsJc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGUgPSAmY3J0Yy0+YmFzZS5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKPiArCXN0
cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBjcnRjLT5jdHg7Cj4gKwl1bnNpZ25lZCBsb25nIGJ3
LCBiYW5kd2lkdGggPSAwOwo+ICsJaW50IGksIGosIHN1YjsKPiArCgpFYXJseSBleGl0IGlmICFj
dHgtPnNvY19wYXRoLCBubyBuZWVkIHRvIGZpZ3VyZSBvdXQgdGhlIGJhbmR3aWR0aC4KT3B0aW9u
YWxseSBjaGVjayBpdCBiZWZvcmUgY2FsbGluZyBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3aWR0aCgp
IC0gc2hvdWxkCm5vdCBodXJ0IHJlYWRhYmlsaXR5LgoKPiArCWZvciAoaSA9IDA7IGkgPCBNSVhF
Ul9XSU5fTlI7IGkrKykgewo+ICsJCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gJmN0eC0+cGxh
bmVzW2ldLmJhc2U7Cj4gKwkJY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqZm9ybWF0Owo+
ICsKPiArCQlpZiAocGxhbmUtPnN0YXRlICYmIHBsYW5lLT5zdGF0ZS0+Y3J0YyAmJiBwbGFuZS0+
c3RhdGUtPmZiKSB7Cj4gKwkJCWZvcm1hdCA9IHBsYW5lLT5zdGF0ZS0+ZmItPmZvcm1hdDsKPiAr
CQkJYncgPSBtb2RlLT5oZGlzcGxheSAqIG1vZGUtPnZkaXNwbGF5ICoKPiArCQkJCQkJCWRybV9t
b2RlX3ZyZWZyZXNoKG1vZGUpOwo+ICsJCQlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFH
X0lOVEVSTEFDRSkKPiArCQkJCWJ3IC89IDI7Cj4gKwkJCWZvciAoaiA9IDA7IGogPCBmb3JtYXQt
Pm51bV9wbGFuZXM7IGorKykgewo+ICsJCQkJc3ViID0gaiA/IChmb3JtYXQtPnZzdWIgKiBmb3Jt
YXQtPmhzdWIpIDogMTsKPiArCQkJCWJhbmR3aWR0aCArPSBmb3JtYXQtPmNwcFtqXSAqIGJ3IC8g
c3ViOwo+ICsJCQl9Cj4gKwkJfQo+ICsJfQo+ICsKPiArCS8qIGFkZCAyMCUgc2FmZXR5IG1hcmdp
biAqLwo+ICsJYmFuZHdpZHRoID0gNVVMICogYmFuZHdpZHRoIC8gNDsKPiArCj4gKwlwcl9pbmZv
KCJleHlub3MtbWl4ZXI6IHNhZmUgYmFuZHdpZHRoICVsZCBCcHNcbiIsIGJhbmR3aWR0aCk7Cgpk
ZXZfZGJnKCkKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

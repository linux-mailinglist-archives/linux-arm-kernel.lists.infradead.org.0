Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6701B93A4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 21:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJx/vjSLE922kR8XNR9CkRvTIC3qP5v0qFkHyXEuU3w=; b=Lf64TEP+f1HyJadNOoLUI+ZZ2
	ZSI/uMGxBuDVFeNjxAZFlBWWlTmG3Xm8B0ctpUsrIgeikdpIDLfAq9eU9sVaM0uKtTcSPHNMh26Uu
	4O1VJYWxybASrAdI57Ua6eeaJo47PophQVE5nyu5+dZx7ifvFVh2GUQrF8TAGOz/0OM79qq+YbZOs
	x5EqhI7I9vMxQqIZrjUzFN5OeN+jqkHJRxfzz38hTB4MinpzrhVTdS5KtEPH4sI4gDG+OqlGn2vK6
	8iOIYnVbP8ff982AlDMUCLupHhuFwyy8L8QDRfJIbo2k5k+v6BsBLKsKzSzytTDCbMdABT/hda8mr
	yXvv1AaIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSn0c-0006Sl-0o; Sun, 26 Apr 2020 19:32:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSn0T-0006RQ-3n
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 19:32:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id d17so18025893wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 12:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ddfze3qGmVwKRJLH5Pd6gdehcdFm5JRcS337ydQjW/U=;
 b=jQcl+bpXmxhFBTQ1M9eHnLMzFVPHRyZ/cLzBouQvUYniMNhGBH+5AXm1DlBj9u1f4c
 Lipke/EQrl3ISBSW/H+ZzrEoH/o+rXVFzj3bMcTy/OhN46NydVkgIuaeUwxBeLscmw6a
 HKwpJ1HHGToP9mkZt0I9t1sW71QECAzPn6juMlTudg8KpqbEYVHCVXaXrYrJzUNQ5I+v
 mGnWB2NcnNCw02lB8lyhanUPJyy+ayrshbwzHW7sRZyt+JTvJFVqH6SbKx+Y97TL6jZ8
 MjSaKyS5VFxmn9GyhaDx/6k4pgUo+rmyfuOEXKqq6yH+g5H0UPmdewApYWVYML7KSN9U
 nk8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ddfze3qGmVwKRJLH5Pd6gdehcdFm5JRcS337ydQjW/U=;
 b=CzF10pIggalAoRwIeJS5+Bsg32fIRVhG14cTn9As4UkT2zPeWkOtOuF8yTheyivr/y
 uMwkTqYvT8YNtP0A+MrI9lDxca3aD4RWRY5H2y1BZXAdIWSe+TCie+T4W2jCSyS85neJ
 2ohkWEHS2auSERK8ESTa/7XAtT1PJEBoXR4e+7se28yfftiQYI06IKXg6FKVNiy6wBq4
 d4mJ1skBrrH6h4gmRXNDrxXBz0pyPUAWyq6yHbyuJsK85o5qLkZ5AZh16WQmTTMi+zzD
 edUP7xftbJCtLarAB1wL/eIqlD6iI0F96rkQ5qs6OmYJl63sdBQ0W/VhDjyGOyLB+RKr
 V3Bg==
X-Gm-Message-State: AGi0PuZvkWd7hz8M1N0iS2XeT8B0eSC1e96KUt0hV6n6rg32NC+sDNKR
 iscwCqDrmWWfMQaG4UHNUP4=
X-Google-Smtp-Source: APiQypL2Adb7hVF3vbjtHZE8Vu9e/+IvQOWRq3atLNaVZ0J2vDG1dCBedbrwuM1ZZYXc7bdUl12enw==
X-Received: by 2002:adf:9bd4:: with SMTP id e20mr23138649wrc.199.1587929515985; 
 Sun, 26 Apr 2020 12:31:55 -0700 (PDT)
Received: from ?IPv6:2a02:810d:340:2e50:10d8:ba05:5002:2dff?
 ([2a02:810d:340:2e50:10d8:ba05:5002:2dff])
 by smtp.gmail.com with ESMTPSA id a187sm12613135wmh.40.2020.04.26.12.31.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 12:31:55 -0700 (PDT)
Subject: Re: [PATCH v7 09/12] ARM: dts: sun6i: a31: add sgx gpu child node
To: Paul Cercueil <paul@crapouillou.net>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <47740d708e00632735a8c1957109ca349029c716.1587760454.git.hns@goldelico.com>
 <VTBE9Q.B8A32JWI2Q9V3@crapouillou.net>
From: Philipp Rossak <embed3d@gmail.com>
Message-ID: <276c20d6-13f1-6fc8-c245-049b4a852181@gmail.com>
Date: Sun, 26 Apr 2020 21:31:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <VTBE9Q.B8A32JWI2Q9V3@crapouillou.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_123201_178872_0BEDA908 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [embed3d[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk9uIDI2LjA0LjIwIDE0OjUzLCBQYXVsIENlcmN1ZWlsIHdyb3RlOgo+IAo+IAo+
IExlIHZlbi4gMjQgYXZyaWwgMjAyMCDDoCAyMjozNCwgSC4gTmlrb2xhdXMgU2NoYWxsZXIgPGhu
c0Bnb2xkZWxpY28uY29tPiAKPiBhIMOpY3JpdCA6Cj4+IEZyb206IFBoaWxpcHAgUm9zc2FrIDxl
bWJlZDNkQGdtYWlsLmNvbT4KPj4KPj4gV2UgYXJlIGFkZGluZyB0aGUgZGV2aWNldHJlZSBiaW5k
aW5nIGZvciB0aGUgUFZSLVNHWC01NDQtMTE1IGdwdS4KPj4KPj4gVGhpcyBkcml2ZXIgaXMgY3Vy
cmVudGx5IHVuZGVyIGRldmVsb3BtZW50IGluIHRoZSBvcGVucHZyc2d4LWRldmdyb3VwLgo+PiBS
aWdodCBub3cgdGhlIGZ1bGwgYmluZGluZyBpcyBub3QgZmlndXJlZCBvdXQsIHNvIHdlIHByb3Zp
ZGUgaGVyZSBhCj4+IHBsYWNlaG9sZGVyLiBJdCB3aWxsIGJlIGNvbXBsZXRlZCBhcyBzb29uIGFz
IHRoZXJlIGlzIGEgZGVtbyBhdmFpbGFibGUuCj4+Cj4+IFRoZSBjdXJyZW50bHkgdXNlZCBiaW5k
aW5nIHRoYXQgaXMgdXNlZCBkdXJpbmcgZGV2ZWxvcG1lbnQgaXMgbW9yZQo+PiBjb21wbGV0ZSBh
bmQgd2FzIGFscmVhZHkgdmVyaWZ5ZWQgYnkgbG9hZGluZyB0aGUga2VybmVsbW9kdWxlIHN1Y2Nl
c3NmdWwuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgUm9zc2FrIDxlbWJlZDNkQGdtYWls
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSC4gTmlrb2xhdXMgU2NoYWxsZXIgPGhuc0Bnb2xkZWxp
Y28uY29tPgo+PiAtLS0KPj4gwqBhcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaSB8IDEx
ICsrKysrKysrKysrCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpIAo+PiBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpCj4+IGluZGV4IGYzNDI1YTY2ZmMwYS4uOTMzYTgy
NWJmNDYwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaQo+
PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaQo+PiBAQCAtMTQxNyw1ICsx
NDE3LDE2IEBAIHAyd2k6IGkyY0AxZjAzNDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3NpemUt
Y2VsbHMgPSA8MD47Cj4+IMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gKwo+PiArwqDCoMKgwqDCoMKg
wqAgZ3B1OiBncHVAMWM0MDAwMDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW44aS1hMzEtc2d4NTQ0LTExNSIsCgpsb29rcyBsaWtlIGEgY29w
eSBwYXN0ZSBlcnJvciBmcm9tIG15IHNpZGUgdGhpcyBzaG91bGQgYmUgCmFsbHdpbm5lcixzdW42
aS1hMzEtc2d4NTQ0LTExNQoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgImltZyxzZ3g1NDQtMTE1IiwgImltZyxzZ3g1NDQiOwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWcgPSA8MHgwMWM0MDAwMCAweDEwMDAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFRoaXMgbm9kZSBpcyBjdXJy
ZW50bHkgYSBwbGFjZWhvbGRlciBmb3IgdGhlIGdwdS4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqIFRoaXMgd2lsbCBiZSBjb21wbGV0ZWQgd2hlbiBhIGZ1bGwgZGVtb25zdHJhdGlvbgo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogb2YgdGhlIG9wZW5wdnJzZ3ggZHJpdmVyIGlz
IGF2YWlsYWJsZSBmb3IgdGhpcyBib2FyZC4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
Lwo+IAo+IFRoaXMgbm9kZSBkb2Vzbid0IGhhdmUgY2xvY2tzLCBzbyBJIGRvbid0IHNlZSBob3cg
aXQnZCB3b3JrLgo+IAo+IEJldHRlciBkZWxheSB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSBHUFUg
bm9kZSBmb3IgdGhpcyBib2FyZCB1bnRpbCB5b3UgCj4ga25vdyBpdCB3b3Jrcy4KPiAKPiAtUGF1
bApUaGlzIHdhcyBhbHJlYWR5IGRpc2N1c3MgaW4gYW4gZWFybGllciB2ZXJzaW9uIHRoYXQgc2Vy
aWVzIHRoYXQgdGhpcyAKc2hvdWxkIGJlIGRlbGF5ZWQuCgpJIHdpbGwgc2VuZCBhIGZvbGxvdyB1
cCBwYXRjaCBzZXJpZXMsIGFzIHNvb24gYXMgSSBtYWlubGluZWQgYW4gb3RoZXIgCmRyaXZlciB0
aGF0IEknbSB3b3JraW5nIG9uLCB3aGljaCBpcyByZXF1aXJlZCB0byBwcm9wZXJseSBkZXNjcmli
ZSB0aGUgZ3B1LgoKQ2hlZXJzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

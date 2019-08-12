Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75B48967E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 06:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBkzCnbWBmEzZlyk/x0kNVrWtIDZOmsnc5AR/K80eF0=; b=B6T80dqAD0cRWx
	GwafLiFQdQiXfHfYAu++RH7Xe6crNaxgU97kq5JBKf62YIfbUO2dmHuB1FpzkswPltfhkl8ejlS2t
	vM2MltfqYQKtx7hkXGghYCJaBE/6FE1tUkoZcawAQawIK6MrBJoKkjXhPtHqnWvjrHouWUMZt5VZ3
	iBZjoF792Y+V5LyygP53vB31UE2A8aeoWowyco4Ki2wIfr4LMGYn4YmKfCPp3WD2cr5u5nQ+gZ1eT
	Ko6vHNKq6BonqxZqs1UB3AO9FZR0xczxTW4MA/7oI/6lwTq2vMT7Pco4Hu00wpgBpiKndUvep/GEW
	3N0Lp9cvtFBmTsReMs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx2Kk-00065M-BD; Mon, 12 Aug 2019 04:53:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx2KZ-000649-HF
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 04:53:17 +0000
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E0D620880
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 04:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565585592;
 bh=U2DFlAsT9fiCibIRTlnmIj7xBh4FZ71yzSmmo/sRMDc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dcVsHGW3621y7F6SNvLxIU/nsBvDMBnezicKt9/5s2OijcY+XgzbnU2lkmzWSDlUi
 U2dzKAf7FjGCC3HqwZDxj/bO7/1j/bhkrxB3hlE0Tjhn4p41VgSDPL1WP6twWVIe1Z
 /hSpMvGD0yELB5uOF0J2BmPa9LMY8yHh8914ZD9w=
Received: by mail-wr1-f45.google.com with SMTP id r3so9668294wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 21:53:12 -0700 (PDT)
X-Gm-Message-State: APjAAAXCmknF6NOrN21WMIcAcLRX9CjpZab3RzFb7oKfXLgXT7QnTDih
 ENVaHsJ6dfvg51Aq9Vsro46PpDVcVb32Wua/tnU=
X-Google-Smtp-Source: APXvYqzWTwxFBAger42CdK0YgxZARYvcqOa5DVNzRa6gk/EElcW+UHkrG2le3oAfyQ7okItaDDgPMMoxxRg8hCuxstI=
X-Received: by 2002:adf:c613:: with SMTP id n19mr38373302wrg.109.1565585590646; 
 Sun, 11 Aug 2019 21:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190811203144.5999-1-peron.clem@gmail.com>
 <20190811203144.5999-2-peron.clem@gmail.com>
In-Reply-To: <20190811203144.5999-2-peron.clem@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2019 12:52:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v67T3h_KTVZ20NVWNd78xqCa2ZhYiCJr4oOwYjUM3OaZXA@mail.gmail.com>
Message-ID: <CAGb2v67T3h_KTVZ20NVWNd78xqCa2ZhYiCJr4oOwYjUM3OaZXA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 1/3] arm64: dts: allwinner: Add SPDIF
 node for Allwinner H6
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_215315_617795_FAA8F95B 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCA0OjMxIEFNIENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIEFsbHdpbm5lciBINiBoYXMgYSBTUERJ
RiBjb250cm9sbGVyIGNhbGxlZCBPV0EgKE9uZSBXaXJlIEF1ZGlvKS4KPgo+IE9ubHkgb25lIHBp
bm11eGluZyBpcyBhdmFpbGFibGUgc28gc2V0IGl0IGFzIGRlZmF1bHQuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDM4ICsrKysrKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+IGluZGV4IDc2MjhhN2M4
MzA5Ni4uNjc3ZWIzNzQ2NzhkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kKPiBAQCAtODMsNiArODMsMjQgQEAKPiAgICAgICAgICAgICAgICAg
bWV0aG9kID0gInNtYyI7Cj4gICAgICAgICB9Owo+Cj4gKyAgICAgICBzb3VuZC1zcGRpZiB7Cj4g
KyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+ICsgICAg
ICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gInN1bjUwaS1oNi1zcGRpZiI7Cj4g
Kwo+ICsgICAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxjcHUgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWY+Owo+ICsgICAgICAgICAgICAgICB9Owo+
ICsKPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWZfb3V0PjsKPiArICAgICAgICAgICAg
ICAgfTsKPiArICAgICAgIH07Cj4gKwo+ICsgICAgICAgc3BkaWZfb3V0OiBzcGRpZi1vdXQgewo+
ICsgICAgICAgICAgICAgICAjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+ICsgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gImxpbnV4LHNwZGlmLWRpdCI7Cj4gKyAgICAgICB9Owo+ICsKCldlJ3Zl
IGFsd2F5cyBoYWQgdGhpcyBwYXJ0IGluIHRoZSBib2FyZCBkdHMuIEl0IGlzbid0IHJlbGV2YW50
IHRvIGJvYXJkcwp0aGF0IGRvbid0IGhhdmUgU1BESUYgb3V0cHV0LgoKQWxzbywgbm90IHNvIHJl
bGV2YW50IGhlcmUsIGJ1dCB0aGVyZSBhcmUgZGlmZmVyZW50IHNpbXBsZSBzb3VuZCBjYXJkCmNv
bnN0cnVjdHMuIFNvbWUgc3VwcG9ydCBtdWx0aXBsZSBhdWRpbyBzdHJlYW1zIHdpdGggZHluYW1p
YyBQQ00gcm91dGluZy4KSG93IHRoZXNlIGFyZSBjb25maWd1cmVkIHJlYWxseSBkZXBlbmRzIG9u
IHdoYXQgaW50ZXJmYWNlcyBhcmUgdXNhYmxlLgoKU28ga2VlcGluZyB0aGlzIGF0IHRoZSBib2Fy
ZCBsZXZlbCBpcyBJTU8gYSBiZXR0ZXIgY2hvaWNlLgoKQ2hlbll1CgoKPiAgICAgICAgIHRpbWVy
IHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwo+ICAg
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKPiBAQCAtMjgyLDYgKzMwMCwx
MSBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1wdWxsLXVwOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4KPiArICAgICAgICAgICAgICAgICAgICAgICBzcGRp
Zl90eF9waW46IHNwZGlmLXR4LXBpbiB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwaW5zID0gIlBINyI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlv
biA9ICJzcGRpZiI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgdWFydDBfcGhfcGluczogdWFydDAtcGgtcGlucyB7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBIMCIsICJQSDEiOwo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSAidWFydDAiOwo+IEBAIC00MTEsNiArNDM0
LDIxIEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAgfTsK
Pgo+ICsgICAgICAgICAgICAgICBzcGRpZjogc3BkaWZANTA5MzAwMCB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtc3BkaWYiOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDA1MDkzMDAwIDB4NDAwPjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjEgSVJRX1RZUEVfTEVWRUxfSElHSD47
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjY3UgQ0xLX0JVU19TUERJRj4s
IDwmY2N1IENMS19TUERJRj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMg
PSAiYXBiIiwgInNwZGlmIjsKPiArICAgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNj
dSBSU1RfQlVTX1NQRElGPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBkbWFzID0gPCZkbWEg
Mj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZG1hLW5hbWVzID0gInR4IjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmc3BkaWZfdHhfcGluPjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsK
PiAgICAgICAgICAgICAgICAgdXNiMm90ZzogdXNiQDUxMDAwMDAgewo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1tdXNiIiwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImFsbHdpbm5lcixzdW44aS1hMzMtbXVz
YiI7Cj4gLS0KPiAyLjIwLjEKPgo+IC0tCj4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNh
dXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGki
IGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZp
bmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtc3VueGkrdW5zdWJzY3Jp
YmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2Vi
LCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgtc3VueGkvMjAx
OTA4MTEyMDMxNDQuNTk5OS0yLXBlcm9uLmNsZW0lNDBnbWFpbC5jb20uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

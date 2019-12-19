Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73BA125955
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 02:42:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gRt0Ok6vafb72hHtFoqzOB8L3M3xNn37Rg0MPxNg/6A=; b=FxZgfQxOD4jL2Fwk7JLX4E7RO8
	cckd/Yqf5tr/qwmSjeRdTebB+7wBcJaVjDTVU9FR+i4Ppv/hokM84E4RrO8cmViqlQ3s5wGoK5FJv
	gPHdplrqQ1CwTmtHH2ix/9c6e7XqrH2E/C2t7PmWlODydrJnzl82X2NbyHEc3bTTPmG0/tRpkbEP5
	zJ6g839L2b/4jzD3kenlC46I8dt7JfzFU2Rz1ViUK63kOWSqr3mEwTCwEatLONort/1jau7X3t0Yb
	PjR/I2WmYO1wjbMDB3c2voB8tvw32FTgnHFPJJAqcSXKnCQsAnX8QUQtHOGTc1hFc+VX4HeoawFpr
	YyH6DSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihkpO-00006L-5w; Thu, 19 Dec 2019 01:42:10 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihkpF-00005h-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 01:42:03 +0000
Received: by mail-qv1-xf41.google.com with SMTP id m14so1596375qvl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 17:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=D1ScOYStObfmPbVDJyqsfUmkQ2IK/fidlRYIBW1UfQY=;
 b=gShePne+AEO4R0o3VNf1cFLkPq1a2z0lcAucGtxBocqP4GCy9eiFtsHCRKBMf2a6HI
 nlxW/cAKTbfKmGAKJTjPtjURZ7CvjgxndjYb4OFMADa8MUHHsH50dMhFWxDqRb7wStNT
 6PhCIkk0+XwodhPlII6xgsiduSZWZaO3rT0OVKP64TUi1GrOL2WKQfJ29AxQ7kymx2d4
 eqPRBmmn0qq7Ap32/qlzW8u7YaJuUO+I6/kY9mJJTi81glPH8TSw25cGlmdklL6LBmym
 WOURxQ1+rFt2+PmOFEId7FslK97/a6OicHNqXo6VuvzMkefEVRjDDjbhTVhbimmie8+1
 3/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=D1ScOYStObfmPbVDJyqsfUmkQ2IK/fidlRYIBW1UfQY=;
 b=aX/tcPlVYdtaHv7VlDD4G0SUvjvWt/kNaQt6FW+l7UwKiPk1/SopH4dbM16NVEGhml
 E9nhhvjlALdZEvDyD7INUh1uxyuUaf+o4EHeuKjZqJXYvUW5FsorZAd1eHIrsf1zNoUl
 apJ3OaxgOGbn3MtApGxXgH2NFAHFzUu7SBZ9Acvnsgj6qFwn2J6eHTig/DrxUdJobQz5
 W9nPPobYxbsmOElcbOtI1/a479qNRMBQ7zNl41CTHfvNSup4vpDMOB9xXpRyEWIOAKV/
 8qmhoABPJ5+ZSCqobEhirAzDDu0Jqfwl81lyIp3g6/fmvNHV7GQWx/iO6b/yt2j/r20x
 dkZQ==
X-Gm-Message-State: APjAAAX6s2DZADnistqnwLkuR26OGIzgEDk6Rur8sbCNW0jmGcv2iNyZ
 bzm8XwCdUw/4GHIFSfi4E4HDjH/MgX8/5IkCQnXwCSuk
X-Google-Smtp-Source: APXvYqwgqn0PnKRJqdqnF7brQozZS6zrtCeZ44pP6vH0guHfNRj2RhFzj4THnWnIueakbno9qkmyPV40x60b6TWc/jg=
X-Received: by 2002:a0c:d223:: with SMTP id m32mr5411888qvh.36.1576719720517; 
 Wed, 18 Dec 2019 17:42:00 -0800 (PST)
MIME-Version: 1.0
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-7-anarsoul@gmail.com>
 <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
 <CA+E=qVdKwkUSsG9WA_4x5QntaOxQqfH1eZQ7TEeUrM_3W5mqTg@mail.gmail.com>
 <20191219010321.kri5e7knjhc5d6ts@core.my.home>
In-Reply-To: <20191219010321.kri5e7knjhc5d6ts@core.my.home>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 18 Dec 2019 17:42:03 -0800
Message-ID: <CA+E=qVf0LT26AoPtooTFcvZR_OGXbFVkMfXJuuoXvPvTSQMLBQ@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
To: Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_174201_906959_E99BCAE9 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgNTowMyBQTSBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1l
Z291cy5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDM6MTg6NTFQTSAt
MDgwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiBPbiBUdWUsIERlYyAxNywgMjAxOSBh
dCA4OjMyIFBNIENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IE9uIFdlZCwgRGVjIDE4LCAyMDE5IGF0IDEyOjIyIFBNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFy
c291bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gRnJvbTogT25kcmVqIEppcm1h
biA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4KPiA+ID4gPiBUaGVyZSBhcmUgdHdvIHNlbnNv
cnMsIG9uZSBmb3IgQ1BVLCBvbmUgZm9yIEdQVS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+Cj4gPiA+ID4gLS0tCj4g
PiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgMzMg
KysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlv
bnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi5kdHNpCj4gPiA+ID4gaW5kZXggMjk4MjQwODFiNDNiLi5jZGNiMWEzNjMwMWEgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQo+ID4gPiA+IEBAIC0xMSw2ICsxMSw3IEBACj4gPiA+ID4gICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9yZXNldC9zdW41MGktaDYtY2N1Lmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9yZXNldC9zdW41MGktaDYtci1jY3UuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL3Jlc2V0L3N1bjhpLWRlMi5oPgo+ID4gPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhl
cm1hbC90aGVybWFsLmg+Cj4gPiA+ID4KPiA+ID4gPiAgLyB7Cj4gPiA+ID4gICAgICAgICBpbnRl
cnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+ID4gPiA+IEBAIC0yMzMsNiArMjM0LDEyIEBAIGRtYTog
ZG1hLWNvbnRyb2xsZXJAMzAwMjAwMCB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgIHNpZDogZWZ1
c2VAMzAwNjAwMCB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNpZCI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgcmVnID0gPDB4MDMwMDYwMDAgMHg0MDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICNzaXplLWNlbGxzID0gPDE+Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB0aHNfY2FsaWJyYXRpb246IHRoZXJtYWwtc2Vuc29yLWNhbGlicmF0aW9uQDE0IHsKPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE0IDB4Nj47Cj4g
PiA+Cj4gPiA+IE5pdDogbXkgcHJlZmVyZW5jZSBpcyB0byB1c2Ugd29yZHMgYXMgdGhlIHNtYWxs
ZXN0IGluY3JlbWVudCwgc28gdGhpcwo+ID4gPiB3b3VsZCBoYXZlIGEgc2l6ZSBvZiA4IGluc3Rl
YWQgb2YgNi4gU2FtZSBnb2VzIGZvciB0aGUgQTY0IGR0cy4KPiA+ID4KPiA+ID4gQUZBSUNUIHRo
aXMgZG9lc24ndCBpbXBhY3QgdGhlIGRyaXZlciBpbiBhbnkgd2F5Lgo+ID4KPiA+IEg2IGhhcyBv
bmx5IDIgc2Vuc29ycywgc28gaXQgc2hvdWxkIGJlIDQuIFRoYXQncyBteSBvdmVybG9vaywgSSds
bAo+ID4gY2hhbmdlIGl0IHRvIDQgZm9yIEg2IGFuZCB0byA4IGZvciBBNjQuCj4KPiBObyBpdCdz
IGNvcnJlY3QuIFRoZXJlJ3MgMiBieXRlcyByZWZlcmVuY2UgdGVtcGVyYXR1cmUgYW5kIDJ4IDIg
Ynl0ZQo+IHZhbHVlcyBmb3IgaW5kaXZpZHVhbCBzZW5zb3IgY2FsaWJyYXRpb24gY29uc3RhbnRz
LgoKU28gaXQgc2hvdWxkIGJlIDggaWYgd2Ugcm91bmQgaXQgdXAgdG8gd29yZCBib3VuZGFyeT8K
Cj4gcmVnYXJkcywKPiAgICAgICAgIG8uCj4KPiA+ID4KPiA+ID4gQ2hlbll1Cj4gPiA+Cj4gPiA+
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgfTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgICAgICAgICAgICB3YXRjaGRvZzogd2F0Y2hkb2dA
MzAwOTBhMCB7Cj4gPiA+ID4gQEAgLTg1Niw1ICs4NjMsMzEgQEAgcl9pMmM6IGkyY0A3MDgxNDAw
IHsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ID4g
PiAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICAgIHRo
czogdGhlcm1hbC1zZW5zb3JANTA3MDQwMCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXRocyI7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUwNzA0MDAgMHgxMDA+Owo+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxNSBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNjdSBD
TEtfQlVTX1RIUz47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMg
PSAiYnVzIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNjdSBS
U1RfQlVTX1RIUz47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbnZtZW0tY2VsbHMg
PSA8JnRoc19jYWxpYnJhdGlvbj47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbnZt
ZW0tY2VsbC1uYW1lcyA9ICJjYWxpYnJhdGlvbiI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Owo+ID4gPiA+ICsgICAgICAgICAgICAg
ICB9Owo+ID4gPiA+ICsgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICB0aGVybWFs
LXpvbmVzIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgY3B1LXRoZXJtYWwgewo+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5ID0gPDA+Owo+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29ycyA9IDwmdGhzIDA+Owo+ID4gPiA+
ICsgICAgICAgICAgICAgICB9Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgZ3B1
LXRoZXJtYWwgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkt
cGFzc2l2ZSA9IDwwPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRl
bGF5ID0gPDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29y
cyA9IDwmdGhzIDE+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICB9Owo+ID4gPiA+ICAgICAgICAg
fTsKPiA+ID4gPiAgfTsKPiA+ID4gPiAtLQo+ID4gPiA+IDIuMjQuMQo+ID4gPiA+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

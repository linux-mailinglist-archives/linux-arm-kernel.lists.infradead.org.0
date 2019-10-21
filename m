Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FF0DE2B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 05:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBKfawL7vmDYtaNldRhQBq3gnyMs4FjLcSolGCETL80=; b=B78DReqBQ4Dm20
	B2LJWv0htMkoSj/sahg8YWqTor+aA5CgzfTfbXKJFXj6PpCDM5huzse8s5UI02n0J+j4HbIaaeFVo
	MGFCqawOEpGi3/fri3VmvV+ezMdbZIjpT7YesDnq4Key4Ed+1zhUm2T/Zj6SUz8Y73HNf0Eg2cIaq
	ey6/g0QqkM9/wcrHCgD+5VR4tgxOc3MIkuAD5brEGuzuyOY1rlpNy/HhOHwu3yYOU1CKwZ0t1w9XS
	yYpcGJ1eSUz0Jx5f8icedMIQnkjFNtPlJ5tRlyaKOH/tTqV6MNMEdulvglJMuhvL62LSHavCsZgcO
	VzQo9/sF7xxIvuMbU9xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOaQ-0006J1-QM; Mon, 21 Oct 2019 03:42:26 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOaF-0006IP-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 03:42:17 +0000
Received: by mail-ot1-x341.google.com with SMTP id y39so9770382ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 20:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WwNptKCIXL03KfSFCpNDwIbTOrNecFxUXSvyhNwAF1o=;
 b=jscOCbkjE3LquQhr7FG795+BMFTVVG2o+MrpONMzll+dZHgml9UVKKywOM11jtVQ9G
 G0pPHO2D3Z4goJjzQDJ6mVayZFO/XQKpUr4B6p2iB/9Rw5sEeHBLKhxCi+1s2TiK0ZnC
 yqb30CTY6qgDCosbTHPdxUOr7Ak2of3UwhDe7s0vzy9s2fSZEnpiCa1HioM/50qWoBYO
 lZeJbjYC3pitteLMVAgUjiteaXTHrkQB1kNYha/0moX96pzJorblUYGiNaP8gYbt0yqL
 +k05oWfsViznKQSKY7ZU+chTOqQsDaJAQ9X4Vs+3S+DqBnPhuiejy7NLL0gmo+id2jRb
 wF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WwNptKCIXL03KfSFCpNDwIbTOrNecFxUXSvyhNwAF1o=;
 b=FYr8k/mNuzyP3GvFE9YY6yitwBkMuAeYAJ14ED6bU2gLA7YfuRucQLbaN+RPrmmMmD
 A88dKZ+y6klhdtwMyKl7LyTQyOTUXYsDhdZLHWNz7ViTa1a4KHKHR+JhSY70VEQ8FjA/
 eg7Rnn7eVwd1/g+VtfnUo1Du4nN0r+L6PXfXtgXpuVEynyqLaZo2C1E7ebE+cZhZHPKw
 qMpIMiFhynw1isqinBIZMwlSDqW53zSPG71FS4uBGwZGg0KI6zGlPJQeF0fV9A+X0ohA
 ykLZS71d65TFRSl3T7MZJzau+8PhEAn80AuZxOrXA+KxluwAduEB1Ki/SF3IoxhRH/24
 A47g==
X-Gm-Message-State: APjAAAVpEfCSIAbjLobNGvG1ZqKrgBWAnSF2I/5PLkBbJke2U78eYP77
 iYSErKzBF/YCMkRLaVf68ONSxMLIlGbsvNmTPFY=
X-Google-Smtp-Source: APXvYqwbDxAiumFveeAyDjAcA3RuuZXJIQxgx57k3J8A7n30HzjoSDQpOnDmk3kxMRr3wyH5kUdKJVwmYd9QxetBhXo=
X-Received: by 2002:a9d:3ec:: with SMTP id f99mr15783897otf.353.1571629334258; 
 Sun, 20 Oct 2019 20:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
 <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
 <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
 <20190813200623.2dmxcwibuyolnuhh@core.my.home>
 <CA+E=qVd-hz68VhL0n+3-HDNua2QsT0dOVY9mRjhb5e5+tBW5Fg@mail.gmail.com>
 <CAEExFWueWPOvXoE+zj67DuKWeamcLgawfOxanfPp6Jyo9Envzg@mail.gmail.com>
In-Reply-To: <CAEExFWueWPOvXoE+zj67DuKWeamcLgawfOxanfPp6Jyo9Envzg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sun, 20 Oct 2019 20:41:48 -0700
Message-ID: <CA+E=qVchu9=Qjp9k3QxQ-Dd1oKnfTKQan7AZfbA5k3qk-1N+6A@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_204215_752502_6A2A58E1 
X-CRM114-Status: GOOD (  37.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgOToxNCBBTSBGcmFuayBMZWUgPHRpbnkud2luZHp6QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBISSBWYXNpbHksCgpIaSBZYW5ndGFvLAoKU29ycnkgZm9yIHRo
ZSBsYXRlIHJlcGx5LAoKPiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMTowMSBBTSBWYXNpbHkg
S2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEF1
ZyAxMywgMjAxOSBhdCAxOjA2IFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDA0OjU0OjE1UE0gLTA3
MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5
IGF0IDQ6NDYgUE0gRnJhbmsgTGVlIDx0aW55LndpbmR6ekBnbWFpbC5jb20+IHdyb3RlOgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEhJIFZhc2lseSwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBTYXQsIEF1
ZyAxMCwgMjAxOSBhdCAyOjE3IFBNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5j
b20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBGcmksIEF1ZyA5LCAyMDE5IGF0
IDEwOjMxIFBNIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBIMyBoYXMgZXh0cmEgY2xvY2ssIHNvIGludHJvZHVjZSBz
b21ldGhpbmcgaW4gdGhzX3RoZXJtYWxfY2hpcC90aHNfZGV2aWNlCj4gPiA+ID4gPiA+ID4gYW5k
IGFkZHMgdGhlIHByb2Nlc3Mgb2YgdGhlIGNsb2NrLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gVGhpcyBpcyBwcmUtd29yayBmb3Igc3VwcHJ0IGl0Lgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgo+
ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhl
cm1hbC5jIHwgMTcgKysrKysrKysrKysrKysrKy0KPiA+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jIGIvZHJp
dmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiA+ID4gPiA+IGluZGV4IGI5MzRiYzgx
ZWJhNy4uNmY0Mjk0YzJhYmE3IDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvdGhl
cm1hbC9zdW44aV90aGVybWFsLmMKPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwv
c3VuOGlfdGhlcm1hbC5jCj4gPiA+ID4gPiA+ID4gQEAgLTU0LDYgKzU0LDcgQEAgc3RydWN0IHRz
ZW5zb3Igewo+ID4gPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gIHN0
cnVjdCB0aHNfdGhlcm1hbF9jaGlwIHsKPiA+ID4gPiA+ID4gPiArICAgICAgIGJvb2wgICAgICAg
ICAgICBoYXNfbW9kX2NsazsKPiA+ID4gPiA+ID4gPiAgICAgICAgIGludCAgICAgICAgICAgICBz
ZW5zb3JfbnVtOwo+ID4gPiA+ID4gPiA+ICAgICAgICAgaW50ICAgICAgICAgICAgIG9mZnNldDsK
PiA+ID4gPiA+ID4gPiAgICAgICAgIGludCAgICAgICAgICAgICBzY2FsZTsKPiA+ID4gPiA+ID4g
PiBAQCAtNjksNiArNzAsNyBAQCBzdHJ1Y3QgdGhzX2RldmljZSB7Cj4gPiA+ID4gPiA+ID4gICAg
ICAgICBzdHJ1Y3QgcmVnbWFwICAgICAgICAgICAgICAgICAgICAgICAgICAgKnJlZ21hcDsKPiA+
ID4gPiA+ID4gPiAgICAgICAgIHN0cnVjdCByZXNldF9jb250cm9sICAgICAgICAgICAgICAgICAg
ICAqcmVzZXQ7Cj4gPiA+ID4gPiA+ID4gICAgICAgICBzdHJ1Y3QgY2xrICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKmJ1c19jbGs7Cj4gPiA+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgY2xr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKm1vZF9jbGs7Cj4gPiA+ID4gPiA+ID4gICAg
ICAgICBzdHJ1Y3QgdHNlbnNvciAgICAgICAgICAgICAgICAgICAgICAgICAgc2Vuc29yW01BWF9T
RU5TT1JfTlVNXTsKPiA+ID4gPiA+ID4gPiAgfTsKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
IEBAIC0yNzQsNiArMjc2LDEyIEBAIHN0YXRpYyBpbnQgc3VuOGlfdGhzX3Jlc291cmNlX2luaXQo
c3RydWN0IHRoc19kZXZpY2UgKnRtZGV2KQo+ID4gPiA+ID4gPiA+ICAgICAgICAgaWYgKElTX0VS
Uih0bWRldi0+YnVzX2NsaykpCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiBQ
VFJfRVJSKHRtZGV2LT5idXNfY2xrKTsKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ICsgICAg
ICAgaWYgKHRtZGV2LT5jaGlwLT5oYXNfbW9kX2Nsaykgewo+ID4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICB0bWRldi0+bW9kX2NsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAibW9kIik7
Cj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChJU19FUlIodG1kZXYtPm1vZF9jbGsp
KQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHRt
ZGV2LT5tb2RfY2xrKTsKPiA+ID4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ID4gPiArCj4g
PiA+ID4gPiA+ID4gICAgICAgICByZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHRtZGV2LT5y
ZXNldCk7Cj4gPiA+ID4gPiA+ID4gICAgICAgICBpZiAocmV0KQo+ID4gPiA+ID4gPiA+ICAgICAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+IEBAIC0yODIsMTIgKzI5MCwxOCBA
QCBzdGF0aWMgaW50IHN1bjhpX3Roc19yZXNvdXJjZV9pbml0KHN0cnVjdCB0aHNfZGV2aWNlICp0
bWRldikKPiA+ID4gPiA+ID4gPiAgICAgICAgIGlmIChyZXQpCj4gPiA+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgIGdvdG8gYXNzZXJ0X3Jlc2V0Owo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
LSAgICAgICByZXQgPSBzdW41MGlfdGhzX2NhbGlicmF0ZSh0bWRldik7Cj4gPiA+ID4gPiA+ID4g
KyAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUodG1kZXYtPm1vZF9jbGspOwo+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiBZb3UgaGF2ZSB0byBzZXQgcmF0ZSBvZiBtb2RjbGsgYmVmb3JlIGVu
YWJsaW5nIGl0IHNpbmNlIHlvdSBjYW4ndCByZWx5Cj4gPiA+ID4gPiA+IG9uIHdoYXRldmVyIGJv
b3Rsb2FkZXIgbGVmdCBmb3IgeW91Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBbHNvIEkgZm91
bmQgdGhhdCBwYXJhbWV0ZXJzIHlvdSdyZSB1c2luZyBmb3IgUENfVEVNUF9QRVJJT0QsIEFDUTAg
YW5kCj4gPiA+ID4gPiA+IEFDUTEgYXJlIHRvbyBhZ2dyZXNzaXZlIGFuZCBtYXkgcmVzdWx0IGlu
IGhpZ2ggaW50ZXJydXB0IHJhdGUgdG8gdGhlCj4gPiA+ID4gPiA+IHBvaW50IHdoZW4gaXQgbWF5
IHN0YWxsIFJDVS4gSSBjaGFuZ2VkIGRyaXZlciBhIGJpdCB0byB1c2UgcGFyYW1zIGZyb20KPiA+
ID4gPiA+ID4gUGhpbGlwcCBSb3NzYWsncyB3b3JrIChtb2RjbGsgc2V0IHRvIDRNSHosIFBDX1RF
TVBfUEVSSU9EIGlzIDcsIEFDUTAKPiA+ID4gPiA+ID4gaXMgMjU1LCBBQ1ExIGlzIDYzKSBhbmQg
aXQgZml4ZWQgUkNVIHN0YWxscyBmb3IgbWUsIHNlZSBbMV0gZm9yCj4gPiA+ID4gPiA+IGRldGFp
bHMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gV2h5IGlzIHRoZSBSQ1Ugc3RhbGwgaGFwcGVuaW5nLCBp
cyBpdCBjYXVzZWQgYnkgYSBkZWFkbG9jaz8KPiA+ID4gPiA+IENhbiB5b3UgcHJvdmlkZSBsb2cg
aW5mb3JtYXRpb24gYW5kIHlvdXIgY29uZmlndXJhdGlvbj8KPiA+ID4gPiA+IEkgYW0gYSBiaXQg
Y3VyaW91cy4KPiA+ID4gPgo+ID4gPiA+IEl0J3Mgbm90IGRlYWRsb2NrLCBJIGJlbGlldmUgaXQg
anVzdCBjYW4ndCBoYW5kbGUgdGhhdCBtYW55IGludGVycnVwdHMKPiA+ID4gPiB3aGVuIHJ1bm5p
bmcgYXQgbG93ZXN0IENQVSBmcmVxdWVuY3kuIEV2ZW4gd2l0aCBQaGlsaXBwJ3Mgc2V0dGluZ3MK
PiA+ID4gPiB0aGVyZSdzIH4yMCBpbnRlcnJ1cHRzIGEgc2Vjb25kIGZyb20gdGhzLiBJIGRvbid0
IHJlbWVtYmVyIGhvdyBtYW55Cj4gPiA+ID4gaW50ZXJydXB0cyB3ZXJlIHRoZXJlIHdpdGggeW91
ciBzZXR0aW5ncy4KPiA+ID4gPgo+ID4gPiA+IFVuZm9ydHVuYXRlbHkgdGhlcmUncyBub3RoaW5n
IGludGVyZXN0aW5nIGluIGJhY2t0cmFjZXMsIEknbSB1c2luZwo+ID4gPiA+IFBpbmU2NC1MVFMg
Ym9hcmQuCj4gPiA+Cj4gPiA+IFJlY2VudGx5IHRoZXJlIHdhcyBhIHNpbWlsYXIgaXNzdWUsIHdp
dGggYnVnZ3kgQ0NVIGRyaXZlciB0aGF0IGNhdXNlZAo+ID4gPiBDSVIgaW50ZXJydXB0cyBiZWlu
ZyBmaXJlZCBjb25zdGFudGx5LCBhbmQgaXQgYWxzbyByZXN1bHRlZCBpbiBSQ1UKPiA+ID4gc3Rh
bGxzLiBMb29rcyBsaWtlIGEgY29tb24gY2F1c2Ugb2YgUkNVIHN0YWxscy4KPiA+ID4KPiA+ID4g
VEhTIHRpbWluZyBzZXR0aW5ncyBwcm9iYWJseSBuZWVkIHRvIGJlIG1hZGUgc3BlY2lmaWMgdG8g
dGhlIFNvQywgYmVjYXVzZQo+ID4gPiBJIG5vdGljZWQgdGhhdCB0aGUgc2FtZSBzZXR0aW5ncyBs
ZWFkIHRvIHdpbGRseSBkaWZmZXJlbnQgdGltaW5ncyBvbgo+ID4gPiBkaWZmZXJlbnQgU29Dcy4K
PiA+ID4KPiA+ID4gSXQgd291bGQgYmUgZ29vZCB0byBtZWFzdXJlIGhvdyBvZnRlbiB0aHMgaW50
ZXJydXB0IGZpcmVzIHdpdGggdGhpcyBkcml2ZXIKPiA+ID4gb24gdmFyaW91cyBTb0NzLgo+ID4g
Pgo+ID4gPiAyMCB0aW1lcyBhIHNlY29uZCBhbmQgbW9yZSBzb3VuZHMgbGlrZSBvdmVya2lsbC4g
SSdkIGV4cGVjdCBhIHVzZWZ1bAo+ID4gPiByYW5nZSB0byBiZSBhdCBtb3N0IDUtMTAgdGltZXMg
YSBzZWNvbmQuIFRoYXQgc2hvdWxkIGJlIGVub3VnaCB0byBzdG9wCj4gPiA+IG92ZXJoZWF0aW5n
IHRoZSBTb0MgZHVlIHRvIHN1ZGRlbmx5IGluY3JlYXNlZCBsb2FkLCBldmVuIHdpdGhvdXQgYQo+
ID4gPiBoZWF0c2luay4KPiA+Cj4gPiBOb3RlIHRoYXQgQTY0IGhhcyAzIHNlbnNvcnMgYW5kIGVh
Y2ggc2Vuc29yIGhhcyBpbmRpdmlkdWFsIGludGVycnVwdCwKPiA+IHNvIHRlY2huaWNhbGx5IGl0
J3MgNi03IGludGVycnVwdHMgcGVyIHNlbnNvciBwZXIgc2Vjb25kCj4KPiBZb3Ugb25seSBuZWVk
IHRvIGluY3JlYXNlIHRoZSB2YWx1ZSBvZiB0aGUgcGVyaW9kIHRvIHJlZHVjZSB0aGUgbnVtYmVy
Cj4gb2YgaW50ZXJydXB0cy4KPiBDYW4geW91IHRlc3QgdGhlIHJlbGF0aW9uc2hpcCBiZXR3ZWVu
IHRoZSBwZXJpb2QgYW5kIHRoZSBudW1iZXIgb2YgaW50ZXJydXB0cwo+IHdoZW4gdGhlIG1vZCBj
bG9jayBkb2VzIG5vdCBjaGFuZ2UgYW5kIHN0YXlzIDI0TT8KCkkgcGxheWVkIGEgYml0IHdpdGgg
eW91ciBzZXR0aW5ncyBhbmQgMjRNLAoKd2l0aCBQRVJJT0QgPSA1NyBJIGdldCAyNiBpbnRlcnJ1
cHRzIC8gc2Vjb25kCndpdGggODcgLSAxOCBpbnRlcnJ1cHRzIC8gc2Vjb25kCndpdGggMTE2IC0g
MTItMTUgaW50ZXJydXB0cyAvIHNlY29uZC4KCkkgdGhpbmsgd2Ugc2hvdWxkIHVzZSAxMTYgZm9y
IEE2NCBzaW5jZSB3aXRoIGl0IHdlIGdldCByZWFzb25hYmxlCm51bWJlciBvZiB0aHMgaW50ZXJy
dXB0cyBpbiBhIHNlY29uZC4KClJlZ2FyZHMsClZhc2lseQoKPiBUaHguCj4gWWFuZ3Rhbwo+Cj4g
Pgo+ID4gPiByZWdhcmRzLAo+ID4gPiAgICAgICAgIG8uCj4gPiA+Cj4gPiA+ID4gPiBUaHgsCj4g
PiA+ID4gPiBZYW5ndGFvCj4gPiA+ID4gPgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBbMV0gaHR0
cHM6Ly9naXRodWIuY29tL2FuYXJzb3VsL2xpbnV4LTIuNi9jb21taXQvNDZiOGJiMGZlMmNjZDFj
ZDg4ZmE5MTgxYTJlY2JmNzllOGQ1MTNiMgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+ICAgICAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgZ290
byBidXNfZGlzYWJsZTsKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ICsgICAgICAgcmV0ID0g
c3VuNTBpX3Roc19jYWxpYnJhdGUodG1kZXYpOwo+ID4gPiA+ID4gPiA+ICsgICAgICAgaWYgKHJl
dCkKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgZ290byBtb2RfZGlzYWJsZTsKPiA+ID4g
PiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gICAgICAgICByZXR1cm4gMDsKPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+ICttb2RfZGlzYWJsZToKPiA+ID4gPiA+ID4gPiArICAgICAgIGNsa19kaXNh
YmxlX3VucHJlcGFyZSh0bWRldi0+bW9kX2Nsayk7Cj4gPiA+ID4gPiA+ID4gIGJ1c19kaXNhYmxl
Ogo+ID4gPiA+ID4gPiA+ICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHRtZGV2LT5idXNf
Y2xrKTsKPiA+ID4gPiA+ID4gPiAgYXNzZXJ0X3Jlc2V0Ogo+ID4gPiA+ID4gPiA+IEBAIC0zOTUs
NiArNDA5LDcgQEAgc3RhdGljIGludCBzdW44aV90aHNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gPiAgICAgICAgIHN0cnVj
dCB0aHNfZGV2aWNlICp0bWRldiA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUodG1kZXYt
Pm1vZF9jbGspOwo+ID4gPiA+ID4gPiA+ICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHRt
ZGV2LT5idXNfY2xrKTsKPiA+ID4gPiA+ID4gPiAgICAgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0
KHRtZGV2LT5yZXNldCk7Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4g
PiA+IDIuMTcuMQo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4gPiA+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiA+ID4gbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+ID4gPiA+ID4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gPiA+ID4KPiA+ID4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

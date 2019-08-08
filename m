Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903C0864D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u2npJ+pAjhLtyNYTDCxF6twEZ9HxLULlOCo7dKWZWU=; b=kO9UB/yFhN4KUN
	y72T40UtAisrl9X2m/okqviyhqMw5jdeaLRkIHR9aYOYXHWUhFcxnHZ8YrdK5JO6AbPc7dK1qYKet
	Dl4a+ZdA92Rd/sS4URY1NSINOdsvEV1a8X3BcvkgDLRSFulBMq0ziRSp2i7fZvlIxCvFSR/DaspLI
	Tcj1tr91s+BajrqOqj8DqzVUDWBbrUkR7dEaTwhse0eX6My0MYb2QtzRG9N9AZqCHWBsT1dRVqMQT
	TO5QQj8vMVX+DFl+fDvg20FhJwPE5G1piEFXx8O+73kunuBXs7lJ5ZZjjSwQX0kBUjrJqcqUJu3G/
	ytamSke3hsedaTmEikpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjkq-0006go-Co; Thu, 08 Aug 2019 14:51:00 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjkf-0006ev-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:50:50 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n205so34138308ywb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 07:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pd+si4K6IQLELIBX4tiD+y/43Cjy1FUkTrZU/zYixN4=;
 b=sE60SjEWlcKLwRIco5fwQ4/fxw00fl89OqZsG9TI2xWu87p4mGrVgFyhd7nu2SoZiz
 bkfdbqdHL4Z/3Kotsu/DkJzJP7vh+4FZMQHzqoGqIOELRJlPCIdVtfPF5c292X+NzqxQ
 Bz6v37ex61aD0V+m42+V69lUO2oqBRjAoHxljVvrfJONfWfukSFampgDU73FbUNVxXty
 fF4A44+Qx6AxarVxSB+RW3Spg/kHDyBUXbEzm9VnInPH3EjSsihkImNDPMrWGtis/EZC
 +UuG1YG6X+LHRM6ZcC1esjSGfhIBg8K2+CAjLEJP3yx4FzDalCVY/KBS2o3v6b+//UFz
 viiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pd+si4K6IQLELIBX4tiD+y/43Cjy1FUkTrZU/zYixN4=;
 b=rujoUamr4HOAoqzYHK+QTcDA2bN8RJl6W/OsL7FCk3ytG1jzRQ3XnyLdT+kluo8Ahw
 5l+lWwZypI9Y9QPMw6oD3cwh9jS7cymKtEeel3fmiManObxRdndIr7Nv1LPltc/VrxJ8
 6lrHeRdowzULsFZ68Wb7N7i1AZDpIoMoXXk59p3vh/bvYeI3oczjUFMtJb6HYTJdk+Rj
 0v2PlWMOOCijOzw/x/Ic1LITf9Yhpb9AxQIx8rxl8+DQa4u7KJVJlC27NnBvN3YSoS1v
 GkRW881eStcJAseiNBW3eJn1YhCQkB8mijumP0s2GETFuh304hEBvI3zHXVbbj6qU7Lz
 nwNg==
X-Gm-Message-State: APjAAAUS4AffUlL9pbh8JOcgjCkE6wxQ6S53iPUhGwpxF2tznWIXwbEI
 wxB8gDFPu336vSgr0zgrysWqLVDTJ+9q6YoF3O8=
X-Google-Smtp-Source: APXvYqy4X33XWy8GcpnfQPLTgDaawdkVKyWHl6kdh6f4Q7tJTdlAfKFkS13q7zReuXDd+Mc6ZLfTdZeLAZL8itk/jo4=
X-Received: by 2002:a81:5957:: with SMTP id n84mr9865139ywb.234.1565275846869; 
 Thu, 08 Aug 2019 07:50:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
In-Reply-To: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 8 Aug 2019 16:50:35 +0200
Message-ID: <CAJiuCccEQFvKemTodJbuEDzDy9j6-M4SYskxPFJ5DpsbQDnvkA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
To: clabbe.montjoie@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_075049_450240_C6F497DB 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIDggQXVnIDIwMTkgYXQgMTA6NDIsIENvcmVudGluIExhYmJlIDxjbGFiYmUu
bW9udGpvaWVAZ21haWwuY29tPiB3cm90ZToKPgo+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgZXZhbHVh
dGlvbiB2YXJpYW50IG9mIHRoZSBtb2RlbCBBIG9mIHRoZSBQaW5lSDY0Lgo+IFRoZSBtb2RlbCBB
IGhhcyB0aGUgc2FtZSBzaXplIG9mIHRoZSBwaW5lNjQgYW5kIGhhcyBhIFBDSUUgc2xvdC4KPgo+
IFRoZSBvbmx5IGRldmljZXRyZWUgZGlmZmVyZW5jZSB3aXRoIGN1cnJlbnQgcGluZUg2NCwgaXMg
dGhlIFBIWQo+IHJlZ3VsYXRvci4KCllvdSBhbHNvIG5lZWQgdG8gYWRkIHRoZSBib2FyZCBpbgoi
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW54aS55YW1sIgoKUmVnYXJk
cywKQ2zDqW1lbnQKCj4KPiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1v
bnRqb2llQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
TWFrZWZpbGUgICAgICAgIHwgIDEgKwo+ICAuLi4vc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1l
dmFsLmR0cyAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cwo+Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUKPiBpbmRleCBmNmRiMDYxMWNiODUuLjlh
MDIxNjZjYmY3MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9N
YWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCj4g
QEAgLTI1LDMgKzI1LDQgQEAgZHRiLSQoQ09ORklHX0FSQ0hfU1VOWEkpICs9IHN1bjUwaS1oNi1v
cmFuZ2VwaS0zLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3VuNTBpLWg2LW9y
YW5nZXBpLWxpdGUyLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3VuNTBpLWg2
LW9yYW5nZXBpLW9uZS1wbHVzLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0Ygo+ICtkdGItJChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3VuNTBp
LWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0Ygo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQtbW9kZWxBLWV2YWwuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFs
LmR0cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kOGZmMDI3
NDdlZmUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cwo+IEBAIC0wLDAgKzEsMjYgQEAK
PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBvciBNSVQpCj4gKy8qCj4g
KyAqIENvcHlyaWdodCAoQykgMjAxOSBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdt
YWlsLmNvbT4KPiArICovCj4gKwo+ICsjaW5jbHVkZSAic3VuNTBpLWg2LXBpbmUtaDY0LmR0cyIK
PiArCj4gKy8gewo+ICsgICAgICAgbW9kZWwgPSAiUGluZSBINjQgbW9kZWwgQSBldmFsdWF0aW9u
IGJvYXJkIjsKPiArICAgICAgIGNvbXBhdGlibGUgPSAicGluZTY0LHBpbmUtaDY0LW1vZGVsQS1l
dmFsIiwgImFsbHdpbm5lcixzdW41MGktaDYiOwo+ICsKPiArICAgICAgIHJlZ19nbWFjXzN2Mzog
Z21hYy0zdjMgewo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhl
ZCI7Cj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYy1nbWFjLTN2MyI7Cj4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsg
ICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArICAg
ICAgICAgICAgICAgc3RhcnR1cC1kZWxheS11cyA9IDwxMDAwMDA+Owo+ICsgICAgICAgICAgICAg
ICBncGlvID0gPCZwaW8gMiAxNiBHUElPX0FDVElWRV9ISUdIPjsKPiArICAgICAgICAgICAgICAg
ZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ICsgICAgICAgfTsKPiArCj4gK307Cj4gKwo+ICsmZW1hYyB7
Cj4gKyAgICAgICBwaHktc3VwcGx5ID0gPCZyZWdfZ21hY18zdjM+Owo+ICt9Owo+IC0tCj4gMi4y
MS4wCj4KPiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1
YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4KPiBUbyB1
bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9t
IGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vw
cy5jb20uCj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6
Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkwODA4MDg0MjUzLjEw
NTczLTEtY2xhYmJlLm1vbnRqb2llJTQwZ21haWwuY29tLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

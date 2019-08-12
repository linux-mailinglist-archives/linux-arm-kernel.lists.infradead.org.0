Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E251589795
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTqav6u2D5QroMILHDp/katcrNTL1FcXSbAIw+XefMA=; b=G8TDGo1TDoMsfc
	aLz7KZuPY1yfQhSmZqNSm4o4nsl9uW9jArw69O5HnP1wCJgJO7cA55YwrhcVSFRB4Sf9ra7WGrX10
	Vn2RHOEBeFRardsg9VuXdF186HMD+0wBsJSlOa0NzejahGl9Gb15yIYxo4x7qD0FDWYLJn3QKzlh0
	Wne7BPVLgzt3xP8k3okEbvXYOOZcpQbmjySLzLCOAkxGQfL879I/Q8WH7ca5BH+XRPOShSZzp5xT1
	Jf0CmcfMJqKguJOghs8wEW545u1/hoLqIiqxFWmli6yaVvXMuuKgVvvEnHhL3QpWysJ8xsoohdwrb
	JvA7tGot/h0sc3L44AYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4V7-0005a3-PV; Mon, 12 Aug 2019 07:12:17 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4Uu-0005ZW-0r
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:12:05 +0000
Received: by mail-yb1-xb41.google.com with SMTP id c9so11087888ybq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 00:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w53iwTfuNgVzz+uekdvZLevbq0Q8+wQ8XWoSTjhLEzw=;
 b=dx1A50aNGZNyaxktizwfsIS5ig44DHRVLmjnRFBxzE2aEVU5gp9aDwZyRbfQ1xM+ls
 aPbSCNMVVMseuHKonr5RmEpdmDF773I6dzbPr0ZiapfPWYaMmbvwrdeKGKjq5DWtvPWk
 85rd6xty+3YXrIZEiag82dgZZiPVpgFV3XMK5t8THU//e9elcVF/KSvc79jXjSA85HoZ
 E6J4wsVh6zq9zXFV3rGsNqalljXtxizDfHtUWUH9MI43T1bmzWCm+5qioWCty8BiITj/
 FUF3305LVRMdcGdtdAChlUWc/Ise2vpHp6p52/dNwF2LxwWt2AR+UcyY7+xaR9UmlKmM
 Rs4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w53iwTfuNgVzz+uekdvZLevbq0Q8+wQ8XWoSTjhLEzw=;
 b=XZTJY0ALSu3nbfNXMJGJZXHeVR4vchsMgANnjI1dtsTcXGpZPokJbFP954iaH++sEU
 BhcsG54pQMQGikb03U6SuNPbWhZaGXxMKL8N0mUFe6wbsejqSRdA+2GOqrz8d8ppYgiM
 UBm1a9fR2u0v0NDZaV8WTBTaYghqeZSzq+pOVq7JjFneXlkTNMcKGnXLdMwlJNCs/ECm
 k+9PEdJcf1Iq6frrYBoRQUNN8Prrkc8ko84hZ8+kI8mOLN0PIZ33wLy7RngO3JFsLHk1
 NQf8Ziox/erfGg0gleua0cE/J/d3Xgw/493tlZr4hFGtqAduFD9K451j+coMV8wi6m2i
 R4Xg==
X-Gm-Message-State: APjAAAXdM4gUo/xcNY86UTUOONfjDGkdFeeSrjjPJJtnu2++J6RP70LH
 iUfkceYUxfkkpavHReMugVQHXvCgFi1oFR7EFc0=
X-Google-Smtp-Source: APXvYqxK5RP5HKV5KbAdo8Zc5B28TcBzX3ZmB0Wav0s3p5jBwAteFRui/TZGArGh2FLJK84pClkqbky376KDbpr3PPE=
X-Received: by 2002:a5b:9c9:: with SMTP id y9mr291017ybq.438.1565593921754;
 Mon, 12 Aug 2019 00:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190811203144.5999-1-peron.clem@gmail.com>
 <20190811203144.5999-2-peron.clem@gmail.com>
 <CAGb2v67T3h_KTVZ20NVWNd78xqCa2ZhYiCJr4oOwYjUM3OaZXA@mail.gmail.com>
 <CAGb2v67N5Ykzo6myKqrNMgu6PCH2pJTzw9JJ5t0MGP_p=0ae9g@mail.gmail.com>
In-Reply-To: <CAGb2v67N5Ykzo6myKqrNMgu6PCH2pJTzw9JJ5t0MGP_p=0ae9g@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 12 Aug 2019 09:11:50 +0200
Message-ID: <CAJiuCccoxzjmuZLrD88NgKZmwWhWkNq5xD=bTF5fgkq6M0Qb4g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 1/3] arm64: dts: allwinner: Add SPDIF
 node for Allwinner H6
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_001204_064952_7061CF10 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hlbi1ZdSwKCk9uIE1vbiwgMTIgQXVnIDIwMTkgYXQgMDg6MzUsIENoZW4tWXUgVHNhaSA8
d2Vuc0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDEyOjUy
IFBNIENoZW4tWXUgVHNhaSA8d2Vuc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+
Cj4gPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCA0OjMxIEFNIENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBUaGUgQWxsd2lubmVyIEg2IGhh
cyBhIFNQRElGIGNvbnRyb2xsZXIgY2FsbGVkIE9XQSAoT25lIFdpcmUgQXVkaW8pLgo+ID4gPgo+
ID4gPiBPbmx5IG9uZSBwaW5tdXhpbmcgaXMgYXZhaWxhYmxlIHNvIHNldCBpdCBhcyBkZWZhdWx0
Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1A
Z21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpIHwgMzggKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiA+IGluZGV4IDc2MjhhN2M4MzA5Ni4uNjc3
ZWIzNzQ2NzhkIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaQo+ID4gPiBAQCAtODMsNiArODMsMjQgQEAKPiA+ID4gICAgICAgICAg
ICAgICAgIG1ldGhvZCA9ICJzbWMiOwo+ID4gPiAgICAgICAgIH07Cj4gPiA+Cj4gPiA+ICsgICAg
ICAgc291bmQtc3BkaWYgewo+ID4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1w
bGUtYXVkaW8tY2FyZCI7Cj4gPiA+ICsgICAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxu
YW1lID0gInN1bjUwaS1oNi1zcGRpZiI7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIHNp
bXBsZS1hdWRpby1jYXJkLGNwdSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHNvdW5k
LWRhaSA9IDwmc3BkaWY+Owo+ID4gPiArICAgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgewo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBzb3VuZC1kYWkgPSA8JnNwZGlmX291dD47Cj4gPiA+ICsgICAgICAgICAg
ICAgICB9Owo+ID4gPiArICAgICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBzcGRpZl9vdXQ6
IHNwZGlmLW91dCB7Cj4gPiA+ICsgICAgICAgICAgICAgICAjc291bmQtZGFpLWNlbGxzID0gPDA+
Owo+ID4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJsaW51eCxzcGRpZi1kaXQiOwo+
ID4gPiArICAgICAgIH07Cj4gPiA+ICsKPiA+Cj4gPiBXZSd2ZSBhbHdheXMgaGFkIHRoaXMgcGFy
dCBpbiB0aGUgYm9hcmQgZHRzLiBJdCBpc24ndCByZWxldmFudCB0byBib2FyZHMKPiA+IHRoYXQg
ZG9uJ3QgaGF2ZSBTUERJRiBvdXRwdXQuCj4gPgo+ID4gQWxzbywgbm90IHNvIHJlbGV2YW50IGhl
cmUsIGJ1dCB0aGVyZSBhcmUgZGlmZmVyZW50IHNpbXBsZSBzb3VuZCBjYXJkCj4gPiBjb25zdHJ1
Y3RzLiBTb21lIHN1cHBvcnQgbXVsdGlwbGUgYXVkaW8gc3RyZWFtcyB3aXRoIGR5bmFtaWMgUENN
IHJvdXRpbmcuCj4gPiBIb3cgdGhlc2UgYXJlIGNvbmZpZ3VyZWQgcmVhbGx5IGRlcGVuZHMgb24g
d2hhdCBpbnRlcmZhY2VzIGFyZSB1c2FibGUuCj4gPgo+ID4gU28ga2VlcGluZyB0aGlzIGF0IHRo
ZSBib2FyZCBsZXZlbCBpcyBJTU8gYSBiZXR0ZXIgY2hvaWNlLgoKSSBBZ3JlZSwgSSB0cnkgdG8g
a2VlcCBjb2hlcmVuY3kgd2l0aCBzdW41MGktYTY0LmR0c2kuCkJ1dCBzb3VuZCByb3V0aW5nIGlz
IHJlYWxseSBhdCBib2FyZCBsZXZlbCBub3QgU29DIG9uZS4KClJlZ2FyZHMsCkNsw6ltZW50Cgo+
Cj4gRm9yZ290IHRvIG1lbnRpb24uIEJvdGggcGF0Y2hlcyBhbmQgYWxsIHBhcnRzIGluIHRoaXMg
cGF0Y2ggYXJlIE9LLiBJdCdzCj4ganVzdCB0aGUgcGFydHMgdGhlIG5lZWQgdG8gYmUgbW92ZWQu
Cj4KPgo+ID4gQ2hlbll1Cj4gPgo+ID4KPiA+ID4gICAgICAgICB0aW1lciB7Cj4gPiA+ICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7Cj4gPiA+ICAgICAgICAg
ICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKPiA+ID4gQEAgLTI4Miw2ICszMDAsMTEg
QEAKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiaWFzLXB1bGwtdXA7Cj4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHNwZGlmX3R4X3Bpbjogc3BkaWYtdHgtcGluIHsKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBINyI7Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZnVuY3Rpb24gPSAic3BkaWYiOwo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+ID4gPiArCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHVhcnQwX3Bo
X3BpbnM6IHVhcnQwLXBoLXBpbnMgewo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHBpbnMgPSAiUEgwIiwgIlBIMSI7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZnVuY3Rpb24gPSAidWFydDAiOwo+ID4gPiBAQCAtNDExLDYgKzQzNCwyMSBAQAo+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiAgICAgICAgICAgICAgICAgfTsKPiA+
ID4KPiA+ID4gKyAgICAgICAgICAgICAgIHNwZGlmOiBzcGRpZkA1MDkzMDAwIHsKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNwZGlm
IjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUwOTMwMDAgMHg0MDA+
Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjEg
SVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
cyA9IDwmY2N1IENMS19CVVNfU1BESUY+LCA8JmNjdSBDTEtfU1BESUY+Owo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJhcGIiLCAic3BkaWYiOwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNjdSBSU1RfQlVTX1NQRElGPjsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgZG1hcyA9IDwmZG1hIDI+Owo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBkbWEtbmFtZXMgPSAidHgiOwo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JnNwZGlmX3R4X3Bpbj47Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICsgICAgICAgICAgICAgICB9Owo+ID4g
PiArCj4gPiA+ICAgICAgICAgICAgICAgICB1c2Iyb3RnOiB1c2JANTEwMDAwMCB7Cj4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1t
dXNiIiwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhbGx3aW5u
ZXIsc3VuOGktYTMzLW11c2IiOwo+ID4gPiAtLQo+ID4gPiAyLjIwLjEKPiA+ID4KPiA+ID4gLS0K
PiA+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJl
ZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+ID4gPiBUbyB1bnN1
YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0
LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5j
b20uCj4gPiA+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBz
Oi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDgxMTIwMzE0NC41
OTk5LTItcGVyb24uY2xlbSU0MGdtYWlsLmNvbS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

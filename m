Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B681259C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbNvjoQ769t/eusGr3UZwdloCxOeEpKNnIqA5B8IDTU=; b=UD+6wMyH1yh3M3
	c6irRyv+VQFYkZEUhTRsM0Zs2RvVdd4jSFiZrh76JkeRfK1KR+pixxEpiP4r9xDSV/MrWa9PbQpMW
	XqcSQQ9K3YO/UPmLUuEW38qMNd7wTfKumMuTqFCMULd2eHgX607jwdcZ/6ecOjQcuRopQruB0n4FP
	ZyhShIkBp6WqxmwOFlUU46lsF4QIYQLurIRz+dEUeRXO6kp+mXeqnoexTkLJLFdwwyW+M8VWPQE35
	H4klyX3u6CEnDVilcBNopmUhhx5aMFJtCmEBWhS4zgw5uSjZi9TTGssHsgFDaDkLD8foqOL9cB53F
	CmVqFaDVjHO1f9v1/5yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihm2z-0001y8-Fb; Thu, 19 Dec 2019 03:00:17 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihm2n-00015a-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:00:07 +0000
Received: by mail-ed1-f66.google.com with SMTP id v28so3383807edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:00:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=g1k0BfhD91RWdaRPR5uZq9FkzKab5ZId9wcg8EwMfWw=;
 b=jorVqYAZViKMuutbvXO3X2lbdisq52frey48p5UPBZGZJqiCyqtc+XmlGMH8tBJKKZ
 hgy2Ea9L5Pzygj2VKfUBG86MRry1CQu6Hv8CaJ7XHGeBDSpXBN/pP+kF9uYxUaqvgYcG
 oa5f4HgsL/rJAnsLePX+2qabpbgRTw5dWx23tHXMgW2u0zVw871MsZfS0ycr+Bb7+/Yx
 u8eqPLsjDgoiwdPKdA7N6qVWcAtUy9EemBcUhJeAbEoQycnWJmvpeRNxq8FlIKLKDzJZ
 gQRegFdJ9WQqJ3Gl9+BiCio3cHSuW7amsP+uwNqtpxMiAGVTo+6QE+mFRA1zd7sSglqf
 j0Hg==
X-Gm-Message-State: APjAAAWNe2gvwZ0jP81t5pJv4/GQSC7hff0bFWT5ECkJFOW5NHyv1kxg
 ++jxWoPlHp3JsJu72QDEy5b80OeynQ4=
X-Google-Smtp-Source: APXvYqzvbupwR8K3PyVcN/U4w+3M0sfXF4truRkWGfnzuaQocd4Oz68+EEmoh9EmGMbP5RcpDxQn7A==
X-Received: by 2002:a17:906:51d0:: with SMTP id
 v16mr1314896ejk.50.1576724401359; 
 Wed, 18 Dec 2019 19:00:01 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id n24sm96405edr.30.2019.12.18.19.00.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 19:00:00 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id p17so4074897wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:00:00 -0800 (PST)
X-Received: by 2002:a1c:3c45:: with SMTP id j66mr6922931wma.2.1576724400195;
 Wed, 18 Dec 2019 19:00:00 -0800 (PST)
MIME-Version: 1.0
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-7-anarsoul@gmail.com>
 <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
 <CA+E=qVdKwkUSsG9WA_4x5QntaOxQqfH1eZQ7TEeUrM_3W5mqTg@mail.gmail.com>
 <20191219010321.kri5e7knjhc5d6ts@core.my.home>
 <CA+E=qVf0LT26AoPtooTFcvZR_OGXbFVkMfXJuuoXvPvTSQMLBQ@mail.gmail.com>
In-Reply-To: <CA+E=qVf0LT26AoPtooTFcvZR_OGXbFVkMfXJuuoXvPvTSQMLBQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 19 Dec 2019 10:59:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v64iF+vZN3A9PfuV0NHmL9_M_bANueZDUnxZbZm8Sk2Uzw@mail.gmail.com>
Message-ID: <CAGb2v64iF+vZN3A9PfuV0NHmL9_M_bANueZDUnxZbZm8Sk2Uzw@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_190005_624845_2C67EA44 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMTksIDIwMTkgYXQgOTo0MiBBTSBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNv
dWxAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgRGVjIDE4LCAyMDE5IGF0IDU6MDMgUE0g
T25kxZllaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBXZWQs
IERlYyAxOCwgMjAxOSBhdCAwMzoxODo1MVBNIC0wODAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90
ZToKPiA+ID4gT24gVHVlLCBEZWMgMTcsIDIwMTkgYXQgODozMiBQTSBDaGVuLVl1IFRzYWkgPHdl
bnNAY3NpZS5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gV2VkLCBEZWMgMTgsIDIwMTkg
YXQgMTI6MjIgUE0gVmFzaWx5IEtob3J1emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5j
b20+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlcmUgYXJlIHR3byBzZW5zb3JzLCBvbmUgZm9yIENQ
VSwgb25lIGZvciBHUFUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVq
IEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWYXNp
bHkgS2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4g
PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAzMyArKysr
KysrKysrKysrKysrKysrKwo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25z
KCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LmR0c2kKPiA+ID4gPiA+IGluZGV4IDI5ODI0MDgxYjQzYi4uY2RjYjFhMzYzMDFh
IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kKPiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCj4gPiA+ID4gPiBAQCAtMTEsNiArMTEsNyBAQAo+ID4gPiA+ID4gICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9zdW41MGktaDYtY2N1Lmg+Cj4gPiA+ID4gPiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3N1bjUwaS1oNi1yLWNjdS5oPgo+ID4gPiA+ID4gICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9zdW44aS1kZTIuaD4KPiA+ID4gPiA+ICsjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gIC8g
ewo+ID4gPiA+ID4gICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+ID4gPiA+ID4g
QEAgLTIzMyw2ICsyMzQsMTIgQEAgZG1hOiBkbWEtY29udHJvbGxlckAzMDAyMDAwIHsKPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICBzaWQ6IGVmdXNlQDMwMDYwMDAgewo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNpZCI7
Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwMzAwNjAwMCAweDQw
MD47Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDE+Owo+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgdGhzX2NhbGlicmF0
aW9uOiB0aGVybWFsLXNlbnNvci1jYWxpYnJhdGlvbkAxNCB7Cj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE0IDB4Nj47Cj4gPiA+ID4KPiA+ID4gPiBO
aXQ6IG15IHByZWZlcmVuY2UgaXMgdG8gdXNlIHdvcmRzIGFzIHRoZSBzbWFsbGVzdCBpbmNyZW1l
bnQsIHNvIHRoaXMKPiA+ID4gPiB3b3VsZCBoYXZlIGEgc2l6ZSBvZiA4IGluc3RlYWQgb2YgNi4g
U2FtZSBnb2VzIGZvciB0aGUgQTY0IGR0cy4KPiA+ID4gPgo+ID4gPiA+IEFGQUlDVCB0aGlzIGRv
ZXNuJ3QgaW1wYWN0IHRoZSBkcml2ZXIgaW4gYW55IHdheS4KPiA+ID4KPiA+ID4gSDYgaGFzIG9u
bHkgMiBzZW5zb3JzLCBzbyBpdCBzaG91bGQgYmUgNC4gVGhhdCdzIG15IG92ZXJsb29rLCBJJ2xs
Cj4gPiA+IGNoYW5nZSBpdCB0byA0IGZvciBINiBhbmQgdG8gOCBmb3IgQTY0Lgo+ID4KPiA+IE5v
IGl0J3MgY29ycmVjdC4gVGhlcmUncyAyIGJ5dGVzIHJlZmVyZW5jZSB0ZW1wZXJhdHVyZSBhbmQg
MnggMiBieXRlCj4gPiB2YWx1ZXMgZm9yIGluZGl2aWR1YWwgc2Vuc29yIGNhbGlicmF0aW9uIGNv
bnN0YW50cy4KPgo+IFNvIGl0IHNob3VsZCBiZSA4IGlmIHdlIHJvdW5kIGl0IHVwIHRvIHdvcmQg
Ym91bmRhcnk/CgpUaGF0IGlzIGNvcnJlY3QuCgo+ID4gcmVnYXJkcywKPiA+ICAgICAgICAgby4K
PiA+Cj4gPiA+ID4KPiA+ID4gPiBDaGVuWXUKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIH07Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIHdhdGNoZG9nOiB3YXRjaGRvZ0AzMDA5MGEw
IHsKPiA+ID4gPiA+IEBAIC04NTYsNSArODYzLDMxIEBAIHJfaTJjOiBpMmNANzA4MTQwMCB7Cj4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4gPiA+
ID4gICAgICAgICAgICAgICAgIH07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgdGhzOiB0aGVybWFsLXNlbnNvckA1MDcwNDAwIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi10aHMiOwo+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUwNzA0MDAgMHgxMDA+Owo+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE1IElS
UV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZjY3UgQ0xLX0JVU19USFM+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IHJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfVEhTPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIG52bWVtLWNlbGxzID0gPCZ0aHNfY2FsaWJyYXRpb24+Owo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgbnZtZW0tY2VsbC1uYW1lcyA9ICJjYWxpYnJhdGlvbiI7Cj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAjdGhlcm1hbC1zZW5zb3ItY2VsbHMgPSA8MT47
Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgfTsKPiA+ID4gPiA+ICsgICAgICAgfTsKPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ICsgICAgICAgdGhlcm1hbC16b25lcyB7Cj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgY3B1LXRoZXJtYWwgewo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
cG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcG9sbGluZy1kZWxheSA9IDwwPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHRoZXJtYWwtc2Vuc29ycyA9IDwmdGhzIDA+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
IH07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgZ3B1LXRoZXJtYWwgewo+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDA+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheSA9IDww
PjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29ycyA9IDwm
dGhzIDE+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIH07Cj4gPiA+ID4gPiAgICAgICAgIH07
Cj4gPiA+ID4gPiAgfTsKPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiAyLjI0LjEKPiA+ID4gPiA+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==

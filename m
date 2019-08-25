Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79589C4D4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 18:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NIGrHaC4XR18U/Bhtp+VmCmx8eQNCo1UBWFurjZtjg=; b=ZBVQxpB8I8qCXJ
	Li6SaWz0PBSBPBRoGtgokQadnhHGzJ664V5KN1KOyHPI2f6ZiX5QPQxBKBwegLi3NwyrVpUJNkYUk
	Ho9smzMp8bL8GSzge7yF/2ai4jU7l+XvpCm/RInECMkQ7jeoXkbKcihdA6l59PbpMbN1U11CsNLY8
	hFXjC+OqeXer5IZj0kqytmM5CbuxXB2RjKrhoqQg50fXVOa7fJaooWVI/XDWUJT1GdiDOAvOYS8FS
	AiO4ik/sMq7CfbQQdPIpRXniD5aMW1CbcZjfuOonoEQroZDBiHQVZesobRxllg0jl3EHz33bvXc+v
	Pi5nMfTGn5sfKiGagfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1vA4-00057U-NY; Sun, 25 Aug 2019 16:14:36 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1v9o-00056H-GY
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 16:14:22 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so31542959iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 09:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o5hlv7LBBBQ7yX2vTJxs90ureJ9F2QkcSE1n+2RFehQ=;
 b=EHavlmakZHdQ2TgI6cSSUt8egECu5c6Qhvd6qXCgaANp5/fbK7QaYLlOeT2Wf/VmE2
 7H285DQaahoH+A8XtfQJ+hLzp5mz28CdpA1uxRJcLZDJkLSbNOnbJJqwNNVAYFLc4I77
 mhQVxaR2RDyuPRQ8USa944iZcy2tzFRhoDXd7lmA8WVXQklV1xGiMsPS3rn/vbs35E+1
 4eFik9hUKYo/S+F9x5MrqbrHXvafS84a4K49ajq868ezZtvzRY9se/08M3m4d6D+Xlpq
 RxZR50pAePjM5B0BR5mQDBrSIN++nLZ3MXNRxDRr3/1KHVAgh6rGrf62Tf/U9yo7sdwF
 4rUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o5hlv7LBBBQ7yX2vTJxs90ureJ9F2QkcSE1n+2RFehQ=;
 b=NHRmrEtVkoht6CQR89dZJH08/MVybnEH7j8ThHqYT+xOTEfLCiu1nGP9xFVGSN4kpa
 f97eWC9VVE0EnVoh2XrW2fFl4mtIkixS3KvfMh1mRYf19JO0BS8wpPTajEkic4OYDCXJ
 r4doMF9yGT+ClxYw9i8dey7WgPUGdDorcz05ctjMtnTTAPir6IPylsrsBATOz1SlMbpB
 SGyq4oikW3KsPHIjgJ6eAXhLacJAuq/2CJtKLuBb/t0cE6OfSjFD7g3N71/apW0/ehj2
 OMbzkwk4o54L3MQVvcJiD5QRC3DVc9zA2vFxZf95jvJi/Km/bagrdIh0rXQCn1zioTxm
 k7QA==
X-Gm-Message-State: APjAAAXBCx4CyRegBu2B3YAv3OgvKMFlg6sHPA4s8DSL2LctM+D3hOMX
 xuG/3RjZrtWjgHgl0+OVcrT2HTJHuaeqP91P7/Q=
X-Google-Smtp-Source: APXvYqyYW/WgCe7KrtqDjbWr9khgZgLkZFrQPqqWIE/KTfnyeROY9OqnnPpzAzTtsJwGJAkMVkGdRQnAPcorkdXkPEI=
X-Received: by 2002:a05:6602:cb:: with SMTP id z11mr2793812ioe.4.1566749655914; 
 Sun, 25 Aug 2019 09:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
 <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
 <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
 <20190813200623.2dmxcwibuyolnuhh@core.my.home>
 <CA+E=qVd-hz68VhL0n+3-HDNua2QsT0dOVY9mRjhb5e5+tBW5Fg@mail.gmail.com>
In-Reply-To: <CA+E=qVd-hz68VhL0n+3-HDNua2QsT0dOVY9mRjhb5e5+tBW5Fg@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 26 Aug 2019 00:14:04 +0800
Message-ID: <CAEExFWueWPOvXoE+zj67DuKWeamcLgawfOxanfPp6Jyo9Envzg@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_091420_559718_C3332453 
X-CRM114-Status: GOOD (  34.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SEkgVmFzaWx5LAoKT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMTE6MDEgQU0gVmFzaWx5IEtob3J1
emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEF1ZyAxMywgMjAx
OSBhdCAxOjA2IFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMDQ6NTQ6MTVQTSAtMDcwMCwgVmFzaWx5IEto
b3J1emhpY2sgd3JvdGU6Cj4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDQ6NDYgUE0gRnJh
bmsgTGVlIDx0aW55LndpbmR6ekBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSEkg
VmFzaWx5LAo+ID4gPiA+Cj4gPiA+ID4gT24gU2F0LCBBdWcgMTAsIDIwMTkgYXQgMjoxNyBQTSBW
YXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBPbiBGcmksIEF1ZyA5LCAyMDE5IGF0IDEwOjMxIFBNIFlhbmd0YW8gTGkgPHRpbnku
d2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEgzIGhhcyBl
eHRyYSBjbG9jaywgc28gaW50cm9kdWNlIHNvbWV0aGluZyBpbiB0aHNfdGhlcm1hbF9jaGlwL3Ro
c19kZXZpY2UKPiA+ID4gPiA+ID4gYW5kIGFkZHMgdGhlIHByb2Nlc3Mgb2YgdGhlIGNsb2NrLgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGlzIGlzIHByZS13b3JrIGZvciBzdXBwcnQgaXQuCj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPHRpbnkud2lu
ZHp6QGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3RoZXJt
YWwvc3VuOGlfdGhlcm1hbC5jIHwgMTcgKysrKysrKysrKysrKysrKy0KPiA+ID4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5j
IGIvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiA+ID4gPiBpbmRleCBiOTM0
YmM4MWViYTcuLjZmNDI5NGMyYWJhNyAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy90
aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwv
c3VuOGlfdGhlcm1hbC5jCj4gPiA+ID4gPiA+IEBAIC01NCw2ICs1NCw3IEBAIHN0cnVjdCB0c2Vu
c29yIHsKPiA+ID4gPiA+ID4gIH07Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICBzdHJ1Y3QgdGhz
X3RoZXJtYWxfY2hpcCB7Cj4gPiA+ID4gPiA+ICsgICAgICAgYm9vbCAgICAgICAgICAgIGhhc19t
b2RfY2xrOwo+ID4gPiA+ID4gPiAgICAgICAgIGludCAgICAgICAgICAgICBzZW5zb3JfbnVtOwo+
ID4gPiA+ID4gPiAgICAgICAgIGludCAgICAgICAgICAgICBvZmZzZXQ7Cj4gPiA+ID4gPiA+ICAg
ICAgICAgaW50ICAgICAgICAgICAgIHNjYWxlOwo+ID4gPiA+ID4gPiBAQCAtNjksNiArNzAsNyBA
QCBzdHJ1Y3QgdGhzX2RldmljZSB7Cj4gPiA+ID4gPiA+ICAgICAgICAgc3RydWN0IHJlZ21hcCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICpyZWdtYXA7Cj4gPiA+ID4gPiA+ICAgICAgICAgc3Ry
dWN0IHJlc2V0X2NvbnRyb2wgICAgICAgICAgICAgICAgICAgICpyZXNldDsKPiA+ID4gPiA+ID4g
ICAgICAgICBzdHJ1Y3QgY2xrICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKmJ1c19jbGs7
Cj4gPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IGNsayAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICptb2RfY2xrOwo+ID4gPiA+ID4gPiAgICAgICAgIHN0cnVjdCB0c2Vuc29yICAgICAgICAg
ICAgICAgICAgICAgICAgICBzZW5zb3JbTUFYX1NFTlNPUl9OVU1dOwo+ID4gPiA+ID4gPiAgfTsK
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQEAgLTI3NCw2ICsyNzYsMTIgQEAgc3RhdGljIGludCBz
dW44aV90aHNfcmVzb3VyY2VfaW5pdChzdHJ1Y3QgdGhzX2RldmljZSAqdG1kZXYpCj4gPiA+ID4g
PiA+ICAgICAgICAgaWYgKElTX0VSUih0bWRldi0+YnVzX2NsaykpCj4gPiA+ID4gPiA+ICAgICAg
ICAgICAgICAgICByZXR1cm4gUFRSX0VSUih0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ICsgICAgICAgaWYgKHRtZGV2LT5jaGlwLT5oYXNfbW9kX2Nsaykgewo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgdG1kZXYtPm1vZF9jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYt
PmRldiwgIm1vZCIpOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKElTX0VSUih0bWRl
di0+bW9kX2NsaykpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBQ
VFJfRVJSKHRtZGV2LT5tb2RfY2xrKTsKPiA+ID4gPiA+ID4gKyAgICAgICB9Cj4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gICAgICAgICByZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHRtZGV2
LT5yZXNldCk7Cj4gPiA+ID4gPiA+ICAgICAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPiA+IEBAIC0yODIsMTIgKzI5MCwxOCBAQCBz
dGF0aWMgaW50IHN1bjhpX3Roc19yZXNvdXJjZV9pbml0KHN0cnVjdCB0aHNfZGV2aWNlICp0bWRl
dikKPiA+ID4gPiA+ID4gICAgICAgICBpZiAocmV0KQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgZ290byBhc3NlcnRfcmVzZXQ7Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IC0gICAgICAgcmV0
ID0gc3VuNTBpX3Roc19jYWxpYnJhdGUodG1kZXYpOwo+ID4gPiA+ID4gPiArICAgICAgIHJldCA9
IGNsa19wcmVwYXJlX2VuYWJsZSh0bWRldi0+bW9kX2Nsayk7Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
WW91IGhhdmUgdG8gc2V0IHJhdGUgb2YgbW9kY2xrIGJlZm9yZSBlbmFibGluZyBpdCBzaW5jZSB5
b3UgY2FuJ3QgcmVseQo+ID4gPiA+ID4gb24gd2hhdGV2ZXIgYm9vdGxvYWRlciBsZWZ0IGZvciB5
b3UuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQWxzbyBJIGZvdW5kIHRoYXQgcGFyYW1ldGVycyB5b3Un
cmUgdXNpbmcgZm9yIFBDX1RFTVBfUEVSSU9ELCBBQ1EwIGFuZAo+ID4gPiA+ID4gQUNRMSBhcmUg
dG9vIGFnZ3Jlc3NpdmUgYW5kIG1heSByZXN1bHQgaW4gaGlnaCBpbnRlcnJ1cHQgcmF0ZSB0byB0
aGUKPiA+ID4gPiA+IHBvaW50IHdoZW4gaXQgbWF5IHN0YWxsIFJDVS4gSSBjaGFuZ2VkIGRyaXZl
ciBhIGJpdCB0byB1c2UgcGFyYW1zIGZyb20KPiA+ID4gPiA+IFBoaWxpcHAgUm9zc2FrJ3Mgd29y
ayAobW9kY2xrIHNldCB0byA0TUh6LCBQQ19URU1QX1BFUklPRCBpcyA3LCBBQ1EwCj4gPiA+ID4g
PiBpcyAyNTUsIEFDUTEgaXMgNjMpIGFuZCBpdCBmaXhlZCBSQ1Ugc3RhbGxzIGZvciBtZSwgc2Vl
IFsxXSBmb3IKPiA+ID4gPiA+IGRldGFpbHMuCj4gPiA+ID4KPiA+ID4gPiBXaHkgaXMgdGhlIFJD
VSBzdGFsbCBoYXBwZW5pbmcsIGlzIGl0IGNhdXNlZCBieSBhIGRlYWRsb2NrPwo+ID4gPiA+IENh
biB5b3UgcHJvdmlkZSBsb2cgaW5mb3JtYXRpb24gYW5kIHlvdXIgY29uZmlndXJhdGlvbj8KPiA+
ID4gPiBJIGFtIGEgYml0IGN1cmlvdXMuCj4gPiA+Cj4gPiA+IEl0J3Mgbm90IGRlYWRsb2NrLCBJ
IGJlbGlldmUgaXQganVzdCBjYW4ndCBoYW5kbGUgdGhhdCBtYW55IGludGVycnVwdHMKPiA+ID4g
d2hlbiBydW5uaW5nIGF0IGxvd2VzdCBDUFUgZnJlcXVlbmN5LiBFdmVuIHdpdGggUGhpbGlwcCdz
IHNldHRpbmdzCj4gPiA+IHRoZXJlJ3MgfjIwIGludGVycnVwdHMgYSBzZWNvbmQgZnJvbSB0aHMu
IEkgZG9uJ3QgcmVtZW1iZXIgaG93IG1hbnkKPiA+ID4gaW50ZXJydXB0cyB3ZXJlIHRoZXJlIHdp
dGggeW91ciBzZXR0aW5ncy4KPiA+ID4KPiA+ID4gVW5mb3J0dW5hdGVseSB0aGVyZSdzIG5vdGhp
bmcgaW50ZXJlc3RpbmcgaW4gYmFja3RyYWNlcywgSSdtIHVzaW5nCj4gPiA+IFBpbmU2NC1MVFMg
Ym9hcmQuCj4gPgo+ID4gUmVjZW50bHkgdGhlcmUgd2FzIGEgc2ltaWxhciBpc3N1ZSwgd2l0aCBi
dWdneSBDQ1UgZHJpdmVyIHRoYXQgY2F1c2VkCj4gPiBDSVIgaW50ZXJydXB0cyBiZWluZyBmaXJl
ZCBjb25zdGFudGx5LCBhbmQgaXQgYWxzbyByZXN1bHRlZCBpbiBSQ1UKPiA+IHN0YWxscy4gTG9v
a3MgbGlrZSBhIGNvbW9uIGNhdXNlIG9mIFJDVSBzdGFsbHMuCj4gPgo+ID4gVEhTIHRpbWluZyBz
ZXR0aW5ncyBwcm9iYWJseSBuZWVkIHRvIGJlIG1hZGUgc3BlY2lmaWMgdG8gdGhlIFNvQywgYmVj
YXVzZQo+ID4gSSBub3RpY2VkIHRoYXQgdGhlIHNhbWUgc2V0dGluZ3MgbGVhZCB0byB3aWxkbHkg
ZGlmZmVyZW50IHRpbWluZ3Mgb24KPiA+IGRpZmZlcmVudCBTb0NzLgo+ID4KPiA+IEl0IHdvdWxk
IGJlIGdvb2QgdG8gbWVhc3VyZSBob3cgb2Z0ZW4gdGhzIGludGVycnVwdCBmaXJlcyB3aXRoIHRo
aXMgZHJpdmVyCj4gPiBvbiB2YXJpb3VzIFNvQ3MuCj4gPgo+ID4gMjAgdGltZXMgYSBzZWNvbmQg
YW5kIG1vcmUgc291bmRzIGxpa2Ugb3ZlcmtpbGwuIEknZCBleHBlY3QgYSB1c2VmdWwKPiA+IHJh
bmdlIHRvIGJlIGF0IG1vc3QgNS0xMCB0aW1lcyBhIHNlY29uZC4gVGhhdCBzaG91bGQgYmUgZW5v
dWdoIHRvIHN0b3AKPiA+IG92ZXJoZWF0aW5nIHRoZSBTb0MgZHVlIHRvIHN1ZGRlbmx5IGluY3Jl
YXNlZCBsb2FkLCBldmVuIHdpdGhvdXQgYQo+ID4gaGVhdHNpbmsuCj4KPiBOb3RlIHRoYXQgQTY0
IGhhcyAzIHNlbnNvcnMgYW5kIGVhY2ggc2Vuc29yIGhhcyBpbmRpdmlkdWFsIGludGVycnVwdCwK
PiBzbyB0ZWNobmljYWxseSBpdCdzIDYtNyBpbnRlcnJ1cHRzIHBlciBzZW5zb3IgcGVyIHNlY29u
ZAoKWW91IG9ubHkgbmVlZCB0byBpbmNyZWFzZSB0aGUgdmFsdWUgb2YgdGhlIHBlcmlvZCB0byBy
ZWR1Y2UgdGhlIG51bWJlcgpvZiBpbnRlcnJ1cHRzLgpDYW4geW91IHRlc3QgdGhlIHJlbGF0aW9u
c2hpcCBiZXR3ZWVuIHRoZSBwZXJpb2QgYW5kIHRoZSBudW1iZXIgb2YgaW50ZXJydXB0cwp3aGVu
IHRoZSBtb2QgY2xvY2sgZG9lcyBub3QgY2hhbmdlIGFuZCBzdGF5cyAyNE0/CgpUaHguCllhbmd0
YW8KCj4KPiA+IHJlZ2FyZHMsCj4gPiAgICAgICAgIG8uCj4gPgo+ID4gPiA+IFRoeCwKPiA+ID4g
PiBZYW5ndGFvCj4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBbMV0gaHR0cHM6Ly9naXRodWIu
Y29tL2FuYXJzb3VsL2xpbnV4LTIuNi9jb21taXQvNDZiOGJiMGZlMmNjZDFjZDg4ZmE5MTgxYTJl
Y2JmNzllOGQ1MTNiMgo+ID4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgaWYg
KHJldCkKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgIGdvdG8gYnVzX2Rpc2FibGU7Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ICsgICAgICAgcmV0ID0gc3VuNTBpX3Roc19jYWxpYnJhdGUodG1k
ZXYpOwo+ID4gPiA+ID4gPiArICAgICAgIGlmIChyZXQpCj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICBnb3RvIG1vZF9kaXNhYmxlOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICAgICAgICAg
cmV0dXJuIDA7Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICttb2RfZGlzYWJsZToKPiA+ID4gPiA+
ID4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUodG1kZXYtPm1vZF9jbGspOwo+ID4gPiA+
ID4gPiAgYnVzX2Rpc2FibGU6Cj4gPiA+ID4gPiA+ICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKHRtZGV2LT5idXNfY2xrKTsKPiA+ID4gPiA+ID4gIGFzc2VydF9yZXNldDoKPiA+ID4gPiA+
ID4gQEAgLTM5NSw2ICs0MDksNyBAQCBzdGF0aWMgaW50IHN1bjhpX3Roc19yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+ID4gICAgICAg
ICBzdHJ1Y3QgdGhzX2RldmljZSAqdG1kZXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsK
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUodG1k
ZXYtPm1vZF9jbGspOwo+ID4gPiA+ID4gPiAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZSh0
bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gPiA+ICAgICAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQo
dG1kZXYtPnJlc2V0KTsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gLS0KPiA+ID4gPiA+ID4gMi4x
Ny4xCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gPiA+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+ID4gPiA+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiA+ID4KPiA+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=

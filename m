Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004368C9CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 05:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lbbIcfWOynTZ/V8mJKFosJsQ7dQlvy/9QkdapF+txUY=; b=UcgKO3+9gODlfT/mOglfCBZ/Vd
	m91e62iOOApFF8+Ce58eY4d+mJE3rX+UXbdM+7V9l/HyU0dVaf71Wr9Lma2DvZnswt8QsheXdlKWG
	ClyIcCLqAet8Q52kj8piXWgXnWeInoPL3dbcprjq6aQn66s1ndizicrlJZPHZFayZ+KXZmynXcwAw
	d0iKkgXsZKI5/gBEb4nQSRl+mcN8b44EzkPx8QRI21GeDemsC1QIk9M9eq0j5OFA78kXcC/msmnI8
	qHiL4epn/zc5LH0rqL77ISNMSs944REpOhcAswCPIe+k0/2ugAMeKYSe26ouyXA87cxTdumAhJ7y/
	getx8XbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxjYA-0005yh-0v; Wed, 14 Aug 2019 03:02:10 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxjXf-0005xp-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 03:01:40 +0000
Received: by mail-oi1-x244.google.com with SMTP id k22so1722779oiw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 20:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=JldLSgRtBBxHBWQOR9/Op7zdWxFQRoEO7eprbvicojY=;
 b=WlTw0X+lDDkK3OWwBjw3XGwcyn83zxhuFTx1C/dPTO5g+56M2cE6hQKZhECyG/8qfE
 4M1kEwcEFUUGt0nf+SZzgScOOf4nQPkxsyy8K6TXtBOTo7gbDTWjipJMV8icLdkfVYfh
 PKWr9Fl6HA4bwv6pjv3W9GbIp7I8RKNUgumURAl8T1a2Bicojt3+SU/hLzh/nwykhS+8
 5mqvP7BMag9DSTBxoqRpq59LZAl593xM5xU5FO1M2zpWotESM04EjuEQwGtrYeto3Fx4
 yRk2oi5LSieYgI+hRfX4q7PGx8EOhmxIf1sClE9E7VvGFmn2BYlEnbjk/xi8Dv2dViC0
 suhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=JldLSgRtBBxHBWQOR9/Op7zdWxFQRoEO7eprbvicojY=;
 b=uRXMONS/zkjVG1+EQlxQ+NVy87hs8U9vq+ddQWfZiPbz5e9uDxHTeLWIxN4mHaZbyU
 GSR3r/SDLzo/rcRpUNcwvIQcGJ+IYnw5okoDzxiVcFGGLmjrT+74AqePxBsK/6eSq0vc
 tf2RGS8lxPMhTYShGDbyv0J9R/6HODl0Li3rlIyFASnsMNIhXkyUXiMsZWVdletQ3cRK
 INbdq5JRQld+U0MawkBfumvg3TzSPKz/F9P1PBe4LmwR+NsQGAyzdnN6PqFBDzrduf7M
 5UFNodr+fdQAWXL0ssps0X87iWb7b5WJ7i1mLv00NssLzTes5nyuVobG8+KZdwjp8Was
 /AMg==
X-Gm-Message-State: APjAAAUSTsVDhdNDacI613U3BXJ2Mx+mQ3Jny3ZNa7v0BncXdtcuAgo1
 pG2/l7O7JrB2HRh+B8FBXegpBDxDHsYWLON0WR4=
X-Google-Smtp-Source: APXvYqw9bx/8nkPjqknF7XY6B80tyPcjrTS+9WAO4WSz9iIwcoATg7FP7VyXf60IQz9sfC9Rqxz4I5A7ykIbv8yDURI=
X-Received: by 2002:a54:4e95:: with SMTP id c21mr3197457oiy.145.1565751696231; 
 Tue, 13 Aug 2019 20:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
 <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
 <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
 <20190813200623.2dmxcwibuyolnuhh@core.my.home>
In-Reply-To: <20190813200623.2dmxcwibuyolnuhh@core.my.home>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 13 Aug 2019 20:01:10 -0700
Message-ID: <CA+E=qVd-hz68VhL0n+3-HDNua2QsT0dOVY9mRjhb5e5+tBW5Fg@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
To: Vasily Khoruzhick <anarsoul@gmail.com>, Frank Lee <tiny.windzz@gmail.com>, 
 Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, 
 Linux PM <linux-pm@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, 
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jonathan.Cameron@huawei.com, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com, 
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_200139_171893_85859669 
X-CRM114-Status: GOOD (  32.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMTowNiBQTSBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1l
Z291cy5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMDQ6NTQ6MTVQTSAt
MDcwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBh
dCA0OjQ2IFBNIEZyYW5rIExlZSA8dGlueS53aW5kenpAZ21haWwuY29tPiB3cm90ZToKPiA+ID4K
PiA+ID4gSEkgVmFzaWx5LAo+ID4gPgo+ID4gPiBPbiBTYXQsIEF1ZyAxMCwgMjAxOSBhdCAyOjE3
IFBNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+
Cj4gPiA+ID4gT24gRnJpLCBBdWcgOSwgMjAxOSBhdCAxMDozMSBQTSBZYW5ndGFvIExpIDx0aW55
LndpbmR6ekBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IEgzIGhhcyBleHRy
YSBjbG9jaywgc28gaW50cm9kdWNlIHNvbWV0aGluZyBpbiB0aHNfdGhlcm1hbF9jaGlwL3Roc19k
ZXZpY2UKPiA+ID4gPiA+IGFuZCBhZGRzIHRoZSBwcm9jZXNzIG9mIHRoZSBjbG9jay4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBUaGlzIGlzIHByZS13b3JrIGZvciBzdXBwcnQgaXQuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29t
Pgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwu
YyB8IDE3ICsrKysrKysrKysrKysrKystCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9zdW44
aV90aGVybWFsLmMKPiA+ID4gPiA+IGluZGV4IGI5MzRiYzgxZWJhNy4uNmY0Mjk0YzJhYmE3IDEw
MDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiA+ID4gQEAg
LTU0LDYgKzU0LDcgQEAgc3RydWN0IHRzZW5zb3Igewo+ID4gPiA+ID4gIH07Cj4gPiA+ID4gPgo+
ID4gPiA+ID4gIHN0cnVjdCB0aHNfdGhlcm1hbF9jaGlwIHsKPiA+ID4gPiA+ICsgICAgICAgYm9v
bCAgICAgICAgICAgIGhhc19tb2RfY2xrOwo+ID4gPiA+ID4gICAgICAgICBpbnQgICAgICAgICAg
ICAgc2Vuc29yX251bTsKPiA+ID4gPiA+ICAgICAgICAgaW50ICAgICAgICAgICAgIG9mZnNldDsK
PiA+ID4gPiA+ICAgICAgICAgaW50ICAgICAgICAgICAgIHNjYWxlOwo+ID4gPiA+ID4gQEAgLTY5
LDYgKzcwLDcgQEAgc3RydWN0IHRoc19kZXZpY2Ugewo+ID4gPiA+ID4gICAgICAgICBzdHJ1Y3Qg
cmVnbWFwICAgICAgICAgICAgICAgICAgICAgICAgICAgKnJlZ21hcDsKPiA+ID4gPiA+ICAgICAg
ICAgc3RydWN0IHJlc2V0X2NvbnRyb2wgICAgICAgICAgICAgICAgICAgICpyZXNldDsKPiA+ID4g
PiA+ICAgICAgICAgc3RydWN0IGNsayAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICpidXNf
Y2xrOwo+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgY2xrICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKm1vZF9jbGs7Cj4gPiA+ID4gPiAgICAgICAgIHN0cnVjdCB0c2Vuc29yICAgICAgICAg
ICAgICAgICAgICAgICAgICBzZW5zb3JbTUFYX1NFTlNPUl9OVU1dOwo+ID4gPiA+ID4gIH07Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gQEAgLTI3NCw2ICsyNzYsMTIgQEAgc3RhdGljIGludCBzdW44aV90
aHNfcmVzb3VyY2VfaW5pdChzdHJ1Y3QgdGhzX2RldmljZSAqdG1kZXYpCj4gPiA+ID4gPiAgICAg
ICAgIGlmIChJU19FUlIodG1kZXYtPmJ1c19jbGspKQo+ID4gPiA+ID4gICAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKHRtZGV2LT5idXNfY2xrKTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiArICAg
ICAgIGlmICh0bWRldi0+Y2hpcC0+aGFzX21vZF9jbGspIHsKPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICB0bWRldi0+bW9kX2NsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAibW9kIik7Cj4g
PiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKElTX0VSUih0bWRldi0+bW9kX2NsaykpCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUih0bWRldi0+bW9kX2Ns
ayk7Cj4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAgICAgICAgcmV0
ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiA+ID4gICAgICAg
ICBpZiAocmV0KQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4g
PiBAQCAtMjgyLDEyICsyOTAsMTggQEAgc3RhdGljIGludCBzdW44aV90aHNfcmVzb3VyY2VfaW5p
dChzdHJ1Y3QgdGhzX2RldmljZSAqdG1kZXYpCj4gPiA+ID4gPiAgICAgICAgIGlmIChyZXQpCj4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgZ290byBhc3NlcnRfcmVzZXQ7Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gLSAgICAgICByZXQgPSBzdW41MGlfdGhzX2NhbGlicmF0ZSh0bWRldik7Cj4gPiA+ID4g
PiArICAgICAgIHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZSh0bWRldi0+bW9kX2Nsayk7Cj4gPiA+
ID4KPiA+ID4gPiBZb3UgaGF2ZSB0byBzZXQgcmF0ZSBvZiBtb2RjbGsgYmVmb3JlIGVuYWJsaW5n
IGl0IHNpbmNlIHlvdSBjYW4ndCByZWx5Cj4gPiA+ID4gb24gd2hhdGV2ZXIgYm9vdGxvYWRlciBs
ZWZ0IGZvciB5b3UuCj4gPiA+ID4KPiA+ID4gPiBBbHNvIEkgZm91bmQgdGhhdCBwYXJhbWV0ZXJz
IHlvdSdyZSB1c2luZyBmb3IgUENfVEVNUF9QRVJJT0QsIEFDUTAgYW5kCj4gPiA+ID4gQUNRMSBh
cmUgdG9vIGFnZ3Jlc3NpdmUgYW5kIG1heSByZXN1bHQgaW4gaGlnaCBpbnRlcnJ1cHQgcmF0ZSB0
byB0aGUKPiA+ID4gPiBwb2ludCB3aGVuIGl0IG1heSBzdGFsbCBSQ1UuIEkgY2hhbmdlZCBkcml2
ZXIgYSBiaXQgdG8gdXNlIHBhcmFtcyBmcm9tCj4gPiA+ID4gUGhpbGlwcCBSb3NzYWsncyB3b3Jr
IChtb2RjbGsgc2V0IHRvIDRNSHosIFBDX1RFTVBfUEVSSU9EIGlzIDcsIEFDUTAKPiA+ID4gPiBp
cyAyNTUsIEFDUTEgaXMgNjMpIGFuZCBpdCBmaXhlZCBSQ1Ugc3RhbGxzIGZvciBtZSwgc2VlIFsx
XSBmb3IKPiA+ID4gPiBkZXRhaWxzLgo+ID4gPgo+ID4gPiBXaHkgaXMgdGhlIFJDVSBzdGFsbCBo
YXBwZW5pbmcsIGlzIGl0IGNhdXNlZCBieSBhIGRlYWRsb2NrPwo+ID4gPiBDYW4geW91IHByb3Zp
ZGUgbG9nIGluZm9ybWF0aW9uIGFuZCB5b3VyIGNvbmZpZ3VyYXRpb24/Cj4gPiA+IEkgYW0gYSBi
aXQgY3VyaW91cy4KPiA+Cj4gPiBJdCdzIG5vdCBkZWFkbG9jaywgSSBiZWxpZXZlIGl0IGp1c3Qg
Y2FuJ3QgaGFuZGxlIHRoYXQgbWFueSBpbnRlcnJ1cHRzCj4gPiB3aGVuIHJ1bm5pbmcgYXQgbG93
ZXN0IENQVSBmcmVxdWVuY3kuIEV2ZW4gd2l0aCBQaGlsaXBwJ3Mgc2V0dGluZ3MKPiA+IHRoZXJl
J3MgfjIwIGludGVycnVwdHMgYSBzZWNvbmQgZnJvbSB0aHMuIEkgZG9uJ3QgcmVtZW1iZXIgaG93
IG1hbnkKPiA+IGludGVycnVwdHMgd2VyZSB0aGVyZSB3aXRoIHlvdXIgc2V0dGluZ3MuCj4gPgo+
ID4gVW5mb3J0dW5hdGVseSB0aGVyZSdzIG5vdGhpbmcgaW50ZXJlc3RpbmcgaW4gYmFja3RyYWNl
cywgSSdtIHVzaW5nCj4gPiBQaW5lNjQtTFRTIGJvYXJkLgo+Cj4gUmVjZW50bHkgdGhlcmUgd2Fz
IGEgc2ltaWxhciBpc3N1ZSwgd2l0aCBidWdneSBDQ1UgZHJpdmVyIHRoYXQgY2F1c2VkCj4gQ0lS
IGludGVycnVwdHMgYmVpbmcgZmlyZWQgY29uc3RhbnRseSwgYW5kIGl0IGFsc28gcmVzdWx0ZWQg
aW4gUkNVCj4gc3RhbGxzLiBMb29rcyBsaWtlIGEgY29tb24gY2F1c2Ugb2YgUkNVIHN0YWxscy4K
Pgo+IFRIUyB0aW1pbmcgc2V0dGluZ3MgcHJvYmFibHkgbmVlZCB0byBiZSBtYWRlIHNwZWNpZmlj
IHRvIHRoZSBTb0MsIGJlY2F1c2UKPiBJIG5vdGljZWQgdGhhdCB0aGUgc2FtZSBzZXR0aW5ncyBs
ZWFkIHRvIHdpbGRseSBkaWZmZXJlbnQgdGltaW5ncyBvbgo+IGRpZmZlcmVudCBTb0NzLgo+Cj4g
SXQgd291bGQgYmUgZ29vZCB0byBtZWFzdXJlIGhvdyBvZnRlbiB0aHMgaW50ZXJydXB0IGZpcmVz
IHdpdGggdGhpcyBkcml2ZXIKPiBvbiB2YXJpb3VzIFNvQ3MuCj4KPiAyMCB0aW1lcyBhIHNlY29u
ZCBhbmQgbW9yZSBzb3VuZHMgbGlrZSBvdmVya2lsbC4gSSdkIGV4cGVjdCBhIHVzZWZ1bAo+IHJh
bmdlIHRvIGJlIGF0IG1vc3QgNS0xMCB0aW1lcyBhIHNlY29uZC4gVGhhdCBzaG91bGQgYmUgZW5v
dWdoIHRvIHN0b3AKPiBvdmVyaGVhdGluZyB0aGUgU29DIGR1ZSB0byBzdWRkZW5seSBpbmNyZWFz
ZWQgbG9hZCwgZXZlbiB3aXRob3V0IGEKPiBoZWF0c2luay4KCk5vdGUgdGhhdCBBNjQgaGFzIDMg
c2Vuc29ycyBhbmQgZWFjaCBzZW5zb3IgaGFzIGluZGl2aWR1YWwgaW50ZXJydXB0LApzbyB0ZWNo
bmljYWxseSBpdCdzIDYtNyBpbnRlcnJ1cHRzIHBlciBzZW5zb3IgcGVyIHNlY29uZAoKPiByZWdh
cmRzLAo+ICAgICAgICAgby4KPgo+ID4gPiBUaHgsCj4gPiA+IFlhbmd0YW8KPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vYW5hcnNvdWwvbGludXgtMi42L2NvbW1p
dC80NmI4YmIwZmUyY2NkMWNkODhmYTkxODFhMmVjYmY3OWU4ZDUxM2IyCj4gPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+ID4gICAgICAgICBpZiAocmV0KQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgIGdv
dG8gYnVzX2Rpc2FibGU7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gKyAgICAgICByZXQgPSBzdW41MGlf
dGhzX2NhbGlicmF0ZSh0bWRldik7Cj4gPiA+ID4gPiArICAgICAgIGlmIChyZXQpCj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgZ290byBtb2RfZGlzYWJsZTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gK21vZF9kaXNhYmxlOgo+ID4g
PiA+ID4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUodG1kZXYtPm1vZF9jbGspOwo+ID4g
PiA+ID4gIGJ1c19kaXNhYmxlOgo+ID4gPiA+ID4gICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBh
cmUodG1kZXYtPmJ1c19jbGspOwo+ID4gPiA+ID4gIGFzc2VydF9yZXNldDoKPiA+ID4gPiA+IEBA
IC0zOTUsNiArNDA5LDcgQEAgc3RhdGljIGludCBzdW44aV90aHNfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gPiAgewo+ID4gPiA+ID4gICAgICAgICBzdHJ1Y3Qg
dGhzX2RldmljZSAqdG1kZXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiA+ID4gPiA+
Cj4gPiA+ID4gPiArICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZSh0bWRldi0+bW9kX2Nsayk7
Cj4gPiA+ID4gPiAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZSh0bWRldi0+YnVzX2Nsayk7
Cj4gPiA+ID4gPiAgICAgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHRtZGV2LT5yZXNldCk7Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gLS0KPiA+ID4gPiA+IDIuMTcuMQo+ID4gPiA+ID4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gPiA+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+ID4gPiA+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiA+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gPgo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=

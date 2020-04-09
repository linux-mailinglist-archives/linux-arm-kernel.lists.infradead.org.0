Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447DE1A309B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5x7MIXumbYHOwOdoftn8x8+MQXgbwvJ+QFKcVAwgIGo=; b=swti2L/tqtVWH3
	Rf7LKl67K6B9NX2e4HBBBTu6+ZQ9n6TeiMs+kVM4zhTctb82wl1SD9NU+ZGIFDMlrOEAt7ejWpPle
	BVig7piZLAXa7Q3hbFg/sJNn+rkWroJms34Tsxica+QpX14A3rE1pPGZl207uikfpT4EKtI+QAqYt
	3W2mi/+zmrQGzSxGjJFskVQWyYQJVG63pnGcn5AygtRLVXYGHlLuusiWMw7yf6855nHNPjn9nII9h
	jm8x62d7Vz3CcVj8Sr2iHD70omi35Ul60VoPci0WUVLS6b3kmWbH8bhvHPFecPnWpZxyGe8H5RKTV
	3KFj+pW5GKbKgsYPjyuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMS8D-0004k0-Ix; Thu, 09 Apr 2020 08:01:49 +0000
Received: from plasma4.jpberlin.de ([80.241.57.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMS86-0004j7-1p
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:01:44 +0000
Received: from spamfilter04.heinlein-hosting.de
 (spamfilter04.heinlein-hosting.de [80.241.56.122])
 by plasma.jpberlin.de (Postfix) with ESMTP id DF17ABC47B;
 Thu,  9 Apr 2020 10:01:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id D_asgsQTvtos; Thu,  9 Apr 2020 10:01:29 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 73618BC048;
 Thu,  9 Apr 2020 10:01:29 +0200 (CEST)
Received: from [10.51.0.10] (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 9 Apr 2020
 10:01:29 +0200
From: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [virtio-dev] [PATCH v3] Add virtio SCMI device specification
To: =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>
References: <20200227113735.23605-1-peter.hilber@opensynergy.com>
 <20200317192053.15665-1-peter.hilber@opensynergy.com>
 <87369tn2a4.fsf@linaro.org>
Autocrypt: addr=peter.hilber@opensynergy.com; prefer-encrypt=mutual; keydata=
 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
 lbekkuPTQs/m
Message-ID: <f07872a9-d35f-307c-49ad-31b396fcc7d9@opensynergy.com>
Date: Thu, 9 Apr 2020 10:01:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <87369tn2a4.fsf@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.25.255.1]
X-Rspamd-Queue-Id: DF17ABC47B
X-Rspamd-Score: -4.70 / 15.00 / 200.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_010142_401375_042998F7 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.57.33 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: virtio-dev@lists.oasis-open.org, Sudeep.Holla@arm.com,
 Souvik.Chakravarty@arm.com, linux-arm-kernel@lists.infradead.org,
 virtio-comment@lists.oasis-open.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgphcG9sb2dpZXMgZm9yIG15IHNsb3cgcmVwbHkuIFBsZWFzZSBmaW5kIG15IGFuc3dlcnMg
YmVsb3cuCgpPbiAyNy4wMy4yMCAxODoxOSwgQWxleCBCZW5uw6llIHdyb3RlOgo+IDxzbmlwPgo+
PiArCj4+ICtcc3Vic3Vic2VjdGlvbntTaGFyZWQgTWVtb3J5IE9wZXJhdGlvbn0KPj4gKwo+PiAr
VmFyaW91cyBTQ01JIHByb3RvY29scyBkZWZpbmUgc3RhdGlzdGljcyBzaGFyZWQgbWVtb3J5IHJl
Z2lvbnMgKGZvcgo+PiArc3RhdGlzdGljcyBhbmQgc2Vuc29yIHZhbHVlcykuCj4+ICsKPj4gK1xk
ZXZpY2Vub3JtYXRpdmV7XHBhcmFncmFwaH17U2hhcmVkIE1lbW9yeSBPcGVyYXRpb259e0Rldmlj
ZSBUeXBlcyAvIFNDTUkgRGV2aWNlIC8gRGV2aWNlIE9wZXJhdGlvbiAvIFNoYXJlZCBNZW1vcnkg
T3BlcmF0aW9ufQo+PiArCj4+ICtJZiBWSVJUSU9fU0NNSV9GX1NIQVJFRF9NRU1PUlkgd2FzIG5l
Z290aWF0ZWQsIHRoZSBkZXZpY2UgTUFZIGltcGxlbWVudAo+PiArYW4gU0NNSSBzdGF0aXN0aWNz
IHNoYXJlZCBtZW1vcnkgcmVnaW9uIHVzaW5nIGEgdmlydGlvIHNoYXJlZCBtZW1vcnkKPj4gK3Jl
Z2lvbi4KPiAKPiBBRkFJQ1QgdGhpcyBpcyB0aGUgZmlyc3QgdXNhZ2Ugb2Ygc2htaWQgaW4gdGhl
IHZpcnRpbyBzcGVjIHNvIEkgaGF2ZQo+IHNvbWUgcXVlc3Rpb25zLiBUaGUgc3BlYyBzYXlzOgoK
VGhlIEZpbGUgU3lzdGVtIERldmljZSwgd2hpY2ggaGFzIGJlZW4gYWRkZWQgdG8gdGhlIHZpcnRp
by1zcGVjIG1hc3RlcgphdCBsZWFzdCwgYWxzbyB1c2VzIHNoYXJlZCBtZW1vcnkgZm9yIHRoZSBE
QVggV2luZG93IGFscmVhZHkuWzFdCgo+IAo+ICAgTWVtb3J5IGNvbnNpc3RlbmN5IHJ1bGVzIHZh
cnkgZGVwZW5kaW5nIG9uIHRoZSByZWdpb24gYW5kIHRoZSBkZXZpY2UKPiAgIGFuZCB0aGV5IHdp
bGwgYmUgc3BlY2lmaWVkIGFzIHJlcXVpcmVkIGJ5IGVhY2ggZGV2aWNlLgo+IAo+IFNvIHdoYXQg
YXJlIHRoZSBydWxlcyBmb3IgbWVtb3J5IGNvbnNpc3RlbmN5IGZvciB0aGVzZSByZWdpb25zOgo+
IAo+ICAgLSBhcmUgdGhleSByZWFkLW9ubHkgdy5yLnQgdGhlIGd1ZXN0PyAobWF5YmUgdGhpcyBp
cyBpbXBsaWNpdD8pCgpUaGUgQXJtIFNDTUkgc3BlY1syXSAoREVOMDA1NkIpIG9ubHkgbGlzdHMg
InN0YXRpc3RpY3MiIHNoYXJlZCBtZW1vcnkKKFNITSkgZmllbGRzIHdoaWNoIGFyZSByZWFkLW9u
bHkgdG8gdGhlIGd1ZXN0IChTQ01JIGFnZW50KSwgYWx0aG91Z2gKdGhpcyBpcyBub3Qgc3RhdGVk
IGV4cGxpY2l0bHkuIEkgdGhpbmsgdGhlIHZpcnRpbyBzcGVjIHNob3VsZCBub3QKc3BlY2lmeSBt
b3JlIGFib3V0IHRoaXMuCgo+ICAgLSBob3cgZG9lcyB0aGUgZ3Vlc3Qga25vdyB3aGVuIHRoZXkg
aGF2ZSBiZWVuIHVwZGF0ZWQ/CgpTQ01JIHByb3ZpZGVzIG5vdGlmaWNhdGlvbiBtZXNzYWdlcyBm
b3Igc29tZSBldmVudHMuIERFTjAwNTZCIGRvZXMgbm90CnNwZWNpZnkgYW55IGdlbmVyaWMgU0hN
IHVwZGF0ZSBkZXRlY3Rpb24gbWVjaGFuaXNtIG9yIFNITSBhY2Nlc3MKc3luY2hyb25pemF0aW9u
IG1lY2hhbmlzbSwgc28gSSB3b3VsZCBhZ2FpbiBzYXkgdGhlIHZpcnRpbyBzcGVjCnNob3VsZCBu
b3Qgc3BlY2lmeSBhbnl0aGluZyBhYm91dCB0aGlzLgoKPiAgIC0gaG93IGdvZXMgdGhlIGd1ZXN0
IGtub3cgaXQgaGFzbid0IHJlYWQgYSB2YWx1ZSBtaWQtdXBkYXRlPwoKSSB3b3VsZCBhZGQgdGhl
IGZvbGxvd2luZyByZXF1aXJlbWVudHMgKHBhcmFwaHJhc2VkKSB0byB0aGUgbmV4dCB2aXJ0aW8K
U0NNSSBkZXZpY2Ugc3BlYyBwYXRjaDoKCi0gQWxsIFNITSBlbGVtZW50cyBNVVNUIGJlIG5hdHVy
YWxseSBhbGlnbmVkLgotIFJlYWQgYW5kIHdyaXRlIGFjY2Vzc2VzIHRvIHNjYWxhciBlbGVtZW50
cyBpbiB0aGUgU0hNIE1VU1QgYmUgYXRvbWljLgoKQXBhcnQgZnJvbSB0aGlzLCBJIHRoaW5rIERF
TjAwNTZCIGltcG9zZXMgbm8gZnVydGhlciBtZW1vcnkgY29uc2lzdGVuY3kKcnVsZXMgd2hpY2gg
dGhlIHZpcnRpbyBTQ01JIGRldmljZSBzcGVjIG5lZWRzIHRvIGFkZHJlc3MuCgpCZXN0IHJlZ2Fy
ZHMsCgpQZXRlcgoKClsxXQpodHRwczovL2dpdGh1Yi5jb20vb2FzaXMtdGNzL3ZpcnRpby1zcGVj
L2Jsb2IvMGMwZGQ3MTUxNTJjYmJkYzFkODdlOGQxOTNkNGM1NmQyYjBiYjVmZS92aXJ0aW8tZnMu
dGV4I0wxODIKWzJdCmh0dHBzOi8vc3RhdGljLmRvY3MuYXJtLmNvbS9kZW4wMDU2L2IvREVOMDA1
NkJfU3lzdGVtX0NvbnRyb2xfYW5kX01hbmFnZW1lbnRfSW50ZXJmYWNlX3YyXzAucGRmCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==

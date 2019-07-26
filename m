Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44A7660D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4nDG1lSflM+YrPonos6xqKKRVhBR5qXRp2Gbcve/ZJ8=; b=QjUOO4xLz98VZZhnDqAHfznxB
	F8MmuUKlJ5hKW6OHumGgSRY9pBt41kYVC1BoaPEEutW3WCS2tAmslsNON6tAATYXm9C8smpVoxNcf
	BTkrhRiUvJmH72k+o37bNB2a9wwrxA1VRIPpvFTti3j2/TqHIANep6D5W+cU6kyhp5ZGekAmCmjTK
	eBhJ3LPMf/nwecBfp9WlzzqsOuWoeKJyKkqYy0TAlVbTcyRPPlvr1Dhgc8StY177vHYBOfvPQLczO
	vEJbKhT7IOmJGIz08wqQDAGVunx+TgLz/pbokbqhZe0h4qZf92dbMTWeOgQ6IV4gfGSLenpB/H2y/
	pQmAf7sqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzUw-0000Ii-1w; Fri, 26 Jul 2019 12:38:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzUR-000067-Vh
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:38:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DBC5337;
 Fri, 26 Jul 2019 05:38:27 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E1C13F694;
 Fri, 26 Jul 2019 05:38:26 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
 <20190726121056.GA26088@lakrids.cambridge.arm.com>
 <20190726121354.GB26088@lakrids.cambridge.arm.com>
 <20190726122728.jhn4e6wq7rcowyi4@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1549fe77-367f-fee1-c09c-e429fca91051@arm.com>
Date: Fri, 26 Jul 2019 13:38:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190726122728.jhn4e6wq7rcowyi4@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_053828_179867_99CB01A4 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDcvMjAxOSAxMzoyNywgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKdWwgMjYs
IDIwMTkgYXQgMDE6MTM6NTRQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+PiBPbiBGcmks
IEp1bCAyNiwgMjAxOSBhdCAwMToxMDo1N1BNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+
PiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwMToyNzoxNlBNICswMjAwLCBBbmRlcnMgUm94ZWxs
IHdyb3RlOgo+Pj4+IFdoZW4gZmFsbC10aHJvdWdoIHdhcm5pbmdzIHdhcyBlbmFibGVkIGJ5IGRl
ZmF1bHQsIGNvbW1pdCBkOTM1MTJlZjBmMGUKPj4+PiAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFi
bGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKSwgdGhlIGZvbGxvd2luZwo+Pj4+IHdhcm5pbmdzIHdh
cyBzdGFydGluZyB0byBzaG93IHVwOgo+Pj4+Cj4+Pj4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdf
YnJlYWtwb2ludC5jOiBJbiBmdW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hfcGFyc2XigJk6
Cj4+Pj4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0MDo3OiB3YXJuaW5n
OiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+Pj4+ICAgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCj4+Pj4gICAgICBpZiAoaHctPmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xF
Tl8xKQo+Pj4+ICAgICAgICAgXgo+Pj4+IC4uL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9p
bnQuYzo1NDI6Mzogbm90ZTogaGVyZQo+Pj4+ICAgICBjYXNlIDI6Cj4+Pj4gICAgIF5+fn4KPj4+
PiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ0Ojc6IHdhcm5pbmc6IHRo
aXMgc3RhdGVtZW50IG1heSBmYWxsCj4+Pj4gICB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJv
dWdoPV0KPj4+PiAgICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzIp
Cj4+Pj4gICAgICAgICBeCj4+Pj4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5j
OjU0NjozOiBub3RlOiBoZXJlCj4+Pj4gICAgIGRlZmF1bHQ6Cj4+Pj4gICAgIF5+fn5+fn4KPj4+
Pgo+Pj4+IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFs
bC10aHJvdWdoLiBSZXdvcmsgc28KPj4+PiB0aGUgY29kZSBsb29rcyBsaWtlIHRoZSBhcm0gY29k
ZS4gU2luY2UgdGhlIGNvbW1lbnQgaW4gdGhlIGZ1bmN0aW9uCj4+Pj4gaW5kaWNhdGVzIHRhaHQg
dGhpcyBpcyBzdXBwb3NlZCB0byBiZWhhdmUgdGhlIHNhbWUgd2F5IGFzIGFybTMyIGJlY2F1c2UK
Pj4+Cj4+PiBUeXBvOiBzL3RhaHQvdGhhdC8KPj4+Cj4+Pj4gaXQgaGFuZGxlcyAzMi1iaXQgdGFz
a3MgYWxzby4KPj4+Pgo+Pj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgdjMuMTYrCj4+
Pj4gRml4ZXM6IDZlZTMzYzI3MTJmYyAoIkFSTTogaHdfYnJlYWtwb2ludDogY29ycmVjdCBhbmQg
c2ltcGxpZnkgYWxpZ25tZW50IGZpeHVwIGNvZGUiKQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFuZGVy
cyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KPj4+Cj4+PiBUaGUgcGF0Y2ggaXRz
ZWxmIGxvb2tzIGZpbmUsIGJ1dCBJIGRvbid0IHRoaW5rIHRoaXMgbmVlZHMgYSBDQyB0bwo+Pj4g
c3RhYmxlLCBub3IgZG9lcyBpdCByZXF1aXJlIHRoYXQgZml4ZXMgdGFnLCBhcyB0aGVyZSdzIG5v
IGZ1bmN0aW9uYWwKPj4+IHByb2JsZW0uCj4+Cj4+IEhtbS4uLiBJIG5vdyBzZWUgSSBzcG9rZSB0
b28gc29vbiwgYW5kIHRoaXMgaXMgbWFraW5nIHRoZSAxLWJ5dGUKPj4gYnJlYWtwb2ludCB3b3Jr
IGF0IGEgMy1ieXRlIG9mZnNldC4KPiAKPiBJIHN0aWxsIGRvbid0IHRoaW5rIGl0J3MgcXVpdGUg
cmlnaHQgdGhvdWdoLCBzaW5jZSBpdCBmb3JiaWRzIGEgMi1ieXRlCj4gd2F0Y2hwb2ludCBvbiBh
IGJ5dGUtYWxpZ25lZCBhZGRyZXNzLgoKUGx1cywgQUZBSUNTLCBhIDEtYnl0ZSB3YXRjaHBvaW50
IG9uIGEgMi1ieXRlLWFsaWduZWQgYWRkcmVzcy4KCk5vdCB0aGF0IEkga25vdyBhbnl0aGluZyBh
Ym91dCB0aGlzIGNvZGUsIGJ1dCBpdCBkb2VzIHN0YXJ0IHRvIGxvb2sgbGlrZSAKaXQgbWlnaHQg
d2FudCByZXdyaXRpbmcgd2l0aG91dCB0aGUgb2ZmZW5kaW5nIHN3aXRjaCBzdGF0ZW1lbnQgYW55
d2F5LiAKQXQgYSBnbGFuY2UsIGl0IGxvb2tzIGxpa2UgdGhlIGludGVuZGVkIHNlbWFudGljIG1p
Z2h0IGJvaWwgZG93biB0bzoKCglpZiAoaHctPmN0cmwubGVuID4gb2Zmc2V0KQoJCXJldHVybiAt
RUlOVkFMOwoKUm9iaW4uCgo+IEkgdGhpbmsgdGhlIGFybTY0IGNvZGUgbWF0Y2hlcyB3aGF0IHdl
IGhhZCBvbiAzMi1iaXQgcHJpb3IgdG8KPiBkOTY4ZDJiODAxZDggKCJBUk06IDc0OTcvMTogaHdf
YnJlYWtwb2ludDogYWxsb3cgc2luZ2xlLWJ5dGUgd2F0Y2hwb2ludHMKPiBvbiBhbGwgYWRkcmVz
c2VzIiksIHNvIHdlIHNob3VsZCBoYXZlIG9uZSBwYXRjaCBicmluZ2luZyB1cyB1cCB0byBzcGVl
ZAo+IHdpdGggdGhhdCBjaGFuZ2UsIGFuZCB0aGVuIGFub3RoZXIgYW5ub3RhdGluZyB0aGUgZmFs
bHRocm91Z2hzLgo+IAo+IFdpbGwKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

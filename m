Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B3F76775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XcX3J3Ccsv5hKrOSbNmG940/KoeVXXTOeRnLRX93TKk=; b=GR/9ULjIqcVTYwsX4zORIEilg
	8X4twQTVT33VeBp1jtX3zTI5HK/Pu23e5Je6J1rnzVWVNu8u5wkwBXbQYx57/x0pdeY66/tqRDHrQ
	0RSgHeVF3l+MCs4T4j1TIsZQJvyFVpu6iwWirl/HJfx7fSrv+lBek5a7eAIFf6b5enFqAajLaMVNS
	pA/SgSFxwh7u3sslk7ino4iBchR1rMZBEU1qhsYvET5RWXqZOHfKtVNd9PvZno420p9kwEbb4a00A
	33iR6FQpA5MEgc4gfZ2whIho3pCv2xvVhMxrDFb0P0L/6LyiC3572AXT9iqlyBYC/iuDEkA2twVJT
	+kh1JT4dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0HH-0005qC-MH; Fri, 26 Jul 2019 13:28:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0H6-0005pS-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:28:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 738E3337;
 Fri, 26 Jul 2019 06:28:40 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5354E3F694;
 Fri, 26 Jul 2019 06:28:39 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
To: Will Deacon <will@kernel.org>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
 <20190726121056.GA26088@lakrids.cambridge.arm.com>
 <20190726121354.GB26088@lakrids.cambridge.arm.com>
 <20190726122728.jhn4e6wq7rcowyi4@willie-the-truck>
 <1549fe77-367f-fee1-c09c-e429fca91051@arm.com>
 <20190726130523.ftmc2un7fwwcegrr@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0dc7d97f-88bb-6416-d731-afbf0d3c6133@arm.com>
Date: Fri, 26 Jul 2019 14:28:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190726130523.ftmc2un7fwwcegrr@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_062844_541945_E21C45B9 
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDcvMjAxOSAxNDowNSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKdWwgMjYs
IDIwMTkgYXQgMDE6Mzg6MjRQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyNi8w
Ny8yMDE5IDEzOjI3LCBXaWxsIERlYWNvbiB3cm90ZToKPj4+IE9uIEZyaSwgSnVsIDI2LCAyMDE5
IGF0IDAxOjEzOjU0UE0gKzAxMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPj4+PiBPbiBGcmksIEp1
bCAyNiwgMjAxOSBhdCAwMToxMDo1N1BNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+Pj4+
IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjE2UE0gKzAyMDAsIEFuZGVycyBSb3hlbGwg
d3JvdGU6Cj4+Pj4+PiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBk
ZWZhdWx0LCBjb21taXQgZDkzNTEyZWYwZjBlCj4+Pj4+PiAoIk1ha2VmaWxlOiBHbG9iYWxseSBl
bmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKSwgdGhlIGZvbGxvd2luZwo+Pj4+Pj4gd2Fybmlu
Z3Mgd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6Cj4+Pj4+Pgo+Pj4+Pj4gLi4vYXJjaC9hcm02NC9r
ZXJuZWwvaHdfYnJlYWtwb2ludC5jOiBJbiBmdW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hf
cGFyc2XigJk6Cj4+Pj4+PiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQw
Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCj4+Pj4+PiAgICB0aHJvdWdoIFst
V2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4+Pj4+ICAgICAgIGlmIChody0+Y3RybC5sZW4gPT0g
QVJNX0JSRUFLUE9JTlRfTEVOXzEpCj4+Pj4+PiAgICAgICAgICBeCj4+Pj4+PiAuLi9hcmNoL2Fy
bTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQyOjM6IG5vdGU6IGhlcmUKPj4+Pj4+ICAgICAg
Y2FzZSAyOgo+Pj4+Pj4gICAgICBefn5+Cj4+Pj4+PiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19i
cmVha3BvaW50LmM6NTQ0Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCj4+Pj4+
PiAgICB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4+Pj4+ICAgICAgIGlmICho
dy0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzIpCj4+Pj4+PiAgICAgICAgICBeCj4+
Pj4+PiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ2OjM6IG5vdGU6IGhl
cmUKPj4+Pj4+ICAgICAgZGVmYXVsdDoKPj4+Pj4+ICAgICAgXn5+fn5+fgo+Pj4+Pj4KPj4+Pj4+
IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJv
dWdoLiBSZXdvcmsgc28KPj4+Pj4+IHRoZSBjb2RlIGxvb2tzIGxpa2UgdGhlIGFybSBjb2RlLiBT
aW5jZSB0aGUgY29tbWVudCBpbiB0aGUgZnVuY3Rpb24KPj4+Pj4+IGluZGljYXRlcyB0YWh0IHRo
aXMgaXMgc3VwcG9zZWQgdG8gYmVoYXZlIHRoZSBzYW1lIHdheSBhcyBhcm0zMiBiZWNhdXNlCj4+
Pj4+Cj4+Pj4+IFR5cG86IHMvdGFodC90aGF0Lwo+Pj4+Pgo+Pj4+Pj4gaXQgaGFuZGxlcyAzMi1i
aXQgdGFza3MgYWxzby4KPj4+Pj4+Cj4+Pj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAj
IHYzLjE2Kwo+Pj4+Pj4gRml4ZXM6IDZlZTMzYzI3MTJmYyAoIkFSTTogaHdfYnJlYWtwb2ludDog
Y29ycmVjdCBhbmQgc2ltcGxpZnkgYWxpZ25tZW50IGZpeHVwIGNvZGUiKQo+Pj4+Pj4gU2lnbmVk
LW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgo+Pj4+Pgo+
Pj4+PiBUaGUgcGF0Y2ggaXRzZWxmIGxvb2tzIGZpbmUsIGJ1dCBJIGRvbid0IHRoaW5rIHRoaXMg
bmVlZHMgYSBDQyB0bwo+Pj4+PiBzdGFibGUsIG5vciBkb2VzIGl0IHJlcXVpcmUgdGhhdCBmaXhl
cyB0YWcsIGFzIHRoZXJlJ3Mgbm8gZnVuY3Rpb25hbAo+Pj4+PiBwcm9ibGVtLgo+Pj4+Cj4+Pj4g
SG1tLi4uIEkgbm93IHNlZSBJIHNwb2tlIHRvbyBzb29uLCBhbmQgdGhpcyBpcyBtYWtpbmcgdGhl
IDEtYnl0ZQo+Pj4+IGJyZWFrcG9pbnQgd29yayBhdCBhIDMtYnl0ZSBvZmZzZXQuCj4+Pgo+Pj4g
SSBzdGlsbCBkb24ndCB0aGluayBpdCdzIHF1aXRlIHJpZ2h0IHRob3VnaCwgc2luY2UgaXQgZm9y
YmlkcyBhIDItYnl0ZQo+Pj4gd2F0Y2hwb2ludCBvbiBhIGJ5dGUtYWxpZ25lZCBhZGRyZXNzLgo+
Pgo+PiBQbHVzLCBBRkFJQ1MsIGEgMS1ieXRlIHdhdGNocG9pbnQgb24gYSAyLWJ5dGUtYWxpZ25l
ZCBhZGRyZXNzLgoKW2FuZCBvZiBjb3Vyc2UsIHdoYXQgSSBtaXNzZWQgd2FzIHRoYXQgdGhhdCdz
IHRoZSBjYXNlIHRoZSBmYWxsdGhyb3VnaCAKc2VydmVzLi4uIHl1Y2sgaW5kZWVkXQoKPj4gTm90
IHRoYXQgSSBrbm93IGFueXRoaW5nIGFib3V0IHRoaXMgY29kZSwgYnV0IGl0IGRvZXMgc3RhcnQg
dG8gbG9vayBsaWtlIGl0Cj4+IG1pZ2h0IHdhbnQgcmV3cml0aW5nIHdpdGhvdXQgdGhlIG9mZmVu
ZGluZyBzd2l0Y2ggc3RhdGVtZW50IGFueXdheS4gQXQgYQo+PiBnbGFuY2UsIGl0IGxvb2tzIGxp
a2UgdGhlIGludGVuZGVkIHNlbWFudGljIG1pZ2h0IGJvaWwgZG93biB0bzoKPj4KPj4gCWlmICho
dy0+Y3RybC5sZW4gPiBvZmZzZXQpCj4+IAkJcmV0dXJuIC1FSU5WQUw7Cj4gCj4gR2l2ZW4gdGhh
dCBpdCdzIGNvbXBhdCBjb2RlLCBJIHRoaW5rIGl0J3Mgd29ydGggc3RheWluZyBhcyBjbG9zZSB0
byB0aGUKPiBhcmNoL2FybS8gaW1wbGVtZW50YXRpb24gYXMgd2UgY2FuLgoKUmlnaHQsIEkgYWxz
byBtaXNyZWFkIHRoZSBhY2NvbXBhbnlpbmcgYXJjaC9hcm0vIHBhdGNoIGFuZCBnb3QgdGhlIApp
bXByZXNzaW9uIHRoYXQgMzItYml0IGFsc28gaGFkIGEgcHJvYmxlbSBzdWNoIHRoYXQgYW55IGZp
eCB3b3VsZCBoYXBwZW4gCmluIHBhcmFsbGVsIC0gb24gY2xvc2VyIGluc3BlY3Rpb24gdGhlIGN1
cnJlbnQgYXJjaC9hcm0vIGNvZGUgZG9lcyAKYWN0dWFsbHkgc2VlbSB0byBtYWtlIHNlbnNlLCBl
dmVuIGlmIGl0IGlzIGhvcnJpYmx5IHN1YnRsZS4KCj4gQWxzbywgYmV3YXJlIHRoYXQgdGhlCj4g
QVJNX0JSRUFLUE9JTlRfTEVOXyogZGVmaW5pdGlvbnMgYXJlIG1hc2tzIGJlY2F1c2Ugb2YgdGhl
IEJBUyBmaWVsZHMgaW4KPiB0aGUgZGVidWcgYXJjaGl0ZWN0dXJlLgoKRnVuLi4uIENsZWFybHkg
aXQncyBhIGJpdCB0b28gRnJpZGF5IGZvciBtZSB0byBiZSB1c2VmdWwgaGVyZSwgc28gCmFwb2xv
Z2llcyBmb3IgdGhlIGNvbmZ1c2lvbiA6KQoKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

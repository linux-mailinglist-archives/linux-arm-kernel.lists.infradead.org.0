Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644D1BC084
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NP9KzF/9E/9ePVg/Gx/pERHLU8PVaqmS1wewnZ10QA=; b=N/t589IXBLWNdb
	ySiwblZkFBc+3Y5/sU8aadnUoElVLruITcNUKKIHLAui92jGMfzBjlzh2EWUJX5U3XyYu2MXhsOuj
	otCsgrXKaMLfJDBxFPJ/RXvu5KqGeXcX6gz60pYu7IRvw8yanWXHh/iW+ZbfL64SydJPFliOnI0fh
	Dnz/sUZ2gpLoHt1Gdp+tpDskVPTmA7Y8evDxmOFLE7vtRIWdfzwUohv12pkQ6xt2EdglxazFJnee6
	gdhG4jG1Ng7jGWZiELY8ymEUCeq/YYSHAbgEH3pcbMekIXnuWYgaxULtIt3Zte2lTlL2ExzGe/mtv
	B3yY+vw8srlEu2LPrQ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQqT-0006zN-QQ; Tue, 28 Apr 2020 14:04:21 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQqG-0006ya-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:04:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49BNft0nX6z1rpRj;
 Tue, 28 Apr 2020 16:04:06 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49BNft07m2z1r5Qt;
 Tue, 28 Apr 2020 16:04:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0AciagwW6Vye; Tue, 28 Apr 2020 16:04:04 +0200 (CEST)
X-Auth-Info: eUXq+cFr+9HoJg9P8mkXk5huwvzTc26+NTHKnUQgZy8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 28 Apr 2020 16:04:04 +0200 (CEST)
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200422104613.96944-1-marex@denx.de>
 <222f356a-2f4a-47d7-9e4f-e80b6a3f32b0@st.com>
 <daf1bcdc-29a6-db60-cd60-3521aca2ce9b@denx.de>
 <49762c79-a374-92a2-975e-afe7a4e7eb3c@denx.de>
 <a7e83ab6-a62a-d501-2e09-be7954418e01@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <c2a65f11-98a5-4497-8359-c9346fbc9c85@denx.de>
Date: Tue, 28 Apr 2020 16:04:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a7e83ab6-a62a-d501-2e09-be7954418e01@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_070409_326052_271E375E 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8yOC8yMCAzOjU0IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCj4g
Cj4gT24gNC8yOC8yMCAzOjMyIFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4gT24gNC8yMy8yMCA0
OjA0IFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4+IE9uIDQvMjMvMjAgMzozNiBQTSwgQWxleGFu
ZHJlIFRvcmd1ZSB3cm90ZToKPj4+PiBLaSBNYXJlawo+Pj4KPj4+IEhpLAo+Pgo+PiBIZWxsbyBh
Z2FpbiwKPj4KPj4+PiBPbiA0LzIyLzIwIDEyOjQ1IFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4+
Pj4gVGhlIEFWOTYgYm9hcmQgZGV2aWNlIHRyZWUgaXMgY29tcGxldGVseSBicm9rZW4gYW5kIGRv
ZXMgbm90IG1hdGNoIHRoZQo+Pj4+PiBoYXJkd2FyZS4gVGhpcyBzZXJpZXMgZml4ZXMgaXQgdXAu
Cj4+Pj4+Cj4+Pj4+IE1hcmVrIFZhc3V0ICgyMCk6Cj4+Pj4+IMKgwqDCoCBBUk06IGR0czogc3Rt
MzI6IFJlcGFpciBQTUlDIGNvbmZpZ3VyYXRpb24gb24gQVY5Ngo+Pj4+PiDCoMKgwqAgQVJNOiBk
dHM6IHN0bTMyOiBSZXBhaXIgUE1JQyBpbnRlcnJ1cHQgb24gQVY5Ngo+Pj4+PiDCoMKgwqAgQVJN
OiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgZXRoZXJuZXQgUkdNSUkKPj4+
Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIGV0aGVybmV0IG9wZXJhdGlvbiBvbiBB
Vjk2Cj4+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5nIGV0aGVybmV0IFBI
WSByZXNldCBvbiBBVjk2Cj4+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5n
IGV0aGVybmV0IFBIWSBza2V3cyBvbiBBVjk2Cj4+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6
IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBTRE1NQyBwaW5zCj4+Pj4+IMKgwqDCoCBBUk06IGR0
czogc3RtMzI6IFJlcGFpciBTRE1NQzEgb3BlcmF0aW9uIG9uIEFWOTYKPj4+Pj4gwqDCoMKgIEFS
TTogZHRzOiBzdG0zMjogQWRkIGVNTUMgYXR0YWNoZWQgdG8gU0RNTUMyIG9uIEFWOTYKPj4+Pj4g
wqDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIFFTUEkgTk9SIG9uIEFWOTYKPj4+Pj4gwqDCoMKg
IEFSTTogZHRzOiBzdG0zMjogQWRkIGNvbmZpZ3VyYXRpb24gRUVQUk9NIG9uIEFWOTYKPj4+Pj4g
wqDCoMKgIEFSTTogZHRzOiBzdG0zMjogRW5hYmxlIFdpRmkgb24gQVY5Ngo+Pj4+PiDCoMKgwqAg
QVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgVVNBUlQyIHBpbnMKPj4+
Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogRW5hYmxlIEJsdWV0b290aCBvbiBBVjk2Cj4+Pj4+
IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBMVERDIHBp
bnMKPj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGJpbmRpbmdzIGZvciBIRE1JIHZp
ZGVvIG9uIEFWOTYKPj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFsdGVybmF0ZSBw
aW5tdXggZm9yIFNBSTIgcGlucwo+Pj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmlu
ZGluZ3MgZm9yIGF1ZGlvIG9uIEFWOTYKPj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRk
IGJpbmRpbmdzIGZvciBVU0Igb24gQVY5Ngo+Pj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBS
ZW5hbWUgTEVEcyB0byBtYXRjaCBzaWxrc2NyZWVuIG9uIEFWOTYKPj4+Pj4KPj4+Pj4gwqDCoCBh
cmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5kdHNpwqDCoMKgIHwgMjgwICsrKysr
KysrKysrKysrKysrCj4+Pj4+IMKgwqAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZl
bmdlcjk2LmR0cyB8IDMyNAo+Pj4+PiArKysrKysrKysrKysrKysrKystLQo+Pj4+PiDCoMKgIDIg
ZmlsZXMgY2hhbmdlZCwgNTcyIGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+
Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+Cj4+Pj4+
IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgo+Pj4+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29t
Pgo+Pj4+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPgo+Pj4+
PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+Cj4+Pj4+IENj
OiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4+Pj4+IFRvOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+Pj4KPj4+Pgo+Pj4+IFNlcmllcyBs
b29rcyBnb29kIHRvIG1lLiBJJ2xsIG1lcmdlIGl0IGZvciBteSBuZXh0IFByLgo+Pj4+IEp1c3Qg
b25lIHF1ZXN0aW9uLCBBcmUgd2Ugc3RpbGwgYWJsZSB0byBib290IG9sZGVyIGJvYXJkIHJldmlz
aW9uCj4+Pj4gKHByb3RvdHlwZSBvbmVzKT8KPj4+Cj4+PiBJIGRvbid0IGhhdmUgb25lLCBidXQg
aWYgd2Ugd2FudCB0byBzdXBwb3J0IHRoZSBwcm90b3R5cGVzLCB3ZSB3aWxsIG5lZWQKPj4+IGEg
c2VwYXJhdGUgRFQgZm9yIHRoYXQgKG9yIGEgZmV3IERUU2kgdG8gaGFuZGxlIHRoZSBIVyBkaWZm
ZXJlbmNlcykuCj4+Cj4+IEkgZ290IHRoZSA1ODgtMTAwIHByb3RvdHlwZSB0b28gbm93LCBhbmQg
SSBoYXZlIG1vcmUgcGF0Y2hlcyB3aGljaCBJCj4+IHdvdWxkIGxpa2UgdG8gc3RhcnQgdXBzdHJl
YW1pbmcgb24gdG9wIG9mIHRoaXMgc2VyaWVzIChsaWtlIHNwbGl0IHRoZQo+PiBTb00gRFQgZnJv
bSB0aGUgYm9hcmQgRFQpLCBjYW4gdGhlc2UgYmUgYXBwbGllZCBzbyBJIGNhbiBzdGFydCBzZW5k
aW5nCj4+IHRoZSByZXN0Pwo+Pgo+IAo+IEknbGwgdHJ5IHRvIGRvIGl0IHRvZGF5IG9yIHRvbW9y
cm93LgoKQ29vbCwgdGhhbmtzICEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

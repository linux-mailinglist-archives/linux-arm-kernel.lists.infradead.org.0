Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE710F98C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPtclo8ztyKXFe7OtyQuPuMCy6w32in7bAskdE9k3ko=; b=MlPG0E1Ziyoyrv
	D2Cj+EFQWkbcBnYXsaSaLYsllXklLigy2tXT+TYuKZJQR4OYmbGh0mDnDh9SOeoUsbcJk/ocn5HCR
	lf/oME/ihedBhUTzMWTi3N5w3coRcM6i5cq7nY5ypyx+SACv3dNmYOjf4eNDMG1Ir1FCt6Im62qsw
	LZfHEZxDLlSamRxVxX4OycaXB+D5r0t9KtnS2oVKrY2maRL7jA5f1mt7V7kRtdCJLmkrjBIyAL9wZ
	WYKXkc3sMIr2ikeP04c2Q1RQLCRZ+YdtaRnTmv7TUmnQT9GC4Pi9xlHMeDOesNp0O3EB7zxYMvafL
	ek826lcoZNZM2DeVvj9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3LW-0003Tv-M1; Tue, 03 Dec 2019 08:15:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3LN-0003T1-54; Tue, 03 Dec 2019 08:15:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E3C94ACB4;
 Tue,  3 Dec 2019 08:15:33 +0000 (UTC)
Subject: Re: [PATCH 0/6] arm64: Realtek RTD1619 clock and reset controllers
To: James Tai <james.tai@realtek.com>
References: <20191203073540.9321-1-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0fcbcb58-6973-d903-91c3-844008094fda@suse.de>
Date: Tue, 3 Dec 2019 09:15:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203073540.9321-1-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_001537_486694_0F4303FF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Cheng-Yu Lee <cylee12@realtek.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwMy4xMi4xOSB1bSAwODozNSBzY2hyaWViIEphbWVzIFRhaToKPiBUaGlz
IHNlcmllcyBhZGRzIGNsb2NrIGFuZCByZXNldCBjb250cm9sbGVycyBmb3IgdGhlIFJlYWx0ZWsg
UlREMTYxOSBTb0MuCgpUaGFua3MgLSB3aGVuIHlvdSByZXNlbmQgKGluIHRoaXMgY2FzZSBJIGd1
ZXNzIGJlY2F1c2Ugb2YgbWlzc2luZwpsaW51eC1yZWFsdGVrLXNvYyBtYWlsaW5nIGxpc3QpLCBw
bGVhc2UgY2hhbmdlIHRoZSBzdWJqZWN0IHByZWZpeCB0bwoiUEFUQ0ggUkVTRU5EIiAoLS1zdWJq
ZWN0LXByZWZpeD0pIHNvIHRoYXQgcGVvcGxlIGtub3cgd2hpY2ggb25lIHRvCnJlcGx5IHRvLgoK
TGV0J3MgdHJ5IHRvIGtlZXAgdGhlIHJldmlldyBvbiB0aGUgc2VyaWVzIHNlbnQgMTAgbWludXRl
cyBsYXRlciAoOjQ1KSwKc28gdGhhdCBldmVyeW9uZSByZWNlaXZlcyBpdC4KClRoYW5rcywKQW5k
cmVhcwoKPiAKPiBDYzogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IENjOiBD
aGVuZy1ZdSBMZWUgPGN5bGVlMTJAcmVhbHRlay5jb20+Cj4gQ2M6IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnCj4gCj4gY3lsZWUxMiAoNik6Cj4gICBkdC1iaW5kaW5nczogY2xvY2s6IGFkZCBi
aW5kaW5ncyBmb3IgUlREMTYxOSBjbG9ja3MKPiAgIGR0LWJpbmRpbmdzOiByZXNldDogYWRkIGJp
bmRpbmdzIGZvciBydGQxNjE5IHJlc2V0IGNvbnRyb2xzCj4gICBjbGs6IHJlYWx0ZWs6IGFkZCBj
b21tb24gY2xvY2sgc3VwcG9ydCBmb3IgUmVhbHRlayBTb0NzCj4gICBjbGs6IHJlYWx0ZWs6IGFk
ZCByZXNldCBjb250cm9sbGVyIHN1cHBvcnQgZm9yIFJlYWx0ZWsgU29Dcwo+ICAgY2xrOiByZWFs
dGVrOiBhZGQgcnRkMTYxOSBjb250cm9sbGVycwo+ICAgZHQtYmluZGluZ3M6IGNsazogcmVhbHRl
azogYWRkIHJ0ZDE2MTkgY2xvY2sgY29udHJvbGxlciBiaW5kaW5ncwo+IAo+ICAuLi4vYmluZGlu
Z3MvY2xvY2svcmVhbHRlayxjbG9ja3MudHh0ICAgICAgICAgfCAgMzggKysKPiAgZHJpdmVycy9j
bGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9j
bGsvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9j
bGsvcmVhbHRlay9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgIDIxICsKPiAgZHJpdmVycy9j
bGsvcmVhbHRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgIDEyICsKPiAgZHJpdmVycy9j
bGsvcmVhbHRlay9jbGstcGxsLWRpZi5jICAgICAgICAgICAgIHwgIDgxICsrKwo+ICBkcml2ZXJz
L2Nsay9yZWFsdGVrL2Nsay1wbGwtcHNhdWQuYyAgICAgICAgICAgfCAxMjAgKysrKwo+ICBkcml2
ZXJzL2Nsay9yZWFsdGVrL2Nsay1wbGwuYyAgICAgICAgICAgICAgICAgfCA0MDAgKysrKysrKysr
KysrKwo+ICBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1wbGwuaCAgICAgICAgICAgICAgICAgfCAx
NTEgKysrKysKPiAgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcmVnbWFwLWdhdGUuYyAgICAgICAg
IHwgIDg5ICsrKwo+ICBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtZ2F0ZS5oICAgICAg
ICAgfCAgMjYgKwo+ICBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtbXV4LmMgICAgICAg
ICAgfCAgNjMgKysKPiAgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcmVnbWFwLW11eC5oICAgICAg
ICAgIHwgIDI2ICsKPiAgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcnRkMTYxOS1jYy5jICAgICAg
ICAgIHwgNTUzICsrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1y
dGQxNjE5LWljLmMgICAgICAgICAgfCAxMTIgKysrKwo+ICBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nv
bW1vbi5jICAgICAgICAgICAgICAgICAgfCAzMjAgKysrKysrKysrKwo+ICBkcml2ZXJzL2Nsay9y
ZWFsdGVrL2NvbW1vbi5oICAgICAgICAgICAgICAgICAgfCAxMjMgKysrKwo+ICBkcml2ZXJzL2Ns
ay9yZWFsdGVrL3Jlc2V0LmMgICAgICAgICAgICAgICAgICAgfCAxMDcgKysrKwo+ICBkcml2ZXJz
L2Nsay9yZWFsdGVrL3Jlc2V0LmggICAgICAgICAgICAgICAgICAgfCAgMzcgKysKPiAgaW5jbHVk
ZS9kdC1iaW5kaW5ncy9jbG9jay9ydGssY2xvY2stcnRkMTYxOS5oIHwgIDg4ICsrKwo+ICBpbmNs
dWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3J0ayxyZXNldC1ydGQxNjE5LmggfCAxMjQgKysrKwo+ICAy
MSBmaWxlcyBjaGFuZ2VkLCAyNDkzIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yZWFsdGVrLGNsb2Nrcy50
eHQKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvS2NvbmZpZwo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9NYWtlZmlsZQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcGxsLWRpZi5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1wbGwtcHNhdWQuYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcGxsLmMKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY2xrLXBsbC5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtZ2F0ZS5jCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtZ2F0ZS5oCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtbXV4LmMKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY2xrLXJlZ21hcC1tdXguaAo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcnRkMTYxOS1jYy5jCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1ydGQxNjE5LWljLmMKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY29tbW9uLmMKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY29tbW9uLmgKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvcmVzZXQuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9jbGsvcmVhbHRlay9yZXNldC5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL3J0ayxjbG9jay1ydGQxNjE5LmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcnRrLHJlc2V0LXJ0ZDE2MTkuaAo+IAoKCi0tIApT
VVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBO
w7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==

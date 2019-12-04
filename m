Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97787112395
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 08:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyofYkVZqFCukTLd+M1miJiiLeX+3GRiN3oitF5XwM0=; b=WExywn0Zn6jjOq
	DphnQSoDtztsyIjK1BJZvn8jPxKRLPcTwojZ8AjGRcBG0dVV4X/QbyaTyxWIYodNUUqm9ORnD51gA
	7f22KlPsw+49Xmecek6WMsNZrE+XdUu+DIFNi+Vajc9qcJI6MB5GP4MFccASbteNIz5tn1R1VXRYG
	FDaJLFB7URfoJOTpag8TV43GzR+FNdWBCRukr90xatBIDyG6ZDHm9EauY8AH+Egx7oWFFnMKjvW8p
	Gq+sImvNtIwyG8XE+FOy8vGq97yVMBiItPBnh8Gl4pzdcfHnx82TLly4njZJ0naIKPrLxJJTfLqmg
	uWWZkm1NsrobdkAzyG3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icP5Q-0000eg-8t; Wed, 04 Dec 2019 07:28:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icP5J-0000dv-1J; Wed, 04 Dec 2019 07:28:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 349DBACA5;
 Wed,  4 Dec 2019 07:28:27 +0000 (UTC)
Subject: Re: perf record doesn't work on rtd129x SoC
To: Wang YanQing <udknight@gmail.com>
References: <20191204045559.GA10458@udknight>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
Date: Wed, 4 Dec 2019 08:28:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204045559.GA10458@udknight>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_232829_223225_E8975DC1 
X-CRM114-Status: GOOD (  14.82  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFuUWluZywKCisgTEFLTUwgKyBNYXJrICsgV2lsbAoKQW0gMDQuMTIuMTkgdW0gMDU6NTUg
c2NocmllYiBXYW5nIFlhblFpbmc6Cj4gSSB1c2UgInBlcmYgcmVjb3JkIiB0byBkZWJ1ZyBwZXJm
b3JtYW5jZSBpc3N1ZSBvbiBSVEQxMjk2IFNPQywgaXQgZG9lcyd0IHdvcmssIGJ1dAo+IHRoZSAi
cGVyZiBzdGF0IiBpcyBvayEKClRoYW5rcyBmb3IgdGhlIHJlcG9ydCAtIHdoaWNoIGJvYXJkLCBi
cmFuY2ggYW5kIChiYXNlKSB0YWcgYXJlIHlvdQp0ZXN0aW5nIGFnYWluc3Q/IEFuZCBhcmUgeW91
IGJ1aWxkaW5nIHBlcmYgeW91cnNlbGYgZnJvbSBrZXJuZWwgc291cmNlcywKb3IgYXJlIHlvdSB1
c2luZyBzb21lIGRpc3RybyBwYWNrYWdlPwoKSSBvbmx5IGhhdmUgQnVzeWJveCBpbiBteSBpbml0
cmQgb24gRFM0MTg7IEkgaGF2ZSBub3QgdGVzdGVkIHBlcmYuCgo+IEFmdGVyIHNvbWUgZGlnIGlu
IHRoZSBrZXJuZWwsIEkgZmluZCB0aGUgcmVhc29uIGlzIG5vIHBtdSBvdmVyZmxvdyBpbnRlcnJ1
cHQsIEkgdGhpbmsKPiBiZWxvdyBwbXUgY29uZmlndXJhdGlvbiBpc24ndCByaWdodCBmb3IgUlRE
MTI5NjoKPiAiCj4gICAgICAgICBhcm1fcG11OiBhcm0tcG11IHsKPiAgICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1My1wbXUiOwo+ICAgICAgICAgICAgICAgICBpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgNDggSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gICAgICAgICB9Owo+
ICIKPiAKPiBXZSBuZWVkIDQgUE1VIFNQSSBmb3IgUlREMTI5NiAoNCBjb3JlcyksIGFuZCBJIGd1
ZXNzIHRoZSA0OCBpc24ndCByaWdodCB0b28uCgpOb3RlIHRoYXQgYWJvdmUgcnRkMTI5eC5kdHNp
IHNuaXBwZXQgaXMgbm90IGNvbXBsZXRlLiBTZWUgcnRkMTI5Ni5kdHNpOgoKJmFybV9wbXUgewoJ
aW50ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZjcHUxPiwgPCZjcHUyPiwgPCZjcHUzPjsK
fTsKCjQ4IGFuZCBoaWdoLzQgbWF0Y2ggd2hhdCBJIHNlZSBpbiB0aGUgbGF0ZXN0IEJTUDoKCmh0
dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJLU00LWJzcC9ibG9iL21hc3Rlci9saW51
eC1ydGsvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgvcnRkLTEyOTYuZHRzaSNM
MTE2Cgo+IEFueSBzdWdnZXN0aW9uIGlzIHdlbGNvbWUuCj4gCj4gVGhhbmtzIQoKVGhlIG9ubHkg
ZGlmZmVyZW5jZSBJIHNlZSBpcyAiYXJtLGNvcnRleC1hNTMtcG11IiB2cy4gImFybSxhcm12OC1w
bXV2MyIuCkJ5IG15IHJlYWRpbmcgb2YgYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9ldmVudC5jIHRo
ZSBvbmx5IGRpZmZlcmVuY2UKYmV0d2VlbiB0aGUgdHdvIHNob3VsZCBiZSB0aGUgbmFtZSBhbmQg
YW4gZXh0cmEgY2FjaGVfbWFwLiBZb3UgY291bGQgdHJ5CnRoZSBvdGhlciBjb21wYXRpYmxlIHN0
cmluZyBpbiB5b3VyIC5kdHMsIGJ1dCBJIGRvdWJ0IGl0J2xsIGhlbHAuCgpIb3BlZnVsbHkgdGhl
IFJlYWx0ZWsgb3IgQXJtIGd1eXMgY2FuIHNoZWQgc29tZSBsaWdodC4KClJlZ2FyZHMsCkFuZHJl
YXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4g
NSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2
ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

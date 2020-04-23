Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832851B5D3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PhFTEwbs9fWKoobBR9wEu3G3sjNf6rM+AoFoMxRsIg=; b=gykWcRpND98wkH
	8a5KvfMdBkzZQ9tcADvrr8sIGvqGF0MD7IimCopKmhtL4l+7pHLsslMzQ5CdDVMKLusa/xTleaNjw
	gix8WjokD36W8znRDYYmHwnTSHqbBA0Nw0c4i3UILYxKn/jNeRJodHE/HR6NrRnqiPXFSxHVVEakR
	se8xh40nK6CX02N+r3VGscd1/sOhT47iH8a14MIsroaBiSqwSAjlrJov4+nyt06u1qiy4YGW9J+M8
	HGPVoLaAy9HLUuH1kx/pt89267Nit88Lq4ummHZf0AHn8lagqQ5W84aCPhcCGb1jLkFP2Qwywddm5
	O/TShg1BTw+SrFdKT7AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcTb-0003Rl-AJ; Thu, 23 Apr 2020 14:05:15 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcTI-0003J1-PG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:04:58 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 497Jw43Jttz1rtM5;
 Thu, 23 Apr 2020 16:04:52 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 497Jw42Q31z1qqkC;
 Thu, 23 Apr 2020 16:04:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 2TyT5R-O8REY; Thu, 23 Apr 2020 16:04:50 +0200 (CEST)
X-Auth-Info: WGOOiAehNjnbCXuln/LclndS0sJT0Fb5etIUNP7tpeA=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 23 Apr 2020 16:04:50 +0200 (CEST)
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200422104613.96944-1-marex@denx.de>
 <222f356a-2f4a-47d7-9e4f-e80b6a3f32b0@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <daf1bcdc-29a6-db60-cd60-3521aca2ce9b@denx.de>
Date: Thu, 23 Apr 2020 16:04:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <222f356a-2f4a-47d7-9e4f-e80b6a3f32b0@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_070457_125957_8965B978 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

T24gNC8yMy8yMCAzOjM2IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEtpIE1hcmVrCgpI
aSwKCj4gT24gNC8yMi8yMCAxMjo0NSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IFRoZSBBVjk2
IGJvYXJkIGRldmljZSB0cmVlIGlzIGNvbXBsZXRlbHkgYnJva2VuIGFuZCBkb2VzIG5vdCBtYXRj
aCB0aGUKPj4gaGFyZHdhcmUuIFRoaXMgc2VyaWVzIGZpeGVzIGl0IHVwLgo+Pgo+PiBNYXJlayBW
YXN1dCAoMjApOgo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIFBNSUMgY29uZmlndXJh
dGlvbiBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgUE1JQyBpbnRlcnJ1
cHQgb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXgg
Zm9yIGV0aGVybmV0IFJHTUlJCj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgZXRoZXJu
ZXQgb3BlcmF0aW9uIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5n
IGV0aGVybmV0IFBIWSByZXNldCBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQg
bWlzc2luZyBldGhlcm5ldCBQSFkgc2tld3Mgb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0z
MjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIFNETU1DIHBpbnMKPj4gwqDCoCBBUk06IGR0czog
c3RtMzI6IFJlcGFpciBTRE1NQzEgb3BlcmF0aW9uIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czog
c3RtMzI6IEFkZCBlTU1DIGF0dGFjaGVkIHRvIFNETU1DMiBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBk
dHM6IHN0bTMyOiBBZGQgUVNQSSBOT1Igb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjog
QWRkIGNvbmZpZ3VyYXRpb24gRUVQUk9NIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6
IEVuYWJsZSBXaUZpIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5h
dGUgcGlubXV4IGZvciBVU0FSVDIgcGlucwo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogRW5hYmxl
IEJsdWV0b290aCBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRl
IHBpbm11eCBmb3IgTFREQyBwaW5zCj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmluZGlu
Z3MgZm9yIEhETUkgdmlkZW8gb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFs
dGVybmF0ZSBwaW5tdXggZm9yIFNBSTIgcGlucwo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRk
IGJpbmRpbmdzIGZvciBhdWRpbyBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQg
YmluZGluZ3MgZm9yIFVTQiBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZW5hbWUg
TEVEcyB0byBtYXRjaCBzaWxrc2NyZWVuIG9uIEFWOTYKPj4KPj4gwqAgYXJjaC9hcm0vYm9vdC9k
dHMvc3RtMzJtcDE1LXBpbmN0cmwuZHRzacKgwqDCoCB8IDI4MCArKysrKysrKysrKysrKysrKwo+
PiDCoCBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzIHwgMzI0ICsr
KysrKysrKysrKysrKysrKy0tCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTcyIGluc2VydGlvbnMo
KyksIDMyIGRlbGV0aW9ucygtKQo+Pgo+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJl
LnRvcmd1ZUBzdC5jb20+Cj4+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4u
c3RtMzJAZ21haWwuY29tPgo+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRA
c3QuY29tPgo+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+
Cj4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4+IFRvOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4KPiAKPiBTZXJpZXMgbG9va3Mg
Z29vZCB0byBtZS4gSSdsbCBtZXJnZSBpdCBmb3IgbXkgbmV4dCBQci4KPiBKdXN0IG9uZSBxdWVz
dGlvbiwgQXJlIHdlIHN0aWxsIGFibGUgdG8gYm9vdCBvbGRlciBib2FyZCByZXZpc2lvbgo+IChw
cm90b3R5cGUgb25lcyk/CgpJIGRvbid0IGhhdmUgb25lLCBidXQgaWYgd2Ugd2FudCB0byBzdXBw
b3J0IHRoZSBwcm90b3R5cGVzLCB3ZSB3aWxsIG5lZWQKYSBzZXBhcmF0ZSBEVCBmb3IgdGhhdCAo
b3IgYSBmZXcgRFRTaSB0byBoYW5kbGUgdGhlIEhXIGRpZmZlcmVuY2VzKS4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

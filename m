Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF4191425
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8ncwIVBEgOHmo81LE1x7wykKa3SDgKQKvaw+71il/o=; b=alCo93Dedr7Wuq
	6Nu3ixFKgTDmts3O4nly+DZ17tKyGtv6+1V0s6RNPYYA8fVVRZp9x6TF2Ktqle8cbW30mb6R2kUyj
	Sr2CAQrn2u+xXNafeQ3jeLWVXw9wsoUvWmxpFVLpAz21Rh/jB+S2R3ZY2pR6xNRzYq0/L72IPmfCG
	axPm/N4ivNesYBx3xpb8WSzErrOZb/KMAcIfhaTg35f3mwR7Zmy9dVHIk++z6/0tQkuw/OcVcDN13
	RXnxAYbnU73RfRqdhRmdWTr9CtiEA7nnFEmjVwxfOYqabs5t0p9u8xAg9uG5n6a1qLf+E0N45efIW
	Lkqd1wjZ3uXm8nOKraPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlO5-0001E6-1z; Tue, 24 Mar 2020 15:22:41 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlNk-00018d-6k
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:22:21 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mw3G4vHvz1qs3Z;
 Tue, 24 Mar 2020 16:22:18 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mw3G4Gj5z1r0by;
 Tue, 24 Mar 2020 16:22:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id sxZkNKpExWsZ; Tue, 24 Mar 2020 16:22:17 +0100 (CET)
X-Auth-Info: VDnm37stBst0pRSPbz0AplnzGl2fmlLCyAlknyp7M1A=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 16:22:17 +0100 (CET)
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
 <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
 <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
 <9492207e929c4185bda5a709ad879c15@SFHDAG3NODE2.st.com>
 <7723c340-067b-d780-0eb1-c47d50b11ee9@denx.de>
 <0706c0f7-fb7b-a8e7-5ff5-8765b3170a9e@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <298a19fd-cc11-fd99-d46b-a2cea787ffce@denx.de>
Date: Tue, 24 Mar 2020 16:22:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <0706c0f7-fb7b-a8e7-5ff5-8765b3170a9e@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082220_545154_56250930 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNC8yMCA0OjE3IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IAo+IAo+IE9uIDMv
MjQvMjAgMzo1OCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDMvMjQvMjAgMzozOSBQTSwg
QWxleGFuZHJlIFRPUkdVRSB3cm90ZToKPj4+Cj4+Pgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+Pj4gRnJvbTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+Pj4gU2VudDog
bWFyZGkgMjQgbWFycyAyMDIwIDE1OjMxCj4+Pj4gVG86IEFsZXhhbmRyZSBUT1JHVUUgPGFsZXhh
bmRyZS50b3JndWVAc3QuY29tPjsgbGludXgtYXJtLQo+Pj4+IGtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4+Pj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNv
bT47IFBhdHJpY2UgQ0hPVEFSRAo+Pj4+IDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPjsgUGF0cmlj
ayBERUxBVU5BWQo+Pj4+IDxwYXRyaWNrLmRlbGF1bmF5QHN0LmNvbT47IGxpbnV4LQo+Pj4+IHN0
bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+PiBTdWJqZWN0OiBSZTogW1BBVENI
XSBbUkZDXSBBUk06IGR0czogc3RtMzI6IEFkZCBEVHMgZm9yIFNUTTMyTVAxNXgKPj4+PiB2YXJp
YW50cwo+Pj4+IG9mIHRoZSBESCBTT00gYW5kIFBESzIKPj4+Pgo+Pj4+IE9uIDMvMjQvMjAgMzoy
OCBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gMy8yNC8y
MCAzOjE1IFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4+Pj4+IE9uIDMvMjQvMjAgMzowNyBQTSwg
QWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gMy8yNC8y
MCAyOjIyIFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4+Pj4+Pj4gT24gMy8yNC8yMCAyOjA0IFBN
LCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBP
biAzLzIzLzIwIDM6MzEgQU0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+Pj4+Pj4+Pj4+IFRoZSBESCBQ
REsyIGNhbiBiZSBwb3B1bGF0ZWQgd2l0aCBTb00gd2l0aCBhbnkgU1RNMzJNUDE1eAo+Pj4+Pj4+
Pj4+IHZhcmlhbnQuCj4+Pj4+Pj4+Pj4gQWRkIHRoZSBEVHMgZGVzY3JpYmluZyB0aGUgcmVtYWlu
aW5nIGNvbWJpbmF0aW9ucy4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1h
cmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+Pj4+Pj4+Pj4+IENjOiBBbGV4YW5kcmUgVG9yZ3Vl
IDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KPj4+Pj4+Pj4+PiBDYzogTWF4aW1lIENvcXVlbGlu
IDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgo+Pj4+Pj4+Pj4+IENjOiBQYXRyaWNlIENob3Rh
cmQgPHBhdHJpY2UuY2hvdGFyZEBzdC5jb20+Cj4+Pj4+Pj4+Pj4gQ2M6IFBhdHJpY2sgRGVsYXVu
YXkgPHBhdHJpY2suZGVsYXVuYXlAc3QuY29tPgo+Pj4+Pj4+Pj4+IENjOiBsaW51eC1zdG0zMkBz
dC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4+Pj4+Pj4+Pj4gVG86IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4+IE5PVEU6IElz
IHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyB0aGlzIHRoYW4gdG8gaGF2ZSB0aGlzIGtpbmQgb2YK
Pj4+Pj4+Pj4+PiBhCj4+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqBjb21iaW5hdG9yaWFsIGV4cGxv
c2lvbiBvZiBEVHMgPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEkgaGF2ZSBubyBiZXR0ZXIgaWRlYS4g
UXVlc3Rpb24gd2FzIHRoZSBzYW1lIGZvciBzdG0zMiBib2FyZHMsIGFuZAo+Pj4+Pj4+Pj4gSSBj
aG9zZSB0byB0YWtlIHRoaXMgb3B0aW9uLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbmUgb3B0aW9uIHdv
dWxkIGJlIHRvIGp1c3QgaGF2ZSBEVCBmb3IgdGhlIG1vc3QgZmVhdHVyZS1jb21wbGV0ZQo+Pj4+
Pj4+PiBvcHRpb24KPj4+Pj4+Pj4gKDE1NykgYW5kIHRoZW4gaGF2ZSBVLUJvb3QgcmVtb3ZlIHRo
ZSBub2RlcyBmb3IgSFcgd2hpY2ggaXMgbm90Cj4+Pj4+Pj4+IHByZXNlbnQgb24gdGhlIHBhcnRp
Y3VsYXIgU29DIG9wdGlvbiBpZiBpdCdzIG9uZSBvZiB0aGUgbW9yZQo+Pj4+Pj4+PiBsaW1pdGVk
IG9uZXMgKDE1MywgMTUxKS4KPj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFllcyBpdCB3YXMgYSBw
b3NzaWJpbGl0eSB0aGF0IEkgZGlzY3Vzc2VkIHdpdGgga2V2aW4gSC4gYXQgdGhlCj4+Pj4+Pj4g
bGF0ZXN0IEVMQ0UgYnV0IGF0IHRoZSBlbmQgdGhlIGJlc3Qgd2F5IHRvIGZvbGxvdyB3YXMgdG8g
ZW5oYW5jZQo+Pj4+Pj4+IG51bWJlciBvZiBkdHMgZmlsZXMuIFRoZSBiZXN0IHdvdWxkIGJlIHRv
IGhhdmUgZGVkaWNhdGVkIGZvbGRlcnMgYnV0Cj4+Pj4+Pj4gaXQgaXMgYW5vdGhlciBzdG9yeS4K
Pj4+Pj4+Cj4+Pj4+PiBPciB1c2UgRFQgb3ZlcmxheXMgc29tZWhvdyA/IFUtQm9vdCBjYW4gYXBw
bHkgRFRPcyBvbnRvIERUIGJlZm9yZQo+Pj4+Pj4gYm9vdGluZyBMaW51eC4KPj4+Pj4+Cj4+Pj4+
PiBIYXZpbmcgdG9ucyBvZiBEVHMgb24gYSBzeXN0ZW0gaXMgYSBsb3Qgb2YgZHVwbGljYXRpb24s
IEkgZG9uJ3QKPj4+Pj4+IHJlYWxseSBsaWtlIHRoYXQuCj4+Pj4+Cj4+Pj4+IEkgYWdyZWUgdGhh
dCB0byBtYWludGFpbiBpdCdzIGEgbmlnaHRtYXJlLCBidXQgaXQncyBhIHdheSB0byBoZWxwCj4+
Pj4+IERUIHVzZXJzLgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEJ1dCBmb3Igc3RhcnRlcnMsIGZlZWwg
ZnJlZSB0byByZXZpZXcgdGhpcyBwYXRjaC4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFlvdXIgcGF0Y2gg
c291bmRzIGdvb2QuCj4+Pj4KPj4+PiBUaGVuIGZlZWwgZnJlZSB0byBhcHBseSBpdCwgdGhhbmtz
Lgo+Pj4+Cj4+Pj4gYnR3IGRvbid0IHlvdSBoYXZlIGEgIm5leHQiIHRyZWUgc29tZXdoZXJlIHdp
dGggYWxsIHRoZSBwYXRjaGVzCj4+Pj4gcXVldWVkIHVwIGZvcgo+Pj4+IG5leHQgcmVsZWFzZSA/
IElmIEkgcmViYXNlIG9uIGxpbnV4IG5leHQsIEkgc3RpbGwgaGF2ZSBxdWl0ZSBhIGZldwo+Pj4+
IHN0bTMybXAxIERUCj4+Pj4gcGF0Y2hlcyBpbiBteSB0cmVlIHdoaWNoIGFyZSBwcmVzdW1hYmx5
IGFwcGxpZWQsIGJ1dCBJIGRvbid0IHNlZQo+Pj4+IHRoZW0gaW4gbGludXggbmV4dC4KPj4+Cj4+
Pgo+Pj4gWWVzIGJ1dCBpdCBpcyBub3QgbWVyZ2VkIGludG8gTGludXgtbmV4dC4gU2VlOgo+Pj4g
Z2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F0b3JndWUvc3Rt
MzIuZ2l0Cj4+Pgo+Pj4gQnJhbmNoIHN0bTMyLW5leHQKPj4KPj4gVGhhbmtzLiBXb3VsZG4ndCBp
dCBiZSBtb3JlIGNvbnZlbmllbnQgYW5kIHJlY2VpdmUgbW9yZSB0ZXN0aW5nIGlmIGl0Cj4+IHdl
cmUgdG8gYmUgbWVyZ2VkIGludG8gbmV4dCwganVzdCBsaWtlIHRoZSBvdGhlciB0cmVlcyBhcmUg
Pwo+Pgo+IEkgY29tcGxldGVseSBhZ3JlZSB3aXRoIHlvdSEgT3RoZXIgYXJtIHRyZWVzIGFyZSBt
ZXJnZWQgPwoKU2VlbXMgbGlrZSBpTVggc3R1ZmYga2VlcHMgbGFuZGluZyBpbiBuZXh0LCB3aGlj
aCBpcyBuaWNlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=

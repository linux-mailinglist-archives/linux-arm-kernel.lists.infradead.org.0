Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A5A72BFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UBB+iWXJ+YG5AHVuM7sFi57cmFJMqXXiDYr4aWu3syY=; b=IDTEckY/PJaeT+tHWoZTWWV3F
	ogvo1tCv6IFj1oV7CqleEi9E1gr2tlnj5GG0lo+qek8h9+rOg5NDFF8oXXVeR8KN1G3u/sDTr/g/6
	s5oq3FsKVCMfsOvrPcnLvTGlRMjwRotc2fOxeRga2hJ4eOkB/MBb2ma5+5iMktLUNflqQcrZO+gk5
	PMIzAp/Nz+24eJfL6367cHFNIDLjxORN34ecbXGQArz5aIYJk5wfjTXURZgQJqdmJcAp9MyeKL+ei
	9TuHuz9AT+J3ffj/Y8Q5FXhmSKnpkYf/gr9DjDVgyZeLmw/zjSs8lwejZ1QOZ00NOzg1DWE4FUXSA
	syUgFALKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqE7S-0002fZ-N0; Wed, 24 Jul 2019 10:03:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqE7C-0002eK-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:03:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EBAD337;
 Wed, 24 Jul 2019 03:03:15 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A29953F71F;
 Wed, 24 Jul 2019 03:03:13 -0700 (PDT)
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Lars Persson <lists@bofh.nu>, Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
 <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
 <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
 <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <BYAPR12MB3269A725AFDDA21E92946558D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <ab14f31f-2045-b1be-d31f-2a81b8527dac@nvidia.com>
 <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <3255edfa-4465-204b-4751-8d40c8fb1382@arm.com>
 <ae11deb4-abec-f0f9-312d-b11d72bc74cd@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bdfe91d0-96a4-91d3-3955-66933c319462@arm.com>
Date: Wed, 24 Jul 2019 11:03:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ae11deb4-abec-f0f9-312d-b11d72bc74cd@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_030319_625078_4AB7B5A6 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDcvMjAxOSAyMjozOSwgSm9uIEh1bnRlciB3cm90ZToKPiAKPiBPbiAyMy8wNy8yMDE5
IDE0OjE5LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gCj4gLi4uCj4gCj4+Pj4gRG8geW91IGtub3cg
aWYgdGhlIFNNTVUgaW50ZXJydXB0cyBhcmUgd29ya2luZyBjb3JyZWN0bHk/IElmIG5vdCwgaXQn
cwo+Pj4+IHBvc3NpYmxlIHRoYXQgYW4gaW5jb3JyZWN0IGFkZHJlc3Mgb3IgbWFwcGluZyBkaXJl
Y3Rpb24gY291bGQgbGVhZCB0bwo+Pj4+IHRoZSBETUEgdHJhbnNhY3Rpb24ganVzdCBiZWluZyBz
aWxlbnRseSB0ZXJtaW5hdGVkIHdpdGhvdXQgYW55IGZhdWx0Cj4+Pj4gaW5kaWNhdGlvbiwgd2hp
Y2ggZ2VuZXJhbGx5IHByZXNlbnRzIGFzIGluZXhwbGljYWJsZSB3ZWlyZG5lc3MgKEkndmUKPj4+
PiBjZXJ0YWlubHkgc2VlbiB0aGF0IG9uIGFub3RoZXIgcGxhdGZvcm0gd2l0aCB0aGUgbWl4IG9m
IGFuIHVuc3VwcG9ydGVkCj4+Pj4gaW50ZXJydXB0IGNvbnRyb2xsZXIgYW5kIGFuICdpbXBlcmZl
Y3QnIGV0aGVybmV0IGRyaXZlcikuCj4+Pgo+Pj4gSWYgSSBzaW1wbHkgcmVtb3ZlIHRoZSBpb21t
dSBub2RlIGZvciB0aGUgZXRoZXJuZXQgY29udHJvbGxlciwgdGhlbiBJCj4+PiBzZWUgbG90cyBv
ZiAuLi4KPj4+Cj4+PiBbwqDCoMKgIDYuMjk2MTIxXSBhcm0tc21tdSAxMjAwMDAwMC5pb21tdTog
VW5leHBlY3RlZCBnbG9iYWwgZmF1bHQsIHRoaXMKPj4+IGNvdWxkIGJlIHNlcmlvdXMKPj4+IFvC
oMKgwqAgNi4yOTYxMjVdIGFybS1zbW11IDEyMDAwMDAwLmlvbW11OsKgwqDCoMKgwqDCoMKgwqAg
R0ZTUiAweDAwMDAwMDAyLAo+Pj4gR0ZTWU5SMCAweDAwMDAwMDAwLCBHRlNZTlIxIDB4MDAwMDAw
MTQsIEdGU1lOUjIgMHgwMDAwMDAwMAo+Pj4KPj4+IFNvIEkgYXNzdW1lIHRoYXQgdGhpcyBpcyB0
cmlnZ2VyaW5nIHRoZSBTTU1VIGludGVycnVwdCBjb3JyZWN0bHkuCj4+Cj4+IEFjY29yZGluZyB0
byB0ZWdyYTE4Ni5kdHNpIGl0IGFwcGVhcnMgeW91J3JlIHVzaW5nIHRoZSBNTVUtNTAwIGNvbWJp
bmVkCj4+IGludGVycnVwdCwgc28gaWYgZ2xvYmFsIGZhdWx0cyBhcmUgYmVpbmcgZGVsaXZlcmVk
IHRoZW4gY29udGV4dCBmYXVsdHMKPj4gKnNob3VsZCogYWxzbywgYnV0IEknZCBiZSBpbmNsaW5l
ZCB0byB0cnkgYSBxdWljayBoYWNrIG9mIHRoZSByZWxldmFudAo+PiBzdG1tYWNfZGVzY19vcHM6
OnNldF9hZGRyIGNhbGxiYWNrIHRvIHdyaXRlIHNvbWUgYm9ndXMgdW5tYXBwZWQgYWRkcmVzcwo+
PiBqdXN0IHRvIG1ha2Ugc3VyZSBhcm1fc21tdV9jb250ZXh0X2ZhdWx0KCkgdGhlbiBzY3JlYW1z
IGFzIGV4cGVjdGVkLCBhbmQKPj4gd2UncmUgbm90IG1pc3NpbmcgYW55dGhpbmcgZWxzZS4KPiAK
PiBJIGhhY2tlZCB0aGUgZHJpdmVyIGFuZCBmb3JjZWQgdGhlIGFkZHJlc3MgdG8gemVybyBmb3Ig
YSB0ZXN0IGFuZAo+IGluIGRvaW5nIHNvIEkgc2VlIC4uLgo+IAo+IFsgICAxMC40NDAwNzJdIGFy
bS1zbW11IDEyMDAwMDAwLmlvbW11OiBVbmhhbmRsZWQgY29udGV4dCBmYXVsdDogZnNyPTB4NDAy
LCBpb3ZhPTB4MDAwMDAwMDAsIGZzeW5yPTB4MWMwMDExLCBjYmZyc3lucmE9MHgxNCwgY2I9MAo+
IAo+IFNvIGxvb2tzIGxpa2UgdGhlIGludGVycnVwdHMgYXJlIHdvcmtpbmcgQUZBSUNULgoKT0ss
IHRoYXQncyBnb29kLCB0aGFua3MgZm9yIGNvbmZpcm1pbmcuIFVuZm9ydHVuYXRlbHkgdGhhdCBu
b3cgbGVhdmVzIHVzIAp3aXRoIHRoZSBjaGFsbGVuZ2Ugb2YgZmlndXJpbmcgb3V0IGhvdyB0aGlu
Z3MgYXJlIG1hbmFnaW5nIHRvIGdvIHdyb25nIAoqd2l0aG91dCogZXZlciBmYXVsdGluZy4uLiA6
KQoKSSB3b25kZXIgaWYgd2UgY2FuIHByb3Zva2UgdGhlIGZhaWx1cmUgb24gbm9uLUlPTU1VIHBs
YXRmb3JtcyB3aXRoIAoic3dpb3RsYj1mb3JjZSIgLSBJIGhhdmUgYSBmZXcgYm94ZXMgSSBjb3Vs
ZCBwb3RlbnRpYWxseSB0ZXN0IHRoYXQgb24sIApidXQgc2FkbHkgZm9yZ290IG15IHBsYW4gdG8g
YnJpbmcgb25lIHdpdGggbWUgdGhpcyBtb3JuaW5nLgoKUm9iaW4uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

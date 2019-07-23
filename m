Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96123717CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVaUgtVcqrK2D1wJNrNsnUAXcMoec0hf6VI9vWDvD8g=; b=hccPEF5twmUm5q
	BP0yBIPWe15nIh3HgDA+NspxWvF138eKlWyd3Pl6fsTVRoZGzXOwNdudAI4EMfRR7oYIiOC0Yyggq
	A7+H+NCqZb+isY7MCUcxtyag50ENy1XTxZ/KQB8x2iBoAkHjFkN9B6JyCgGrOx/3FUUqLv9oPNIgt
	3CxktNeoQW1ioPru1FzubYBZLpbeL3gpm9F/pjl67aIjFoW+RqOjOm7BPIayutGyYLbTJSVr/4jnR
	oXpNzbQp1HE2AL+vTfUDkuPeOZBl7uAupyxlFP0W+aRiDZ8C3h3lrW9mivNSyJ3PZBv9/bgREwARZ
	LRNeeCknOvqDbbi+ZGOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptbk-0004ZO-28; Tue, 23 Jul 2019 12:09:28 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptbO-0004Yo-6R
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:09:07 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d36f8e80000>; Tue, 23 Jul 2019 05:09:13 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 23 Jul 2019 05:09:05 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 23 Jul 2019 05:09:05 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 23 Jul
 2019 12:09:02 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Robin Murphy <robin.murphy@arm.com>, Jose Abreu <Jose.Abreu@synopsys.com>, 
 Lars Persson <lists@bofh.nu>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
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
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
Date: Tue, 23 Jul 2019 13:09:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563883753; bh=f84H2x2d3kzkl+x8HBl8e8hw6iLx/iNKgVfEttHgXug=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=qhppD8ki1mZPculS6VOwNH++SDP1WkDQO1EDG0FUpQ5i6XCwnqQLt+t+ApjZhRL7E
 Wm/3vh3YOrX452bxtWTwckZsdioDIOxMCny/kdDsMV/IAp5ypzbflWKmS20Mn5kfHY
 C+NL6+x9QmB+DXwppouCioD3RKH/0pKwrO2JoepqIsd4ThoG9QLm2GWLFCYa7m3xpl
 NdlOMgS3ff0uIEBciueuMvRrxuRMseCyVNSgkf6LEHhai17NEGU8jmq63ofqNtpajG
 PEWLK82s8nUYWsR7FCJ+wHfZ8DW/tjHnRyvUnsUzTZ756ORpLI4Zg/O3gfHU0ku7h7
 VadBFPyDJh7yw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_050906_252377_023EA5F1 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIzLzA3LzIwMTkgMTE6MjksIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMy8wNy8yMDE5
IDExOjA3LCBKb3NlIEFicmV1IHdyb3RlOgo+PiBGcm9tOiBKb24gSHVudGVyIDxqb25hdGhhbmhA
bnZpZGlhLmNvbT4KPj4gRGF0ZTogSnVsLzIzLzIwMTksIDExOjAxOjI0IChVVEMrMDA6MDApCj4+
Cj4+PiBUaGlzIGFwcGVhcnMgdG8gYmUgYSB3aW5uZXIgYW5kIGJ5IGRpc2FibGluZyB0aGUgU01N
VSBmb3IgdGhlIGV0aGVybmV0Cj4+PiBjb250cm9sbGVyIGFuZCByZXZlcnRpbmcgY29tbWl0IDk1
NGEwM2JlMDMzYzdjZWY4MGRkYzIzMmU3Y2JkYjE3ZGY3MzU2NjMKPj4+IHRoaXMgd29ya2VkISBT
byB5ZXMgYXBwZWFycyB0byBiZSByZWxhdGVkIHRvIHRoZSBTTU1VIGJlaW5nIGVuYWJsZWQuIFdl
Cj4+PiBoYWQgdG8gZW5hYmxlIHRoZSBTTU1VIGZvciBldGhlcm5ldCByZWNlbnRseSBkdWUgdG8g
Y29tbWl0Cj4+PiA5NTRhMDNiZTAzM2M3Y2VmODBkZGMyMzJlN2NiZGIxN2RmNzM1NjYzLgo+Pgo+
PiBGaW5hbGx5IDopCj4+Cj4+IEhvd2V2ZXIsIGZyb20gImdpdCBzaG93IDk1NGEwM2JlMDMzYzdj
ZWY4MGRkYzIzMmU3Y2JkYjE3ZGY3MzU2NjMiOgo+Pgo+PiArwqDCoMKgwqDCoMKgwqDCoCBUaGVy
ZSBhcmUgZmV3IHJlYXNvbnMgdG8gYWxsb3cgdW5tYXRjaGVkIHN0cmVhbSBieXBhc3MsIGFuZAo+
PiArwqDCoMKgwqDCoMKgwqDCoCBldmVuIGZld2VyIGdvb2Qgb25lcy7CoCBJZiBzYXlpbmcgWUVT
IGhlcmUgYnJlYWtzIHlvdXIgYm9hcmQKPj4gK8KgwqDCoMKgwqDCoMKgwqAgeW91IHNob3VsZCB3
b3JrIG9uIGZpeGluZyB5b3VyIGJvYXJkLgo+Pgo+PiBTbywgaG93IGNhbiB3ZSBmaXggdGhpcyA/
IElzIHlvdXIgZXRoZXJuZXQgRFQgbm9kZSBtYXJrZWQgYXMKPj4gImRtYS1jb2hlcmVudDsiID8K
PiAKPiBUaGUgZmlyc3QgdGhpbmcgdG8gdHJ5IHdvdWxkIGJlIGJvb3RpbmcgdGhlIGZhaWxpbmcg
c2V0dXAgd2l0aAo+ICJpb21tdS5wYXNzdGhyb3VnaD0xIiAob3IgdXNpbmcgQ09ORklHX0lPTU1V
X0RFRkFVTFRfUEFTU1RIUk9VR0gpIC0gaWYKPiB0aGF0IG1ha2VzIHRoaW5ncyBzZWVtIE9LLCB0
aGVuIHRoZSBwcm9ibGVtIGlzIGxpa2VseSByZWxhdGVkIHRvIGFkZHJlc3MKPiB0cmFuc2xhdGlv
bjsgaWYgbm90LCB0aGVuIGl0J3MgcHJvYmFibHkgdGltZSB0byBzdGFydCBsb29raW5nIGF0IG5h
c3RpZXMKPiBsaWtlIGNvaGVyZW5jeSBhbmQgb3JkZXJpbmcsIGFsdGhvdWdoIGluIHByaW5jaXBs
ZSBJIHdvdWxkbid0IGV4cGVjdCB0aGUKPiBTTU1VIHRvIGhhdmUgdG9vIG11Y2ggaW1wYWN0IHRo
ZXJlLgoKU2V0dGluZyAiaW9tbXUucGFzc3Rocm91Z2g9MSIgd29ya3MgZm9yIG1lLiBIb3dldmVy
LCBJIGFtIG5vdCBzdXJlIHdoZXJlCnRvIGdvIGZyb20gaGVyZSwgc28gYW55IGlkZWFzIHlvdSBo
YXZlIHdvdWxkIGJlIGdyZWF0LgoKPiBEbyB5b3Uga25vdyBpZiB0aGUgU01NVSBpbnRlcnJ1cHRz
IGFyZSB3b3JraW5nIGNvcnJlY3RseT8gSWYgbm90LCBpdCdzCj4gcG9zc2libGUgdGhhdCBhbiBp
bmNvcnJlY3QgYWRkcmVzcyBvciBtYXBwaW5nIGRpcmVjdGlvbiBjb3VsZCBsZWFkIHRvCj4gdGhl
IERNQSB0cmFuc2FjdGlvbiBqdXN0IGJlaW5nIHNpbGVudGx5IHRlcm1pbmF0ZWQgd2l0aG91dCBh
bnkgZmF1bHQKPiBpbmRpY2F0aW9uLCB3aGljaCBnZW5lcmFsbHkgcHJlc2VudHMgYXMgaW5leHBs
aWNhYmxlIHdlaXJkbmVzcyAoSSd2ZQo+IGNlcnRhaW5seSBzZWVuIHRoYXQgb24gYW5vdGhlciBw
bGF0Zm9ybSB3aXRoIHRoZSBtaXggb2YgYW4gdW5zdXBwb3J0ZWQKPiBpbnRlcnJ1cHQgY29udHJv
bGxlciBhbmQgYW4gJ2ltcGVyZmVjdCcgZXRoZXJuZXQgZHJpdmVyKS4KCklmIEkgc2ltcGx5IHJl
bW92ZSB0aGUgaW9tbXUgbm9kZSBmb3IgdGhlIGV0aGVybmV0IGNvbnRyb2xsZXIsIHRoZW4gSQpz
ZWUgbG90cyBvZiAuLi4KClsgICAgNi4yOTYxMjFdIGFybS1zbW11IDEyMDAwMDAwLmlvbW11OiBV
bmV4cGVjdGVkIGdsb2JhbCBmYXVsdCwgdGhpcyBjb3VsZCBiZSBzZXJpb3VzClsgICAgNi4yOTYx
MjVdIGFybS1zbW11IDEyMDAwMDAwLmlvbW11OiAgICAgICAgIEdGU1IgMHgwMDAwMDAwMiwgR0ZT
WU5SMCAweDAwMDAwMDAwLCBHRlNZTlIxIDB4MDAwMDAwMTQsIEdGU1lOUjIgMHgwMDAwMDAwMAoK
U28gSSBhc3N1bWUgdGhhdCB0aGlzIGlzIHRyaWdnZXJpbmcgdGhlIFNNTVUgaW50ZXJydXB0IGNv
cnJlY3RseS4gCgo+IEp1c3QgdG8gY29uZmlybSwgaGFzIHRoZSBvcmlnaW5hbCBwYXRjaCBiZWVu
IHRlc3RlZCB3aXRoCj4gQ09ORklHX0RNQV9BUElfREVCVUcgdG8gcnVsZSBvdXQgYW55IGhpZ2gt
bGV2ZWwgbWlzaGFwcz8KWWVzIG9uZSBvZiB0aGUgZmlyc3QgdGhpbmdzIHdlIHRyaWVkIGJ1dCBk
aWQgbm90IGJhcmUgYW55IGZydWl0LgoKQ2hlZXJzCkpvbgoKLS0gCm52cHVibGljCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

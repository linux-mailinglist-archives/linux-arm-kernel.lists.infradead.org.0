Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237171913
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SSC4MkN/ZTOloti5B24Tt3SD24JzJoTOP5FKi+5ckK0=; b=j1/1CLAS69ZIDG7NbR9EzhBFL
	DT7BIWYlIphn+y/VB40GETv2WJMX0MNwyifvQ2sadQ3Ejw9q63A6WBmF0wrGBur4Jn4NTovnkrjBD
	4ARVk9pe3gxbnHadjZrBUHHO2XKZc/DxYxCfzQWig9Ssuwle/2QMNozTmo9zOQxJ5Z49tTsGsP5bb
	hp8LEtpyKr3lq0/4FDERpMW3i4uQqqQBgFMOiZNRfQ7oU7HQD+54uAmb1ihA47lA3jX9husb+Ombn
	OXytXnNRSehMCdssmWnCCP+ZYu7CVHXtLnKJupL5gKWwHiLhEVv9VQS5Gop+tzIqepjT/rFLPE2LH
	w9b1DFECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuiN-0003Fn-OE; Tue, 23 Jul 2019 13:20:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuhz-00037D-Cx
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:20:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDAAF28;
 Tue, 23 Jul 2019 06:19:58 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA0C83F71F;
 Tue, 23 Jul 2019 06:19:56 -0700 (PDT)
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
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3255edfa-4465-204b-4751-8d40c8fb1382@arm.com>
Date: Tue, 23 Jul 2019 14:19:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_061959_539894_E71E498A 
X-CRM114-Status: GOOD (  24.36  )
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

T24gMjMvMDcvMjAxOSAxMzowOSwgSm9uIEh1bnRlciB3cm90ZToKPiAKPiBPbiAyMy8wNy8yMDE5
IDExOjI5LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIzLzA3LzIwMTkgMTE6MDcsIEpvc2Ug
QWJyZXUgd3JvdGU6Cj4+PiBGcm9tOiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4K
Pj4+IERhdGU6IEp1bC8yMy8yMDE5LCAxMTowMToyNCAoVVRDKzAwOjAwKQo+Pj4KPj4+PiBUaGlz
IGFwcGVhcnMgdG8gYmUgYSB3aW5uZXIgYW5kIGJ5IGRpc2FibGluZyB0aGUgU01NVSBmb3IgdGhl
IGV0aGVybmV0Cj4+Pj4gY29udHJvbGxlciBhbmQgcmV2ZXJ0aW5nIGNvbW1pdCA5NTRhMDNiZTAz
M2M3Y2VmODBkZGMyMzJlN2NiZGIxN2RmNzM1NjYzCj4+Pj4gdGhpcyB3b3JrZWQhIFNvIHllcyBh
cHBlYXJzIHRvIGJlIHJlbGF0ZWQgdG8gdGhlIFNNTVUgYmVpbmcgZW5hYmxlZC4gV2UKPj4+PiBo
YWQgdG8gZW5hYmxlIHRoZSBTTU1VIGZvciBldGhlcm5ldCByZWNlbnRseSBkdWUgdG8gY29tbWl0
Cj4+Pj4gOTU0YTAzYmUwMzNjN2NlZjgwZGRjMjMyZTdjYmRiMTdkZjczNTY2My4KPj4+Cj4+PiBG
aW5hbGx5IDopCj4+Pgo+Pj4gSG93ZXZlciwgZnJvbSAiZ2l0IHNob3cgOTU0YTAzYmUwMzNjN2Nl
ZjgwZGRjMjMyZTdjYmRiMTdkZjczNTY2MyI6Cj4+Pgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgVGhl
cmUgYXJlIGZldyByZWFzb25zIHRvIGFsbG93IHVubWF0Y2hlZCBzdHJlYW0gYnlwYXNzLCBhbmQK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgIGV2ZW4gZmV3ZXIgZ29vZCBvbmVzLsKgIElmIHNheWluZyBZ
RVMgaGVyZSBicmVha3MgeW91ciBib2FyZAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgeW91IHNob3Vs
ZCB3b3JrIG9uIGZpeGluZyB5b3VyIGJvYXJkLgo+Pj4KPj4+IFNvLCBob3cgY2FuIHdlIGZpeCB0
aGlzID8gSXMgeW91ciBldGhlcm5ldCBEVCBub2RlIG1hcmtlZCBhcwo+Pj4gImRtYS1jb2hlcmVu
dDsiID8KPj4KPj4gVGhlIGZpcnN0IHRoaW5nIHRvIHRyeSB3b3VsZCBiZSBib290aW5nIHRoZSBm
YWlsaW5nIHNldHVwIHdpdGgKPj4gImlvbW11LnBhc3N0aHJvdWdoPTEiIChvciB1c2luZyBDT05G
SUdfSU9NTVVfREVGQVVMVF9QQVNTVEhST1VHSCkgLSBpZgo+PiB0aGF0IG1ha2VzIHRoaW5ncyBz
ZWVtIE9LLCB0aGVuIHRoZSBwcm9ibGVtIGlzIGxpa2VseSByZWxhdGVkIHRvIGFkZHJlc3MKPj4g
dHJhbnNsYXRpb247IGlmIG5vdCwgdGhlbiBpdCdzIHByb2JhYmx5IHRpbWUgdG8gc3RhcnQgbG9v
a2luZyBhdCBuYXN0aWVzCj4+IGxpa2UgY29oZXJlbmN5IGFuZCBvcmRlcmluZywgYWx0aG91Z2gg
aW4gcHJpbmNpcGxlIEkgd291bGRuJ3QgZXhwZWN0IHRoZQo+PiBTTU1VIHRvIGhhdmUgdG9vIG11
Y2ggaW1wYWN0IHRoZXJlLgo+IAo+IFNldHRpbmcgImlvbW11LnBhc3N0aHJvdWdoPTEiIHdvcmtz
IGZvciBtZS4gSG93ZXZlciwgSSBhbSBub3Qgc3VyZSB3aGVyZQo+IHRvIGdvIGZyb20gaGVyZSwg
c28gYW55IGlkZWFzIHlvdSBoYXZlIHdvdWxkIGJlIGdyZWF0LgoKT0ssIHNvIHRoYXQgcmVhbGx5
IGltcGxpZXMgaXQncyBzb21ldGhpbmcgdG8gZG8gd2l0aCB0aGUgYWRkcmVzc2VzLiBGcm9tIAph
IHF1aWNrIHNraW0gb2YgdGhlIHBhdGNoLCBJJ20gd29uZGVyaW5nIGlmIGl0J3MgcG9zc2libGUg
Zm9yIGJ1Zi0+YWRkciAKYW5kIGJ1Zi0+cGFnZS0+ZG1hX2FkZHIgdG8gZ2V0IG91dC1vZi1zeW5j
IGF0IGFueSBwb2ludC4gVGhlIG5hdHVyZSBvZiAKdGhlIElPVkEgYWxsb2NhdG9yIG1ha2VzIGl0
IHF1aXRlIGxpa2VseSB0aGF0IGEgc3RhbGUgRE1BIGFkZHJlc3Mgd2lsbCAKaGF2ZSBiZWVuIHJl
dXNlZCBmb3IgYSBuZXcgbWFwcGluZywgc28gcHV0dGluZyB0aGUgd3JvbmcgYWRkcmVzcyBpbiBh
IApkZXNjcmlwdG9yIG1heSB3ZWxsIG1lYW4gdGhlIERNQSBzdGlsbCBlbmRzIHVwIGhpdHRpbmcg
YSB2YWxpZCAKdHJhbnNsYXRpb24sIGJ1dCB3aGljaCBpcyBub3cgcG9pbnRpbmcgdG8gYSBkaWZm
ZXJlbnQgcGFnZS4KCj4+IERvIHlvdSBrbm93IGlmIHRoZSBTTU1VIGludGVycnVwdHMgYXJlIHdv
cmtpbmcgY29ycmVjdGx5PyBJZiBub3QsIGl0J3MKPj4gcG9zc2libGUgdGhhdCBhbiBpbmNvcnJl
Y3QgYWRkcmVzcyBvciBtYXBwaW5nIGRpcmVjdGlvbiBjb3VsZCBsZWFkIHRvCj4+IHRoZSBETUEg
dHJhbnNhY3Rpb24ganVzdCBiZWluZyBzaWxlbnRseSB0ZXJtaW5hdGVkIHdpdGhvdXQgYW55IGZh
dWx0Cj4+IGluZGljYXRpb24sIHdoaWNoIGdlbmVyYWxseSBwcmVzZW50cyBhcyBpbmV4cGxpY2Fi
bGUgd2VpcmRuZXNzIChJJ3ZlCj4+IGNlcnRhaW5seSBzZWVuIHRoYXQgb24gYW5vdGhlciBwbGF0
Zm9ybSB3aXRoIHRoZSBtaXggb2YgYW4gdW5zdXBwb3J0ZWQKPj4gaW50ZXJydXB0IGNvbnRyb2xs
ZXIgYW5kIGFuICdpbXBlcmZlY3QnIGV0aGVybmV0IGRyaXZlcikuCj4gCj4gSWYgSSBzaW1wbHkg
cmVtb3ZlIHRoZSBpb21tdSBub2RlIGZvciB0aGUgZXRoZXJuZXQgY29udHJvbGxlciwgdGhlbiBJ
Cj4gc2VlIGxvdHMgb2YgLi4uCj4gCj4gWyAgICA2LjI5NjEyMV0gYXJtLXNtbXUgMTIwMDAwMDAu
aW9tbXU6IFVuZXhwZWN0ZWQgZ2xvYmFsIGZhdWx0LCB0aGlzIGNvdWxkIGJlIHNlcmlvdXMKPiBb
ICAgIDYuMjk2MTI1XSBhcm0tc21tdSAxMjAwMDAwMC5pb21tdTogICAgICAgICBHRlNSIDB4MDAw
MDAwMDIsIEdGU1lOUjAgMHgwMDAwMDAwMCwgR0ZTWU5SMSAweDAwMDAwMDE0LCBHRlNZTlIyIDB4
MDAwMDAwMDAKPiAKPiBTbyBJIGFzc3VtZSB0aGF0IHRoaXMgaXMgdHJpZ2dlcmluZyB0aGUgU01N
VSBpbnRlcnJ1cHQgY29ycmVjdGx5LgoKQWNjb3JkaW5nIHRvIHRlZ3JhMTg2LmR0c2kgaXQgYXBw
ZWFycyB5b3UncmUgdXNpbmcgdGhlIE1NVS01MDAgY29tYmluZWQgCmludGVycnVwdCwgc28gaWYg
Z2xvYmFsIGZhdWx0cyBhcmUgYmVpbmcgZGVsaXZlcmVkIHRoZW4gY29udGV4dCBmYXVsdHMgCipz
aG91bGQqIGFsc28sIGJ1dCBJJ2QgYmUgaW5jbGluZWQgdG8gdHJ5IGEgcXVpY2sgaGFjayBvZiB0
aGUgcmVsZXZhbnQgCnN0bW1hY19kZXNjX29wczo6c2V0X2FkZHIgY2FsbGJhY2sgdG8gd3JpdGUg
c29tZSBib2d1cyB1bm1hcHBlZCBhZGRyZXNzIApqdXN0IHRvIG1ha2Ugc3VyZSBhcm1fc21tdV9j
b250ZXh0X2ZhdWx0KCkgdGhlbiBzY3JlYW1zIGFzIGV4cGVjdGVkLCBhbmQgCndlJ3JlIG5vdCBt
aXNzaW5nIGFueXRoaW5nIGVsc2UuCgpSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK

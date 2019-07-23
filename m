Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB7D721C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQe9dv7vXqL9mMWmmuZ3cya84W3ypqpKhlqH3vXV21A=; b=GYoXww6uNCtFdh
	SPhhat+kkHcaAMFgC4MCuhV8jMS07XQtbUwsi3WlxhQt+Aw8SeT16i8Yjw7Cfr0IMnCPF3tidQM5H
	NxqcFATZTpalLM+ijffAygZgNzzHX8uD4wKY3tu9lcXxvA8jT6LcEZ2Xfwzi07bUHx3EVa2zR5zf7
	Lii2gaCLphzpY1b2BGJlnQgTrUpRFjL53k5WgZhyin4T1JFHhO/qfQi8x0hMGUyIcH5Qjj4bv0bSu
	wYCgVQkfvOUuE7odZy/bfh+j3TeCG6ldyjGxwdbbkSBfY1cYDqeGNC5NtMBw+dYH5wEsfDsfO8UA/
	szTD+1UhmD7g7TwsNfDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2Vs-0007kt-Uc; Tue, 23 Jul 2019 21:40:01 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2VY-0007kS-BE
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:39:41 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d377e960000>; Tue, 23 Jul 2019 14:39:35 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 23 Jul 2019 14:39:37 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 23 Jul 2019 14:39:37 -0700
Received: from [10.26.11.185] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 23 Jul
 2019 21:39:32 +0000
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
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <3255edfa-4465-204b-4751-8d40c8fb1382@arm.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <ae11deb4-abec-f0f9-312d-b11d72bc74cd@nvidia.com>
Date: Tue, 23 Jul 2019 22:39:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3255edfa-4465-204b-4751-8d40c8fb1382@arm.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563917975; bh=3lTWQ4Ol+M8dbc5nZy7wEdkUC8P1FuGjPhA49g8j8zk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=jvibVR/sKGrwa2X/qvAjnZwSbm2bNfciQjLdTf4vyefptsIWI8zsUowixYZ6tB9Nw
 Zlr9Yf1gr0DQJXt+6R6C0hyozvsu2WvdsxMKBhuXhnbwSb0R3ax3RQpxhKCKQ5vhzl
 VuhHWs8kZ5kB3D9acg6XfuQfHc/HPqve+4e6kkrdXG2dieduHRwBah8yWM1QwmG0XN
 k17/J7Fa3caqZkgKym+i/gpuFwuw3F9bG7+7prK7J7P10qK3bv2yWLHppIQPmJCOxs
 csTZdSV19F6ZS7wjvM86WuqApUCoHIJIhufWWHBg/gd9OMXU0zwVvSKBmC/J/f4jTi
 w8VKyH/YrF9Zw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_143940_396134_FC79CD61 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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

Ck9uIDIzLzA3LzIwMTkgMTQ6MTksIFJvYmluIE11cnBoeSB3cm90ZToKCi4uLgoKPj4+IERvIHlv
dSBrbm93IGlmIHRoZSBTTU1VIGludGVycnVwdHMgYXJlIHdvcmtpbmcgY29ycmVjdGx5PyBJZiBu
b3QsIGl0J3MKPj4+IHBvc3NpYmxlIHRoYXQgYW4gaW5jb3JyZWN0IGFkZHJlc3Mgb3IgbWFwcGlu
ZyBkaXJlY3Rpb24gY291bGQgbGVhZCB0bwo+Pj4gdGhlIERNQSB0cmFuc2FjdGlvbiBqdXN0IGJl
aW5nIHNpbGVudGx5IHRlcm1pbmF0ZWQgd2l0aG91dCBhbnkgZmF1bHQKPj4+IGluZGljYXRpb24s
IHdoaWNoIGdlbmVyYWxseSBwcmVzZW50cyBhcyBpbmV4cGxpY2FibGUgd2VpcmRuZXNzIChJJ3Zl
Cj4+PiBjZXJ0YWlubHkgc2VlbiB0aGF0IG9uIGFub3RoZXIgcGxhdGZvcm0gd2l0aCB0aGUgbWl4
IG9mIGFuIHVuc3VwcG9ydGVkCj4+PiBpbnRlcnJ1cHQgY29udHJvbGxlciBhbmQgYW4gJ2ltcGVy
ZmVjdCcgZXRoZXJuZXQgZHJpdmVyKS4KPj4KPj4gSWYgSSBzaW1wbHkgcmVtb3ZlIHRoZSBpb21t
dSBub2RlIGZvciB0aGUgZXRoZXJuZXQgY29udHJvbGxlciwgdGhlbiBJCj4+IHNlZSBsb3RzIG9m
IC4uLgo+Pgo+PiBbwqDCoMKgIDYuMjk2MTIxXSBhcm0tc21tdSAxMjAwMDAwMC5pb21tdTogVW5l
eHBlY3RlZCBnbG9iYWwgZmF1bHQsIHRoaXMKPj4gY291bGQgYmUgc2VyaW91cwo+PiBbwqDCoMKg
IDYuMjk2MTI1XSBhcm0tc21tdSAxMjAwMDAwMC5pb21tdTrCoMKgwqDCoMKgwqDCoMKgIEdGU1Ig
MHgwMDAwMDAwMiwKPj4gR0ZTWU5SMCAweDAwMDAwMDAwLCBHRlNZTlIxIDB4MDAwMDAwMTQsIEdG
U1lOUjIgMHgwMDAwMDAwMAo+Pgo+PiBTbyBJIGFzc3VtZSB0aGF0IHRoaXMgaXMgdHJpZ2dlcmlu
ZyB0aGUgU01NVSBpbnRlcnJ1cHQgY29ycmVjdGx5Lgo+IAo+IEFjY29yZGluZyB0byB0ZWdyYTE4
Ni5kdHNpIGl0IGFwcGVhcnMgeW91J3JlIHVzaW5nIHRoZSBNTVUtNTAwIGNvbWJpbmVkCj4gaW50
ZXJydXB0LCBzbyBpZiBnbG9iYWwgZmF1bHRzIGFyZSBiZWluZyBkZWxpdmVyZWQgdGhlbiBjb250
ZXh0IGZhdWx0cwo+ICpzaG91bGQqIGFsc28sIGJ1dCBJJ2QgYmUgaW5jbGluZWQgdG8gdHJ5IGEg
cXVpY2sgaGFjayBvZiB0aGUgcmVsZXZhbnQKPiBzdG1tYWNfZGVzY19vcHM6OnNldF9hZGRyIGNh
bGxiYWNrIHRvIHdyaXRlIHNvbWUgYm9ndXMgdW5tYXBwZWQgYWRkcmVzcwo+IGp1c3QgdG8gbWFr
ZSBzdXJlIGFybV9zbW11X2NvbnRleHRfZmF1bHQoKSB0aGVuIHNjcmVhbXMgYXMgZXhwZWN0ZWQs
IGFuZAo+IHdlJ3JlIG5vdCBtaXNzaW5nIGFueXRoaW5nIGVsc2UuCgpJIGhhY2tlZCB0aGUgZHJp
dmVyIGFuZCBmb3JjZWQgdGhlIGFkZHJlc3MgdG8gemVybyBmb3IgYSB0ZXN0IGFuZAppbiBkb2lu
ZyBzbyBJIHNlZSAuLi4KClsgICAxMC40NDAwNzJdIGFybS1zbW11IDEyMDAwMDAwLmlvbW11OiBV
bmhhbmRsZWQgY29udGV4dCBmYXVsdDogZnNyPTB4NDAyLCBpb3ZhPTB4MDAwMDAwMDAsIGZzeW5y
PTB4MWMwMDExLCBjYmZyc3lucmE9MHgxNCwgY2I9MAoKU28gbG9va3MgbGlrZSB0aGUgaW50ZXJy
dXB0cyBhcmUgd29ya2luZyBBRkFJQ1QuCgpDaGVlcnMKSm9uCgotLSAKbnZwdWJsaWMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
